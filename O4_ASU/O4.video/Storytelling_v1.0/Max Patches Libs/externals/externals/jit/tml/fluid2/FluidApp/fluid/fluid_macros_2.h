/*
 *  fluid_macros_2.h
 *  FluidApp
 */

////////////////////////////////////////////////////////////////////////////////
//
//		A set of macros that are cleaner and more modular
//			(whatever that means ... essentially fluid_macros was getting
//			messy and unworkable...)
//

#ifndef fluid_macros_2_h
#define fluid_macros_2_h

//Utility to get a pointer offseted by characters...
#define fluidFloatPointer(base, offset) \
						((float*)(((char*)base) + (offset)))

//Easy way to read "Minimum"
#define fluidSmallest(a,b)	((a)<(b)?(a):(b))
#define fluidLargest(a,b)	((a)>(b)?(a):(b))

//Clamping is always good...
#define fluidClamp(a,min,max)	fluidSmallest(max, fluidLargest(a,min))

//Basic interpolation
#define fluidLinearInterpolation(sx,sy,zz,oz,zo,oo)		\
						((1.0f-sy)	* ((1.0f-sx) * zz + sx*oz)		\
						+ sy	* ((1.0f-sx) * zo + sx*oo))

//Basic swap
#define fluidSwap(t,a,b)	{t _pvt_swap = a; a=b; b = _pvt_swap;}

//SSE compatibility...
#define _mm_srli_sf128(a,b) (__m128)_mm_srli_si128((__m128i)a, b)
#define _mm_slli_sf128(a,b) (__m128)_mm_slli_si128((__m128i)a, b)
#define _mm_abs_epf32(a) (__m128)_mm_abs_epi32((__m128i)a)
#endif
