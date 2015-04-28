/*
 *  fluid_advection_repos.c
 *  FluidApp
 */

#include "x_simd.h"

#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <stdio.h>

//Simply generate positions for advection...
void fluid_advection_stam_repos(fluid *in_f, const int y, pvt_fluidMode *mode)
{
	struct mccormack_vel_repos *data = &mode->mccormack_vel_repos;
	
	int x;										//Simple looping var
	int w = fieldWidth(data->srcVelX);			//Width of the data
	int h = fieldHeight(data->srcVelX);
	int sY = fieldStrideY(data->srcVelY);
	x128f timestep = {-data->timestep,-data->timestep,-data->timestep,-data->timestep};
	
	
	
	const float *srcVelX		= fieldData(data->srcVelX);
	const float *srcVelY		= fieldData(data->srcVelY);
	
	float *dstReposX		= fieldData(data->dstReposX);
	float *dstReposY		= fieldData(data->dstReposY);
	
	
	const int curxy = y*sY;
	
	const int w2 = w/4;
	//printf("%i %i\n", w2, w);
	
	x128f vMin = {-ADVECT_DIST, -ADVECT_DIST, -ADVECT_DIST, -ADVECT_DIST};
	x128f vMax = {ADVECT_DIST, ADVECT_DIST, ADVECT_DIST, ADVECT_DIST};
	
	const x128f *vSrcVelX = (x128f*)fluidFloatPointer(srcVelX, curxy);
	const x128f *vSrcVelY = (x128f*)fluidFloatPointer(srcVelY, curxy);
	
	x128f *vDstReposX = (x128f*)fluidFloatPointer(dstReposX, curxy);
	x128f *vDstReposY = (x128f*)fluidFloatPointer(dstReposY, curxy);
	
	x128f vX = {0.0f, 1.0f, 2.0f, 3.0f};
	const x128f vY = {y, y, y, y};
	
	const x128f v4 = {4.0f, 4.0f, 4.0f, 4.0f};
	
	const x128f vW = {w-1.01f,w-1.01f,w-1.01f,w-1.01f};
	const x128f vH = {h-1.01f,h-1.01f,h-1.01f,h-1.01f};
	
	
	for (x=0; x<w2; x++)
	{
		//Basic...
		u128f fVelX, fVelY;
		fVelX.v = x_mul(timestep, vSrcVelX[x]);
		fVelY.v = x_mul(timestep, vSrcVelY[x]);
		
		//Advect forward in time...
		x128f fSrcVelX = x_clamp(fVelX.v, vMin, vMax);
		x128f fSrcVelY = x_clamp(fVelY.v, vMin, vMax);
		
		//Go forward
		x128f fwdX = x_clamp(x_add(fSrcVelX, vX), x_simd_zero, vW);
		x128f fwdY = x_clamp(x_add(fSrcVelY, vY), x_simd_zero, vH);
		
		vDstReposX[x] = fwdX;
		
		vDstReposY[x] = fwdY;
		
		vX = x_add(vX, v4);
	}
}

//Basic corrector part of predictor-corrector.
void fluid_advection_mccormack_repos(fluid *in_f, const int y, pvt_fluidMode *mode)
{
	struct mccormack_vel_repos *data = &mode->mccormack_vel_repos;
	
	int x;										//Simple looping var
	int w = fieldWidth(data->srcVelX);			//Width of the data
	int h = fieldHeight(data->srcVelX);
	int sY = fieldStrideY(data->srcVelY);
	x128f timestep = {data->timestep,data->timestep,data->timestep,data->timestep};
	
	int sX = fieldStrideX(data->srcVelX);
	
	x128i vsX = {sX, sX, sX, sX};
	x128i vsY = {sY, sY, sY, sY};
	
	const float *srcVelX		= fieldData(data->srcVelX);
	const float *srcVelY		= fieldData(data->srcVelY);
	
	float *dstReposX		= fieldData(data->dstReposX);
	float *dstReposY		= fieldData(data->dstReposY);
	
	
	const int curxy = y*sY;
	
	const int w2 = w/4;
	//printf("%i %i\n", w2, w);
	
	x128f vMin = {-ADVECT_DIST, -ADVECT_DIST, -ADVECT_DIST, -ADVECT_DIST};
	x128f vMax = {ADVECT_DIST, ADVECT_DIST, ADVECT_DIST, ADVECT_DIST};
	
	const x128f *vSrcVelX = (x128f*)fluidFloatPointer(srcVelX, curxy);
	const x128f *vSrcVelY = (x128f*)fluidFloatPointer(srcVelY, curxy);
	
	//	const x128f *vSrcVelXM = (x128f*)fluidFloatPointer(srcVelX, curxy-sY);
	//	const x128f *vSrcVelYM = (x128f*)fluidFloatPointer(srcVelY, curxy-sY);
	//	
	//	const x128f *vSrcVelXP = (x128f*)fluidFloatPointer(srcVelX, curxy+sY);
	//	const x128f *vSrcVelYP = (x128f*)fluidFloatPointer(srcVelY, curxy+sY);
	
	x128f *vDstReposX = (x128f*)fluidFloatPointer(dstReposX, curxy);
	x128f *vDstReposY = (x128f*)fluidFloatPointer(dstReposY, curxy);
	
	x128f vX = {0.0f, 1.0f, 2.0f, 3.0f};
	const x128f vY = {y, y, y, y};
	//	const x128f vYM = {y-1, y-1, y-1, y-1};
	//	const x128f vYP = {y+1, y+1, y+1, y+1};
	
	const x128f vHalf = {0.5f,0.5f,0.5f,0.5f};
	const x128f v4 = {4.0f, 4.0f, 4.0f, 4.0f};
	const x128f vN1 = {-1.0f, -1.0f, -1.0f, -1.0f};
	
	const x128f vW = {w-1.01f,w-1.01f,w-1.01f,w-1.01f};
	const x128f vH = {h-1.01f,h-1.01f,h-1.01f,h-1.01f};
	
	u128i offBackX, offBackY, offBackX2, offBackY2, d1, d2, d3, d4;
	u128f scaleX, scaleY, fwdVelX, fwdVelY;
	float bZZ, bOZ, bZO, bOO;
	for (x=0; x<w2; x++)
	{
		//Basic...
		u128f fVelX, fVelY;
		fVelX.v = x_mul(timestep, vSrcVelX[x]);
		fVelY.v = x_mul(timestep, vSrcVelY[x]);
		
		//		//Assume we can do this ina 9x9 window...
		//		x128f x1 = x_sub(x_sub(vX, x_simd_one), fVelX.v);
		//		x128f x2 = x_sub(vX, fVelX.v);
		//		x128f x3 = x_sub(x_add(vX, x_simd_one), fVelX.v);
		//		
		//		x128f y1 = x_sub(vYM, fVelY.v);
		//		x128f y2 = x_sub(vY, fVelY.v);
		//		x128f y3 = x_sub(vYP, fVelY.v);
		//		
		//		x128f sum1 = x_add(x_add(x_add(x1,x2),x3),x_add(x_add(y1,y2),y3));
		//		
		//		x1 = x_abs(x1);
		//		x2 = x_abs(x2);
		//		x3 = x_abs(x3);
		//		
		//		y1 = x_abs(y1);
		//		y2 = x_abs(y2);
		//		y3 = x_abs(y3);
		//		
		//		
		//		x128f sum2 = x_add(x_add(x_add(x1,x2),x3),x_add(x_add(y1,y2),y3));
		
		//Clamp the values...
		//		x1 = x_sub(x_simd_one, x1);
		//		x2 = x_sub(x_simd_one, x2);
		//		x3 = x_sub(x_simd_one, x3);
		//		
		//		y1 = x_sub(x_simd_one, y1);
		//		y2 = x_sub(x_simd_one, y2);
		//		y3 = x_sub(x_simd_one, y3);
		
		//Advect forward in time...
		x128f fSrcVelX = x_clamp(fVelX.v, vMin, vMax);
		x128f fSrcVelY = x_clamp(fVelY.v, vMin, vMax);
		
		//Go forward
		x128f fwdX = x_clamp(x_add(vX, fSrcVelX), x_simd_zero, vW);
		x128f fwdY = x_clamp(x_add(vY, fSrcVelY), x_simd_zero, vH);
		//		x128f fwdX = x_clamp(x_add(fSrcVelX, vX), x_simd_zero, vW);
		//		x128f fwdY = x_clamp(x_add(fSrcVelY, vY), x_simd_zero, vH);
		
		//Back as integer
		x128i nBackX = x_ftoi(fwdX);
		x128i nBackY = x_ftoi(fwdY);
		
		//		if (!x_all_lt(sum1, sum2))
		//		{
		//			x1 = x_max(x_simd_zero, x1);
		//			x2 = x_max(x_simd_zero, x2);
		//			x3 = x_max(x_simd_zero, x3);
		//			
		//			y1 = x_max(x_simd_zero, y1);
		//			y2 = x_max(x_simd_zero, y2);
		//			y3 = x_max(x_simd_zero, y3);
		//			
		//			x128f slX, slY, srX, srY;
		//			
		//			x128f yMX, yMY, yPX, yPY;
		//			
		//			x128f X11, X31, X33, X13;
		//			x128f Y11, Y31, Y33, Y13;
		//			
		//			if (y == 0)
		//			{
		//				yMX = x_simd_zero;
		//				yMY = x_simd_zero;
		//				
		//				X31 = x_simd_zero;
		//				X11 = x_simd_zero;
		//				
		//				Y31 = x_simd_zero;
		//				Y11 = x_simd_zero;
		//			}
		//			else
		//			{
		//				yMX = vSrcVelXM[x];
		//				yMY = vSrcVelYM[x];
		//				
		//				if (x == 0)
		//				{
		//					X11 = x_sld(x_simd_zero, vSrcVelXM[x], 4);
		//					Y11 = x_sld(x_simd_zero, vSrcVelYM[x], 4);
		//				}
		//				else
		//				{
		//					X11 = x_sld(vSrcVelXM[x-1], vSrcVelXM[x], 4);
		//					Y11 = x_sld(vSrcVelXM[x-1], vSrcVelYM[x], 4);
		//				}
		//				
		//				if (x == w2-1)
		//				{
		//					X31 = x_sld(vSrcVelXM[x], x_simd_zero, 12);
		//					Y31 = x_sld(vSrcVelYM[x], x_simd_zero, 12);
		//				}
		//				else
		//				{
		//					X31 = x_sld(vSrcVelXM[x], vSrcVelXM[x+1], 12);
		//					Y31 = x_sld(vSrcVelXM[x], vSrcVelYM[x+1], 12);
		//				}
		//			}
		//			
		//			if (y == h-1)
		//			{
		//				yPX = x_simd_zero;
		//				yPY = x_simd_zero;
		//				
		//				X33 = x_simd_zero;
		//				X13 = x_simd_zero;
		//				
		//				Y33 = x_simd_zero;
		//				Y13 = x_simd_zero;
		//			}
		//			else
		//			{
		//				yPX = vSrcVelXP[x];
		//				yPY = vSrcVelYP[x];
		//				
		//				if (x == 0)
		//				{
		//					X13 = x_sld(x_simd_zero, vSrcVelXP[x], 4);
		//					Y13 = x_sld(x_simd_zero, vSrcVelYP[x], 4);
		//				}
		//				else
		//				{
		//					X13 = x_sld(vSrcVelXP[x-1], vSrcVelXP[x], 4);
		//					Y13 = x_sld(vSrcVelXP[x-1], vSrcVelYP[x], 4);
		//				}
		//				
		//				if (x == w2-1)
		//				{
		//					X33 = x_sld(vSrcVelXP[x], x_simd_zero, 12);
		//					Y33 = x_sld(vSrcVelYP[x], x_simd_zero, 12);
		//				}
		//				else
		//				{
		//					X33 = x_sld(vSrcVelXP[x], vSrcVelXP[x+1], 12);
		//					Y33 = x_sld(vSrcVelXP[x], vSrcVelYP[x+1], 12);
		//				}
		//			}
		//			
		//			if (x == 0)
		//			{
		//				srX = x_sld(x_simd_zero, vSrcVelX[x], 4);
		//				srY = x_sld(x_simd_zero, vSrcVelY[x], 4);
		//			}
		//			else
		//			{
		//				srX = x_sld(vSrcVelX[x-1], vSrcVelX[x], 4);
		//				srY = x_sld(vSrcVelY[x-1], vSrcVelY[x], 4);
		//			}
		//			
		//			if (x == w2 - 1)
		//			{
		//				slX = x_sld(vSrcVelX[x], x_simd_zero, 12);
		//				slY = x_sld(vSrcVelX[x], x_simd_zero, 12);
		//			}
		//			else
		//			{
		//				slX = x_sld(vSrcVelX[x], vSrcVelX[x+1], 12);
		//				slY = x_sld(vSrcVelX[x], vSrcVelX[x+1], 12);
		//			}
		//			
		//			fwdVelX.v = x_mul(x_mul(x2,y2), vSrcVelX[x]);
		//			fwdVelY.v = x_mul(x_mul(x2,y2), vSrcVelY[x]);
		//			
		//			
		//			
		//			fwdVelX.v = x_madd(x_mul(x1,y2), srX, fwdVelX.v);
		//			fwdVelY.v = x_madd(x_mul(x1,y2), srY, fwdVelY.v);
		//			
		//			fwdVelX.v = x_madd(x_mul(x3,y2), srX, fwdVelX.v);
		//			fwdVelY.v = x_madd(x_mul(x3,y2), srY, fwdVelY.v);
		//			
		//			
		//			fwdVelX.v = x_madd(x_mul(x2,y1), yMX, fwdVelX.v);
		//			fwdVelY.v = x_madd(x_mul(x2,y1), yMY, fwdVelY.v);
		//			
		//			fwdVelX.v = x_madd(x_mul(x2,y3), yPX, fwdVelX.v);
		//			fwdVelY.v = x_madd(x_mul(x2,y3), yPY, fwdVelY.v);
		//			
		//			
		//			
		//			fwdVelX.v = x_madd(x_mul(x1,y1), X11, fwdVelX.v);
		//			fwdVelY.v = x_madd(x_mul(x1,y1), Y11, fwdVelY.v);
		//			
		//			fwdVelX.v = x_madd(x_mul(x1,y3), X13, fwdVelX.v);
		//			fwdVelY.v = x_madd(x_mul(x1,y3), Y13, fwdVelY.v);
		//			
		//			
		//			fwdVelX.v = x_madd(x_mul(x3,y1), X31, fwdVelX.v);
		//			fwdVelY.v = x_madd(x_mul(x3,y1), Y31, fwdVelY.v);
		//			
		//			fwdVelX.v = x_madd(x_mul(x3,y3), X33, fwdVelX.v);
		//			fwdVelY.v = x_madd(x_mul(x3,y3), Y33, fwdVelY.v);
		//		}
		//		else
		//		{
		
		//Compute scaling factor
		scaleX.v = x_sub(fwdX, x_itof(nBackX));
		scaleY.v = x_sub(fwdY, x_itof(nBackY));
		
		//Compute the addresses of the destinations...
		offBackX.v = x_imul(nBackX, vsX);
		offBackY.v = x_imul(nBackY, vsY);
		offBackX2.v = x_iadd(offBackX.v, vsX);
		offBackY2.v = x_iadd(offBackY.v, vsY);
		
		d1.v = x_iadd(offBackX.v, offBackY.v);
		d2.v = x_iadd(offBackX2.v, offBackY.v);
		d3.v = x_iadd(offBackX.v, offBackY2.v);
		d4.v = x_iadd(offBackX2.v, offBackY2.v);
		
		int i;
		for (i=0; i<4; i++)
		{
			bZZ = fluidFloatPointer(srcVelX, d1.i[i])[0];
			bOZ = fluidFloatPointer(srcVelX, d2.i[i])[0];
			bZO = fluidFloatPointer(srcVelX, d3.i[i])[0];
			bOO = fluidFloatPointer(srcVelX, d4.i[i])[0];
			fwdVelX.f[i] = fluidLinearInterpolation(scaleX.f[i], scaleY.f[i],bZZ, bOZ, bZO, bOO);
			
			
			bZZ = fluidFloatPointer(srcVelY, d1.i[i])[0];
			bOZ = fluidFloatPointer(srcVelY, d2.i[i])[0];
			bZO = fluidFloatPointer(srcVelY, d3.i[i])[0];
			bOO = fluidFloatPointer(srcVelY, d4.i[i])[0];
			fwdVelY.f[i] = fluidLinearInterpolation(scaleX.f[i], scaleY.f[i],bZZ, bOZ, bZO, bOO);
		}
		//		}
		//
		//		__builtin_prefetch(vSrcVelX+x+4);
		//		__builtin_prefetch(vSrcVelXM+x+4);
		//		__builtin_prefetch(vSrcVelXP+x+4);
		//
		//		__builtin_prefetch(vSrcVelY+x+4);
		//		__builtin_prefetch(vSrcVelYM+x+4);
		//		__builtin_prefetch(vSrcVelYP+x+4);
		
		//Compute the velocity at that point...
		
		//This velocity (computed the other way) will give spatial error
		u128f errX, errY;
		//errX.v = x_sub(x_add(x_clamp(x_mul(x_mul(vN1, timestep), fwdVelX.v), vMin, vMax), fwdX), vX);
		//errY.v = x_sub(x_add(x_clamp(x_mul(x_mul(vN1, timestep), fwdVelY.v), vMin, vMax), fwdY), vY);
		errX.v = x_clamp(x_mul(timestep, fwdVelX.v), vMin, vMax);
		errY.v = x_clamp(x_mul(timestep, fwdVelY.v), vMin, vMax);
		
		
		//Most of the error is from velocity advection (so we assume)
		//	This is a cheap way of computing error!
		x128f backX = x_add(x_clamp(x_madd(vHalf,errX.v,x_mul(fVelX.v,vN1)),vMin,vMax), vX);
		vDstReposX[x] = x_clamp(backX,x_simd_zero, vW);
		
		x128f backY = x_add(x_clamp(x_madd(vHalf,errY.v,x_mul(fVelY.v,vN1)),vMin,vMax), vY);
		vDstReposY[x] = x_clamp(backY,x_simd_zero, vH);
		
		vX = x_add(vX, v4);
	}
}
