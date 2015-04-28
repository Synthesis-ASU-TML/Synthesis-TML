/*
 *  fluid_pressure.c
 *  FluidApp
 */

#include "x_simd.h"

#include "fluid_macros_2.h"
#include "fluid_cpu.h"

#include <math.h>
#include <stdio.h>

#ifdef __APPLE_ALTIVEC__
#ifndef CELL
#include <ppc_intrinsics.h>
#endif
#endif

/** Most basic function used to handle pressure */
void fluid_genPressure(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct pressure *p = &mode->pressure;
	
	int w = fieldWidth(p->velX);
	int h = fieldHeight(p->velX);

#ifdef __APPLE_ALTIVEC__
#elif defined __SSE3__
#else
	int sx = fieldStrideX(p->velX);
#endif
	int sy = fieldStrideY(p->velY);
	
	float *velX = fieldData(p->velX);
	float *velY = fieldData(p->velY);
	
	float *pressure = fieldData(p->pressure);
	
	if (y == 0)
	{
#ifdef X_SIMD
		x128f *vPressure = (x128f*)fluidFloatPointer(pressure, 0*sy);
		x128f *vPressureP = (x128f*)fluidFloatPointer(pressure, 1*sy);
		
		int x;
		w/=4;
		for (x=0; x<w; x++)
		{
			vPressure[x] = vPressureP[x];
		}
#else
		int x;
		for (x=0; x<w; x++)
		{
			fluidFloatPointer(pressure,x*sx)[0] = fluidFloatPointer(pressure,x*sx + sy)[0];
		}
#endif
	}
	else if (y == h-1)
	{
#ifdef X_SIMD
		x128f *vPressure = (x128f*)fluidFloatPointer(pressure, y*sy);
		x128f *vPressureP = (x128f*)fluidFloatPointer(pressure, (y-1)*sy);
		
		int x;
		w/=4;
		for (x=0; x<w; x++)
		{
			vPressure[x] = vPressureP[x];
		}
#else
		int x;
		for (x=0; x<w; x++)
		{
			fluidFloatPointer(pressure,x*sx + y*sy)[0] =
					fluidFloatPointer(pressure,x*sx + (y-1)*sy)[0];
		}
#endif
	}
	else
	{
#ifdef X_SIMD
		float *vPressureRow = fluidFloatPointer(pressure, y*sy);
		
		x128f *vPressure = (x128f*)vPressureRow;
		const x128f *vVelX = (x128f*)fluidFloatPointer(velX, y*sy);
		
		const x128f *vPressureN = (x128f*)fluidFloatPointer(pressure, (y+1)*sy);
		const x128f *vVelYN = (x128f*)fluidFloatPointer(velY, (y+1)*sy);
		
		const x128f *vPressureP = (x128f*)fluidFloatPointer(pressure, (y-1)*sy);
		const x128f *vVelYP = (x128f*)fluidFloatPointer(velY, (y-1)*sy);
		
		const x128f div4 = {1.0f/4.0f, 1.0f/4.0f, 1.0f/4.0f, 1.0f/4.0f};
#endif
	
#ifdef __APPLE_ALTIVEC__
		//int myTempVariable = __mfspr( 1023 );
		
		const vector float vZero = {0,0,0,0};
		
		vec_dstst(vPressure, 0x01000001, 0);
		vec_dst(vVelX, 0x01000001, 1);
		vec_dst(vVelYN, 0x01000001, 2);
		vec_dst(vVelYP, 0x01000001, 3);
		
		int x;
		{
			vector float tmp;
			
			//Compute shifts
			vector float sl_p = vec_sld(vPressure[0], vPressure[1],4);
			vector float sr_p = vec_sld(vZero, vPressure[0], 12);
			
			vector float sl_vx = vec_sld(vVelX[0], vVelX[1],4);
			vector float sr_vx = vec_sld(vZero, vVelX[0], 12);
			
			//Sum everything!!!
			tmp = vec_add(sl_p, sr_p);
			tmp = vec_add(tmp, vPressureN[0]);
			tmp = vec_add(tmp, vPressureP[0]);
			tmp = vec_sub(tmp, sl_vx);
			tmp = vec_add(tmp, sr_vx);
			tmp = vec_sub(tmp, vVelYN[0]);
			tmp = vec_add(tmp, vVelYP[0]);
			
			vPressure[0] = vec_madd(tmp, div4, vZero);
			vPressureRow[0] = vPressureRow[1];
		}
		x=1;
#define PRESSURE_VEC_PRE(n)													\
		vector float sl_p ## n = vec_sld(vPressure[x+n], vPressure[x+1+n],4); \
		vector float sr_p ## n = vec_sld(vPressure[x-1+n], vPressure[x+n], 12);
		
#define PRESSURE_VEC_SHIFT(n)												\
		vector float sl_vx ## n = vec_sld(vVelX[x+n], vVelX[x+1+n],4);		\
		vector float sr_vx ## n = vec_sld(vVelX[x-1+n], vVelX[x+n], 12);
		
#define PRESSURE_VEC_END(n)														\
		vector float tmp1 ## n = vec_add(sl_p ## n, sr_p ## n);					\
		vector float tmp2 ## n = vec_add(vPressureP[x+n], vPressureN[x+n]);		\
		vector float tmp3 ## n = vec_sub(sr_vx ## n, sl_vx ## n);				\
		vector float tmp4 ## n = vec_sub(vVelYP[x+n], vVelYN[x+n]);				\
																				\
		tmp1 ## n = vec_add(tmp1 ## n,tmp2 ## n);								\
		tmp3 ## n = vec_add(tmp3 ## n,tmp4 ## n);								\
		tmp1 ## n = vec_add(tmp1 ## n,tmp3 ## n);								\
																				\
		vPressure[x+n] = vec_madd(tmp1 ## n, div4, vZero);
		
		while (x<w/4-5)
		{
			PRESSURE_VEC_PRE(0)
			PRESSURE_VEC_PRE(1)
			PRESSURE_VEC_PRE(2)
			PRESSURE_VEC_PRE(3)
			
			PRESSURE_VEC_SHIFT(0)
			PRESSURE_VEC_SHIFT(1)
			PRESSURE_VEC_SHIFT(2)
			PRESSURE_VEC_SHIFT(3)
			
			PRESSURE_VEC_END(0)
			PRESSURE_VEC_END(1)
			PRESSURE_VEC_END(2)
			PRESSURE_VEC_END(3)
			
			x+=4;
		}

		while (x<w/4-1)
		{			
			PRESSURE_VEC_PRE(0)
			PRESSURE_VEC_SHIFT(0)
			PRESSURE_VEC_END(0)
			x++;
		}
		{
			vector float tmp;
			
			//Compute shifts
			vector float sl_p = vec_sld(vPressure[x], vZero,4);
			vector float sr_p = vec_sld(vPressure[x-1], vPressure[x], 12);
			
			vector float sl_vx = vec_sld(vVelX[x], vZero,4);
			vector float sr_vx = vec_sld(vVelX[x-1], vVelX[x], 12);
			
			//Sum everything!!!
			tmp = vec_add(sl_p, sr_p);
			tmp = vec_add(tmp, vPressureN[x]);
			tmp = vec_add(tmp, vPressureP[x]);
			tmp = vec_sub(tmp, sl_vx);
			tmp = vec_add(tmp, sr_vx);
			tmp = vec_sub(tmp, vVelYN[x]);
			tmp = vec_add(tmp, vVelYP[x]);
			
			vPressure[x] = vec_madd(tmp, div4, vZero);
			
			vPressureRow[w-1] = vPressureRow[w-2];
		}
		
#elif defined __SSE3__
		
#define PRESSURE_SSE_PRE(n)														\
		__m128 sl_p ## n = _mm_srli_sf128(vPressure[x+n],4);					\
		sl_p ## n = _mm_add_ps(sl_p ## n,_mm_slli_sf128(vPressure[x+1+n],12));	\
																				\
		__m128 sr_p ## n = _mm_slli_sf128(vPressure[x+n],4);					\
		sr_p ## n = _mm_add_ps(sr_p ## n,_mm_srli_sf128(vPressure[x-1+n],12));	\
																				\
		__m128 sl_vx ## n = _mm_srli_sf128(vVelX[x+n],4);						\
		sl_vx ## n = _mm_add_ps(sl_vx ## n,_mm_slli_sf128(vVelX[x+1+n],12));	\
																				\
		__m128 sr_vx ## n = _mm_slli_sf128(vVelX[x+n],4);						\
		sr_vx ## n = _mm_add_ps(sr_vx ## n,_mm_srli_sf128(vVelX[x-1+n],12));

#define PRESSURE_SSE_POST(n)													\
		__m128 tmp1 ## n = _mm_add_ps(sl_p ## n, sr_p ## n);					\
		__m128 tmp2 ## n = _mm_add_ps(vPressureP[x+n], vPressureN[x+n]);		\
		__m128 tmp3 ## n = _mm_sub_ps(sr_vx ## n, sl_vx ## n);					\
		__m128 tmp4 ## n = _mm_sub_ps(vVelYP[x+n], vVelYN[x+n]);				\
																				\
		tmp1 ## n = _mm_add_ps(tmp1 ## n,tmp2 ## n);							\
		tmp3 ## n = _mm_add_ps(tmp3 ## n,tmp4 ## n);							\
																				\
		tmp1 ## n = _mm_add_ps(tmp1 ## n,tmp3 ## n);							\
																				\
		vPressure[x+n] = _mm_mul_ps(tmp1 ## n, div4);
		
		int x;
		{
			__m128 tmp;
			
			//Compute shifts
			__m128 sl_p = _mm_srli_sf128(vPressure[0],4);
			sl_p = _mm_add_ps(sl_p,_mm_slli_sf128(vPressure[1],12));
			
			__m128 sr_p = _mm_slli_sf128(vPressure[0],4);
			
			__m128 sl_vx = _mm_srli_sf128(vVelX[0],4);
			sl_vx = _mm_add_ps(sl_vx,_mm_slli_sf128(vVelX[1],12));
			
			__m128 sr_vx = _mm_slli_sf128(vVelX[0],4);
			
			//Sum everything!!!
			tmp = _mm_add_ps(sl_p, sr_p);
			tmp = _mm_add_ps(tmp, vPressureN[0]);
			tmp = _mm_add_ps(tmp, vPressureP[0]);
			tmp = _mm_sub_ps(tmp, sl_vx);
			tmp = _mm_add_ps(tmp, sr_vx);
			tmp = _mm_sub_ps(tmp, vVelYN[0]);
			tmp = _mm_add_ps(tmp, vVelYP[0]);
			
			vPressure[0] = _mm_mul_ps(tmp, div4);
			vPressureRow[0] = vPressureRow[1];
		}
		x=1;
		while (x<w/4-9)
		{
			//Compute shifts (1)
			PRESSURE_SSE_PRE(0);
			PRESSURE_SSE_PRE(1);
			PRESSURE_SSE_PRE(2);
			
			//Sum everything!!! (1)
			PRESSURE_SSE_POST(0);
			PRESSURE_SSE_POST(1);
			PRESSURE_SSE_POST(2);
			
			x+=3;
		}
		while (x<w/4-1)
		{
			//Compute shifts
			PRESSURE_SSE_PRE(0);
			
			//Sum everything!!!
			PRESSURE_SSE_POST(0);
			
			x++;
		}
		{
			__m128 tmp;
			
			//Compute shifts
			__m128 sl_p = _mm_srli_sf128(vPressure[x],4);
			
			__m128 sr_p = _mm_slli_sf128(vPressure[x],4);
			sr_p = _mm_add_ps(sr_p,_mm_srli_sf128(vPressure[x-1],12));
			
			__m128 sl_vx = _mm_srli_sf128(vVelX[x],4);
			
			__m128 sr_vx = _mm_slli_sf128(vVelX[x],4);
			sr_vx = _mm_add_ps(sr_vx,_mm_srli_sf128(vVelX[x-1],12));
			
			//Sum everything!!!
			tmp = _mm_add_ps(sl_p, sr_p);
			tmp = _mm_add_ps(tmp, vPressureN[x]);
			tmp = _mm_add_ps(tmp, vPressureP[x]);
			tmp = _mm_sub_ps(tmp, sl_vx);
			tmp = _mm_add_ps(tmp, sr_vx);
			tmp = _mm_sub_ps(tmp, vVelYN[x]);
			tmp = _mm_add_ps(tmp, vVelYP[x]);
			
			vPressure[x] = _mm_mul_ps(tmp, div4);
			
			vPressureRow[w-1] = vPressureRow[w-2];
		}
		
#else
		float lastPressureX = fluidFloatPointer(pressure,sx + y*sy)[0];
		float lastVelX = fluidFloatPointer(velX, y*sy)[0];
		
		float curPressureX = lastPressureX;
		float curVelX = fluidFloatPointer(velX, sx + y*sy)[0];
		
		fluidFloatPointer(pressure,y*sy)[0] = lastPressureX;
		
		int x;
		int curxy = sx + y*sy;
		for (x=1; x<w-1; x++)
		{
			float nextPressureX = fluidFloatPointer(pressure,curxy + sx)[0];
			float nextVelX = fluidFloatPointer(velX,curxy + sx)[0];
			
			fluidFloatPointer(pressure,curxy)[0] =
				(	  lastPressureX
				 	+ nextPressureX
				 	+ fluidFloatPointer(pressure,curxy - sy)[0]
					+ fluidFloatPointer(pressure,curxy + sy)[0]
				 - 		(  nextVelX
						 - lastVelX
						 + fluidFloatPointer(velY,curxy + sy)[0]
						 - fluidFloatPointer(velY,curxy - sy)[0])) / 4.0f;
			
			lastPressureX = curPressureX;
			curPressureX = nextPressureX;
			
			lastVelX = curVelX;
			curVelX = nextVelX;
			
			curxy += sx;
		}
		
		fluidFloatPointer(pressure,(w-1)*sx + y*sy)[0]
			= fluidFloatPointer(pressure,(w-2)*sx + y*sy)[0];
#endif
	}
}

/** Function to handle pressure while respecting densities
 	- To get zero pressure we clear out values where needed...*/
void fluid_genPressure_dens(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct pressure *p = &mode->pressure;
	
	int w = fieldWidth(p->velX);
	int h = fieldHeight(p->velX);
	
	int sx = fieldStrideX(p->velX);
	int sy = fieldStrideY(p->velY);
	
	float *velX = fieldData(p->velX);
	float *velY = fieldData(p->velY);
	
	float *pressure = fieldData(p->pressure);
	
	
	int dx = fieldStrideX(p->density);
	int dy = fieldStrideY(p->density);
	float *density = fieldData(p->density);
	
	if (y == 0)
	{
		int x;
		for (x=0; x<w; x++)
		{
			fluidFloatPointer(pressure,x*sx)[0] = fluidFloatPointer(pressure,x*sx + sy)[0];
		}
	}
	else if (y == h-1)
	{
		int x;
		for (x=0; x<w; x++)
		{
			fluidFloatPointer(pressure,x*sx + y*sy)[0] =
			fluidFloatPointer(pressure,x*sx + (y-1)*sy)[0];
		}
	}
	else
	{
		float lastPressureX = fluidFloatPointer(pressure,sx + y*sy)[0];
		float lastVelX = fluidFloatPointer(velX, y*sy)[0];
		
		float curPressureX = lastPressureX;
		float curVelX = fluidFloatPointer(velX, sx + y*sy)[0];
		
		fluidFloatPointer(pressure,y*sy)[0] = lastPressureX;
		
		int x;
		int curxy = sx + y*sy;
		for (x=1; x<w-1; x++)
		{
			float nextPressureX = fluidFloatPointer(pressure,curxy + sx)[0];
			float nextVelX = fluidFloatPointer(velX,curxy + sx)[0];
		
//			if (fluidFloatPointer(density,dx*x + dy*y)[3] > 0)
			{
				fluidFloatPointer(pressure,curxy)[0] =
						(	  lastPressureX
							 + nextPressureX
							 + fluidFloatPointer(pressure,curxy - sy)[0]
							 + fluidFloatPointer(pressure,curxy + sy)[0]
							 - 		fluidFloatPointer(density,dx*x + dy*y)[3]*
						 			(  nextVelX
									 - lastVelX
									 + fluidFloatPointer(velY,curxy + sy)[0]
									 - fluidFloatPointer(velY,curxy - sy)[0])) / 4.0f;
			}
			
			lastPressureX = curPressureX;
			curPressureX = nextPressureX;
			
			lastVelX = curVelX;
			curVelX = nextVelX;
			
			curxy += sx;
		}
		
		fluidFloatPointer(pressure,(w-1)*sx + y*sy)[0]
		= fluidFloatPointer(pressure,(w-2)*sx + y*sy)[0];
	}
}

void fluid_genPressure_densfix(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct pressure *p = &mode->pressure;
	
	
	int dx = fieldStrideX(p->density);
	int dy = fieldStrideY(p->density);
	float *density = fieldData(p->density);
	
	int w = fieldWidth(p->density);
	
	int x;
	for (x=0; x<w; x++)
	{
		float *ptr = fluidFloatPointer(density,dx*x + dy*y);
		if (ptr[3] > 0.9f)
			ptr[3] = 1.0f;
		else if (ptr[3] < 0.1f)
			ptr[3] = 0.0f;
	}
}

/** Applies the results of the pressure */
void fluid_applyPressure(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct pressure *p = &mode->pressure;
	
	int w = fieldWidth(p->velX);
	int h = fieldHeight(p->velX);
	
	int sy = fieldStrideY(p->velY);
	
	float *velX = fieldData(p->velX);
	float *velY = fieldData(p->velY);
	
	float *pressure = fieldData(p->pressure);
	
	if (y == 0)
	{
	}
	else if (y == h-1)
	{
	}
	else
	{
//#undef __APPLE_ALTIVEC__
#ifdef __APPLE_ALTIVEC__
		int x;
		
		vector float vZero = {0,0,0,0};
		
		vector float *vVelX = (vector float*)fluidFloatPointer(velX,y*sy);
		vector float *vVelY = (vector float*)fluidFloatPointer(velY,y*sy);
		vector float *vPressureN = (vector float*)fluidFloatPointer(pressure,(y+1)*sy);
		vector float *vPressureP = (vector float*)fluidFloatPointer(pressure,(y-1)*sy);
		vector float *vPressure = (vector float*)fluidFloatPointer(pressure,y*sy);
		
		vector bool int leftMask = {0x00000000,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF};
		vector bool int rightMask = {0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0x00000000};
		
		w/=4;
		
		{
			vector float sl = vec_sld(vPressure[0], vPressure[1], 4);
			vector float sr = vec_sld(vZero, vPressure[0], 12);
			
			vector float tmp = vec_sub(sl, sr);
			tmp = vec_and(tmp, leftMask);
			tmp = vec_sub(vVelX[0], tmp);
			
			vVelX[0] = tmp;
		}
		for (x=1; x<w-1; x++)
		{
			vector float sl = vec_sld(vPressure[x], vPressure[x+1], 4);
			vector float sr = vec_sld(vPressure[x-1], vPressure[x], 12);
			
			vector float tmp = vec_sub(sl, sr);
			tmp = vec_sub(vVelX[x], tmp);
			
			vVelX[x] = tmp;
		}
		{
			vector float sl = vec_sld(vPressure[x], vZero, 4);
			vector float sr = vec_sld(vPressure[x-1], vPressure[x], 12);
			
			vector float tmp = vec_sub(sl, sr);
			tmp = vec_and(tmp, rightMask);
			tmp = vec_sub(vVelX[x], tmp);
			
			vVelX[x] = tmp;
		}
		
		{			
			vector float tmp = vec_sub(vPressureN[0], vPressureP[0]);
			tmp = vec_and(tmp, leftMask);
			tmp = vec_sub(vVelY[0], tmp);
			
			vVelY[0] = tmp;
		}
		for (x=1; x<w-1; x++)
		{			
			vector float tmp = vec_sub(vPressureN[x], vPressureP[x]);
			tmp = vec_sub(vVelY[x], tmp);
			
			vVelY[x] = tmp;
		}
		{			
			vector float tmp = vec_sub(vPressureN[x], vPressureP[x]);
			tmp = vec_and(tmp, rightMask);
			tmp = vec_sub(vVelY[x], tmp);
			
			vVelY[x] = tmp;
		}
#elif defined __SSE3__
		int x;
		
		__m128 *vVelX = (__m128*)fluidFloatPointer(velX,y*sy);
		__m128 *vVelY = (__m128*)fluidFloatPointer(velY,y*sy);
		__m128 *vPressureN = (__m128*)fluidFloatPointer(pressure,(y+1)*sy);
		__m128 *vPressureP = (__m128*)fluidFloatPointer(pressure,(y-1)*sy);
		__m128 *vPressure = (__m128*)fluidFloatPointer(pressure,y*sy);
		
		w/=4;
		
#define SSE_PRESSURE_X_PRE(n)													\
		__m128 sl ## n = _mm_srli_sf128(vPressure[x+n], 4);						\
		sl ## n = _mm_add_ps(sl ## n, _mm_slli_sf128(vPressure[x+1+n],12));		\
																				\
		__m128 sr ## n = _mm_slli_sf128(vPressure[x+n], 4);						\
		sr ## n = _mm_add_ps(sr ## n, _mm_srli_sf128(vPressure[x-1+n], 12));

#define SSE_PRESSURE_X_POST(n)								\
		__m128 tmp ## n = _mm_sub_ps(sl ## n, sr ## n);		\
		tmp ## n = _mm_sub_ps(vVelX[x+n], tmp ## n);		\
															\
		vVelX[x+n] = tmp ## n
		
		{
			__m128 sl = _mm_srli_sf128(vPressure[0], 4);
			sl = _mm_add_ps(sl, _mm_slli_sf128(vPressure[1],12));
			
			__m128 sr = _mm_slli_sf128(vPressure[0], 4);
			
			__m128 tmp = _mm_sub_ps(sl, sr);
			__v4si mask = {0x00000000, 0xFFFFFFFF,0xFFFFFFFF, 0xFFFFFFFF};
			tmp = _mm_sub_ps(vVelX[0], _mm_and_ps((__m128)mask,tmp));
			
			vVelX[0] = tmp;
		}
		x=1;
		while(x<w-5)
		{
			SSE_PRESSURE_X_PRE(0);
			SSE_PRESSURE_X_PRE(1);
			SSE_PRESSURE_X_PRE(2);
			SSE_PRESSURE_X_PRE(3);
			SSE_PRESSURE_X_POST(0);
			SSE_PRESSURE_X_POST(1);
			SSE_PRESSURE_X_POST(2);
			SSE_PRESSURE_X_POST(3);
			x+=4;
		}
		while(x<w-1)
		{
			SSE_PRESSURE_X_PRE(0);
			SSE_PRESSURE_X_POST(0);
			x++;
		}
		{
			__m128 sl = _mm_srli_sf128(vPressure[x], 4);
			
			__m128 sr = _mm_slli_sf128(vPressure[x], 4);
			sr = _mm_add_ps(sr, _mm_srli_sf128(vPressure[x-1], 12));
			
			__v4si mask = {0xFFFFFFFF,0xFFFFFFFF, 0xFFFFFFFF, 0x00000000};
			__m128 tmp = _mm_sub_ps(sl, sr);
			vVelX[x] = _mm_sub_ps(vVelX[x], _mm_and_ps((__m128)mask,tmp));
		}
		
#define SSE_PRESSURE_Y_PRE(n)												\
		__m128 tmp ## n = _mm_sub_ps(vPressureN[x+n], vPressureP[x+n]);		\
		tmp ## n = _mm_sub_ps(vVelY[x+n], tmp ## n);

#define SSE_PRESSURE_Y_POST(n)												\
		vVelY[x+n] = tmp ## n;
		
		
		{			
			__m128 tmp = _mm_sub_ps(vPressureN[0], vPressureP[0]);
			__v4si mask = {0x00000000, 0xFFFFFFFF,0xFFFFFFFF, 0xFFFFFFFF};
			tmp = _mm_sub_ps(vVelY[0], _mm_and_ps((__m128)mask,tmp));
			
			vVelY[0] = tmp;
		}
		x=1;
		while(x<w-1)
		{			
			SSE_PRESSURE_Y_PRE(0);
			SSE_PRESSURE_Y_POST(0);
			x++;
		}
		{			
			__m128 tmp = _mm_sub_ps(vPressureN[x], vPressureP[x]);
			__v4si mask = {0xFFFFFFFF,0xFFFFFFFF, 0xFFFFFFFF, 0x00000000};
			vVelY[x] = _mm_sub_ps(vVelY[x], _mm_and_ps((__m128)mask,tmp));
		}
#else
		int sx = fieldStrideX(p->velX);
		int x;
		for (x=1; x<w-1; x++)
		{
			*fluidFloatPointer(velX,x*sx + y*sy)
				-= *fluidFloatPointer(pressure,(x+1)*sx+y*sy)
						- *fluidFloatPointer(pressure,(x-1)*sx+y*sy);
			
			
		}
		for (x=1; x<w-1; x++)
		{
			*fluidFloatPointer(velY,x*sx + y*sy)
				-= *fluidFloatPointer(pressure,x*sx+(y+1)*sy)
					- *fluidFloatPointer(pressure,x*sx+(y-1)*sy);
		}
#endif
	}
}
