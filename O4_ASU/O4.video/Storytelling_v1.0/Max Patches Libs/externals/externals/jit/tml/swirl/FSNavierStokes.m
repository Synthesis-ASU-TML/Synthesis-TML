//
//  FSNavierStokes.m
//  CocoaGame
//

#import "FSNavierStokes.h"
#include <libkern/OSAtomic.h>

//	Linear Interpolation used all over the place.
//		- sx/sy values between 0 and 1 (coordinates in the grid)
//		-	zz oz
//		-	zo oo
#define LinearInterpolation(sx,sy,zz,oz,zo,oo)		\
	((1-sy)	* ((1-sx) * zz + sx*oz)		\
	+ sy	* ((1-sx) * zo + sx*oo))

//	Linear interpolation of character data
#define chInterpolation(sx,sy,zz,oz,zo,oo)	\
	clampC(LinearInterpolation(sx,sy,zz,oz,zo,oo))

//Linear interpolation of arrays.
#define ArrayLInterpolation(sx,sy,a,base,dx,dy)	\
	LinearInterpolation(sx,sy,a[base],a[base+dx],a[base+dy],a[base+dx+dy])

//Same for character data
#define chALInterpolation(sx,sy,a,base,dx,dy) \
	clampC(ArrayLInterpolation(sx,sy,a,base,dx,dy))

//Easy way to read "Minimum"
#define Smallest(a,b)	((a)<(b)?(a):(b))
#define Largest(a,b)	((a)>(b)?(a):(b))

//Minimum of a quad (4-blocks)
#define QSmallest(a,b,c,d)	Smallest(Smallest(a,b),Smallest(c,d))
#define QLargest(a,b,c,d)	Largest(Largest(a,b),Largest(c,d))

//What if in array?
#define QASmallest(arr,base,dx,dy)	QSmallest(arr[base],arr[base+dx],arr[base+dy],arr[base+dx+dy])
#define QALargest(arr,base,dx,dy)	QLargest(arr[base],arr[base+dx],arr[base+dy],arr[base+dx+dy])

//Clamping is always good...
#define Clamp(a,min,max)	Smallest(max, Largest(a,min))

//Divergence (array to look into, base, stride)
#define Divergence1(array, base, stride)		(array[base+stride] - array[base-stride])
#define Divergence2(array, base, stride1, stride2)	(Divergence1(array,base,stride1) + Divergence1(array,base+1,stride2))
#define Divergence3(array, base, s1, s2, s3)	(Divergence2(array,base,s1,s2) + Divergence1(array,base+2,s3))

//Optimized C-Code for Jacobi...
//	iterations		Number of times to loop
//	width			Width of the matrix
//	height			Height of the matrix
//	v1/v2			Two velocity fields.
//	sx/sy			StrideX and strideY
void jacobi_diffusion(int iterations, int width, int height, float *v1, float *v2,
						int sx, int sy, float viscocity, float timestep,
						unsigned char *c, int csx, int csy,
						FXTaskSequence *in_seq, int32_t *atomicY)
{
	int i, x, y;
	
	float alpha = 1.0f/viscocity * timestep;
	float beta = 1.0f/(alpha + 4);

	for (i=0; i<iterations; i++)
	{
		y = OSAtomicIncrement32Barrier(atomicY);
		
		if (y == 1)
		{
			//Handle border conditions...
			for (x=1; x<width; x++)
			{
				int vindex = x*sx;
				v2[vindex+0] = -v1[vindex+sy+0];
				v2[vindex+1] = -v1[vindex+sy+1];
				
				vindex = x*sx + (height-1)*sy;
				v2[vindex+0] = -v1[vindex-sy+0];
				v2[vindex+1] = -v1[vindex-sy+1];
			}
		}
		
		for (; y<height-1; )
		{
			int index = sy*y;
			for (x=1; x<width-1; x++)
			{
				index += sx;
				int cindex = csx*x + csy*y+3;
				if (c[cindex] == 0)
				{
					v2[index+0] = v1[index-sx+0] + v1[index+sx+0] + v1[index-sy+0]
								+ v1[index+sy+0] + v1[index+0]*alpha;
					v2[index+0]*=beta;
					
					v2[index+1] = v1[index-sx+1] + v1[index+sx+1] + v1[index-sy+1]
								+ v1[index+sy+1] + v1[index+1]*alpha;
					v2[index+1]*=beta;
				}
				else
				{
					if (c[cindex +3 - csx] == 0)
					{
						v2[index+0] = -v1[index-sx+0];
						v2[index+1] = -v1[index-sx+1];
					}
					else if (c[cindex +3 + csx] == 0)
					{
						v2[index+0] = -v1[index+sx+0];
						v2[index+1] = -v1[index+sx+1];
					}
					else if (c[cindex +3 - csy] == 0)
					{
						v2[index+0] = -v1[index-sy+0];
						v2[index+1] = -v1[index-sy+1];
					}
					else if (c[cindex +3 + csy] == 0)
					{
						v2[index+0] = -v1[index+sy+0];
						v2[index+1] = -v1[index+sy+1];
					}
					else
					{
						v2[index+0] = 0;
						v2[index+1] = 0;
					}
				}
			}
			
			//Left-right border...
			v2[y*sy +0] = -v1[y*sy +sx +0];
			v2[y*sy + (width-1)*sx+0] = -v1[y*sy + (width-2)*sx+0];
			v2[y*sy +1] = -v1[y*sy +sx +1];
			v2[y*sy + (width-1)*sx+1] = -v1[y*sy + (width-2)*sx+1];
			
			y = OSAtomicIncrement32Barrier(atomicY);
		}
		
		[in_seq waitForTask];
		
		//Swap inputs!!!
		float *tmp;
		tmp = v1;
		v1 = v2;
		v2 = tmp;
	}
}


//jacobi solver for pressure
//	iterations		- the more the better
//	width			- the size
//	p1/p2			- the pressure
//	v				- the velocity
//	sx/sy			- The stride x/y...
void jacobi_pressure(int iterations, int width, int height, float *p1, float *p2,
						float *v, int sx, int sy, int vsx, int vsy,
					 unsigned char *c, int csx, int csy,
					 FXTaskSequence *in_seq, int32_t *atomicY,
					 unsigned char *f, int fsx, int fsy)
{
	int i, x, y;
	
	for (i=0; i<iterations; i++)
	{
		y = OSAtomicIncrement32Barrier(atomicY);
		
		if (y == 1)
		{
			for (x=1; x<width; x++)
			{
				int vindex;
				
				vindex = x*sx;
				p2[vindex] = p1[vindex+sy];
				
				vindex = x*sx + (height-1)*sy;
				p2[vindex] = p1[vindex-sy];
			}
		}
		
		for (; y<height-1;)
		{
			for (x=1; x<width-1; x++)
			{
				int pindex = sx*x + sy*y;
				int cindex = csx*x + csy*y+3;
				if (c[cindex] == 0)
				{
					int vindex = vsx*x + vsy*y;
					
					p2[pindex] = p1[pindex-sx+0] + p1[pindex+sx+0] + p1[pindex-sy+0]
								+ p1[pindex+sy+0]
								- (v[vindex+vsx+0] - v[vindex-vsx+0]
										+v[vindex+vsy+1] - v[vindex-vsy+1]);
					p2[pindex]*=(1.0f/4.0f);
					//int findex = x*fsx+y*fsy;
					//p2[pindex]*= (float)(f[findex] + f[findex+1]+f[findex+2]) / (256*3.0f);
				}
				else	//Do collision logic at each step.  This ensures that
						//the pressure equation is properly solved for...
						//(ought to look nicer...)
				{
					if (c[cindex - csx] == 0)
					{
						p2[pindex] = p1[pindex-sx];
					}
					else if (c[cindex + csx] == 0)
					{
						p2[pindex] = p1[pindex+sx];
					}
					else if (c[cindex - csy] == 0)
					{
						p2[pindex] = p1[pindex-sy];
					}
					else// if (c[cindex + csy] == 0)
					{
						p2[pindex] = p1[pindex+sy];
					}
						
				}
			}
			
			p2[sy*y] = p1[sy*y + sx];
			p2[sy*y + (width-1)*sx] = p1[sy*y + (width-2)*sx];
			
			y = OSAtomicIncrement32Barrier(atomicY);
		}
		
		[in_seq waitForTask];
		
		float *t = p1;
		p1 = p2;
		p2 = t;
	}
}


@implementation FSNavierStokes

- (FSNavierStokes*)initWithWidth:(int)in_width height:(int)in_height
{
	[super init];
		
	viscocity = 0.1f;
	curField = 0;
	
	velX = 0;
	velY = 0;
	
	velocity[0] = [FXField allocWithWidth:in_width
					height:in_height
					planes:2];
	[velocity[0] clear];
	
	velocity[1] = [FXField allocWithWidth:in_width
					height:in_height
					planes:2];
	[velocity[1] clear];
	
	velocity[2] = [FXField allocWithWidth:in_width
					height:in_height
					planes:2];
	[velocity[2] clear];
	
	fluid[0] = [FXPixmap allocWithWidth:in_width
					height:in_height
					planes:4];
	[fluid[0] clear];
	
	fluid[1] = [FXPixmap allocWithWidth:in_width
					height:in_height
					planes:4];
	[fluid[1] clear];
	
	fluid[2] = [FXPixmap allocWithWidth:in_width
					height:in_height
					planes:4];
	[fluid[2] clear];
	
	pressure[0] = [FXField allocWithWidth:in_width
					height:in_height
					planes:1];
	[pressure[0] clear];
	
	pressure[1] = [FXField allocWithWidth:in_width
					height:in_height
					planes:1];
	[pressure[1] clear];
	
	temperature[0] = [FXPixmap allocWithWidth:in_width
					height:in_height
					planes:4];
	[temperature[0] clear];
	
	temperature[1] = [FXPixmap allocWithWidth:in_width
					height:in_height
					planes:4];
	[temperature[1] clear];
	
	temperature[2] = [FXPixmap allocWithWidth:in_width
					height:in_height
					planes:4];
	[temperature[2] clear];
	
	collisions = [FXPixmap allocWithWidth:in_width
					height:in_height
					planes:4];
	[collisions clear];
	
	//Clear the temperatures...
	unsigned char *c1 = [(id<FXPixmap>)temperature[0] dataPointer];
	unsigned char *c2 = [(id<FXPixmap>)temperature[1] dataPointer];
	
	int x;
	for (x=0; x<in_width*in_height; x++)
	{
		c1[x*4+0] = 128;
		c1[x*4+1] = 0;
		c1[x*4+2] = 128;
		c1[x*4+3] = 255;
		
		c2[x*4+0] = 128;
		c2[x*4+1] = 0;
		c2[x*4+2] = 128;
		c2[x*4+3] = 255;
	}
	
	external = [FXField allocWithWidth:in_width
					height:in_height
					planes:2];
	[external clear];
	
	maxVelocity = 1.0f;
	
	return self;
}


unsigned char clampC(float f)
{
	return (unsigned char)Largest(Smallest(255,(f + 0.3f)), 0);
}


- (void)dealloc
{
	if (fluid[0] != nil)		[fluid[0] release];
	if (fluid[1] != nil)		[fluid[1] release];
	if (fluid[2] != nil)		[fluid[2] release];
	if (velocity[0] != nil)		[velocity[0] release];
	if (velocity[1] != nil)		[velocity[1] release];
	if (velocity[2] != nil)		[velocity[2] release];
	if (pressure[0] != nil)		[pressure[0] release];
	if (pressure[1] != nil)		[pressure[1] release];
	if (temperature[0] != nil)	[temperature[0] release];
	if (temperature[1] != nil)	[temperature[1] release];
	if (temperature[2] != nil)	[temperature[2] release];
	if (external != nil)		[external release];
	if (collisions != nil)		[collisions release];
	
	[super dealloc];
}


- (id<FSNavierStokes>)stepSimulation:(float)in_timestep
{
	timestep = in_timestep;
	atomicY = 0;
	
	return self;
}


// This is called once a task is completed (dealing with multiple threads)
- (void)onTaskCompleted
{
	atomicY = 0;
}



- (void)runTaskAsSequence:(FXTaskSequence*)in_seq
{
	if (timestep == 0) return;

	//Cache data...
	int width = [(id<FXPixmap>)fluid[0] width];
	int height = [(id<FXPixmap>)fluid[0] height];
	
	int fsx = [fluid[0] strideX];
	int fsy = [fluid[0] strideY];
	
	int vsx = [velocity[0] strideX];
	int vsy = [velocity[0] strideY];
	
	int tsx = [temperature[0] strideX];
	int tsy = [temperature[0] strideY];
	
	int csx = [collisions strideX];
	int csy = [collisions strideY];
	
	
	//Apply the border velocities & pressure...
	float *p1 = [pressure[curField] dataPointer];
	float *p2 = [pressure[1-curField] dataPointer];
	int psx = [pressure[0] strideX];
	int psy = [pressure[0] strideY];
	
	//Current and next velocity
	float *cVel = [velocity[curField] dataPointer];
	float *nVel = [velocity[1-curField] dataPointer];
	float *mVel = nVel;
	
	//Current and next fluid
	unsigned char *cFl = [(id<FXPixmap>)fluid[curField] dataPointer];
	unsigned char *nFl = [(id<FXPixmap>)fluid[1-curField] dataPointer];
	unsigned char *mFl = nFl;
	
	//Temperature data
	unsigned char *t = [(id<FXPixmap>)temperature[curField] dataPointer];
	unsigned char *nt = [(id<FXPixmap>)temperature[1-curField] dataPointer];
	unsigned char *mt = nt;
	
	//Collision data
	unsigned char *cd = [collisions dataPointer];
	
	//Update data for the more-intensive MacCormack sceme...
	if (advect_velocity == FS_MacCormack)
	{
		mVel = [velocity[2] dataPointer];
	}
	
	if (advect_fluid == FS_MacCormack)
	{
		mFl = [(id<FXPixmap>)fluid[2] dataPointer];
	}
	
	if (advect_temperature == FS_MacCormack)
	{
		mt = [(id<FXPixmap>)temperature[2] dataPointer];
	}
	
	//Loop through... (conditionals most expensive, working along x is
	//the cheapest)
	//
	//	Give myself a nice little border...
	int y,x;
	
	if (advect_velocity == FS_Forward
		|| advect_fluid == FS_Forward
		|| advect_temperature == FS_Forward
		|| advect_pressure == FS_Forward)
	{
		y = OSAtomicIncrement32Barrier(&atomicY);
		for (; y<height-1;)
		{
			//printf("Y: %i\n", y);
			for (x=1; x<width-1; x++)
			{
				if (cd[csx*x + csy*y + 3] == 0)
				{
			
					//Compute indices
					int findex = x*fsx + y*fsy;
					int vindex = x*vsx + y*vsy;
					int tindex = x*tsx + y*tsy;
					
					//Divergence of the velocity...
					float divergence = -Divergence2(cVel, vindex, vsx, vsy) * timestep;
										
					//Compute advection on the velocities
					if (advect_velocity == FS_Forward)
					{

						mVel[vindex+0] = cVel[vindex+0] + cVel[vindex+0] * divergence;
						mVel[vindex+1] = cVel[vindex+1] + cVel[vindex+1] * divergence;
												
						//Apply the global forces...
						mVel[vindex+0] += timestep*velX;
						mVel[vindex+1] += timestep*velY;
						
						//In my previous version, I clamped the velocity.  Let's hope that this
						//is stable enough to not warrant such an extreme measure...
						
						//Beyond what I did before, this version has temperature...
						// Add buoyancy + convection
						nVel[vindex+1] += fWaterConstant * ((float)cFl[findex]+(float)cFl[findex+1]+(float)cFl[findex+2])
											* (128.0f - (float)t[tindex])*-1*timestep;
					}
					
					//Compute the advection on the fluid
					if (advect_fluid == FS_Forward)
					{					
						mFl[findex+0] = clampC((float)cFl[findex+0] + (float)cFl[findex+0] * divergence);
						mFl[findex+1] = clampC((float)cFl[findex+1] + (float)cFl[findex+1] * divergence);
						mFl[findex+2] = clampC((float)cFl[findex+2] + (float)cFl[findex+2] * divergence);
					}
					
					//Advect the temperature
					if (advect_temperature == FS_Forward)
					{
						mt[tindex] = clampC(t[tindex] + t[tindex] * divergence);
						mt[tindex+2] = 255 - mt[tindex];
					}
					
					//Advect the pressure (even more accurate)
					if (advect_pressure == FS_Forward)
					{
						int pindex = x*psx + y*psy;
						p1[pindex] =  p2[pindex] + p2[pindex] * divergence;
					}
				}
				else
				{
					int findex = x*fsx + y*fsy;
					nFl[findex+0] = 0;
					nFl[findex+1] = 0;
					nFl[findex+2] = 0;
					
					int tindex = x*tsx + y*tsy;
					mt[tindex] = 128;
					mt[tindex+2] = 255-128;
				}
			}
			
			//printf("%f\n", nVel[y+1024]);
			y = OSAtomicIncrement32Barrier(&atomicY);
		}
		
		[in_seq waitForTask];
	}
	
	//This does the backward-integration phase.
	//	It's seperated from the forward since it has
	//	quite a bit more math to work through...
	if (advect_velocity == FS_MacCormack
		|| advect_fluid == FS_MacCormack
		|| advect_temperature == FS_MacCormack
		|| advect_pressure == FS_MacCormack
		|| advect_velocity == FS_Backward
		|| advect_fluid == FS_Backward
		|| advect_temperature == FS_Backward
		|| advect_pressure == FS_Backward)
	{
		y = OSAtomicIncrement32Barrier(&atomicY);
		for (; y<height-1;)
		{
			//printf("Y: %i\n", y);
			for (x=1; x<width-1; x++)
			{
				if (cd[csx*x + csy*y + 3] == 0)
				{
			
					//Compute indices
					int findex = x*fsx + y*fsy;
					int vindex = x*vsx + y*vsy;
					int tindex = x*tsx + y*tsy;
					
					//And trace back the velocity...
					float backX = -timestep * cVel[vindex+0] + (float)x;
					float backY = -timestep * cVel[vindex+1] + (float)y;
					
					//Ensure that we're on-screen...
					if (backX < 0) backX = 0;
					if (backY < 0) backY = 0;
					if (backX >= width-1) backX = width-2;
					if (backY >= height-1) backY = height-2;
					
					//Setup ratios
					int nBx = (int)backX;
					int nBy = (int)backY;
					
					//Index in backwards spot (advec from here!)
					int ft = nBx*fsx + nBy*fsy;
					int vt = nBx*vsx + nBy*vsy;
					int tt = nBx*tsx + nBy*tsy;
					
					float scaleX = backX - (float)nBx;
					float scaleY = backY - (float)nBy;
					
					//Compute advection on the velocities
					if (advect_velocity >= FS_Backward)
					{
						mVel[vindex+0] = ArrayLInterpolation(scaleX, scaleY, cVel, vt+0, vsx, vsy);
						mVel[vindex+1] = ArrayLInterpolation(scaleX, scaleY, cVel, vt+1, vsx, vsy);
					}
					
					//Compute the advection on the fluid
					if (advect_fluid >= FS_Backward)
					{
						mFl[findex+0] = chALInterpolation(scaleX, scaleY, cFl, ft+0, fsx, fsy);
						mFl[findex+1] = chALInterpolation(scaleX, scaleY, cFl, ft+1, fsx, fsy);
						mFl[findex+2] = chALInterpolation(scaleX, scaleY, cFl, ft+2, fsx, fsy);
					}
					
					//Advect the temperature
					if (advect_temperature >= FS_Backward)
					{
						mt[tindex] = chALInterpolation(scaleX, scaleY, t, tt, tsx, tsy);
						mt[tindex+2] = 255 - mt[tindex];
					}
					
					//Advect the pressure (even more accurate)
					if (advect_pressure >= FS_Backward)
					{
						int pindex = x*psx + y*psy;
						int pt = nBx*psx + nBy*psy;
						
						p1[pindex] =  ArrayLInterpolation(scaleX, scaleY, p2, pt, psx, psy);
					}
					
					if (advect_velocity == FS_Backward)
					{
						//Apply the global forces...
						mVel[vindex+0] += timestep*velX;
						mVel[vindex+1] += timestep*velY;
						
						//In my previous version, I clamped the velocity.  Let's hope that this
						//is stable enough to not warrant such an extreme measure...
						
						//Beyond what I did before, this version has temperature...
						// Add buoyancy + convection
						nVel[vindex+1] += fWaterConstant * ((float)cFl[findex]+(float)cFl[findex+1]+(float)cFl[findex+2])
											* (128.0f - (float)t[tindex])*-1*timestep;
					}
				}
				else
				{
					int findex = x*fsx + y*fsy;
					nFl[findex+0] = 0;
					nFl[findex+1] = 0;
					nFl[findex+2] = 0;
					
					int tindex = x*tsx + y*tsy;
					mt[tindex] = 128;
					mt[tindex+2] = 255-128;
				}
			}
			
			//printf("%f\n", nVel[y+1024]);
			y = OSAtomicIncrement32Barrier(&atomicY);
		}
		
		[in_seq waitForTask];
	}
	
	
	//Next, do MacCormack style advection if needed
	if (advect_velocity == FS_MacCormack
		|| advect_fluid == FS_MacCormack
		|| advect_temperature == FS_MacCormack)
	{
		
		y = OSAtomicIncrement32Barrier(&atomicY);
		for (; y<height-1; )
		{
			for (x=1; x<width-1; x++)
			{
				if (cd[csx*x + csy*y + 3] == 0)
				{
					//Compute indices
					int findex = x*fsx + y*fsy;
					int vindex = x*vsx + y*vsy;
					int tindex = x*tsx + y*tsy;
					
					//Trace back to first advection
					float o_backX = -timestep * cVel[vindex+0] + (float)x;
					float o_backY = -timestep * cVel[vindex+1] + (float)y;
					
					//While ensuring it's on-screen
					if (o_backX < 0) o_backX = 0;
					if (o_backY < 0) o_backY = 0;
					if (o_backX >= width-1) o_backX = width-2;
					if (o_backY >= height-1) o_backY = height-2;
					
					//Save these indices...
					int i_o_backX = (int)o_backX;
					int i_o_backY = (int)o_backY;
					
					//And trace back the velocity (backwards)...
					int voldIndex = i_o_backX*vsx + i_o_backY*vsy;
					float scaleX = o_backX - (float)i_o_backX;
					float scaleY = o_backY - (float)i_o_backY;
					float tmpVel1 = ArrayLInterpolation(scaleX, scaleY, mVel, voldIndex+0, vsx, vsy);
					float tmpVel2 = ArrayLInterpolation(scaleX, scaleY, mVel, voldIndex+1, vsx, vsy);
					float backX = timestep * tmpVel1 + (float)o_backX;
					float backY = timestep * tmpVel2 + (float)o_backY;
					
					//Ensure that we're on-screen...
					if (backX < 0) backX = 0;
					if (backY < 0) backY = 0;
					if (backX >= width-1) backX = width-2;
					if (backY >= height-1) backY = height-2;
					
					//Setup ratios
					int nBx = (int)backX;
					int nBy = (int)backY;
					
					//Index in backwards spot (advec from here!)
					int ft = nBx*fsx + nBy*fsy;
					int vt = nBx*vsx + nBy*vsy;
					int tt = nBx*tsx + nBy*tsy;
					
					scaleX = backX - (float)nBx;
					scaleY = backY - (float)nBy;
					
					//Compute advection on the velocities
					if (advect_velocity == FS_MacCormack)
					{
						float nvel1 = mVel[vindex+0]
							+ 0.5f * (cVel[vindex+0] - ArrayLInterpolation(scaleX, scaleY, mVel, vt+0, vsx, vsy));
						float nvel2 =  mVel[vindex+1]
							+ 0.5f * (cVel[vindex+1] - ArrayLInterpolation(scaleX, scaleY, mVel, vt+1, vsx, vsy));
						
						//Clamp these values for stability (see GPU Gems p640)
						float vMin0 = QASmallest(cVel, voldIndex+0, vsx, vsy);
						float vMin1 = QASmallest(cVel, voldIndex+1, vsx, vsy);
						float vMax0 = QALargest(cVel, voldIndex+0, vsx, vsy);
						float vMax1 = QALargest(cVel, voldIndex+1, vsx, vsy);
						
						nVel[vindex+0] = Clamp(nvel1, vMin0, vMax0);
						nVel[vindex+1] = Clamp(nvel2, vMin1, vMax1);
						
						//Apply the global forces...
						nVel[vindex+0] += timestep*velX;
						nVel[vindex+1] += timestep*velY;
						
						//In my previous version, I clamped the velocity.  Let's hope that this
						//is stable enough to not warrant such an extreme measure...
						
						//Beyond what I did before, this version has temperature...
						// Add buoyancy + convection
						nVel[vindex+1] += fWaterConstant * ((float)cFl[findex]+(float)cFl[findex+1]+(float)cFl[findex+2])
											* (128.0f - (float)t[tindex])*-1*timestep;
					}
					
					//And again clamp these fluid values for stability...
					if (advect_fluid == FS_MacCormack)
					{
						
						//Compute advection on fluid.
						nFl[findex] = clampC(mFl[findex+0]
									+0.5f*cFl[findex+0] - 0.5f*ArrayLInterpolation(scaleX, scaleY, mFl, ft+0, fsx, fsy)
									+ 0.55f);
						nFl[findex+1] = clampC(mFl[findex+1]
									+0.5f*cFl[findex+1] - 0.5f*ArrayLInterpolation(scaleX, scaleY, mFl, ft+1, fsx, fsy)
									+ 0.55f);
						nFl[findex+2] = clampC(mFl[findex+2]
									+0.5f*cFl[findex+2] - 0.5f*ArrayLInterpolation(scaleX, scaleY, mFl, ft+2, fsx, fsy)
									+ 0.55f);
						
						int ofindex = i_o_backX*fsx + i_o_backY*fsy;
						unsigned char minR = QASmallest(cFl, ofindex+0, fsx, fsy);
						unsigned char minG = QASmallest(cFl, ofindex+1, fsx, fsy);
						unsigned char minB = QASmallest(cFl, ofindex+2, fsx, fsy);
						unsigned char maxR = QALargest(cFl, ofindex+0, fsx, fsy);
						unsigned char maxG = QALargest(cFl, ofindex+1, fsx, fsy);
						unsigned char maxB = QALargest(cFl, ofindex+2, fsx, fsy);
						
						nFl[findex+0] = Clamp(nFl[findex+0], minR, maxR);
						nFl[findex+1] = Clamp(nFl[findex+1], minG, maxG);
						nFl[findex+2] = Clamp(nFl[findex+2], minB, maxB);
					}
					
					if (advect_temperature == FS_MacCormack)
					{
						nt[tindex] = clampC((float)mt[tindex]
											+0.55f+0.5f*((float)t[tindex] - (
											ArrayLInterpolation(scaleX, scaleY, mt, tt, tsx, tsy))));
						
						int toldIndex = i_o_backX*tsx + i_o_backY *tsy;
						
						unsigned char min = QASmallest(t, toldIndex, tsx, tsy);
						unsigned char max = QALargest(t, toldIndex, tsx, tsy);
						
						nt[tindex] = Clamp(nt[tindex], min, max);
						
						nt[tindex+2] = 255 - nt[tindex];
					}
				} // End if on-collision
			}
			y = OSAtomicIncrement32Barrier(&atomicY);
		}
		
		[in_seq waitForTask];
	} // End if MacCormack check
	
	//Apply viscocity
	jacobi_diffusion(40, width, height, nVel, cVel, vsx, vsy,
						viscocity, timestep, cd, csx, csy,
						in_seq, &atomicY);
	
	//Finally, let's solve for the pressures!
	jacobi_pressure(40, width, height, p1, p2, nVel, psx, psy,
						vsx, vsy, cd, csx, csy,
						in_seq, &atomicY,
						nFl, fsx, fsy);
	
	//Apply the pressure!
	y = OSAtomicIncrement32Barrier(&atomicY);
	for (; y<height-1; )
	{
		for (x=1; x<width-1; x++)
		{
			int vindex = x*vsx + y*vsy;
			int pindex = x*psx + y*psy;
			
			nVel[vindex+0] -= (p1[pindex+psx] - p1[pindex-psx]);
			nVel[vindex+1] -= (p1[pindex+psy] - p1[pindex-psy]);
		}
		y = OSAtomicIncrement32Barrier(&atomicY);
	}
	[in_seq waitForTask];
	
	//Done!
	if (OSAtomicIncrement32Barrier(&atomicY) == 1)
		curField = 1-curField;
	
	return;
}


- (id<FXPixmap>)fluid
{
	return fluid[curField];
}

- (id<FXPixmap>)collisions
{
	return collisions;
}

- (id<FXTexture>)fluidTexture
{
	return nil;
}

- (id<FXPixmap>)temperature
{
	return temperature[curField];
}

- (id<FSNavierStokes>)addVelocityX:(float)in_x Y:(float)in_y
{
	velX += in_x;
	velY += in_y;
	
	return self;
}

- (void)setViscocity:(float)newValue
{
	viscocity = newValue;
}
- (void)setMaxVelocity:(float)newValue
{
	maxVelocity = newValue;
}


//We always take pressure #0
- (float)pressureAccuracy
{
	int sx = [pressure[0] strideX];
	int sy = [pressure[0] strideY];
	int w = [(id<FXField>)pressure[0] width];
	int h = [(id<FXField>)pressure[0] height];
	float *data = [pressure[0] dataPointer];
	
	int iw, ih;
	
	float totalDistance = 0;
	
	for (ih=1; ih<h-1; ih++)
	{
		for (iw=1; iw<w-1; iw++)
		{
			int c = iw*sx + ih*sy;
			float distance = data[c+sx] + data[c+sy] + data[c-sx] + data[c-sy]
							- 5*data[c];
			if (distance < 0)
				distance *= -1;
			
			totalDistance += distance;
		}
	}
	
	totalDistance /= (float)(w*h);
	totalDistance /= 10.0f;
	//printf("Pressure: %f\n", totalDistance);
	
	if (totalDistance > 100)
		totalDistance = 100.0f;
	
	return 100-totalDistance;
}

- (float)viscocityAccuracy
{
	return 0;
}

@end
