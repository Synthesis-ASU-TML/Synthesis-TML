/*
 *  jit.fluid.c
 *  jit.tml.fluid2
 *
 */

#include "jit.fluid.h"

#include "fluid.h"
#include "field_pvt.h"
#include <string.h>

struct jitFluid
{
	int didEnd;
	fluid *f;
	
	field *vel;
	field *dens;
	
	int didOutputVelocity;
	field *outVelocity;
};



jitFluid *fluidInit(int w, int h)
{
	jitFluid *r = malloc(sizeof(jitFluid));
	r->f = fluidCreate(w, h);
	r->vel = fieldCreate(w, h, 2);
	r->outVelocity = fieldCreate(w, h, 2);
	r->dens = fieldCreateChar(w, h, 4);
	r->didEnd = 1;
	return r;
}


void paramMess(jitFluid*o, float visc, float vort, float time, float dfade, float vfade,
				float gangle, float gmag, float tmag, int outWidth, int outHeight, int outSY,
			   float pScale[], float dScale[], float pMult[],
			   float vMult[], float vScale[],
			   float ivMult[], float ivScale[], float ipMult[], float ipScale[])
{
	x128f pressureScale = {pScale[3], pScale[0], pScale[1], pScale[2]};
	x128f densityScale = {dScale[3], dScale[0], dScale[1], dScale[2]};
	x128f pressureMult = {pMult[3], pMult[0], pMult[1], pMult[2]};
	x128f velocityScale = {vScale[3], vScale[0], vScale[1], vScale[2]};
	x128f velocityMult = {vMult[3], vMult[0], vMult[1], vMult[2]};
	
	x128f pressureIScale = {ipScale[3], ipScale[0], ipScale[1], ipScale[2]};
	x128f pressureIMult = {ipMult[3], ipMult[0], ipMult[1], ipMult[2]};
	x128f velocityIScale = {ivScale[3], ivScale[0], ivScale[1], ivScale[2]};
	x128f velocityIMult = {ivMult[3], ivMult[0], ivMult[1], ivMult[2]};
	
	fluidSetViscosity(o->f, visc);
	fluidSetVorticity(o->f, vort);
	fluidSetTimestep(o->f, time);
	fluidSetDensityFade(o->f, dfade);
	fluidSetVelocityFade(o->f, vfade);
	fluidSetGravityVector(o->f, sinf(gangle), cosf(gangle));
	fluidSetGravityMagnitude(o->f, gmag);
	fluidSetTemperatureMagnitude(o->f, tmag);
	fluidVideoPressureScale(o->f, pressureScale);
	fluidVideoPressureMultiply(o->f, pressureMult);
	fluidVideoDensityScale(o->f, densityScale);
	fluidVideoVelocityMultiply(o->f, velocityMult);
	fluidVideoVelocityScale(o->f, velocityScale);
	fluidVideoIPressureScale(o->f, pressureIScale);
	fluidVideoIPressureMultiply(o->f, pressureIMult);
	fluidVideoIVelocityMultiply(o->f, velocityIMult);
	fluidVideoIVelocityScale(o->f, velocityIScale);
	
	o->didOutputVelocity = 0;
	if (outWidth >= 8 && outHeight >= 8 && outWidth <= fieldWidth(o->dens)
			&& outHeight <= fieldHeight(o->dens))
	{
		o->didOutputVelocity = 1;
		fluidVideoVelocityOutSize(o->f, outWidth, outHeight);
		fluidVideoVelocityOut(o->f, o->outVelocity);
		o->outVelocity->m_strideY = outSY;
	}
}


int fluidVelWidth(jitFluid *a)
{
	if (a->didOutputVelocity)
		return fieldWidth(a->outVelocity);
	else
		return -1;
}

int fluidVelHeight(jitFluid *a)
{
	if (a->didOutputVelocity)
		return fieldHeight(a->outVelocity);
	else
		return -1;
}

float *fluidVelData(jitFluid *a)
{
	if (a->didOutputVelocity)
		return fieldData(a->outVelocity);
	else
		return NULL;
}


void addData(jitFluid *o, unsigned char*d, float *v, int vw, int vh, float vb, float db)
{
	if (o == NULL)	return;
	fieldResize(o->vel, vw, vh);

	memcpy(fieldData(o->vel), v, sizeof(float)*vw*vh*2);
	memcpy(fieldData(o->dens), d, sizeof(char)*fieldWidth(o->dens)*
												fieldHeight(o->dens)*4);
	
	fluidVideoBlendIn(o->f, o->dens, db);
	fluidVelocityBlendIn(o->f, o->vel, vb);
}

void getData(jitFluid *o, unsigned char*d)
{
	if (o == NULL)	return;
	memcpy(d,fieldData(fluidVideoOut(o->f)), sizeof(char)*fieldWidth(o->dens)*
												fieldHeight(o->dens)*4);
}


void fluidStop(jitFluid*a)
{
	if (a == NULL)	return;
	if (a->didEnd == 0)	fluidAdvanceSync(a->f);
	x_free(a->f);
	x_free(a->vel);
	x_free(a->dens);
	x_free(a->outVelocity);
	free(a);
}

void fluidFrameEnd(jitFluid*a)
{
	if (a == NULL)	return;
	fluidAdvanceSync(a->f);
	a->didEnd = 1;
}

void fluidFrameStart(jitFluid*a)
{
	if (a == NULL)	return;
	fluidAdvanceASync(a->f);
	a->didEnd = 0;
}
