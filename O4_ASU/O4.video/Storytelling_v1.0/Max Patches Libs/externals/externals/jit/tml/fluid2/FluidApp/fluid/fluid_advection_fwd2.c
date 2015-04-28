/*
 *  fluid_advection_fwd2.c
 *  FluidApp
 *
 *		This advection scheme attempts to accurately follow the characteristics
 *		of a given particle in order to improve advection.   The theory being
 *		that this will run extremely fast given it's deterministic.
 *
 */

#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <math.h>
#include <stdio.h>

#include "x_simd.h"


void fluid_advection_fwd_generate_repos(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct advection_stam_velocity *d = &mode->advection_stam_velocity;
	
	int w = fieldWidth(d->srcVelX);
	
	float *velX		= fieldData(d->srcVelX);
	float *velY		= fieldData(d->srcVelY);
	
	float *destX	= fieldData(d->dstVelX);
	float *destY	= fieldData(d->dstVelY);
	
	int sY = fieldStrideY(d->srcVelY);
	
	float timestep = -d->timestep / 9.0f;
	
	float fy = (float)y;
	int x;
	
#ifdef X_SIMD
	
	x128f *vVelX = (x128f*)fluidFloatPointer(velX, y*sY);
	x128f *vVelY = (x128f*)fluidFloatPointer(velY, y*sY);
	
	x128f *vDX = (x128f*)fluidFloatPointer(destX, y*sY);
	x128f *vDY = (x128f*)fluidFloatPointer(destY, y*sY);
	
	x128f fvx = {0,1,2,3};
	x128f fvx2 = {4,5,6,7};
	x128f fvx3 = {8,9,10,11};
	x128f fvx4 = {12,13,14,15};
	x128f fvy = {fy,fy,fy,fy};
	x128f v4 = {4,4,4,4};
	x128f v16 = {16,16,16,16};
	
	x128f vT = {timestep, timestep, timestep, timestep};
	
	w/=4;
	
	x=0;
	while (x<w-3)
	{
		x128f r1 = x_madd(vT, vVelX[x], fvx);
		x128f r2 = x_madd(vT, vVelX[x+1], fvx2);
		x128f r3 = x_madd(vT, vVelX[x+2], fvx3);
		x128f r4 = x_madd(vT, vVelX[x+3], fvx4);
		
		fvx = x_add(fvx, v16);
		fvx2 = x_add(fvx2, v16);
		fvx3 = x_add(fvx3, v16);
		fvx4 = x_add(fvx4, v16);
		
		vDX[x] = r1;
		vDX[x+1] = r2;
		vDX[x+2] = r3;
		vDX[x+3] = r4;
		
		x+=4;
	}
	while (x<w)
	{
		x128f r1 = x_madd(vT, vVelX[x], fvx);
		
		fvx = x_add(fvx, v4);
		
		vDX[x] = r1;
		
		x++;
	}
	
	x=0;
	while (x<w-3)
	{
		vDY[x] = x_madd(vT, vVelY[x], fvy);
		vDY[x+1] = x_madd(vT, vVelY[x+1], fvy);
		vDY[x+2] = x_madd(vT, vVelY[x+2], fvy);
		vDY[x+3] = x_madd(vT, vVelY[x+3], fvy);
		
		x+=4;
	}
	while (x<w)
	{
		vDY[x] = x_madd(vT, vVelY[x], fvy);
		
		x++;
	}
#else
	int sX = fieldStrideX(d->srcVelY);
	float fx;
	for (x=0,fx=0; x<w; x++,fx++)
	{
		// Note (x+1 - (x-1))/2 = 2/2 = 1
		// Note (x-x)/2 = 0
		fluidFloatPointer(destX, x*sX + y*sY)[0] =
					fx
					+ timestep * fluidFloatPointer(velX,x*sX + y*sY)[0];
	}
	
	for (x=0; x<w; x++)
	{
		fluidFloatPointer(destY, x*sX + y*sY)[0] =
					fy
					+ timestep * fluidFloatPointer(velY, x*sX + y*sY)[0];
	}
#endif
}



void fluid_advection_fwd_repos(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct advection_stam_velocity *d = &mode->advection_stam_velocity;
	
	int w = fieldWidth(d->srcVelX);
	int h = fieldHeight(d->srcVelY);
	
	float *velX		= fieldData(d->srcVelX);
	float *velY		= fieldData(d->srcVelY);
	
	float *destX	= fieldData(d->dstVelX);
	float *destY	= fieldData(d->dstVelY);
	
	int sY = fieldStrideY(d->srcVelY);
	int sX = fieldStrideX(d->srcVelY);
	
	float timestep = -d->timestep / 18.0f;
	
	if (y==0 || y == h-1)
	{
		if (d->clamp)
		{
			float w2 = (float)w-2;
			float h2 = (float)h-2;
			int x;
			float fx;
			x=0;
			fluidFloatPointer(destX, x*sX + y*sY)[0] = 0;
			for (x=1,fx=1; x<w-1; x++,fx++)
			{
				float vx = fluidFloatPointer(velX, x*sX + y*sY)[0];
				
				float dLeft = fluidFloatPointer(destX, (x-1)*sX + y*sY)[0];
				float dRight = fluidFloatPointer(destX, (x+1)*sX + y*sY)[0];
				
				// Note (x+1 - (x-1))/2 = 2/2 = 1
				// Note (x-x)/2 = 0
				fluidFloatPointer(destX, x*sX + y*sY)[0] +=
						timestep * vx * (dRight - dLeft);
				
				fluidFloatPointer(destX, x*sX + y*sY)[0] = 
					fminf(fmaxf(fluidFloatPointer(destX, x*sX + y*sY)[0],0),w2);
				
				
				fluidFloatPointer(destX, x*sX + y*sY)[0] = 
					fminf(fmaxf(fluidFloatPointer(destX, x*sX + y*sY)[0],fx-ADVECT_DIST),fx+ADVECT_DIST);
			}
			fluidFloatPointer(destX, x*sX + y*sY)[0] = w-2;
			
			x=0;
			fluidFloatPointer(destY, x*sX + y*sY)[0] = y==0?0:h-2;
			float fy = (float)y;
			for (x=1; x<w-1; x++)
			{
				float vx = fluidFloatPointer(velX, x*sX + y*sY)[0];
				
				float dLeft = fluidFloatPointer(destY, (x-1)*sX + y*sY)[0];
				float dRight = fluidFloatPointer(destY, (x+1)*sX + y*sY)[0];
				
				// Note (x+1 - (x-1))/2 = 2/2 = 1
				// Note (x-x)/2 = 0
				fluidFloatPointer(destY, x*sX + y*sY)[0] +=
						timestep * vx * (dRight - dLeft);
				
				fluidFloatPointer(destY, x*sX + y*sY)[0] = 
					fminf(fmaxf(fluidFloatPointer(destY, x*sX + y*sY)[0],0),h2);
				
				fluidFloatPointer(destY, x*sX + y*sY)[0] = 
					fminf(fmaxf(fluidFloatPointer(destY, x*sX + y*sY)[0],fy-ADVECT_DIST),fy+ADVECT_DIST);
			}
			fluidFloatPointer(destY, x*sX + y*sY)[0] = y==0?0:h-2;
		}
		else
		{
			int x;
			fluidFloatPointer(destX, y*sY)[0] = 0;
			for (x=1; x<w-1; x++)
			{
				float vx = fluidFloatPointer(velX, x*sX + y*sY)[0];
				
				float dLeft = fluidFloatPointer(destX, (x-1)*sX + y*sY)[0];
				float dRight = fluidFloatPointer(destX, (x+1)*sX + y*sY)[0];
				
				// Note (x+1 - (x-1))/2 = 2/2 = 1
				// Note (x-x)/2 = 0
				fluidFloatPointer(destX, x*sX + y*sY)[0] +=
						timestep * vx * (dRight - dLeft);
			}
			fluidFloatPointer(destX, x*sX + y*sY)[0] = (float)(w-1);
			
			for (x=1; x<w-1; x++)
			{
				float vx = fluidFloatPointer(velX, x*sX + y*sY)[0];
				
				float dLeft = fluidFloatPointer(destY, (x-1)*sX + y*sY)[0];
				float dRight = fluidFloatPointer(destY, (x+1)*sX + y*sY)[0];
				
				// Note (x+1 - (x-1))/2 = 2/2 = 1
				// Note (x-x)/2 = 0
				fluidFloatPointer(destY, x*sX + y*sY)[0] +=
					timestep * vx * (dRight - dLeft);
			}
		}
	}
	else
	{
#ifdef X_SIMD
		x128f *vVelX = (x128f*)fluidFloatPointer(velX, y*sY);
		x128f *vVelY = (x128f*)fluidFloatPointer(velY, y*sY);
		
		x128f *vDX = (x128f*)fluidFloatPointer(destX, y*sY);
		x128f *vDY = (x128f*)fluidFloatPointer(destY, y*sY);
		
		x128f *vDXN = (x128f*)fluidFloatPointer(destX, (y+1)*sY);
		x128f *vDYN = (x128f*)fluidFloatPointer(destY, (y+1)*sY);
		
		x128f *vDXP = (x128f*)fluidFloatPointer(destX, (y-1)*sY);
		x128f *vDYP = (x128f*)fluidFloatPointer(destY, (y-1)*sY);
		
		x128f vZero = {0,0,0,0};
		x128f vPN = {0,0,0,0};
		
		x128f v9 = {ADVECT_DIST,ADVECT_DIST,ADVECT_DIST,ADVECT_DIST};
		
		float fw = (float)w-2.0f;
		float fh = (float)h-2.0f;
		
		x128f vNNX = {fw,fw,fw,fw};
		x128f vNNY = {fh,fh,fh,fh};
		
		x128f vT = {timestep, timestep, timestep, timestep};
		
#define ADVECT_X_PRE(n)	\
		x128f sl_vx ## n = x_sld(vDX[x + n], vDX[x+1 + n],4);\
		x128f sr_vx ## n = x_sld(vDX[x-1 + n], vDX[x + n], 12);
		
#define ADVECT_X_PRE_0(n)	\
		x128f sl_vx ## n = x_sld(vDX[x + n], vDX[x+1 + n],4);\
		x128f sr_vx ## n = x_sld(vZero, vDX[x + n], 12);
		
#define ADVECT_X_PRE_N(n)	\
		x128f sl_vx ## n = x_sld(vDX[x + n], vZero,4);\
		x128f sr_vx ## n = x_sld(vDX[x-1 + n], vDX[x + n], 12);
		
#define ADVECT_Y_PRE(n)	\
		x128f sl_vy ## n = x_sld(vDY[x + n], vDY[x+1 + n],4);	\
		x128f sr_vy ## n = x_sld(vDY[x-1 + n], vDY[x + n], 12);
		
#define ADVECT_Y_PRE_0(n)	\
		x128f sl_vy ## n = x_sld(vDY[x + n], vDY[x+1 + n],4);	\
		x128f sr_vy ## n = x_sld(vZero, vDY[x + n], 12);
		
#define ADVECT_Y_PRE_N(n)	\
		x128f sl_vy ## n = x_sld(vDY[x + n], vZero,4);	\
		x128f sr_vy ## n = x_sld(vDY[x-1 + n], vDY[x + n], 12);
		
#define ADVECT_X_POST(n)												\
		x128f postX ## n = x_madd(vT, x_madd(vVelX[x+n],		\
							x_sub(sl_vx ## n, sr_vx ## n),			\
								x_mul(vVelY[x+n],					\
									x_sub(vDXN[x+n], vDXP[x+n]))),	\
							vDX[x+n]);
		
#define ADVECT_X_ASSIGN(n)											\
		postX ## n = x_min(x_max(postX ## n, vPN), vNNX); \
		vDX[x+n] = x_min(x_max(postX ## n, x_sub(vX ## n, v9)), x_add(vX##n,v9));
		
#define ADVECT_X_ASSIGN_SIMPLE(n)											\
		vDX[x+n] = (postX ## n);
		
#define ADVECT_Y_POST(n)											\
		x128f postY ## n = x_madd(vT, x_madd(vVelX[x+n],	\
						x_sub(sl_vy ## n, sr_vy ## n),			\
							x_mul(vVelY[x+n],					\
								x_sub(vDYN[x+n], vDYP[x+n]))),	\
						vDY[x+n]);
		
#define ADVECT_Y_ASSIGN(n)										\
		vDY[x+n] = x_min(x_max(postY ## n, vPN), vNNY);
		
#define ADVECT_Y_ASSIGN_SIMPLE(n)										\
		vDY[x+n] = (postY ## n);
		
		w = w/4;
		int x;
		if (d->clamp)
		{
			x128f vX0 = {0,1,2,3};
			x128f vX1 = {4,5,6,7};
			x128f vX2 = {8,9,10,11};
			x128f vX3 = {12,13,14,15};
			x128f v4 = {4,4,4,4};
			x128f v16 = {16,16,16,16};
			x = 0;
			{
				ADVECT_X_PRE_0(0);
				ADVECT_X_POST(0);
				ADVECT_X_ASSIGN(0);
				vX0 = x_add(vX0, v4);
				vX1 = x_add(vX1, v4);
				vX2 = x_add(vX2, v4);
				vX3 = x_add(vX3, v4);
			}
			x=1;
			while (x < w-4)
			{
				ADVECT_X_PRE(0);
				ADVECT_X_PRE(1);
				ADVECT_X_PRE(2);
				ADVECT_X_PRE(3);
				
				ADVECT_X_POST(0);
				ADVECT_X_POST(1);
				ADVECT_X_POST(2);
				ADVECT_X_POST(3);
				
				ADVECT_X_ASSIGN(0);
				ADVECT_X_ASSIGN(1);
				ADVECT_X_ASSIGN(2);
				ADVECT_X_ASSIGN(3);
				
				vX0 = x_add(vX0, v16);
				vX1 = x_add(vX1, v16);
				vX2 = x_add(vX2, v16);
				vX3 = x_add(vX3, v16);
				
				x+=4;
			}
			while( x<w-1)
			{
				ADVECT_X_PRE(0);
				ADVECT_X_POST(0);
				ADVECT_X_ASSIGN(0);
				vX0 = x_add(vX0, v4);
				x++;
			}
			{
				ADVECT_X_PRE_N(0);
				ADVECT_X_POST(0);
				ADVECT_X_ASSIGN(0);
			}
			
			
			x128f vY = {(float)y,(float)y,(float)y,(float)y};
			vNNY = x_min(vNNY, x_add(vY, v9));
			vPN = x_max(vPN, x_sub(vY, v9));
			x=0;
			{
				ADVECT_Y_PRE_0(0);
				ADVECT_Y_POST(0);
				ADVECT_Y_ASSIGN(0);
			}
			x=1;
			while(x<w-4)
			{
				ADVECT_Y_PRE(0);
				ADVECT_Y_PRE(1);
				ADVECT_Y_PRE(2);
				ADVECT_Y_PRE(3);
				
				ADVECT_Y_POST(0);
				ADVECT_Y_POST(1);
				ADVECT_Y_POST(2);
				ADVECT_Y_POST(3);
				
				ADVECT_Y_ASSIGN(0);
				ADVECT_Y_ASSIGN(1);
				ADVECT_Y_ASSIGN(2);
				ADVECT_Y_ASSIGN(3);
				x+=4;
			}
			while(x<w-1)
			{
				ADVECT_Y_PRE(0);
				ADVECT_Y_POST(0);
				ADVECT_Y_ASSIGN(0);
				x++;
			}
			{
				ADVECT_Y_PRE_N(0);
				ADVECT_Y_POST(0);
				ADVECT_Y_ASSIGN(0);
			}
		}
		else
		{
			x=0;
			{
				ADVECT_X_PRE_0(0);
				ADVECT_X_POST(0);
				ADVECT_X_ASSIGN_SIMPLE(0);
			}
			x=1;
			while(x<w-4)
			{
				ADVECT_X_PRE(0);
				ADVECT_X_PRE(1);
				ADVECT_X_PRE(2);
				ADVECT_X_PRE(3);
				ADVECT_X_POST(0);
				ADVECT_X_POST(1);
				ADVECT_X_POST(2);
				ADVECT_X_POST(3);
				ADVECT_X_ASSIGN_SIMPLE(0);
				ADVECT_X_ASSIGN_SIMPLE(1);
				ADVECT_X_ASSIGN_SIMPLE(2);
				ADVECT_X_ASSIGN_SIMPLE(3);
				x+=4;
			}
			while(x<w-1)
			{
				ADVECT_X_PRE(0);
				ADVECT_X_POST(0);
				ADVECT_X_ASSIGN_SIMPLE(0);
				x++;
			}
			{
				ADVECT_X_PRE_N(0);
				ADVECT_X_POST(0);
				ADVECT_X_ASSIGN_SIMPLE(0);
			}
			
			
			x=0;
			{
				ADVECT_Y_PRE_0(0);
				ADVECT_Y_POST(0);
				ADVECT_Y_ASSIGN_SIMPLE(0);
			}
			x=1;
			while (x < w-4)
			{
				ADVECT_Y_PRE(0);
				ADVECT_Y_PRE(1);
				ADVECT_Y_PRE(2);
				ADVECT_Y_PRE(3);
				ADVECT_Y_POST(0);
				ADVECT_Y_POST(1);
				ADVECT_Y_POST(2);
				ADVECT_Y_POST(3);
				ADVECT_Y_ASSIGN_SIMPLE(0);
				ADVECT_Y_ASSIGN_SIMPLE(1);
				ADVECT_Y_ASSIGN_SIMPLE(2);
				ADVECT_Y_ASSIGN_SIMPLE(3);
				x+=4;
			}
			while (x < w-1)
			{
				ADVECT_Y_PRE(0);
				ADVECT_Y_POST(0);
				ADVECT_Y_ASSIGN_SIMPLE(0);
				x++;
			}
			{
				ADVECT_Y_PRE_N(0);
				ADVECT_Y_POST(0);
				ADVECT_Y_ASSIGN_SIMPLE(0);
			}
		}
#else
		if (d->clamp)
		{
			float w2 = (float)w-2;
			float h2 = (float)h-2;
			int x;
			float fx;
			for (x=1,fx=1; x<w-1; x++,fx++)
			{
				float vx = fluidFloatPointer(velX, x*sX + y*sY)[0];
				float vy = fluidFloatPointer(velY, x*sX + y*sY)[0];
				
				float dLeft = fluidFloatPointer(destX, (x-1)*sX + y*sY)[0];
				float dRight = fluidFloatPointer(destX, (x+1)*sX + y*sY)[0];
				
				float dUp = fluidFloatPointer(destX, x*sX + (y-1)*sY)[0];
				float dDown = fluidFloatPointer(destX, x*sX + (y+1)*sY)[0];
				
				// Note (x+1 - (x-1))/2 = 2/2 = 1
				// Note (x-x)/2 = 0
				fluidFloatPointer(destX, x*sX + y*sY)[0] +=
						timestep * vx * (dRight - dLeft)
						+ timestep *vy * (dDown - dUp);
				
				fluidFloatPointer(destX, x*sX + y*sY)[0] = 
					fminf(fmaxf(fluidFloatPointer(destX, x*sX + y*sY)[0],0),w2);
				
				
				fluidFloatPointer(destX, x*sX + y*sY)[0] = 
					fminf(fmaxf(fluidFloatPointer(destX, x*sX + y*sY)[0],fx-ADVECT_DIST),fx+ADVECT_DIST);
			}
			
			float fy = (float)y;
			for (x=1; x<w-1; x++)
			{
				float vx = fluidFloatPointer(velX, x*sX + y*sY)[0];
				float vy = fluidFloatPointer(velY, x*sX + y*sY)[0];
				
				float dLeft = fluidFloatPointer(destY, (x-1)*sX + y*sY)[0];
				float dRight = fluidFloatPointer(destY, (x+1)*sX + y*sY)[0];
				
				float dUp = fluidFloatPointer(destY, x*sX + (y-1)*sY)[0];
				float dDown = fluidFloatPointer(destY, x*sX + (y+1)*sY)[0];
				
				// Note (x+1 - (x-1))/2 = 2/2 = 1
				// Note (x-x)/2 = 0
				fluidFloatPointer(destY, x*sX + y*sY)[0] +=
						timestep * vx * (dRight - dLeft)
						+ timestep *vy * (dDown - dUp);
				
				fluidFloatPointer(destY, x*sX + y*sY)[0] = 
					fminf(fmaxf(fluidFloatPointer(destY, x*sX + y*sY)[0],0),h2);
				
				fluidFloatPointer(destY, x*sX + y*sY)[0] = 
					fminf(fmaxf(fluidFloatPointer(destY, x*sX + y*sY)[0],fy-ADVECT_DIST),fy+ADVECT_DIST);
			}
		}
		else
		{
			int x;
			fluidFloatPointer(destX, y*sY)[0] = 0;
			for (x=1; x<w-1; x++)
			{
				float vx = fluidFloatPointer(velX, x*sX + y*sY)[0];
				float vy = fluidFloatPointer(velY, x*sX + y*sY)[0];
				
				float dLeft = fluidFloatPointer(destX, (x-1)*sX + y*sY)[0];
				float dRight = fluidFloatPointer(destX, (x+1)*sX + y*sY)[0];
				
				float dUp = fluidFloatPointer(destX, x*sX + (y-1)*sY)[0];
				float dDown = fluidFloatPointer(destX, x*sX + (y+1)*sY)[0];
				
				// Note (x+1 - (x-1))/2 = 2/2 = 1
				// Note (x-x)/2 = 0
				fluidFloatPointer(destX, x*sX + y*sY)[0] +=
						timestep * vx * (dRight - dLeft)
						+ timestep *vy * (dDown - dUp);
			}
			fluidFloatPointer(destX, x*sX + y*sY)[0] = (float)(w-1);
			
			for (x=1; x<w-1; x++)
			{
				float vx = fluidFloatPointer(velX, x*sX + y*sY)[0];
				float vy = fluidFloatPointer(velY, x*sX + y*sY)[0];
				
				float dLeft = fluidFloatPointer(destY, (x-1)*sX + y*sY)[0];
				float dRight = fluidFloatPointer(destY, (x+1)*sX + y*sY)[0];
				
				float dUp = fluidFloatPointer(destY, x*sX + (y-1)*sY)[0];
				float dDown = fluidFloatPointer(destY, x*sX + (y+1)*sY)[0];
				
				// Note (x+1 - (x-1))/2 = 2/2 = 1
				// Note (x-x)/2 = 0
				fluidFloatPointer(destY, x*sX + y*sY)[0] +=
					timestep * vx * (dRight - dLeft)
					+ timestep *vy * (dDown - dUp);
			}
		}
#endif

	}
}

