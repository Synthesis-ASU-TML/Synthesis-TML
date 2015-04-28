/*
 *  fluid_visual.c
 *  FluidApp
 */

#include "x_simd.h"

#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <stdlib.h>

void fluid_video_temp2char(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct video *v = &mode->video;
	
	const int w = fieldWidth(v->f);
	
	const float *f = fluidFloatPointer(fieldData(v->f), y*fieldStrideY(v->f));
	const int c = fieldComponents(v->f);
	unsigned char *o = fieldCharData(v->o) + y*fieldStrideY(v->o);
	
	int x;
	for (x=0; x<w; x++)
	{
		unsigned int ir = ((f[x*c+0]-f[x*c+2])*128.0f + 128.0f);
		
		if (ir < 0)	ir = 0;
		if (ir > 255)	ir = 255;
		
		o[x*c+0] = (unsigned char)(in_f->m_tempGrad[ir].f[0]*255);
		o[x*c+1] = (unsigned char)(in_f->m_tempGrad[ir].f[1]*255);
		o[x*c+2] = (unsigned char)(in_f->m_tempGrad[ir].f[2]*255);
		o[x*c+3] = (unsigned char)(in_f->m_tempGrad[ir].f[3]*255);
	}
}


void fluid_video_dens2char_x(fluid *z, int y, pvt_fluidMode *mode)
{
	struct video *v = &mode->video;
	
	const int w = fieldWidth(v->f);
	
	const float *f = fluidFloatPointer(fieldData(v->f),y*fieldStrideY(v->f));
	const int c = fieldComponents(v->f);
	unsigned char *o = fieldCharData(v->o) + y*fieldStrideY(v->o);
	
#ifdef __APPLE_ALTIVEC__
	int x;
	const int w2 = w * c / (4*4);
	
	const vector float *vf = (vector float*)f;
	vector signed char *vo = (vector signed char*)o;
	
	const vector short min = {0,0,0,0,0,0,0,0};
	const vector short max = {255,255,255,255,255,255,255,255};
	
	for (x=0; x<w2; x++)
	{
		vector int i1 = vec_cts(vf[x*4+0], 8);
		vector int i2 = vec_cts(vf[x*4+1], 8);
		vector int i3 = vec_cts(vf[x*4+2], 8);
		vector int i4 = vec_cts(vf[x*4+3], 8);
		
		vector short s1 = vec_pack(i1, i2);
		vector short s2 = vec_pack(i3, i4);
		s1 = vec_min(vec_max(s1, min), max);
		s2 = vec_min(vec_max(s2, min), max);
		
		vo[x] = vec_pack(s1,s2);
	}
#elif __SSE3__
	
	const __m128 *p =
		(__m128*)fluidFloatPointer(fieldData(v->pressure), y*fieldStrideY(v->pressure));
	
	const __m128 *vx =
		(__m128*)fluidFloatPointer(fieldData(v->velX), y*fieldStrideY(v->velX));
	
	const __m128 *vy =
		(__m128*)fluidFloatPointer(fieldData(v->velY), y*fieldStrideY(v->velY));
	
	int x;
	const int w2 = w * c / (4*4);
	
	const __m128 *vf = (__m128*)f;
	__m128i *vo = (__m128i*)o;
	
	const __m128 max = {255,255,255,255};
	
	for (x=0; x<w2; x++)
	{
		__m128 p1 = _mm_shuffle_ps(p[x], p[x], _MM_SHUFFLE(0,0,0,0));
		__m128 p2 = _mm_shuffle_ps(p[x], p[x], _MM_SHUFFLE(1,1,1,1));
		__m128 p3 = _mm_shuffle_ps(p[x], p[x], _MM_SHUFFLE(2,2,2,2));
		__m128 p4 = _mm_shuffle_ps(p[x], p[x], _MM_SHUFFLE(3,3,3,3));
		
		//Sum pressure and color w/multipliers
		__m128 c1 = _mm_add_ps(_mm_mul_ps(p1, z->m_pressureScale),
								_mm_mul_ps(vf[x*4+0],z->m_densityScale));
		__m128 c2 = _mm_add_ps(_mm_mul_ps(p2, z->m_pressureScale),
							   _mm_mul_ps(vf[x*4+1],z->m_densityScale));
		__m128 c3 = _mm_add_ps(_mm_mul_ps(p3, z->m_pressureScale),
							   _mm_mul_ps(vf[x*4+2],z->m_densityScale));
		__m128 c4 = _mm_add_ps(_mm_mul_ps(p4, z->m_pressureScale),
							   _mm_mul_ps(vf[x*4+3],z->m_densityScale));
		
		//Add in the multiplicative pressure...
		c1 = _mm_add_ps(c1,_mm_mul_ps(_mm_mul_ps(p1, vf[x*4+0]), z->m_pressureMult));
		c2 = _mm_add_ps(c2,_mm_mul_ps(_mm_mul_ps(p2, vf[x*4+1]), z->m_pressureMult));
		c3 = _mm_add_ps(c3,_mm_mul_ps(_mm_mul_ps(p3, vf[x*4+2]), z->m_pressureMult));
		c4 = _mm_add_ps(c4,_mm_mul_ps(_mm_mul_ps(p4, vf[x*4+3]), z->m_pressureMult));
		
		//Flip the pressure, and add everything...
		p1 = _mm_max_ps(x_simd_zero,_mm_sub_ps(x_simd_one, p1));
		p2 = _mm_max_ps(x_simd_zero,_mm_sub_ps(x_simd_one, p2));
		p3 = _mm_max_ps(x_simd_zero,_mm_sub_ps(x_simd_one, p3));
		p4 = _mm_max_ps(x_simd_zero,_mm_sub_ps(x_simd_one, p4));
		
		//Add in the inverse pressure
		c1 = _mm_add_ps(c1,_mm_mul_ps(p1, z->m_pressureIScale));
		c2 = _mm_add_ps(c2,_mm_mul_ps(p2, z->m_pressureIScale));
		c3 = _mm_add_ps(c3,_mm_mul_ps(p3, z->m_pressureIScale));
		c4 = _mm_add_ps(c4,_mm_mul_ps(p4, z->m_pressureIScale));
		
		//Multiply in the inverse pressure
		c1 = _mm_add_ps(c1,_mm_mul_ps(_mm_mul_ps(p1, vf[x*4+0]), z->m_pressureIMult));
		c2 = _mm_add_ps(c2,_mm_mul_ps(_mm_mul_ps(p2, vf[x*4+1]), z->m_pressureIMult));
		c3 = _mm_add_ps(c3,_mm_mul_ps(_mm_mul_ps(p3, vf[x*4+2]), z->m_pressureIMult));
		c4 = _mm_add_ps(c4,_mm_mul_ps(_mm_mul_ps(p4, vf[x*4+3]), z->m_pressureIMult));
		
		
		//Compute the magnitude of the velocity...
		__m128 vx1 = _mm_shuffle_ps(vx[x], vx[x], _MM_SHUFFLE(0,0,0,0));
		__m128 vx2 = _mm_shuffle_ps(vx[x], vx[x], _MM_SHUFFLE(1,1,1,1));
		__m128 vx3 = _mm_shuffle_ps(vx[x], vx[x], _MM_SHUFFLE(2,2,2,2));
		__m128 vx4 = _mm_shuffle_ps(vx[x], vx[x], _MM_SHUFFLE(3,3,3,3));
		
		__m128 vy1 = _mm_shuffle_ps(vy[x], vy[x], _MM_SHUFFLE(0,0,0,0));
		__m128 vy2 = _mm_shuffle_ps(vy[x], vy[x], _MM_SHUFFLE(1,1,1,1));
		__m128 vy3 = _mm_shuffle_ps(vy[x], vy[x], _MM_SHUFFLE(2,2,2,2));
		__m128 vy4 = _mm_shuffle_ps(vy[x], vy[x], _MM_SHUFFLE(3,3,3,3));
		
		__m128 v1 = _mm_sqrt_ps(_mm_add_ps(_mm_mul_ps(vx1, vx1), _mm_mul_ps(vy1, vy1)));
		__m128 v2 = _mm_sqrt_ps(_mm_add_ps(_mm_mul_ps(vx2, vx2), _mm_mul_ps(vy2, vy2)));
		__m128 v3 = _mm_sqrt_ps(_mm_add_ps(_mm_mul_ps(vx3, vx3), _mm_mul_ps(vy3, vy3)));
		__m128 v4 = _mm_sqrt_ps(_mm_add_ps(_mm_mul_ps(vx4, vx4), _mm_mul_ps(vy4, vy4)));
		
		//Add in the scaled velocity...
		c1 = _mm_add_ps(c1,_mm_mul_ps(v1, z->m_velocityScale));
		c2 = _mm_add_ps(c2,_mm_mul_ps(v2, z->m_velocityScale));
		c3 = _mm_add_ps(c3,_mm_mul_ps(v3, z->m_velocityScale));
		c4 = _mm_add_ps(c4,_mm_mul_ps(v4, z->m_velocityScale));
		
		c1 = _mm_add_ps(c1,_mm_mul_ps(_mm_mul_ps(v1, vf[x*4+0]), z->m_velocityMult));
		c2 = _mm_add_ps(c2,_mm_mul_ps(_mm_mul_ps(v2, vf[x*4+1]), z->m_velocityMult));
		c3 = _mm_add_ps(c3,_mm_mul_ps(_mm_mul_ps(v3, vf[x*4+2]), z->m_velocityMult));
		c4 = _mm_add_ps(c4,_mm_mul_ps(_mm_mul_ps(v4, vf[x*4+3]), z->m_velocityMult));
		
		//Invert and add again some velocities...
		v1 = _mm_max_ps(x_simd_zero,_mm_sub_ps(x_simd_one, v1));
		v2 = _mm_max_ps(x_simd_zero,_mm_sub_ps(x_simd_one, v2));
		v3 = _mm_max_ps(x_simd_zero,_mm_sub_ps(x_simd_one, v3));
		v4 = _mm_max_ps(x_simd_zero,_mm_sub_ps(x_simd_one, v4));
		
		c1 = _mm_add_ps(c1,_mm_mul_ps(v1, z->m_velocityIScale));
		c2 = _mm_add_ps(c2,_mm_mul_ps(v2, z->m_velocityIScale));
		c3 = _mm_add_ps(c3,_mm_mul_ps(v3, z->m_velocityIScale));
		c4 = _mm_add_ps(c4,_mm_mul_ps(v4, z->m_velocityIScale));
		
		c1 = _mm_add_ps(c1,_mm_mul_ps(_mm_mul_ps(v1, vf[x*4+0]), z->m_velocityIMult));
		c2 = _mm_add_ps(c2,_mm_mul_ps(_mm_mul_ps(v2, vf[x*4+1]), z->m_velocityIMult));
		c3 = _mm_add_ps(c3,_mm_mul_ps(_mm_mul_ps(v3, vf[x*4+2]), z->m_velocityIMult));
		c4 = _mm_add_ps(c4,_mm_mul_ps(_mm_mul_ps(v4, vf[x*4+3]), z->m_velocityIMult));
		
		//Clamp to ensure the values are valid for byte conversions
		c1 = _mm_max_ps(x_simd_zero, _mm_min_ps(x_simd_one, c1));
		c2 = _mm_max_ps(x_simd_zero, _mm_min_ps(x_simd_one, c2));
		c3 = _mm_max_ps(x_simd_zero, _mm_min_ps(x_simd_one, c3));
		c4 = _mm_max_ps(x_simd_zero, _mm_min_ps(x_simd_one, c4));
		__m128i i1 = _mm_cvtps_epi32(_mm_mul_ps(c1,max));
		__m128i i2 = _mm_cvtps_epi32(_mm_mul_ps(c2,max));
		__m128i i3 = _mm_cvtps_epi32(_mm_mul_ps(c3,max));
		__m128i i4 = _mm_cvtps_epi32(_mm_mul_ps(c4,max));
		
		
		
		i1 = _mm_packs_epi32(i1,i2);
		i3 = _mm_packs_epi32(i3,i4);
		
		vo[x] = _mm_packus_epi16(i1, i3);
	}
#else
	int x;
	for (x=0; x<w*c; x++)
	{
		unsigned int i = f[x]*256;
		if (i<0) i =0;
		if (i>255) i = 255;
		
		o[x] = (unsigned char)i;
	}
#endif
}


void fluid_video_dens2char(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct video *v = &mode->video;
	
	const int w = fieldWidth(v->f);
	
	const float *f = fluidFloatPointer(fieldData(v->f),y*fieldStrideY(v->f));
	const int c = fieldComponents(v->f);
	unsigned char *o = fieldCharData(v->o) + y*fieldStrideY(v->o);
	
#ifdef __APPLE_ALTIVEC__
	int x;
	const int w2 = w * c / (4*4);
	
	const vector float *vf = (vector float*)f;
	vector signed char *vo = (vector signed char*)o;
	
	const vector short min = {0,0,0,0,0,0,0,0};
	const vector short max = {255,255,255,255,255,255,255,255};
	
	for (x=0; x<w2; x++)
	{
		vector int i1 = vec_cts(vf[x*4+0], 8);
		vector int i2 = vec_cts(vf[x*4+1], 8);
		vector int i3 = vec_cts(vf[x*4+2], 8);
		vector int i4 = vec_cts(vf[x*4+3], 8);
		
		vector short s1 = vec_pack(i1, i2);
		vector short s2 = vec_pack(i3, i4);
		s1 = vec_min(vec_max(s1, min), max);
		s2 = vec_min(vec_max(s2, min), max);
		
		vo[x] = vec_pack(s1,s2);
	}
#elif __SSE3__
	int x;
	const int w2 = w * c / (4*4);
	
	const __m128 *vf = (__m128*)f;
	__m128i *vo = (__m128i*)o;
	
	const __m128 max = {255,255,255,255};
	
	for (x=0; x<w2; x++)
	{
		__m128i i1 = _mm_cvtps_epi32(_mm_mul_ps(vf[x*4+0],max));
		__m128i i2 = _mm_cvtps_epi32(_mm_mul_ps(vf[x*4+1],max));
		__m128i i3 = _mm_cvtps_epi32(_mm_mul_ps(vf[x*4+2],max));
		__m128i i4 = _mm_cvtps_epi32(_mm_mul_ps(vf[x*4+3],max));
		
		i1 = _mm_packs_epi32(i1,i2);
		i3 = _mm_packs_epi32(i3,i4);
		
		vo[x] = _mm_packus_epi16(i1, i3);
	}
#else
	int x;
	for (x=0; x<w*c; x++)
	{
		unsigned int i = f[x]*256;
		if (i<0) i =0;
		if (i>255) i = 255;
		
		o[x] = (unsigned char)i;
	}
#endif
}

void fluid_input_vel2float(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct velocityIO *v = &mode->velocityIO;
	
	int w = fieldWidth(v->velX);
	
	float *fVelX = fluidFloatPointer(fieldData(v->velX),y*fieldStrideY(v->velX));
	float *fVelY = fluidFloatPointer(fieldData(v->velY),y*fieldStrideY(v->velY));
	float *fVelIn = fluidFloatPointer(fieldData(v->velIn),y*fieldStrideY(v->velIn));
	
	
	int x;
	for (x=0; x<w; x++)
	{
		fVelIn[2*x] = fVelX[x];
		fVelIn[2*x+1] = fVelY[x];
	}
}


void fluid_input_vel2float_scale(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct velocityIO *v = &mode->velocityIO;
	
	int w = fieldWidth(v->velX);
	
	int w2 = fieldWidth(v->velIn);
	
	int h = fieldHeight(v->velX);
	int h2 = fieldHeight(v->velIn);
	
	int y2 = y*h/h2;
	
	if (y2 >= h)		return;
	
	float *fVelX = fluidFloatPointer(fieldData(v->velX),y2*fieldStrideY(v->velX));
	float *fVelY = fluidFloatPointer(fieldData(v->velY),y2*fieldStrideY(v->velY));
	float *fVelIn = fluidFloatPointer(fieldData(v->velIn),y*fieldStrideY(v->velIn));
	
	int x;
	for (x=0; x<w2; x++)
	{
		fVelIn[2*x] = fVelX[(x*w)/w2];
		fVelIn[2*x+1] = fVelY[(x*w)/w2];
	}
}
