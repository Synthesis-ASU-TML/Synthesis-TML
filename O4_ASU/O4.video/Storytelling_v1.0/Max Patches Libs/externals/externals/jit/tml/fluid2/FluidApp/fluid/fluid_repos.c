/*
 *  fluid_repos.c
 *  FluidApp
 */

#include "x_simd.h"


#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <math.h>
#include <string.h>


void fluid_gatherVel(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct repos *data = &mode->repos;
	
	int sY = fieldStrideY(data->reposX);
	float *reposX = (float*)fluidFloatPointer(fieldData(data->reposX), y*sY);
	float *reposY = (float*)fluidFloatPointer(fieldData(data->reposY), y*sY);
	
	float *dst = fieldData(data->dst);
	
	int w = fieldWidth(data->reposX);
	
	int dY = fieldStrideY(data->dst);
	int constDstOffset = y*dY;
	u128f *fDst = (u128f*)fluidFloatPointer(dst, constDstOffset);
	
	int i;
	for (i=0; i<w; i++)
	{
		fDst[i].f[0] = reposX[i];
		fDst[i].f[1] = reposY[i];
	}
}


void fluid_scatterVel(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct repos *data = &mode->repos;
	
	int sY = fieldStrideY(data->reposX);
	float *reposX = (float*)fluidFloatPointer(fieldData(data->reposX), y*sY);
	float *reposY = (float*)fluidFloatPointer(fieldData(data->reposY), y*sY);
	
	float *dst = fieldData(data->dst);
	
	int w = fieldWidth(data->reposX);
	
	int dY = fieldStrideY(data->dst);
	int constDstOffset = y*dY;
	u128f *fDst = (u128f*)fluidFloatPointer(dst, constDstOffset);
	
	int i;
	for (i=0; i<w; i++)
	{
		reposX[i] = fDst[i].f[0];
	}
	
	for (i=0; i<w; i++)
	{
		reposY[i] = fDst[i].f[1];
	}
}


//Simple repositioning of the data
void fluid_repos(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct repos *data = &mode->repos;
	
	int x;
	int w = fieldWidth(data->reposX);
	int w2 = w/4;
	int sY = fieldStrideY(data->reposX);
	
	int dX = fieldStrideX(data->src);
	int dY = fieldStrideY(data->src);
	
	x128i vdX = {dX, dX, dX, dX};
	x128i vdY = {dY, dY, dY, dY};
	
	x128f *reposX = (x128f*)fluidFloatPointer(fieldData(data->reposX), y*sY);
	x128f *reposY = (x128f*)fluidFloatPointer(fieldData(data->reposY), y*sY);
	
	float *src = fieldData(data->src);
	float *dst = fieldData(data->dst);
	
	u128i offBackX, offBackY, offX2, offY2, d1, d2, d3, d4;
	u128f scaleX, scaleY;
	
	int constDstOffset = y*dY;
	x128f *fDst = (x128f*)fluidFloatPointer(dst, constDstOffset);
	
	for (x=0; x<w2; x++)
	{
		x128f fReposX = reposX[x];
		x128f fReposY = reposY[x];
		
		x128i inBackX = x_ftoi(fReposX);
		x128i inBackY = x_ftoi(fReposY);
		
		x128f nBackX = x_itof(inBackX);
		x128f nBackY = x_itof(inBackY);
		
		scaleX.v = x_sub(fReposX, nBackX);
		scaleY.v = x_sub(fReposY, nBackY);
		
		offBackX.v = x_imul(inBackX, vdX);
		offBackY.v = x_imul(inBackY, vdY);
		offX2.v = x_iadd(offBackX.v, vdX);
		offY2.v = x_iadd(offBackY.v, vdY);
		
		d1.v = x_iadd(offBackX.v, offBackY.v);
		d2.v = x_iadd(offX2.v, offBackY.v);
		d3.v = x_iadd(offBackX.v, offY2.v);
		d4.v = x_iadd(offX2.v, offY2.v);
		
		
		x128f vSx_0 = {scaleX.f[0], scaleX.f[0], scaleX.f[0], scaleX.f[0]};
		x128f vSy_0 = {scaleY.f[0], scaleY.f[0], scaleY.f[0], scaleY.f[0]};
		
		x128f vSx_1 = {scaleX.f[1], scaleX.f[1], scaleX.f[1], scaleX.f[1]};
		x128f vSy_1 = {scaleY.f[1], scaleY.f[1], scaleY.f[1], scaleY.f[1]};
		
		x128f vSx_2 = {scaleX.f[2], scaleX.f[2], scaleX.f[2], scaleX.f[2]};
		x128f vSy_2 = {scaleY.f[2], scaleY.f[2], scaleY.f[2], scaleY.f[2]};
		
		x128f vSx_3 = {scaleX.f[3], scaleX.f[3], scaleX.f[3], scaleX.f[3]};
		x128f vSy_3 = {scaleY.f[3], scaleY.f[3], scaleY.f[3], scaleY.f[3]};
		
		
		x128f oneMx_0 = x_sub(x_simd_one, vSx_0);
		x128f oneMy_0 = x_sub(x_simd_one, vSy_0);
		
		x128f oneMx_1 = x_sub(x_simd_one, vSx_1);
		x128f oneMy_1 = x_sub(x_simd_one, vSy_1);
		
		x128f oneMx_2 = x_sub(x_simd_one, vSx_2);
		x128f oneMy_2 = x_sub(x_simd_one, vSy_2);
		
		x128f oneMx_3 = x_sub(x_simd_one, vSx_3);
		x128f oneMy_3 = x_sub(x_simd_one, vSy_3);
		
		
		x128f *bZZ_0 = (x128f*)fluidFloatPointer(src, d1.i[0]);
		x128f *bOZ_0 = (x128f*)fluidFloatPointer(src, d2.i[0]);
		x128f *bZO_0 = (x128f*)fluidFloatPointer(src, d3.i[0]);
		x128f *bOO_0 = (x128f*)fluidFloatPointer(src, d4.i[0]);
		
		x128f *bZZ_1 = (x128f*)fluidFloatPointer(src, d1.i[1]);
		x128f *bOZ_1 = (x128f*)fluidFloatPointer(src, d2.i[1]);
		x128f *bZO_1 = (x128f*)fluidFloatPointer(src, d3.i[1]);
		x128f *bOO_1 = (x128f*)fluidFloatPointer(src, d4.i[1]);
		
		x128f *bZZ_2 = (x128f*)fluidFloatPointer(src, d1.i[2]);
		x128f *bOZ_2 = (x128f*)fluidFloatPointer(src, d2.i[2]);
		x128f *bZO_2 = (x128f*)fluidFloatPointer(src, d3.i[2]);
		x128f *bOO_2 = (x128f*)fluidFloatPointer(src, d4.i[2]);
		
		x128f *bZZ_3 = (x128f*)fluidFloatPointer(src, d1.i[3]);
		x128f *bOZ_3 = (x128f*)fluidFloatPointer(src, d2.i[3]);
		x128f *bZO_3 = (x128f*)fluidFloatPointer(src, d3.i[3]);
		x128f *bOO_3 = (x128f*)fluidFloatPointer(src, d4.i[3]);
		
		
		x128f vSxMulOZ_0 = x_mul(vSx_0, bOZ_0[0]);
		x128f vSxMulOO_0 = x_mul(vSx_0, bOO_0[0]);
		x128f vSxMulZZ_0 = x_madd(oneMx_0, bZZ_0[0], vSxMulOZ_0);
		x128f vSxMulZO_0 = x_madd(oneMx_0, bZO_0[0], vSxMulOO_0);
		
		x128f vSxMulOZ_1 = x_mul(vSx_1, bOZ_1[0]);
		x128f vSxMulOO_1 = x_mul(vSx_1, bOO_1[0]);
		x128f vSxMulZZ_1 = x_madd(oneMx_1, bZZ_1[0], vSxMulOZ_1);
		x128f vSxMulZO_1 = x_madd(oneMx_1, bZO_1[0], vSxMulOO_1);
		
		x128f vSxMulOZ_2 = x_mul(vSx_2, bOZ_2[0]);
		x128f vSxMulOO_2 = x_mul(vSx_2, bOO_2[0]);
		x128f vSxMulZZ_2 = x_madd(oneMx_2, bZZ_2[0], vSxMulOZ_2);
		x128f vSxMulZO_2 = x_madd(oneMx_2, bZO_2[0], vSxMulOO_2);
		
		x128f vSxMulOZ_3 = x_mul(vSx_3, bOZ_3[0]);
		x128f vSxMulOO_3 = x_mul(vSx_3, bOO_3[0]);
		x128f vSxMulZZ_3 = x_madd(oneMx_3, bZZ_3[0], vSxMulOZ_3);
		x128f vSxMulZO_3 = x_madd(oneMx_3, bZO_3[0], vSxMulOO_3);
		
		
		x128f vSYO_0 = x_mul(vSy_0, vSxMulZO_0);
		x128f vSYO_1 = x_mul(vSy_1, vSxMulZO_1);
		x128f vSYO_2 = x_mul(vSy_2, vSxMulZO_2);
		x128f vSYO_3 = x_mul(vSy_3, vSxMulZO_3);
		
		//For each component, do standard advection!
		fDst[4*x+0] = x_madd(oneMy_0, vSxMulZZ_0, vSYO_0);
		fDst[4*x+1] = x_madd(oneMy_1, vSxMulZZ_1, vSYO_1);
		fDst[4*x+2] = x_madd(oneMy_2, vSxMulZZ_2, vSYO_2);
		fDst[4*x+3] = x_madd(oneMy_3, vSxMulZZ_3, vSYO_3);
	}
}

void fluid_reposVel(fluid *in_f, int y, pvt_fluidMode *mode)
{	struct repos *data = &mode->repos;
	
	int x, xIn;
	int origX, counter;
	int w = fieldWidth(data->reposX);
	int sX = fieldStrideX(data->reposX);
	int sY = fieldStrideY(data->reposX);
	
	x128i vsX = {sX, sX, sX, sX};
	x128i vsY = {sY, sY, sY, sY};
	
	x128f *reposX = (x128f*)fluidFloatPointer(fieldData(data->reposX), y*sY);
	x128f *reposY = (x128f*)fluidFloatPointer(fieldData(data->reposY), y*sY);
	float *srcX = fieldData(data->src);
	x128f *dstX = (x128f*)fluidFloatPointer(fieldData(data->dst), y*sY);
	float *srcY = fieldData(data->src2);
	x128f *dstY = (x128f*)fluidFloatPointer(fieldData(data->dst2), y*sY);
	
	int w2 = w/4;
	
	u128i offBackX, offBackY, offX2, offY2, d1, d2, d3, d4;
	u128f scaleX, scaleY,dest[16];
	
	for (x=0; x<w2;)
	{
		xIn = x + 8;
		origX = x;
		counter = 0;
		for (; x<xIn; x++)
		{
			x128f fReposX = reposX[x];
			x128f fReposY = reposY[x];
			
			x128i inBackX = x_ftoi(fReposX);
			x128i inBackY = x_ftoi(fReposY);
			
			x128f nBackX = x_itof(inBackX);
			x128f nBackY = x_itof(inBackY);
			
			scaleX.v = x_sub(fReposX, nBackX);
			scaleY.v = x_sub(fReposY, nBackY);
			
			offBackX.v = x_imul(inBackX, vsX);
			offBackY.v = x_imul(inBackY, vsY);
			offX2.v = x_iadd(offBackX.v, vsX);
			offY2.v = x_iadd(offBackY.v, vsY);
			
			d1.v = x_iadd(offBackX.v, offBackY.v);
			d2.v = x_iadd(offX2.v, offBackY.v);
			d3.v = x_iadd(offBackX.v, offY2.v);
			d4.v = x_iadd(offX2.v, offY2.v);
			
			int i;
			for (i=0; i<4; i++)
			{
				float *bZZ = fluidFloatPointer(srcX, d1.i[i]);
				float *bOZ = fluidFloatPointer(srcX, d2.i[i]);
				float *bZO = fluidFloatPointer(srcX, d3.i[i]);
				float *bOO = fluidFloatPointer(srcX, d4.i[i]);
				
				//For each component, do standard advection!
				dest[counter].f[i] = fluidLinearInterpolation(scaleX.f[i], scaleY.f[i],
															  bZZ[0], bOZ[0], bZO[0], bOO[0]);
			}
			
			
			for (i=0; i<4; i++)
			{
				float *bZZ = fluidFloatPointer(srcY, d1.i[i]);
				float *bOZ = fluidFloatPointer(srcY, d2.i[i]);
				float *bZO = fluidFloatPointer(srcY, d3.i[i]);
				float *bOO = fluidFloatPointer(srcY, d4.i[i]);
				
				//For each component, do standard advection!
				dest[counter+1].f[i] = fluidLinearInterpolation(scaleX.f[i], scaleY.f[i],
																bZZ[0], bOZ[0], bZO[0], bOO[0]);
			}
			
			counter += 2;
		}
		
		x=origX;
		counter=0;
		for(;x<xIn;x++)
		{
			dstX[x] = dest[counter].v;
			counter+=2;
		}
		
		x=origX;
		counter=1;
		for(;x<xIn;x++)
		{
			dstY[x] = dest[counter].v;
			counter+=2;
		}
	}
}

