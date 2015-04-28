/*
 *  fluid_heat.c
 *  FluidApp
 *
 */

#include "x_simd.h"

#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <stdlib.h>

void fluid_force_heat(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct temperature *t = &mode->temperature;
	
	int w = fieldWidth(t->density)/4;
	
	float *f = fluidFloatPointer(fieldData(t->density),y*fieldStrideY(t->density));
	int c = fieldComponents(t->density);
	
	x128f *vx = (x128f*)fluidFloatPointer(fieldData(t->velX),y*fieldStrideY(t->velX));
	x128f *vy = (x128f*)fluidFloatPointer(fieldData(t->velY),y*fieldStrideY(t->velY));
	
	float alpha = t->alpha;
	float beta = t->beta;
	float ambient = t->ambient;
	
	float upX = t->upX;
	float upY = t->upY;
	
	float right = beta * upX;
	float left = alpha * upX - right * ambient;
	
	const x128f vLeftX = {left, left, left, left};
	const x128f vRightX = {right, right, right, right};
	
	right = beta * upY;
	left = alpha * upY - right * ambient;
	
	const x128f vLeftY = (x128f){left, left, left, left};
	const x128f vRightY = (x128f){right, right, right, right};
	
	x128f colorDiff[8];
	
	int x,o,s,l;
	for (x=0; x<w;)
	{
		s = x;
		o = 0;
		float *f2 = f+4*x*c;
		for (l=0;l<8;l++, x++, o++)
		{
			x128f fRed = {	f2[0], f2[c],f2[2*c],f2[3*c]};
			x128f fBlue = {f2[2], f2[c+2],f2[2*c+2],f2[3*c+2]};
			
			colorDiff[o] = x_sub(fRed, fBlue);
		}
		
		x = s;
		o = 0;
		for (l=0;l<8;l++, x++, o++)
		{
			x128f prodX = x_mul(colorDiff[o], vRightX);
			x128f sumX = x_add(prodX, vLeftX);
			
			vx[x] = x_add(vx[x], sumX);
		}
		
		x = s;
		o = 0;
		for (l=0;l<8;l++, x++, o++)
		{
			x128f prodY = x_mul(colorDiff[o], vRightY);
			x128f sumY = x_add(prodY, vLeftY);
			
			vy[x] = x_add(vy[x], sumY);
		}
	}
}
