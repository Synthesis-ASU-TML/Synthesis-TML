/*
 *  x_simd.h
 *  FluidApp
 */

//Basic compatibility functions to write SIMD code across the various platforms
//	- also provide a means to help the compiler do SIMD code...

#ifndef X_SIMD_H
#define X_SIMD_H

#include <math.h>

//Get the needed libraries
#ifdef __APPLE_ALTIVEC__
	#ifdef CELL
		#include "altivec.h"
	#endif
	#define X_SIMD
#elif defined __SSE3__
	#include <xmmintrin.h>
	#include <emmintrin.h>
	#include <pmmintrin.h>
	#include <tmmintrin.h>
	#define X_SIMD
#endif

//Floating-point
#ifdef __APPLE_ALTIVEC__
	typedef vector float x128f;
	typedef vector int x128i;
#elif defined __SSE3__
	typedef __m128 x128f;
	typedef __v4si x128i;
#else
	typedef struct { float a,b,c,d; } x128f;
	typedef struct { int a,b,c,d;	} x128i;
#endif

typedef union {x128i v; int i[4];}		u128i;
typedef union {x128f v; float f[4];}		u128f;

static const x128f x_simd_zero = {0,0,0,0};
static const x128i x_simd_izero = {0,0,0,0};

static const x128f x_simd_one = {1,1,1,1};
	
//x_madd
#ifdef __APPLE_ALTIVEC__
	#define x_madd(a,b,c) vec_madd(a,b,c)
#elif defined __SSE3__
	#define x_madd(a,b,c) _mm_add_ps(c, _mm_mul_ps(a,b))
#else
	static inline x128f x_madd(x128f a, x128f b, x128f c)
	{
		return (x128f)
				{a.a*b.a+c.a,
				a.b*b.b+c.b,
				a.c*b.c+c.c,
				a.d*b.d+c.d};
	}
#endif

//x_add
#ifdef __APPLE_ALTIVEC__
	#define x_add(a,b) vec_add(a,b)
#elif defined __SSE3__
	#define x_add(a,b) _mm_add_ps(a,b)
#else
	static inline x128f x_add(x128f a, x128f b)
	{
		return (x128f)
				{a.a+b.a,
				a.b+b.b,
				a.c+b.c,
				a.d+b.d};
	}
#endif

//x_iadd
#ifdef __APPLE_ALTIVEC__
	#define x_iadd(a,b) vec_add(a,b)
#elif defined __SSE3__
	#define x_iadd(a,b) _mm_add_epi32(a,b)
#else
	static inline x128i x_iadd(x128i a, x128i b)
	{
		return (x128i)
				{a.a+b.a,
				a.b+b.b,
				a.c+b.c,
				a.d+b.d};
	}
#endif

//x_dun
#ifdef __APPLE_ALTIVEC__
	#define x_sub(a,b) vec_sub(a,b)
#elif defined __SSE3__
	#define x_sub(a,b) _mm_sub_ps(a,b)
#else
	static inline x128f x_sub(x128f a, x128f b)
	{
		return (x128f)
			{a.a-b.a,
				a.b-b.b,
				a.c-b.c,
				a.d-b.d};
	}
#endif

//x_mul
#ifdef __APPLE_ALTIVEC__
	#define x_mul(a,b) vec_madd(a,b,x_simd_zero)
#elif defined __SSE3__
	#define x_mul(a,b) _mm_mul_ps(a,b)
#else
	static inline x128f x_mul(x128f a, x128f b)
	{
		return (x128f)
				{a.a*b.a,
					a.b*b.b,
					a.c*b.c,
					a.d*b.d};
	}
#endif

//x_imul
static inline x128i x_imul(const x128i a, const x128i b)
{
	u128i ai, bi, ri;
	
	ai.v = a;
	bi.v = b;
	
	ri.i[0] = ai.i[0] * bi.i[0];
	ri.i[1] = ai.i[1] * bi.i[1];
	ri.i[2] = ai.i[2] * bi.i[2];
	ri.i[3] = ai.i[3] * bi.i[3];
	
	return ri.v;
}

//x_cmp_lti
#ifdef __APPLE_ALTIVEC__
	#define x_cmp_lti(a,b)	vec_cmplt(a,b)
#elif defined __SSE3__
	#define x_cmp_lti(a,b)	_mm_cmplt_ps(a,b)
#else
	static inline x128i x_cmp_lti(const x128i a, const x128i b)
	{
		return	(x128i){
				a.a < b.a ? 0xFFFFFFFF : 0x0,
				a.b < b.b ? 0xFFFFFFFF : 0x0,
				a.c < b.c ? 0xFFFFFFFF : 0x0,
				a.d < b.d ? 0xFFFFFFFF : 0x0};
	}
#endif

//x_any_lt
static inline int x_all_lt(const x128f a, const x128f b)
{
	u128f ai, bi;
	
	ai.v = a;
	bi.v = b;
	
	return		ai.f[0] < bi.f[0]
			&&	ai.f[1] < bi.f[1]
			&&	ai.f[2] < bi.f[2]
			&&	ai.f[3] < bi.f[3];
}

//x_min
#ifdef __APPLE_ALTIVEC__
	#define x_min(a,b) vec_min(a,b)
#elif defined __SSE3__
	#define x_min(a,b) _mm_min_ps(a,b)
#else
	static inline x128f x_min(x128f a, x128f b)
	{
		return (x128f)
			{	a.a<b.a?a.a:b.a,
				a.b<b.b?a.b:b.b,
				a.c<b.c?a.c:b.c,
				a.d<b.d?a.d:b.d		};
	}
#endif

//x_max
#ifdef __APPLE_ALTIVEC__
	#define x_max(a,b) vec_max(a,b)
#elif defined __SSE3__
	#define x_max(a,b) _mm_max_ps(a,b)
#else
	static inline x128f x_max(x128f a, x128f b)
	{
		return (x128f)
			{	a.a>b.a?a.a:b.a,
				a.b>b.b?a.b:b.b,
				a.c>b.c?a.c:b.c,
				a.d>b.d?a.d:b.d		};
	}
#endif

//x_sl
#ifdef __APPLE_ALTIVEC__
	#define x_sl(a,b)		vec_sl(a,(vector int){b,b,b,b})
#elif defined __SSE3__
	#define x_sl(a,b)		_mm_slli_epi32(a, b)
#else
	static inline x128i x_sl(x128i a, int b)
	{
		a.a = a.a << b;
		a.b = a.b << b;
		a.c = a.c << b;
		a.d = a.d << b;
		
		return a;
	}
#endif


//x_sld
#ifdef __APPLE_ALTIVEC__
	#define x_sld(a,b,amt)	vec_sld(a,b,amt)
#elif defined __SSE3__
	#define x_sld(a,b,amt)	x_add(_mm_srli_sf128(a,amt), _mm_slli_sf128(b,16-amt))
#else
	static inline x128f x_sld(x128f a, x128f b, int c)
	{
		while (c>0)
		{
			a.a = a.b;
			a.b = a.c;
			a.c = a.d;
			a.d = b.a;
			b.a = b.b;
			b.b = b.c;
			b.c = b.d;
			
			c-=4;
		}
		
		return a;
	}
#endif

//x_clamp(a, min, max)
#define x_clamp(a,min,max)	x_min(x_max(a, min), max)

//x_ftoi(f)
#ifdef __APPLE_ALTIVEC__
	#define x_ftoi(f)		vec_cts(f, 0)
#elif defined __SSE3__
	#define x_ftoi(f)		_mm_cvttps_epi32(f)
#else
	static inline x128i x_ftoi(x128f f)
	{
		return (x128i)
			{f.a, f.b, f.c, f.d};
	}
#endif

//x_itof(i)
#ifdef __APPLE_ALTIVEC__
	#define x_itof(f)		vec_ctf(f, 0)
#elif defined __SSE3__
	#define x_itof(f)		_mm_cvtepi32_ps(f)
#else
	static inline x128f x_itof(x128i i)
	{
		return (x128f)
			{i.a, i.b, i.c, i.d};
	}
#endif

//x_abs
#ifdef __APPLE_ALTIVEC__
	#define x_abs(x) vec_abs(x)
#elif defined __SSE3__
	static const x128i x_float32signMask =
						{0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF};
	#define x_abs(x) _mm_and_ps(x, (x128f)x_float32signMask)
#else
	static inline x128f x_abs(const x128f x)
	{
		return (x128f){fabs(x.a), fabs(x.b), fabs(x.c), fabs(x.d)};
	}
#endif

#endif
