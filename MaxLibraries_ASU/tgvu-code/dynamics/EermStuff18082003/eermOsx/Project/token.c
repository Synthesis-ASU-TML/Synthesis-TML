// token.c

//==========
// Includes
//==========

#include "feature.h"
#include "node.h"
#include "simplex.h"
#include "token.h"
#include "math.h"	
#include <stdlib.h>
#include <stdio.h>
#include "ext.h"
#include <assert.h>
#include "eermDefines.h"
#include "eermDefaults.h"
#include "GraphModelUtil.h"


//====================== Validity

//---------------------- TokenIsValid

void TokenIsValid(Token *t)
{
	MTraceCall("eerm:\tTokenIsValid..");
	MAssertVoid(t != NULL, "Invalid token: bad tptr");
	MAssertVoid((t->index >= -1), "Invalid token: bad index");
	MFeatureIsValid(t->f);
	MSimplexIsValid(t->s);
	MAssertVoid(t->Nf >= 0, "Invalid token: bad Nf");
	MAssertVoid(t->vcoord != NULL, "Invalid token: bad vcoord ptr");
	MVectorIsConvex(t->coord, t->Nn);
	MAssertVoid(t->obs != NULL, "Invalid token: bad obs ptr");
	MAssertVoid(t->Nn >= 1, "Invalid token: bad Nn");
	MAssertVoid(t->mass > 0.0, "Invalid token: bad mass");
	MAssertVoid(t->expscale >= 0.0, "Invalid token: bad expscale");
	MAssertVoid((t->stulle == 0) || (t->stulle ==1), "Invalid token: bad stulle flag");
	MTraceCall("eerm:\tTokenIsValid finished.");
}


//====================== New / Free

//---------------------- TokenNew

Token	*TokenNew(int index, Simplex *s, int Nf, float slew, int NnMax)
{
	Token *t;

	MMemChkStart;
	MTraceCall("eerm:\tTokenNew..");
	MAssertPtr(Nf >= 1, "Nf < 1");
	MSimplexIsValid(s);

	// Make new struct
	t = (Token *)getmem(sizeof(struct token));
	MAssertPtr(t != NULL, "didn't get mem.");

	// Set simplex
	t->s = s;

	// Set state
	t->index = index;
	t->Nn = s->Nn;
	t->Nf = Nf;
	t->mass = KMassDefault;
	t->expscale = KExpScaleDefault;
	t->damping = KDampingDefault;
	t->tokencoupling = KTokenCouplingDefault;
	t->stulle = 0;

	// Allocate feature
	t->f = FeatureNew(Nf, slew);
	MAssertPtr(t->f != NULL, "invalid fptr");
	
	// Allocate arrays	
	// [Todo] : think about how to allocate so that we don't have to resize.
	t->coord = (float *)getmem(NnMax * sizeof(float));
	MAssertPtr(t->coord != NULL, "didn't get mem");

	t->vcoord = (float *)getmem(NnMax * sizeof(float));
	MAssertPtr(t->vcoord != NULL, "didn't get mem");

	t->obs = (float *)getmem(Nf * sizeof(float));
	MAssertPtr(t->obs != NULL, "didn't get mem");

	// Init arrays
	initvec(t->obs, 0.0, Nf);
	initvec(t->coord, 0.0, NnMax);
	initvec(t->vcoord, 0.0, NnMax);
	initvec(t->coord, 1.0 / (float)s->Nn, s->Nn);

	MTokenIsValid(t);
	MTraceCall("eerm:\tTokenNew finished.");
	#ifdef MemDebug
	MMemChkExit(gMemToken);
	#endif	
	return t;
}


//---------------------- StulleTokenNew

Token	*StulleTokenNew(int index, Simplex *s, int Nf, float slew, int NnMax)
{
	Token *t;
	MTraceCall("eerm:\tStulleTokenNew..");

	t = TokenNew(index, s, Nf, slew, NnMax);
	t->stulle = 1;
	initvec(t->f->weights, 0.0, t->Nf);
	MTraceCall("eerm:\tStulleTokenNew finished.");
	return t;
}

//---------------------- TokenFree

void	TokenFree(Token *t, int NnMax)
{
	MMemChkStart;
	MTokenIsValid(t);
	MTraceCall("eerm:\tTokenFree..");

	freemem(t->coord, NnMax * sizeof(float));
	freemem(t->vcoord, NnMax * sizeof(float));
	freemem(t->obs, t->Nf * sizeof(float));

	FeatureFree(t->f);

	freemem(t, sizeof(struct token));	
	
	t = NULL;
	MTraceCall("eerm:\tTokenFree finished.");
	#ifdef MemDebug
	MMemChkExit(gMemToken);
	#endif
	return;
}


//====================== Set

//---------------------- TokenSetCoord

void TokenSetCoord(Token *t, float *coord, float *vcoord, int Nn)
{
	MMemEntry;
	MTraceCall("eerm:\tTokenSetCoord..");
	MTokenIsValid(t);
	MAssertVoid((coord != NULL), "null ptr received");
	MAssertVoid(Nn == t->s->Nn, "wrong Nn");
	
	copyvec(coord,t->coord,Nn);

	if (vcoord != NULL)
	{
		copyvec(vcoord,t->vcoord,Nn);
	}

	MTokenIsValid(t);
	MMemExit;
	MTraceCall("eerm:\tTokenSetCoord finished.");
}

//====================== Calc



//---------------------- TokenTokenForceAccum

// Todo : the more efficient way to do this is to compute a matrix
// of forces for the whole Eerm, which need only be computed above
// the diagonal.  

void TokenTokenForceAccum(Token *t1, Token *t2, float *F1, int Nn1)
// Computes the force F1 on token t1 due to t2.
{	
	int i,j;
	MMemEntry;
	
	MTraceCall("eerm:\tTokenTokenForceAccum..");
	MTokenIsValid(t1);
	MTokenIsValid(t2);
	MAssertVoid(Nn1 == t1->Nn, "incompatible simplex size");
	MAssertVoid(F1 != NULL, "invalid force ptr");
	
	initvec(F1, 0.0, Nn1);
	
	if (t1->s == t2->s)	// Compute the intra-simplex interaction
	{
		for (i = 0; i++; i < Nn1)
		{
			F1[i] += SpringForce(t1->tokencoupling,t1->coord[i] - t2->coord[i]); 
		}
	}
	else	// Compute a non-intra-simplex interaction:
	{		
		for (i = 0; i < t1->Nn; i++)
		{
			j = SimplexNodeFind(t2->s, t1->s->nodes[i]);
			if (j != -1)
			{
				F1[i] += SpringForce(t1->tokencoupling, 
					-1.0 * (t1->coord[i] + t2->coord[j]));
			}
		}
	}	

	MMemExit;
	MTraceCall("eerm:\tTokenTokenForceAccum finished.");
}



//---------------------- TokenCheckBoundary

// Find out if a transition should occur, and if so,
// which node of the current simplex should disappear.
int TokenCheckBoundary(Token *t)
{
	int i;
	int SimplexNodeLostIndex = -1;

	MTraceCall("eerm:\tTokenCheckBoundary..");
	MTokenIsValid(t);

	for (i = 0; i < t->s->Nn; i++)
	{
		if (t->coord[i] <= 0.0)
		{
			MTraceCall("eerm:\tTokenCheckBoundary finished.");
			return i;
		}
	}

	MTraceCall("eerm:\tTokenCheckBoundary finished.");
	return -1;
}






//---------------------- TokenObs

void	TokenObs(Token *t, float *obs, int Nf)
{
	MMemEntry;
	MTokenIsValid(t);
	MAssertVoid(Nf != t->Nf, "incompatible nf");

	MInvalid("not yet implemented");	
	initvec(obs, 0.0, Nf);
	MMemExit;
}



//---------------------- TokenTrainSimplex

void	TokenTrainSimplex(Token *t)
{
	MMemEntry;
	MTokenIsValid(t);

	MInvalid("not yet implemented");
	MMemExit;
}

