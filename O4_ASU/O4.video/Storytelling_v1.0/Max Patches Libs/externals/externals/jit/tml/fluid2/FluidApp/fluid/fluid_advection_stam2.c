/*
 *  fluid_advection_stam2.c
 *  FluidApp
 */

/*
 *  fluid_advection_stam.c
 *  FluidApp
 */

#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <math.h>

//Basic advection of only the velocity...
void fluid_advection_stam_velocity_npt(fluid *in_f, int y, pvt_fluidMode *mode)
{
	int x;
	int w = fieldWidth(mode->advection_stam_velocity.srcVelX);
	int h = fieldHeight(mode->advection_stam_velocity.srcVelY);
	
	float *velX		= fieldData(mode->advection_stam_velocity.srcVelX);
	float *velY		= fieldData(mode->advection_stam_velocity.srcVelY);
	
	float *velDestX	= fieldData(mode->advection_stam_velocity.dstVelX);
	float *velDestY	= fieldData(mode->advection_stam_velocity.dstVelY);
	
	
	float *repDestX	= fieldData(mode->advection_stam_velocity.dstReposX);
	float *repDestY	= fieldData(mode->advection_stam_velocity.dstReposY);
	
	int sX = fieldStrideX(mode->advection_stam_velocity.srcVelX);
	int sY = fieldStrideY(mode->advection_stam_velocity.srcVelY);
	
	float timestep = -mode->advection_stam_velocity.timestep * 0.1f;
	
	//Loop over the data and do the desired computation
	float fx;
	float fy = (float)y;

	
	x=0;
	fx=0;
	
	while(x<w)
	{
		float fDataX  = fluidFloatPointer(velX, x*sX + y*sY)[0];
		float fDataY  = fluidFloatPointer(velY, x*sX + y*sY)[0];
		
		/*Find the cell back in time	(keep a -10,10 radius)*/
		float backX  = timestep * fDataX  + fx;
		float backY  = timestep * fDataY  + fy;
		
		int nBackX  = (int)backX ;
		int nBackY  = (int)backY ;
		
		float scaleX  = backX  - (float)(nBackX );
		float scaleY  = backY  - (float)(nBackY );
		
		/*Clamp as it's easier to parallelize given the scheduler*/
		nBackX  = fluidClamp(nBackX , 0,w-2);
		nBackY  = fluidClamp(nBackY , 0,h-2);
		
		/*That was easy... now advect the velocity...*/
		float *fVelDestX  = fluidFloatPointer(velDestX, x*sX + y*sY);
		float *fVelDestY  = fluidFloatPointer(velDestY, x*sX + y*sY);
		
		int offBackX  = nBackX  * sX;
		int offBackY  = nBackY  * sY;
		int offX2  = offBackX  + sX;
		int offY2  = offBackY  + sY;
		
		float bZZ_x  = fluidFloatPointer(velX, offBackX  + offBackY )[0];
		float bOZ_x  = fluidFloatPointer(velX, offX2  + offBackY )[0];
		float bZO_x  = fluidFloatPointer(velX, offBackX  + offY2 )[0];
		float bOO_x  = fluidFloatPointer(velX, offX2  + offY2 )[0];
		
		float bZZ_y  = fluidFloatPointer(velY, offBackX  + offBackY )[0];
		float bOZ_y  = fluidFloatPointer(velY, offX2  + offBackY )[0];
		float bZO_y  = fluidFloatPointer(velY, offBackX  + offY2 )[0];
		float bOO_y  = fluidFloatPointer(velY, offX2  + offY2 )[0];
		
		//Second velocities are here!!!!
		int i;
		for (i=0; i<9;i++)
		{
			fDataX = fluidLinearInterpolation(scaleX , scaleY ,
									 bZZ_x , bOZ_x , bZO_x , bOO_x );
			
			fDataY = fluidLinearInterpolation(scaleX , scaleY ,	
									 bZZ_y , bOZ_y , bZO_y , bOO_y );
			
			//Compute using the next characteristic that we find (follow the curve!)
			backX += timestep * fDataX;
			backY += timestep * fDataY;
			
			nBackX = (int)backX;
			nBackY = (int)backY;
			
			scaleX = backX - (float)nBackX;
			scaleY = backY - (float)nBackY;
			
			nBackX = fluidClamp(nBackX, 0, w-2);
			nBackY = fluidClamp(nBackY, 0, h-2);
			
			offBackX  = nBackX  * sX;
			offBackY  = nBackY  * sY;
			offX2  = offBackX  + sX;
			offY2  = offBackY  + sY;
			
			bZZ_x  = fluidFloatPointer(velX, offBackX  + offBackY )[0];
			bOZ_x  = fluidFloatPointer(velX, offX2  + offBackY )[0];
			bZO_x  = fluidFloatPointer(velX, offBackX  + offY2 )[0];
			bOO_x  = fluidFloatPointer(velX, offX2  + offY2 )[0];
			
			bZZ_y  = fluidFloatPointer(velY, offBackX  + offBackY )[0];
			bOZ_y  = fluidFloatPointer(velY, offX2  + offBackY )[0];
			bZO_y  = fluidFloatPointer(velY, offBackX  + offY2 )[0];
			bOO_y  = fluidFloatPointer(velY, offX2  + offY2 )[0];
			
			//Second velocities are here!!!!
			fDataX = fluidLinearInterpolation(scaleX , scaleY ,
											  bZZ_x , bOZ_x , bZO_x , bOO_x );
			
			fDataY = fluidLinearInterpolation(scaleX , scaleY ,	
											  bZZ_y , bOZ_y , bZO_y , bOO_y );
		}
		
		
		backX = fluidClamp(backX, 0, w-2);
		backY = fluidClamp(backY, 0, h-2);
		fluidFloatPointer(repDestX, x*sX + y*sY)[0] = backX;
		fluidFloatPointer(repDestY, x*sX + y*sY)[0] = backY;
		
		fVelDestX[0] = fDataX;
		fVelDestY[0] = fDataY;
		
		x++;
		fx++;
	}
}

