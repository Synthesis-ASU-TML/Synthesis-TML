/*
 *  fluid_advection_stam.c
 *  FluidApp
 */

#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <math.h>

//Basic advection of only the velocity...
void fluid_advection_stam_velocity(fluid *in_f, int y, pvt_fluidMode *mode)
{
	int x;
	int w = fieldWidth(mode->advection_stam_velocity.srcVelX);
	int h = fieldHeight(mode->advection_stam_velocity.srcVelY);
	
	float *velX		= fieldData(mode->advection_stam_velocity.srcVelX);
	float *velY		= fieldData(mode->advection_stam_velocity.srcVelY);
	
	float *velDestX	= fieldData(mode->advection_stam_velocity.dstVelX);
	float *velDestY	= fieldData(mode->advection_stam_velocity.dstVelY);
	
	int sX = fieldStrideX(mode->advection_stam_velocity.srcVelX);
	int sY = fieldStrideY(mode->advection_stam_velocity.srcVelY);
	
	float timestep = mode->advection_stam_velocity.timestep;
	
	//Loop over the data and do the desired computation
	float fx;
	float fy = (float)y;
	
#define ADVECT_PRE(n)																\
	float fDataX ## n = fluidFloatPointer(velX, x*sX + y*sY)[n];					\
	float fDataY ## n = fluidFloatPointer(velY, x*sX + y*sY)[n];					\
																					\
	/*Find the cell back in time	(keep a -10,10 radius)*/						\
	float backX ## n = -timestep * fDataX ## n + fx+n;								\
	float backY ## n = -timestep * fDataY ## n + fy;								\
																					\
	int nBackX ## n = (int)backX ## n;												\
	int nBackY ## n = (int)backY ## n;												\
																					\
	float scaleX ## n = backX ## n - (float)(nBackX ## n);							\
	float scaleY ## n = backY ## n - (float)(nBackY ## n);							\
																					\
	/*Clamp as it's easier to parallelize given the scheduler*/						\
	nBackX ## n = fluidClamp(nBackX ## n, 0,w-2);									\
	nBackY ## n = fluidClamp(nBackY ## n, 0,h-2);									\
																					\
	/*That was easy... now advect the velocity...*/									\
	float *fVelDestX ## n = fluidFloatPointer(velDestX, x*sX + y*sY);			\
	float *fVelDestY ## n = fluidFloatPointer(velDestY, x*sX + y*sY);			\
																					\
	int offBackX ## n = nBackX ## n * sX;											\
	int offBackY ## n = nBackY ## n * sY;											\
	int offX2 ## n = offBackX ## n + sX;											\
	int offY2 ## n = offBackY ## n + sY;											\
																					\
	float bZZ_x ## n = fluidFloatPointer(velX, offBackX ## n + offBackY ## n)[0];	\
	float bOZ_x ## n = fluidFloatPointer(velX, offX2 ## n + offBackY ## n)[0];		\
	float bZO_x ## n = fluidFloatPointer(velX, offBackX ## n + offY2 ## n)[0];		\
	float bOO_x ## n = fluidFloatPointer(velX, offX2 ## n + offY2 ## n)[0];			\
																					\
	float bZZ_y ## n = fluidFloatPointer(velY, offBackX ## n + offBackY ## n)[0];	\
	float bOZ_y ## n = fluidFloatPointer(velY, offX2 ## n + offBackY ## n)[0];		\
	float bZO_y ## n = fluidFloatPointer(velY, offBackX ## n + offY2 ## n)[0];		\
	float bOO_y ## n = fluidFloatPointer(velY, offX2 ## n + offY2 ## n)[0];
	
#define ADVECT_X(n)																	\
	fVelDestX ## n[n] = fluidLinearInterpolation(scaleX ## n, scaleY ## n,			\
								bZZ_x ## n, bOZ_x ## n, bZO_x ## n, bOO_x ## n);
	
#define ADVECT_Y(n)																	\
	fVelDestY ## n[n] = fluidLinearInterpolation(scaleX ## n, scaleY ## n,			\
								bZZ_y ## n, bOZ_y ## n, bZO_y ## n, bOO_y ## n);
	
	x=0;
	fx=0;
	while(x<w-3)
	{
		ADVECT_PRE(0)
		ADVECT_PRE(1)
		ADVECT_PRE(2)
		
		ADVECT_X(0)
		ADVECT_X(1)
		ADVECT_X(2)
		
		ADVECT_Y(0)
		ADVECT_Y(1)
		ADVECT_Y(2)
		
		x+=3;
		fx+=3;
	}
	
	while(x<w)
	{
		ADVECT_PRE(0)
		
		ADVECT_X(0)
		ADVECT_Y(0)
		
		x++;
		fx++;
	}
}
