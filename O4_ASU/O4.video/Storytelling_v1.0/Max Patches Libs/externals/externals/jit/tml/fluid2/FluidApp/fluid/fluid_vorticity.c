/*
 *  fluid_vorticity.c
 *  FluidApp
 */

#ifdef __SSE3__
#include <xmmintrin.h>
#include <emmintrin.h>
#include <pmmintrin.h>
//#undef __SSE3__
#endif

#ifdef CELL
#include "altivec.h"
#endif

#include "fluid_macros_2.h"
#include <math.h>
#include <stdlib.h>
#include "fluid_cpu.h"

//First part, compute the divergence (w)   :
//
//	z-y, x-z, y-x
//	y z  z x  x y
//
void fluid_vorticity_curl(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct vorticity *v = &mode->vorticity;
	
	int h = fieldHeight(v->velX);
	int w = fieldWidth(v->velX);

#ifdef __APPLE_ALTIVEC__
#else
	int sx = fieldStrideX(v->velX);
#endif
	int sy = fieldStrideY(v->velY);
	
	float *velX = fieldData(v->velX);
	float *velY = fieldData(v->velY);
	
	float *z = fieldData(v->z);
	
	int x;
	if (y==0 || y == h-1)
	{
#ifdef __APPLE_ALTIVEC__
		w/=4;
		
		vector float *vVelY = (vector float*)fluidFloatPointer(velY, y*sy);
		
		vector float *vZ = (vector float*)fluidFloatPointer(z, y*sy);
		vector float vHalf = {0.5f, 0.5f, 0.5f, 0.5f};
		vector float vHalfLeft = {0.0f, 0.5f, 0.5f, 0.5f};
		vector float vHalfRight = {0.5f, 0.5f, 0.5f, 0.0f};
		vector float vZero = {0.0f, 0.0f, 0.0f, 0.0f};
		
		{
			vector float sl = vec_sld(vVelY[0], vVelY[1], 4);
			vector float sr = vec_sld(vZero, vVelY[0], 12);
			
			vector float dydx = vec_madd(vHalfLeft, vec_sub(sl,sr), vZero);
			
			vZ[0] = dydx;
		}
		for (x=1; x<w-1; x++)
		{
			vector float sl = vec_sld(vVelY[x], vVelY[x+1], 4);
			vector float sr = vec_sld(vVelY[x-1], vVelY[x], 12);
			
			vector float dydx = vec_madd(vHalf, vec_sub(sl,sr), vZero);
			
			vZ[x] = dydx;
		}
		{
			vector float sl = vec_sld(vVelY[x], vZero, 4);
			vector float sr = vec_sld(vVelY[x-1], vVelY[x], 12);
			
			vector float dydx = vec_madd(vHalfRight, vec_sub(sl,sr), vZero);
			
			vZ[x] = dydx;
		}
#else
		x = 0;
		float dydx = 0;
		float dxdy = 0;
		fluidFloatPointer(z, sx*x + sy*y)[0] = (dydx - dxdy);
		
		for (x=1; x<w-1; x++)
		{
			dydx = (fluidFloatPointer(velY, (x+1)*sx)[0]
					- fluidFloatPointer(velY, (x-1)*sx)[0])/2;
			dxdy = 0;
			fluidFloatPointer(z, sx*x + sy*y)[0] = (dydx - dxdy);
		}
		
		dydx = 0;
		dxdy = 0;
		fluidFloatPointer(z, sx*x + sy*y)[0] = (dydx - dxdy);
#endif
	}
	else
	{
#ifdef __APPLE_ALTIVEC__
		w/=4;
		
		vector float *vVelY = (vector float*)fluidFloatPointer(velY, y*sy);
		
		vector float *vVelXN = (vector float*)fluidFloatPointer(velX, (y+1)*sy);
		vector float *vVelXP = (vector float*)fluidFloatPointer(velX, (y-1)*sy);
		
		vector float *vZ = (vector float*)fluidFloatPointer(z, y*sy);
		vector float vHalf = {0.5f, 0.5f, 0.5f, 0.5f};
		vector float vHalfLeft = {0.0f, 0.5f, 0.5f, 0.5f};
		vector float vHalfRight = {0.5f, 0.5f, 0.5f, 0.0f};
		vector float vZero = {0.0f, 0.0f, 0.0f, 0.0f};
		
		{
			vector float sl = vec_sld(vVelY[0], vVelY[1], 4);
			
			vector float sr = vec_sld(vZero, vVelY[0], 12);
			
			vector float dydx = vec_madd(vHalfLeft, vec_sub(sl,sr), vZero);
			vector float dxdy = vec_madd(vHalf, vec_sub(vVelXN[0], vVelXP[0]), vZero);
			
			vZ[0] = vec_sub(dydx,dxdy);
		}
		for (x=1; x<w-1; x++)
		{
			vector float sl = vec_sld(vVelY[x], vVelY[x+1], 4);
			
			vector float sr = vec_sld(vVelY[x-1], vVelY[x], 12);
			
			vector float dydx = vec_madd(vHalf, vec_sub(sl,sr), vZero);
			vector float dxdy = vec_madd(vHalf, vec_sub(vVelXN[x], vVelXP[x]), vZero);
			
			vZ[x] = vec_sub(dydx,dxdy);
		}
		{
			vector float sl = vec_sld(vVelY[x], vZero, 4);
			
			vector float sr = vec_sld(vVelY[x-1], vVelY[x], 12);
			
			vector float dydx = vec_madd(vHalfRight, vec_sub(sl,sr), vZero);
			vector float dxdy = vec_madd(vHalf, vec_sub(vVelXN[x], vVelXP[x]), vZero);
			
			vZ[x] = vec_sub(dydx,dxdy);
		}
#elif defined __SSE3__
		w/=4;
		
		__m128 *vVelY = (__m128*)fluidFloatPointer(velY, y*sy);
		
		__m128 *vVelXN = (__m128*)fluidFloatPointer(velX, (y+1)*sy);
		__m128 *vVelXP = (__m128*)fluidFloatPointer(velX, (y-1)*sy);
		
		__m128 *vZ = (__m128*)fluidFloatPointer(z, y*sy);
		__m128 vHalf = {0.5f, 0.5f, 0.5f, 0.5f};
		__m128 vHalfLeft = {0.0f, 0.5f, 0.5f, 0.5f};
		__m128 vHalfRight = {0.5f, 0.5f, 0.5f, 0.0f};
		
		
#define SSE_VORTICITY_PRE(n)											\
		__m128 sl ## n = _mm_srli_sf128(vVelY[x+n], 4);					\
		sl ## n = _mm_add_ps(sl ## n, _mm_slli_sf128(vVelY[x+1+n],12));	\
																		\
		__m128 sr ## n = _mm_slli_sf128(vVelY[x+n], 4);					\
		sr ## n = _mm_add_ps(sr ## n, _mm_srli_sf128(vVelY[x-1+n], 12));
		
#define SSE_VORTICITY_POST(n)														\
		__m128 dydx ## n = _mm_mul_ps(vHalf, _mm_sub_ps(sl ## n,sr ## n));			\
		__m128 dxdy ## n = _mm_mul_ps(vHalf, _mm_sub_ps(vVelXN[x+n], vVelXP[x+n]));	\
																					\
		vZ[x+n] = _mm_sub_ps(dydx ## n,dxdy ## n);
		
		{
			__m128 sl = _mm_srli_sf128(vVelY[0], 4);
			sl = _mm_add_ps(sl, _mm_slli_sf128(vVelY[1],12));
			
			__m128 sr = _mm_slli_sf128(vVelY[0], 4);
			
			__m128 dydx = _mm_mul_ps(vHalfLeft, _mm_sub_ps(sl,sr));
			__m128 dxdy = _mm_mul_ps(vHalf, _mm_sub_ps(vVelXN[0], vVelXP[0]));
			
			vZ[0] = _mm_sub_ps(dydx,dxdy);
		}
		x=1;
		while(x<w-13)
		{
			SSE_VORTICITY_PRE(0);
			SSE_VORTICITY_PRE(1);
			SSE_VORTICITY_PRE(2);
			SSE_VORTICITY_PRE(3);
			SSE_VORTICITY_POST(0);
			SSE_VORTICITY_POST(1);
			SSE_VORTICITY_POST(2);
			SSE_VORTICITY_POST(3);
			x+=4;
		}
		while(x<w-1)
		{
			SSE_VORTICITY_PRE(0);
			SSE_VORTICITY_POST(0);
			x++;
		}
		{
			__m128 sl = _mm_srli_sf128(vVelY[x], 4);
			
			__m128 sr = _mm_slli_sf128(vVelY[x], 4);
			sr = _mm_add_ps(sr, _mm_srli_sf128(vVelY[x-1], 12));
			
			__m128 dydx = _mm_mul_ps(vHalfRight, _mm_sub_ps(sl,sr));
			__m128 dxdy = _mm_mul_ps(vHalf, _mm_sub_ps(vVelXN[x], vVelXP[x]));
			
			vZ[x] = _mm_sub_ps(dydx,dxdy);
		}
#else
		x = 0;
		float dydx = 0;
		float dxdy = (fluidFloatPointer(velX, sx + (y+1)*sy)[0]
					  - fluidFloatPointer(velX, sx + (y-1)*sy)[0])/2;
		fluidFloatPointer(z, sx*x + sy*y)[0] = (dydx - dxdy);
		
		for (x=1; x<w-1; x++)
		{
			dydx = (fluidFloatPointer(velY, (x+1)*sx + y*sy)[0]
						  - fluidFloatPointer(velY, (x-1)*sx + y*sy)[0])/2;
			dxdy = (fluidFloatPointer(velX, sx + (y+1)*sy)[0]
						  - fluidFloatPointer(velX, sx + (y-1)*sy)[0])/2;
			fluidFloatPointer(z, sx*x + sy*y)[0] = (dydx - dxdy);
		}
		
		dydx = 0;
		dxdy = (fluidFloatPointer(velX, sx + (y+1)*sy)[0]
				- fluidFloatPointer(velX, sx + (y-1)*sy)[0])/2;
		fluidFloatPointer(z, sx*x + sy*y)[0] = (dydx - dxdy);
#endif
	}
}


void fluid_vorticity_apply(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct vorticity *v = &mode->vorticity;
	
	int h = fieldHeight(v->velX);
	int w = fieldWidth(v->velX);
	
	int sy = fieldStrideY(v->velY);
	
	float *velX = fieldData(v->velX);
	float *velY = fieldData(v->velY);
	
	float *z = fieldData(v->z);
	
	float e = v->e;
	
	int x;
	if (y==0)
	{
	}
	else if (y == h-1)
	{
	}
	else
	{
//#undef __SSE3__
//#undef __APPLE_ALTIVEC__
#ifdef __APPLE_ALTIVEC__
		int vW = w/4;
		
		vector float *vZ = (vector float*)fluidFloatPointer(z, y*sy);
		
		vector float *vVelX = (vector float*)fluidFloatPointer(velX, y*sy);
		vector float *vVelY = (vector float*)fluidFloatPointer(velY, y*sy);
		
		vector float *vZP = (vector float*)fluidFloatPointer(z, (y-1)*sy);
		vector float *vZN = (vector float*)fluidFloatPointer(z, (y+1)*sy);
		
		vector float smallValue = {0.001f, 0.001f, 0.001f, 0.001f};
		vector float smallValueLeft = {INFINITY,0.001f, 0.001f, 0.001f};
		vector float smallValueRight = {0.001f, 0.001f, 0.001f, INFINITY};
		vector float vE = {e,e,e,e};
		
		vector float vHalf = {0.5f, 0.5f, 0.5f, 0.5f};
		vector float vZero = {0.0f, 0.0f, 0.0f, 0.0f};
		
		{
			vector float sl = vec_sld(vZ[0],vZ[1], 4);
			
			vector float sr = vec_sld(vZero,vZ[0], 12);
			
			vector float dzdx = vec_madd(vHalf,vec_sub(vec_abs(sl),vec_abs(sr)), vZero);
			vector float dzdy = vec_madd(vHalf,vec_sub(vec_abs(vZP[0]), vec_abs(vZN[0])), vZero);
			
			vector float mag = vec_madd(dzdx,dzdx, vec_madd(dzdy,dzdy, vZero));
			
			vector bool int magMask = vec_cmpgt(mag,smallValueLeft);
			int *mm = (int*)&magMask;
			if (mm[0] || mm[1] || mm[2] || mm[3])
			{
				mag = vec_madd(vE,vec_rsqrte(mag), vZero);
				
				dzdx = vec_madd(dzdx,mag, vZero);
				dzdy = vec_madd(dzdy,mag, vZero);
				
				dzdx = vec_and(dzdx, magMask);
				dzdy = vec_and(dzdy, magMask);
				
				vVelX[0] = vec_madd(dzdy,vZ[0],vVelX[0]);
				
				vVelY[0] = vec_sub(vVelY[0],vec_madd(dzdx,vZ[0],vZero));
			}
		}
		for (x=1; x<vW-1; x++)
		{
			vector float sl = vec_sld(vZ[x],vZ[x+1], 4);
			
			vector float sr = vec_sld(vZ[x-1],vZ[x], 12);
			
			vector float dzdx = vec_madd(vHalf,vec_sub(vec_abs(sl),vec_abs(sr)), vZero);
			vector float dzdy = vec_madd(vHalf,vec_sub(vec_abs(vZP[x]), vec_abs(vZN[x])), vZero);
			
			vector float mag = vec_madd(dzdx,dzdx, vec_madd(dzdy,dzdy, vZero));
			
			vector bool int magMask = vec_cmpgt(mag,smallValue);
			int *mm = (int*)&magMask;
			if (mm[0] || mm[1] || mm[2] || mm[3])
			{
				mag = vec_madd(vE,vec_rsqrte(mag), vZero);
				
				dzdx = vec_madd(dzdx,mag, vZero);
				dzdy = vec_madd(dzdy,mag, vZero);
				
				dzdx = vec_and(dzdx, magMask);
				dzdy = vec_and(dzdy, magMask);
				
				vVelX[x] = vec_madd(dzdy,vZ[x],vVelX[x]);
				
				vVelY[x] = vec_sub(vVelY[x],vec_madd(dzdx,vZ[x],vZero));
			}
		}
		{
			vector float sl = vec_sld(vZ[x],vZero, 4);
			
			vector float sr = vec_sld(vZ[x-1],vZ[x], 12);
			
			vector float dzdx = vec_madd(vHalf,vec_sub(vec_abs(sl),vec_abs(sr)), vZero);
			vector float dzdy = vec_madd(vHalf,vec_sub(vec_abs(vZP[x]), vec_abs(vZN[x])), vZero);
			
			vector float mag = vec_madd(dzdx,dzdx, vec_madd(dzdy,dzdy, vZero));
			
			vector bool int magMask = vec_cmpgt(mag,smallValueRight);
			int *mm = (int*)&magMask;
			if (mm[0] || mm[1] || mm[2] || mm[3])
			{
				mag = vec_madd(vE,vec_rsqrte(mag), vZero);
				
				dzdx = vec_madd(dzdx,mag, vZero);
				dzdy = vec_madd(dzdy,mag, vZero);
				
				dzdx = vec_and(dzdx, magMask);
				dzdy = vec_and(dzdy, magMask);
				
				vVelX[x] = vec_madd(dzdy,vZ[x],vVelX[x]);
				
				vVelY[x] = vec_sub(vVelY[x],vec_madd(dzdx,vZ[x],vZero));
			}
		}
#elif defined __SSE3__
		int vW = w/4;
		
		__m128 *vZ = (__m128*)fluidFloatPointer(z, y*sy);
		
		__m128 *vVelX = (__m128*)fluidFloatPointer(velX, y*sy);
		__m128 *vVelY = (__m128*)fluidFloatPointer(velY, y*sy);
		
		__m128 *vZP = (__m128*)fluidFloatPointer(z, (y-1)*sy);
		__m128 *vZN = (__m128*)fluidFloatPointer(z, (y+1)*sy);
		
		__m128i absMask = {0x7FFFFFFF7FFFFFFF,0x7FFFFFFF7FFFFFFF};
		
		__m128 smallValue = {0.001f, 0.001f, 0.001f, 0.001f};
		__m128 smallLeftValue = {INFINITY,0.001f, 0.001f, 0.001f};
		__m128 smallRightValue = {0.001f, 0.001f, 0.001f, INFINITY};
		__m128 vE = {e,e,e,e};
		
		__m128 vHalf = {0.5f, 0.5f, 0.5f, 0.5f};

#define SSE_VORT_PRE(n)																		\
		__m128 sl ## n = _mm_srli_sf128(vZ[x+n], 4);										\
		sl ## n = _mm_add_ps(sl ## n, _mm_slli_sf128(vZ[x+1+n],12));						\
																							\
		__m128 sr ## n = _mm_slli_sf128(vZ[x+n], 4);										\
		sr ## n = _mm_add_ps(sr ## n, _mm_srli_sf128(vZ[x-1+n], 12));						\
																							\
		__m128 dzdx ## n = _mm_mul_ps(vHalf,_mm_sub_ps(										\
												_mm_and_ps((__m128)absMask,sl ## n),		\
												_mm_and_ps((__m128)absMask,sr ## n)));		\
		__m128 dzdy ## n = _mm_mul_ps(vHalf,_mm_sub_ps(										\
												_mm_and_ps((__m128)absMask,vZP[x+n]),		\
												_mm_and_ps((__m128)absMask,vZN[x+n])));

#define SSE_VORT_POST(n)													\
		__m128 mag ## n = _mm_add_ps(_mm_mul_ps(dzdx ## n,dzdx ## n),		\
									 _mm_mul_ps(dzdy ## n,dzdy ## n));		\
																			\
		__m128 magMask ## n = _mm_cmpgt_ps(mag ## n,smallValue);			\
																			\
		mag ## n = _mm_mul_ps(vE,_mm_rsqrt_ps(mag ## n));					\
																			\
		dzdx ## n = _mm_mul_ps(dzdx ## n,mag ## n);							\
		dzdy ## n = _mm_mul_ps(dzdy ## n,mag ## n);							\
																			\
		dzdx ## n = _mm_and_ps(dzdx ## n, magMask ## n);					\
		dzdy ## n = _mm_and_ps(dzdy ## n, magMask ## n);
	
#define SSE_VORT_X(n)														\
		vVelX[x+n] = _mm_add_ps(vVelX[x+n],_mm_mul_ps(dzdy ## n,vZ[x+n]));
		
#define SSE_VORT_Y(n)														\
		vVelY[x+n] = _mm_sub_ps(vVelY[x+n],_mm_mul_ps(dzdx ## n,vZ[x+n]));
		
		{
			__m128 sl = _mm_srli_sf128(vZ[0], 4);
			sl = _mm_add_ps(sl, _mm_slli_sf128(vZ[1],12));
			
			__m128 sr = _mm_slli_sf128(vZ[0], 4);
			
			__m128 dzdx = _mm_mul_ps(vHalf,_mm_sub_ps(_mm_and_ps((__m128)absMask,sl),_mm_and_ps((__m128)absMask,sr)));
			__m128 dzdy = _mm_mul_ps(vHalf,_mm_sub_ps(_mm_and_ps((__m128)absMask,vZP[0]), _mm_and_ps((__m128)absMask,vZN[0])));
			
			__m128 mag = _mm_add_ps(_mm_mul_ps(dzdx,dzdx), _mm_mul_ps(dzdy,dzdy));
			
			__m128 magMask = _mm_cmpgt_ps(mag,smallLeftValue);

			{
				mag = _mm_mul_ps(vE,_mm_rsqrt_ps(mag));
				
				dzdx = _mm_mul_ps(dzdx,mag);
				dzdy = _mm_mul_ps(dzdy,mag);
				
				dzdx = _mm_and_ps(dzdx, magMask);
				dzdy = _mm_and_ps(dzdy, magMask);
				
				vVelX[0] = _mm_add_ps(vVelX[0],_mm_mul_ps(dzdy,vZ[0]));
				
				vVelY[0] = _mm_sub_ps(vVelY[0],_mm_mul_ps(dzdx,vZ[0]));
			}
		}
		x=1;
		while (x<vW-1 && x%4 != 0)
		{
			SSE_VORT_PRE(0);
			SSE_VORT_POST(0);
			SSE_VORT_X(0);
			SSE_VORT_Y(0);
			x++;
		}
		while (x<vW-9)
		{
			SSE_VORT_PRE(0);
			SSE_VORT_PRE(1);
			SSE_VORT_PRE(2);
			SSE_VORT_PRE(3);
			SSE_VORT_PRE(4);
			SSE_VORT_PRE(5);
			SSE_VORT_PRE(6);
			SSE_VORT_PRE(7);
			
			SSE_VORT_POST(0);
			SSE_VORT_POST(1);
			SSE_VORT_POST(2);
			SSE_VORT_POST(3);
			SSE_VORT_POST(4);
			SSE_VORT_POST(5);
			SSE_VORT_POST(6);
			SSE_VORT_POST(7);
			
			SSE_VORT_X(0);
			SSE_VORT_X(1);
			SSE_VORT_X(2);
			SSE_VORT_X(3);
			SSE_VORT_X(4);
			SSE_VORT_X(5);
			SSE_VORT_X(6);
			SSE_VORT_X(7);
			
			SSE_VORT_Y(0);
			SSE_VORT_Y(1);
			SSE_VORT_Y(2);
			SSE_VORT_Y(3);
			SSE_VORT_Y(4);
			SSE_VORT_Y(5);
			SSE_VORT_Y(6);
			SSE_VORT_Y(7);
			x+=8;
		}
		while (x<vW-1)
		{
			SSE_VORT_PRE(0);
			SSE_VORT_POST(0);
			SSE_VORT_X(0);
			SSE_VORT_Y(0);
			x++;
		}
		{
			__m128 sl = _mm_srli_sf128(vZ[x], 4);
			
			__m128 sr = _mm_slli_sf128(vZ[x], 4);
			sr = _mm_add_ps(sr, _mm_srli_sf128(vZ[x-1], 12));
			
			__m128 dzdx = _mm_mul_ps(vHalf,_mm_sub_ps(_mm_and_ps((__m128)absMask,sl),_mm_and_ps((__m128)absMask,sr)));
			__m128 dzdy = _mm_mul_ps(vHalf,_mm_sub_ps(_mm_and_ps((__m128)absMask,vZP[x]), _mm_and_ps((__m128)absMask,vZN[x])));
			
			__m128 mag = _mm_add_ps(_mm_mul_ps(dzdx,dzdx), _mm_mul_ps(dzdy,dzdy));
			
			__m128 magMask = _mm_cmpgt_ps(mag,smallRightValue);

			{
				mag = _mm_mul_ps(vE,_mm_rsqrt_ps(mag));
				
				dzdx = _mm_mul_ps(dzdx,mag);
				dzdy = _mm_mul_ps(dzdy,mag);
				
				dzdx = _mm_and_ps(dzdx, magMask);
				dzdy = _mm_and_ps(dzdy, magMask);
				
				vVelX[x] = _mm_add_ps(vVelX[x],_mm_mul_ps(dzdy,vZ[x]));
				
				vVelY[x] = _mm_sub_ps(vVelY[x],_mm_mul_ps(dzdx,vZ[x]));
			}
		}
#else
		int sx = fieldStrideX(v->velX);
		
		float dzdx, dzdy, mag;
		for (x=1; x<w-1; x++)
		{
			dzdx = (fabsf(fluidFloatPointer(z, (x+1)*sx + y*sy)[0])
					- fabsf(fluidFloatPointer(z, (x-1)*sx + y*sy)[0]))/2;
			dzdy = (fabsf(fluidFloatPointer(z, sx + (y+1)*sy)[0])
					- fabsf(fluidFloatPointer(z, sx + (y-1)*sy)[0]))/2;
			float mg = dzdx*dzdx + dzdy*dzdy;
			if (mg > 0.001f)
			{
				mag = 1.0f/sqrtf(mg);
				dzdx= e*dzdx * mag;
				dzdy= e*dzdy * mag;
				
				fluidFloatPointer(velX, x*sx + sy*y)[0]
							+= dzdy *fluidFloatPointer(z, x*sx+ y*sy)[0];
			}
		}
		
		for (x=1; x<w-1; x++)
		{
			dzdx = (fabsf(fluidFloatPointer(z, (x+1)*sx + y*sy)[0])
					- fabsf(fluidFloatPointer(z, (x-1)*sx + y*sy)[0]))/2;
			dzdy = (fabsf(fluidFloatPointer(z, sx + (y+1)*sy)[0])
					- fabsf(fluidFloatPointer(z, sx + (y-1)*sy)[0]))/2;
			float mg = dzdx*dzdx + dzdy*dzdy;
			if (mg > 0.001f)
			{
				mag = 1.0f/sqrtf(mg);
				dzdx= e*dzdx * mag;
				dzdy= e*dzdy * mag;
				
				fluidFloatPointer(velY, x*sx + sy*y)[0]
						-= dzdx *fluidFloatPointer(z, x*sx+ y*sy)[0];
			}
		}
#endif
	}
}
