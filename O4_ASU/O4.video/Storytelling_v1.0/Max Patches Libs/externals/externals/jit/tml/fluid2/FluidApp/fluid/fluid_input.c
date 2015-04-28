/*
 *  fluid_input.c
 *  FluidApp
 */

#ifdef __SSE3__
#include <xmmintrin.h>
#include <emmintrin.h>
#include <pmmintrin.h>
//#undef __SSE3__
#endif

#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <stdio.h>
#include <stdlib.h>

void fluid_input_char2dens(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct video *v = &mode->video;
	
	int w = fieldWidth(v->f);
	
	float *f = fluidFloatPointer(fieldData(v->f),y*fieldStrideY(v->f));
	int c = fieldComponents(v->f);
	unsigned char *o = fieldCharData(v->o) + y*fieldStrideY(v->o);
	
	int x;
	for (x=0; x<w*c; x++)
	{
		float k = o[x];
		k/=255.0f;
		
		f[x] = f[x]*v->scale + (1-v->scale)*k;
	}
}


void fluid_input_char2dens_scale(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct video *v = &mode->video;
	
	int w = fieldWidth(v->f);
	
	int in_w = fieldWidth(v->o);
	int in_h = fieldHeight(v->o);
	
	int out_h = fieldHeight(v->f);
	int in_y = y * in_h / out_h;
	
	float *f = fluidFloatPointer(fieldData(v->f),y*fieldStrideY(v->f));
	int c = fieldComponents(v->f);
	unsigned char *o = fieldCharData(v->o) + in_y*fieldStrideY(v->o);
	
	int x, x2;
	for (x=0; x<w; x++)
	{
		int in_x = x * in_w / w;
		
		for (x2=0; x2< c; x2++)
		{
			float k = o[c*in_x+x2];
			k/=255.0f;
			
			f[c*x+x2] = f[c*x+x2]*v->scale + (1-v->scale)*k;
		}
	}
}


void fluid_input_float2vel(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct velocityIO *v = &mode->velocityIO;
	
	int w = fieldWidth(v->velX);
	
	float *fVelX = fluidFloatPointer(fieldData(v->velX),y*fieldStrideY(v->velX));
	float *fVelY = fluidFloatPointer(fieldData(v->velY),y*fieldStrideY(v->velY));
	float *fVelIn = fluidFloatPointer(fieldData(v->velIn),y*fieldStrideY(v->velIn));

	
	int x;
	for (x=0; x<w; x++)
	{
		fVelX[x] += fVelIn[2*x] * v->scale;
	}
	
	for (x=0; x<w; x++)
	{
		fVelY[x] += fVelIn[2*x+1] * v->scale;
	}
}

void fluid_input_float2vel_scale(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct velocityIO *v = &mode->velocityIO;
	
	int w = fieldWidth(v->velX);
	
	int in_w = fieldWidth(v->velIn);
	int in_h = fieldHeight(v->velIn);
	
	int out_h = fieldHeight(v->velY);
	int in_y = y * in_h / out_h;
	
	
	float *fVelX = fluidFloatPointer(fieldData(v->velX),y*fieldStrideY(v->velX));
	float *fVelY = fluidFloatPointer(fieldData(v->velY),y*fieldStrideY(v->velY));
	float *fVelIn = fluidFloatPointer(fieldData(v->velIn),in_y*fieldStrideY(v->velIn));
	
	int x;
	for (x=0; x<w; x++)
	{
		int in_x = x * in_w / w;
		fVelX[x] += fVelIn[2*in_x] * v->scale;
		
		//if (isnan(t.f) || isinf(t.f))
		//	printf("INF/NAN X:%i %i = %f\n", in_x, in_y, t.f);
		//fVelX[x] = fluidClamp(fVelX[x], -ADVECT_DIST, ADVECT_DIST);
	}
	
	for (x=0; x<w; x++)
	{
		int in_x = x * in_w / w;
		fVelY[x] += fVelIn[2*in_x+1] * v->scale;
		
		//if (isnan(t.f) || isinf(t.f))
		//	printf("INF/NAN Y:%i %i = %f\n", in_x, in_y, t.f);
		//fVelY[x] = fluidClamp(fVelY[x], -ADVECT_DIST, ADVECT_DIST);
	}
}
