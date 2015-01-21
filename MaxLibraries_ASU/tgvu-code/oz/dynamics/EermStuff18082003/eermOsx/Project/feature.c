// Feature.c


//====================== Includes

#include "feature.h"
#include "stdlib.h"
#include "math.h"	
#include <stdlib.h>
#include <stdio.h>
#include "ext.h"
#include <assert.h>
#include "eermDefines.h"
#include "eermDefaults.h"
#include "GraphModelUtil.h"


//====================== Implementations


//---------------------- FeatureIsValid

void FeatureIsValid(Feature *f)
{
	MTraceCall("eerm:\tFeatureIsValid..");
	MAssertVoid(f != NULL, "Invalid Feature: bad fptr");
	MAssertVoid(f->Nf >= 0, "Invalid Feature: bad Nf");
	VectorIsNonNegative(f->weights, f->Nf);
	MAssertVoid(f->out != NULL, "Invalid Feature: bad f->out ptr");
	MAssertVoid(f->slew >= 0.0, "Invalid feature bad slew");
	MTraceCall("eerm:\tFeatureIsValid finished.");
}


//---------------------- FeatureNew

Feature  *FeatureNew(int Nf, float slew)
{
	Feature *f;	
	MMemChkStart;

	MTraceCall("eerm:\tFeatureNew..");
	MAssertPtr(Nf >= 1, "Nf < 1");
	MAssertPtr(slew >= 0.0, "slew < 0");
	
	// Make new struct
	f = (Feature *)getmem(sizeof(struct feature));		
	MAssertPtr(f != NULL, "didn't get mem");
	
	// Set state
	f->Nf = Nf;
	f->slew = slew;
	
	// Allocate arrays
	f->weights = (float *)getmem(Nf * sizeof(float));
	MAssertPtr(f->weights != NULL, "didn't get mem");
	f->out = (float *)getmem(Nf * sizeof(float));
	MAssertPtr(f->out != NULL, "didn't get mem");

	// Init arrays
	initvec(f->out, 0.0, Nf);
	initvec(f->weights, 1.0, Nf);

	MFeatureIsValid(f);
	MTraceCall("eerm:\tFeatureNew finished.");
	#ifdef MemDebug
	MMemChkExit(gMemFeature);
	#endif
	return f;
}


//---------------------- FeatureFree

void 	FeatureFree(Feature *f)
{
	MMemChkStart;
	MTraceCall("eerm:\tFeatureFree..");

	MFeatureIsValid(f);

	freemem(f->out, f->Nf * sizeof(float));
	freemem(f->weights, f->Nf * sizeof(float));

	freemem(f, sizeof(struct feature));

	f = NULL;
	
	MTraceCall("eerm:\tFeatureFree finished.");
	#ifdef MemDebug
	MMemChkExit(gMemFeature);
	#endif
	return;
}


//---------------------- FeatureUpdate

void 	FeatureUpdate(Feature *f, float *in, int Nf)
{
	int i;
	MMemEntry;
	
	MTraceCall("eerm:\tFeatureUpdate..");
	MFeatureIsValid(f);
	MAssertVoid((in != NULL), "Null pointer received");
	MAssertVoid(Nf == f->Nf, "Wrong feature size!");
	
	for (i = 0; i < Nf; i++)
	{
		f->out[i] = f->out[i] * f->slew + (1.0 - f->slew) * in[i];	
	}
	
	MFeatureIsValid(f);
	MMemExit;
	MTraceCall("eerm:\tFeatureUpdate finished.");
}


//---------------------- FeatureSetWeights

void	FeatureSetWeights(Feature *f, float *w, int n)
{
	MMemEntry;
	MTraceCall("eerm:\tFeatureSetWeights..");
	MWeightIsValid(w, n);
	MFeatureIsValid(f);

	while (n--)
	{
		f->weights[n] = w[n];		
	}

	MMemExit;
	MTraceCall("eerm:\tFeatureSetWeights finished.");
}

