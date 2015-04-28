/*
 *  fluid_viscosity.c
 *  FluidApp
 */

#include "x_simd.h"

#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <stdio.h>

void fluid_viscosity_rb(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct viscosity *v = &mode->viscosity;
	
	int w = fieldWidth(v->velX);
	int h = fieldHeight(v->velX);
	
#ifdef __APPLE_ALTIVEC__
#else
	int sx = fieldStrideX(v->velX);
#endif
	int sy = fieldStrideY(v->velY);
	
	float *velX = fieldData(v->velX);
	float *velY = fieldData(v->velY);
	
	float alpha = v->alpha;
	float beta = v->beta;
	
	if (y == 0)
	{
#ifdef __APPLE_ALTIVEC__
		vector float *vVelX = (vector float*)fluidFloatPointer(velX, 0*sy);
		vector float *vVelXP = (vector float*)fluidFloatPointer(velX, 1*sy);
		
		vector float *vVelY = (vector float*)fluidFloatPointer(velY, 0*sy);
		vector float *vVelYP = (vector float*)fluidFloatPointer(velY, 1*sy);
		
		vector bool int vSignBig = {0x80000000,0x80000000,0x80000000,0x80000000};
		
		int x;
		w/=4;
		for (x=0; x<w; x++)
		{
			vVelX[x] = vec_xor(vSignBig,vVelXP[x]);
		}
		for (x=0; x<w; x++)
		{
			vVelY[x] = vec_xor(vSignBig,vVelYP[x]);
		}
#else
		int x;
		for (x=0; x<w; x++)
		{
			*fluidFloatPointer(velX,x*sx + y*sy)
							= - *fluidFloatPointer(velX,x*sx + (y+1)*sy);
		}
		for (x=0; x<w; x++)
		{
			*fluidFloatPointer(velY,x*sx + y*sy)
							= - *fluidFloatPointer(velY,x*sx + (y+1)*sy);
		}
#endif
	}
	else if (y == h-1)
	{
#ifdef __APPLE_ALTIVEC__
		vector float *vVelX = (vector float*)fluidFloatPointer(velX, y*sy);
		vector float *vVelXP = (vector float*)fluidFloatPointer(velX, (y-1)*sy);
		
		vector float *vVelY = (vector float*)fluidFloatPointer(velY, y*sy);
		vector float *vVelYP = (vector float*)fluidFloatPointer(velY, (y-1)*sy);
		
		vector bool int vSignBig = {0x80000000,0x80000000,0x80000000,0x80000000};
		
		int x;
		w/=4;
		for (x=0; x<w; x++)
		{
			vVelX[x] = vec_xor(vSignBig,vVelXP[x]);
		}
		for (x=0; x<w; x++)
		{
			vVelY[x] = vec_xor(vSignBig,vVelYP[x]);
		}
#else
		int x;
		for (x=0; x<w; x++)
		{			
			*fluidFloatPointer(velX,x*sx + y*sy)
							= - *fluidFloatPointer(velX,x*sx + (y-1)*sy);
		}
		for (x=0; x<w; x++)
		{
			*fluidFloatPointer(velY,x*sx + y*sy)
							= - *fluidFloatPointer(velY,x*sx + (y-1)*sy);
		}
#endif
	}
	else
	{

#ifdef X_SIMD

		x128f vAlpha = {alpha, alpha, alpha, alpha};
		x128f vBeta, mask;
		
		if (v->red)
		{
			vBeta = (x128f){beta, 0, beta, 0};
			mask = (x128f){0.0f, 1.0f, 0.0f, 1.0f};
		}
		else
		{
			vBeta = (x128f){0, beta, 0, beta};
			mask = (x128f){1.0f, 0.0f, 1.0f, 0.0f};
		}
		
		float *velXRow = fluidFloatPointer(velX,y*sy);
		float *velYRow = fluidFloatPointer(velY,y*sy);
		
		x128f *vVelX = (x128f*)velXRow;
		x128f *vVelY = (x128f*)velYRow;
		
		x128f *vVelXN = (x128f*)fluidFloatPointer(velX,(y+1)*sy);
		x128f *vVelYN = (x128f*)fluidFloatPointer(velY,(y+1)*sy);
		
		x128f *vVelXP = (x128f*)fluidFloatPointer(velX,(y-1)*sy);
		x128f *vVelYP = (x128f*)fluidFloatPointer(velY,(y-1)*sy);
#endif

#ifdef __APPLE_ALTIVEC__
//#warning "Using ALTIVEC for Viscosity"
		
		vector float vZero = {0,0,0,0};
		
		vec_dstst(vVelX, 0x01000001, 0);
		vec_dst(vVelXN, 0x01000001, 1);
		vec_dst(vVelXP, 0x01000001, 2);
		
		
#define ALTIVEC_X_PRE(n)													\
		vector float tmp1 ## n = vec_madd(vVelX[x+n], vAlpha, vVelXN[x+n]);	\
		vector float tmp2 ## n = vec_add(vVelXP[x+n], tmp1 ## n);
		
#define ALTIVEC_X_MID(n)													\
		vector float sl ## n = vec_sld(vVelX[x+n], vVelX[x+1+n], 4);		\
		vector float sr ## n = vec_sld(vVelX[x-1+n], vVelX[x+n], 12);
		
#define ALTIVEC_X_END(n)											\
		vector float tmp3 ## n = vec_add(sl ## n,sr ## n);			\
		tmp1 ## n = vec_add(tmp3 ## n, tmp2 ## n);					\
		vVelX[x+n] = vec_madd(tmp1 ## n, vBeta, vec_madd(vVelX[x+n], mask, vZero));
		
		
		int x;
		{
			vector float tmp;
			tmp = vec_madd(vVelX[0], vAlpha, vVelXN[0]);
			tmp = vec_add(tmp, vVelXP[0]);
			
			vector float sl = vec_sld(vVelX[0], vVelX[1], 4);
			vector float sr = vec_sld(vZero, vVelX[0], 12);
			
			tmp = vec_add(tmp, vec_add(sl,sr));
			vVelX[0] = vec_madd(tmp, vBeta, vZero);
			
			velXRow[0] = -velXRow[1];
		}
		x=1;
		while (x<w/4-1 && x%4 != 0)				//Align
		{
			ALTIVEC_X_PRE(0)
			ALTIVEC_X_MID(0)
			ALTIVEC_X_END(0)
			x++;
		}
		while (x<w/4-5)
		{
			//Out of order dispatch groups
			ALTIVEC_X_PRE(0)
			ALTIVEC_X_PRE(1)
			ALTIVEC_X_PRE(2)
			ALTIVEC_X_PRE(3)
			
			//In order dispatch groups
			ALTIVEC_X_MID(0)
			ALTIVEC_X_MID(1)
			ALTIVEC_X_MID(2)
			ALTIVEC_X_MID(3)
			
			ALTIVEC_X_END(0)
			ALTIVEC_X_END(1)
			ALTIVEC_X_END(2)
			ALTIVEC_X_END(3)
			
			x+=4;
		}
		while (x<w/4-1)
		{
			ALTIVEC_X_PRE(0)
			ALTIVEC_X_MID(0)
			ALTIVEC_X_END(0)
			x++;
		}
		{
			vector float tmp;
			tmp = vec_madd(vVelX[0], vAlpha, vVelXN[0]);
			tmp = vec_add(tmp, vVelXP[0]);
			
			vector float sl = vec_sld(vVelX[x], vZero, 4);
			vector float sr = vec_sld(vVelX[x-1], vVelX[x], 12);
			
			tmp = vec_add(tmp, vec_add(sl,sr));
			vVelX[x] = vec_madd(tmp, vBeta, vZero);
			
			velXRow[w-1] = -velXRow[w-2];
		}
		
		
#define ALTIVEC_Y_PRE(n)													\
		vector float tmp1 ## n = vec_madd(vVelY[x+n], vAlpha, vVelYN[x+n]);	\
		vector float tmp2 ## n = vec_add(vVelYP[x+n], tmp1 ## n);
		
#define ALTIVEC_Y_MID(n)													\
		vector float sl ## n = vec_sld(vVelY[x+n], vVelY[x+1+n], 4);		\
		vector float sr ## n = vec_sld(vVelY[x-1+n], vVelY[x+n], 12);
		
#define ALTIVEC_Y_END(n)											\
		vector float tmp3 ## n = vec_add(sl ## n,sr ## n);			\
		tmp1 ## n = vec_add(tmp3 ## n, tmp2 ## n);					\
		vVelY[x+n] = vec_madd(tmp1 ## n, vBeta, vec_madd(vVelY[x+n], mask, vZero));
		
		{
			vector float tmp;
			tmp = vec_madd(vVelY[0], vAlpha, vVelYN[0]);
			tmp = vec_add(tmp, vVelYP[0]);
			
			vector float sl = vec_sld(vVelY[0], vVelY[1], 4);
			vector float sr = vec_sld(vZero, vVelY[0], 12);
			
			tmp = vec_add(tmp, vec_add(sl,sr));
			vVelY[0] = vec_madd(tmp, vBeta, vZero);
			
			velYRow[0] = -velYRow[1];
		}
		x=1;
		while (x<w/4-1 && x%4 != 0)				//Align
		{
			ALTIVEC_Y_PRE(0)
			ALTIVEC_Y_MID(0)
			ALTIVEC_Y_END(0)
			x++;
		}
		while (x<w/4-5)
		{
			//Out of order dispatch groups
			ALTIVEC_Y_PRE(0)
			ALTIVEC_Y_PRE(1)
			ALTIVEC_Y_PRE(2)
			ALTIVEC_Y_PRE(3)
			
			//In order dispatch groups
			ALTIVEC_Y_MID(0)
			ALTIVEC_Y_MID(1)
			ALTIVEC_Y_MID(2)
			ALTIVEC_Y_MID(3)
			
			ALTIVEC_Y_END(0)
			ALTIVEC_Y_END(1)
			ALTIVEC_Y_END(2)
			ALTIVEC_Y_END(3)
			
			x+=4;
		}
		while (x<w/4-1)
		{
			ALTIVEC_Y_PRE(0)
			ALTIVEC_Y_MID(0)
			ALTIVEC_Y_END(0)
			x++;
		}
		{
			vector float tmp;
			tmp = vec_madd(vVelY[x], vAlpha, vVelYN[x]);
			tmp = vec_add(tmp, vVelYP[x]);
			
			vector float sl = vec_sld(vVelY[x], vZero, 4);
			vector float sr = vec_sld(vVelY[x-1], vVelY[x], 12);
			
			tmp = vec_add(tmp, vec_add(sl,sr));
			vVelY[x] = vec_madd(tmp, vBeta, vZero);
			
			velYRow[w-1] = -velYRow[w-2];
		}
		
#elif defined __SSE3__
		
#define SSE_VISC_X_PRE(n) \
		__m128 sl ## n = _mm_srli_sf128(vVelX[x+n],4);						\
		__m128 sr ## n = _mm_slli_sf128(vVelX[x+n],4);						\
		sl ## n = _mm_add_ps(sl ## n, _mm_slli_sf128(vVelX[x+1+n],12));		\
		sr ## n = _mm_add_ps(sr ## n, _mm_srli_sf128(vVelX[x-1+n],12));
		
#define SSE_VISC_X_POST(n) \
		__m128 tmp1 ## n = _mm_mul_ps(vVelX[x+n], vAlpha);					\
		__m128 tmp2 ## n = _mm_add_ps(vVelXP[x+n], vVelXN[x+n]);			\
		__m128 tmp3 ## n = _mm_add_ps(sl ## n, sr ## n);					\
																			\
		tmp1 ## n = _mm_add_ps(tmp1 ## n, tmp2 ## n);						\
		tmp1 ## n = _mm_add_ps(tmp1 ## n, tmp3 ## n);						\
		vVelX[x+n] = _mm_add_ps(_mm_mul_ps(tmp1 ## n, vBeta), _mm_mul_ps(vVelX[x+n], mask));
		
		
		
#define SSE_VISC_Y_PRE(n) \
		__m128 sl ## n = _mm_srli_sf128(vVelY[x+n],4);						\
		__m128 sr ## n = _mm_slli_sf128(vVelY[x+n],4);						\
		sl ## n = _mm_add_ps(sl ## n, _mm_slli_sf128(vVelY[x+1+n],12));		\
		sr ## n = _mm_add_ps(sr ## n, _mm_srli_sf128(vVelY[x-1+n],12));
		
#define SSE_VISC_Y_POST(n) \
		__m128 tmp1 ## n = _mm_mul_ps(vVelY[x+n], vAlpha);					\
		__m128 tmp2 ## n = _mm_add_ps(vVelYP[x+n], vVelYN[x+n]);			\
		__m128 tmp3 ## n = _mm_add_ps(sl ## n, sr ## n);					\
																			\
		tmp1 ## n = _mm_add_ps(tmp1 ## n, tmp2 ## n);						\
		tmp1 ## n = _mm_add_ps(tmp1 ## n, tmp3 ## n);						\
		vVelY[x+n] = _mm_add_ps(_mm_mul_ps(tmp1 ## n, vBeta), _mm_mul_ps(vVelY[x+n], mask));
		
		int x;
		{
			__m128 tmp;
			tmp = _mm_mul_ps(vVelX[0], vAlpha);
			tmp = _mm_add_ps(tmp, vVelXN[0]);
			tmp = _mm_add_ps(tmp, vVelXP[0]);
			
			//NB: right does left, left does right!  (little endian woes)
			__m128 sl = _mm_srli_sf128(vVelX[0],4);
			__m128 sr = _mm_slli_sf128(vVelX[0],4);
			sl = _mm_add_ps(sl, _mm_slli_sf128(vVelX[1],12));
			
			tmp = _mm_add_ps(tmp, sl);
			tmp = _mm_add_ps(tmp, sr);
			
			vVelX[0] = _mm_mul_ps(tmp, vBeta);
			velXRow[0] = -velXRow[1];
		}
		x=1;
		while(x<w/4-4)
		{
			SSE_VISC_X_PRE(0);
			SSE_VISC_X_PRE(1);
			SSE_VISC_X_PRE(2);
			
			SSE_VISC_X_POST(0);
			SSE_VISC_X_POST(1);
			SSE_VISC_X_POST(2);
			
			x+=3;
		}
		while(x<w/4-1)
		{
			SSE_VISC_X_PRE(0);
			SSE_VISC_X_POST(0);
			
			x++;
		}
		{
			__m128 tmp;
			tmp = _mm_mul_ps(vVelX[x], vAlpha);
			tmp = _mm_add_ps(tmp, vVelXN[x]);
			tmp = _mm_add_ps(tmp, vVelXP[x]);
			
			__m128 sl = _mm_srli_sf128(vVelX[x],4);
			__m128 sr = _mm_slli_sf128(vVelX[x],4);
			sr = _mm_add_ps(sr, _mm_srli_sf128(vVelX[x-1],12));
			
			tmp = _mm_add_ps(tmp, sl);
			tmp = _mm_add_ps(tmp, sr);
			
			vVelX[x] = _mm_mul_ps(tmp, vBeta);
			velXRow[w-1] = -velXRow[w-2];
		}
		
		
		{
			__m128 tmp;
			tmp = _mm_mul_ps(vVelY[0], vAlpha);
			tmp = _mm_add_ps(tmp, vVelYN[0]);
			tmp = _mm_add_ps(tmp, vVelYP[0]);
			
			__m128 sl = _mm_srli_sf128(vVelY[0],4);
			__m128 sr = _mm_slli_sf128(vVelY[0],4);
			sl = _mm_add_ps(sl, _mm_slli_sf128(vVelY[1],12));
			
			tmp = _mm_add_ps(tmp, sl);
			tmp = _mm_add_ps(tmp, sr);
			
			vVelY[0] = _mm_mul_ps(tmp, vBeta);
			velYRow[0] = -velYRow[1];
		}
		x=1;
		while(x<w/4-4)
		{
			SSE_VISC_Y_PRE(0);
			SSE_VISC_Y_PRE(1);
			SSE_VISC_Y_PRE(2);
			
			SSE_VISC_Y_POST(0);
			SSE_VISC_Y_POST(1);
			SSE_VISC_Y_POST(2);
			
			x+=3;
		}
		while(x<w/4-1)
		{
			SSE_VISC_Y_PRE(0);
			SSE_VISC_Y_POST(0);
			
			x++;
		}
		{
			__m128 tmp;
			tmp = _mm_mul_ps(vVelY[x], vAlpha);
			tmp = _mm_add_ps(tmp, vVelYN[x]);
			tmp = _mm_add_ps(tmp, vVelYP[x]);
			
			__m128 sl = _mm_srli_sf128(vVelY[x],4);
			__m128 sr = _mm_slli_sf128(vVelY[x],4);
			sr = _mm_add_ps(sr, _mm_srli_sf128(vVelY[x-1],12));
			
			tmp = _mm_add_ps(tmp, sl);
			tmp = _mm_add_ps(tmp, sr);
			
			vVelY[x] = _mm_mul_ps(tmp, vBeta);
			velYRow[w-1] = -velYRow[w-2];
		}
#else
		float curVelX = fluidFloatPointer(velX,sx + y*sy)[0];
		float curVelY = fluidFloatPointer(velY,sx + y*sy)[0];
		
		float nextVelX;
		float nextVelY;
		
		float pVelX = -curVelX;
		float pVelY = -curVelY;
		
		fluidFloatPointer(velX,y*sy)[0] = -curVelX;
		fluidFloatPointer(velY,y*sy)[0] = -curVelY;
		
		int x;
		int curxy = sx + y*sy;
		for (x=1; x<w-1; x++)
		{
			nextVelY = fluidFloatPointer(velY,curxy + sx)[0];
			
			fluidFloatPointer(velY,curxy)[0]
				= (fluidFloatPointer(velY,curxy)[0]*alpha
				   + pVelY
				   + nextVelY
				   + fluidFloatPointer(velY,curxy - sy)[0]
				   + fluidFloatPointer(velY,curxy + sy)[0]) * beta;
			
			pVelY = curVelY;
			
			curVelY = nextVelY;
			
			curxy += sx;
		}
		
		curxy = sx + y*sy;
		for (x=1; x<w-1; x++)
		{
			nextVelX = fluidFloatPointer(velX,curxy + sx)[0];
			
			fluidFloatPointer(velX,curxy)[0]
				 = (fluidFloatPointer(velX,curxy)[0]*alpha
					 + pVelX
					 + nextVelX
					 + fluidFloatPointer(velX,curxy - sy)[0]
					 + fluidFloatPointer(velX,curxy + sy)[0]) * beta;
			
			pVelX = curVelX;
			
			curVelX = nextVelX;
			
			curxy += sx;
		}
		
		fluidFloatPointer(velX,(w-1)*sx + y*sy)[0]
						= -pVelX;
		fluidFloatPointer(velY,(w-1)*sx + y*sy)[0]
						= -pVelY;
#endif
	}
}

