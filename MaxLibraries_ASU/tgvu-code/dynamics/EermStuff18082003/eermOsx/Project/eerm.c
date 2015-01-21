// eerm.c
//   implementation file for the eerm,  
//   a particle/token based pattern model

//==========
// Includes
//==========

#include <stdlib.h>
#include <stdio.h>
#include "ext.h"
#include <assert.h>
#include "eermDefines.h"
#include "eermDefaults.h"
#include "GraphModelUtil.h"
#include "feature.h"
#include "node.h"
#include "simplex.h"
#include "token.h"
#include "eerm.h"


//=================
// Implementations
//=================


//====================== Validity


//---------------------- EermIsValid

void EermIsValid(Eerm *e)
{
	int i;
	MTraceCall("eerm:\tEermIsValid..");
	
	MAssertVoid(e != NULL, "Invalid Eerm: bad ptr");
	MAssertVoid((e->NsMax > 0) && (e->NtMax > 0), "Invalid eerm: bad nsmax or ntmax");
	MAssertVoid(e->dt > 0.0, "Invalid eerm: bad dt");
	MAssertVoid(e->temp >= 0.0, "Invalid eerm: bad temp");
	MAssertVoid(e->sensorforce >= 0, "Invalid eerm: bad sensorforce");
	MAssertVoid((e->NnMax > 0) && (e->Nn <= e->NnMax), "Invalid eerm: bad NnMax");
	
	MSimplexIsValid(e->entrysimplex);
	MSimplexIsValid(e->tmpsmp);
	MNodeIsValid(e->tmpnode);
	MTokenIsValid(e->tmptoken);
	MFeatureIsValid(e->protof);

	MNodeListIsValid(e->nodes, e->Nn);
	for(i = 0; i < e->Nt; i++)
	{
		MTokenIsValid(e->tokens[i]);
	}
	for(i = 0; i < e->Ns; i++)
	{
		MSimplexIsValid(e->simplices[i]);
	}
	MTraceCall("eerm:\tEermIsValid finished.");
}


//---------------------- NodeIndexListIsValid

TBool NodeIndexListIsValid(Eerm *e, int *n, int Nn)
{
	int i;
	MErrorInt((Nn <= e->Nn) && (Nn >= 1), "Wrong number nodes");
	MErrorInt((n != NULL), "Null ptr received");
	for (i = 0; i < Nn; i++)
	{
		MErrorInt(n[i] < e->Nn, "invalid node index");
		MErrorInt(n[i] >= 0, "invalid node index");
	}
	return 1;
}

//---------------------- SortedNodeIndexListIsValid

TBool SortedNodeIndexListIsValid(Eerm *e, int *n, int Nn)
{
	int i;
	MErrorInt((Nn <= e->Nn) && (Nn >= 1), "Wrong number nodes");
	MErrorInt((n != NULL), "Null ptr received");

	if (Nn == 1) return 1;
	
	for (i = 0; i < Nn - 1; i++)
	{
		MErrorInt(n[i] < e->Nn, "invalid node index");
		MErrorInt(n[i] >= 0, "invalid node index");
		MErrorInt(n[i] < n[i+1], "bad node index sort order.");
	}

	MErrorInt(n[i] < e->Nn, "invalid node index");
	MErrorInt(n[i] >= 0, "invalid node index");
	
	return 1;
}

//====================== New / Free


//---------------------- EermNew

Eerm	*EermNew(int Nn, int NsMax, int NtMax, int Nf, float dt)
{
	Eerm *e;
	int i;

	MMemChkStart;
	MTraceCall("eerm:\tEermNew..");

	// Check args
	MAssertPtr(Nn >= 1, "invalid Nn");
	MAssertPtr(NsMax >= 1, "invalid NsMax");
	MAssertPtr(NtMax >= 1, "invalid NtMax");
	MAssertPtr(Nf >= 1, "invalid Nf");
	MAssertPtr(dt > 0.0f, "invalid dt");

	// Make new struct
	e = (Eerm *)getmem(sizeof(struct eerm));
	MAssertPtr(e != NULL, "failed to get mem");
	
	// Set State
	
	// Todo : clear this up.
	//  either eliminate Nn, or 
	//  whatever.
	e->Nn = Nn;
	e->NnMax = Nn;
	e->Ns = 0;	// we dont count temp simplices here.
	e->NsMax = NsMax;
	e->Nt = 0;
	e->NtMax = NtMax;
	e->dt = dt;
	e->temp = KTempDefault;
	e->sensorforce = KSensorForceDefault;

	// Create temp data
	e->tmpnode = NodeNew(-1, Nf, 1);
	e->tmpsmp = SimplexNew(-1, 1, 1, 1, &e->tmpnode);
	e->tmptoken = TokenNew(-1, e->tmpsmp, Nf, KSlewDefault, e->NnMax);
	e->protof = FeatureNew(Nf, KSlewDefault);	

	e->entrysimplex = e->tmpsmp;

	// Allocate pointers to data
	e->nodes = (Node **)getmem(Nn * sizeof(Node  * ));
	MAssertPtr(e->nodes != NULL, "didn't get mem");

	e->simplices = (Simplex **)getmem(NsMax * sizeof(Simplex  * ));
	MAssertPtr(e->simplices != NULL, "didn't get mem");

	e->tokens = (Token **)getmem(NtMax * sizeof(Token  * ));
	MAssertPtr(e->tokens != NULL, "didn't get mem");

	// Initialize data pointers
	initvec(e->nodes, NULL, Nn);
	initvec(e->simplices, NULL, NsMax);
	initvec(e->tokens, NULL, NtMax);

	// Allocate nodes
	for (i=0; i<e->Nn; i++)
	{
		e->nodes[i] = NodeNew(i, Nf, Nn);
		if (e->nodes[i] == NULL) 
		{
			MTraceCall("eerm:\tEermNew finished.");
			return NULL;
		}
	}

	MEermIsValid(e);		

	#ifdef MemDebug
	MMemChkExit(gMemEerm);
	#endif

	MTraceCall("eerm:\tEermNew finished.");
	return e;
} 


//---------------------- EermFree

void 	EermFree(Eerm *e)
{
	int i;
	int NnMax;
		
	MMemChkStart;
	MTraceCall("eerm:\tEermFree..");
	MEermIsValid(e);
	
	NnMax = e->NnMax;
	
	// Free nodes
	for (i = 0; i < e->Nn; i++)
	{
		NodeFree(e->nodes[i]);
	}
	
	// Free tokens
	if (e->Nt > 0)
	{
		for (i = 0; i< e->Nt; i++) 
		{
			TokenFree(e->tokens[i], NnMax);
		}
	}

	// Free simplices
	if (e->Ns > 0)
	{
		for (i = 0; i < e->Ns; i++)	
		{
			SimplexFree(e->simplices[i]);
		}
	}
	
	// Free temp data
	TokenFree(e->tmptoken, NnMax);
	FeatureFree(e->protof);
	NodeFree(e->tmpnode);
	SimplexFree(e->tmpsmp);
  
	// Free pointers to data
	freemem(e->tokens, e->NtMax * sizeof(Token *));
	freemem(e->simplices, e->NsMax * sizeof(Simplex *));
	freemem(e->nodes, e->Nn * sizeof(Node *));

	// Free struct
	freemem(e, sizeof(struct eerm));

	e = NULL;

	#ifdef MemDebug
	MMemChkExit(gMemEerm);
	#endif
	
	MTraceCall("eerm:\tEermFree finished.");

	return;
}



//====================== Add Tokens / Nodes

//---------------------- EermTokenAdd

int EermTokenAdd(Eerm *e, Token *t)
{
	return EermTokenAddAt(e, t, e->entrysimplex->index);
}


//---------------------- EermTokenAddAt

int 	EermTokenAddAt(Eerm *e, Token *t, int i)
{
	Simplex *newsimplex;
	MMemEntry;	
	MTraceCall("eerm:\tEermTokenAddAt..");
	MTokenIsValid(t);
	MEermIsValid(e);
	MAssertInt((i >= -1) && (i < e->Ns), "invalid index");  // note: -1 is the temp simplex
	MAssertInt(t->Nf == e->tmptoken->Nf, "Incompatible feature sizes");
	MAssertInt(e->Nt <= e->NtMax - 1, "no more tokens");

	if (i != -1)
	{
		newsimplex = e->simplices[i];
	}
	else
	{
		newsimplex = e->tmpsmp;
	}

	// Todo : Check that the token is not already in the eerm.
	
	// Add the token
	e->Nt = e->Nt + 1;
	e->tokens[e->Nt - 1] = t;
	t->index = e->Nt - 1;
	copyvec(e->tmptoken->f->weights, t->f->weights, t->Nf);

	initvec(t->coord, 0.0, e->Nn);
	initvec(t->vcoord, 0.0, e->Nn);

	// assign it to the requested simplex
	t->s = newsimplex;
	initvec(t->coord, 1.0 / (float)newsimplex->Nn, newsimplex->Nn);

	MMemExit;	
	MTraceCall("eerm:\tEermTokenAddAt finished.");
	return(t->index);
}


//---------------------- EermNodeAdd

int		EermNodeAdd(Eerm *e, Node *n)
{
	MMemEntry;	  
	MTraceCall("eerm:\tEermNodeAdd..");

	MNodeIsValid(n);
	MEermIsValid(e);

	MAssertInt(n->Nf == e->tmpnode->Nf, "Incompatible Nf");
	MAssertInt(e->Nn <= e->NnMax - 1, "Max nodes reached");
	
	// Add the node
	e->Nn = e->Nn + 1;
	e->nodes[e->Nn] = n;
	n->index = e->Nn;
		
	MMemExit;	

	MTraceCall("eerm:\tEermNodeAdd finished.");
	return(e->Nn);
}


//---------------------- EermSimplexAdd

int 	EermSimplexAdd(Eerm *e, int Nn, int *n)
{
	int i;
	Node **TempNodeList;

	MTraceCall("eerm:\tEermSimplexAdd..");

	MEermIsValid(e);
	MAssertInt(e->Ns < e->NsMax, "eerm is full");
	MErrorInt(NodeIndexListIsValid(e,n,Nn), "Bad node index list.");

	// Todo : Sort the list of node indices:
	// Need to fix this function..
	isort(Nn,n);

	MAssertInt(SortedNodeIndexListIsValid(e,n,Nn), "Bad (sorted) node index list.");

	// Create the temporary list of nodeptrs.
	TempNodeList = (Node **)getmem(Nn * sizeof(struct Node *));

	// Copy the indexed nodes to the temporary nodelist
	for (i = 0; i < Nn; i++)
	{
		TempNodeList[i] = e->nodes[n[i]];
	}	
	MNodeListIsValid(TempNodeList, Nn);

	// Does simplex already exist in Eerm?
	i = EermNodeListFind(e, TempNodeList, Nn);
	if (i > 0) 
	{
		MTraceCall("eerm:\tEermSimplexAdd finished.");
		return i;
	}
		
	// Create the simplex and point the last element of e->simplices to it.
	e->simplices[e->Ns] = SimplexNew(e->Ns, e->Ns, e->NsMax, Nn, TempNodeList);	
	
	// Increment number of simplices.
	e->Ns = e->Ns + 1;

	freemem(TempNodeList, Nn * sizeof(struct Node *));	

	MEermIsValid(e);

	MTraceCall("eerm:\tEermSimplexAdd finished.");

	return (e->Ns - 1);
}


//---------------------- EermMoreTokens

void	EermMoreTokens(Eerm *e, int NtMax)
{
	Token **TempTokenList;
	
	MTraceCall("eerm:\tEermMoreTokens..");
	MEermIsValid(e);
	MAssertVoid(NtMax > 0, "Bad arg NtMax");

	if (NtMax < e->NtMax) 
	{
		MTraceCall("eerm:\tEermMoreTokens finished.");
		return;
	}

	// Make a temporary copy of the token pointer list:
	TempTokenList = (Token **)getmem(e->Nt * sizeof(Token *));
	
	// Copy the token pointer list to the temp list:
	copyvec(e->tokens, TempTokenList, e->Nt);

	// Resize the struct member:
	e->tokens = (Token **)resizemem(e->tokens, 
		e->NtMax * sizeof(Token *), NtMax * sizeof(Token *));

	// Initialize the token list.
	initvec(e->tokens, NULL, NtMax);
	
	// Copy the temp list to the token pointer list:
	copyvec(TempTokenList, e->tokens, e->Nt);
	
	// Free the temporary list
	freemem(TempTokenList, e->Nt * sizeof(Token *));

	MEermIsValid(e);
	MTraceCall("eerm:\tEermMoreTokens finished.");
}


//---------------------- EermNodeListFind

int EermNodeListFind(Eerm *e, Node **NodeList, int Nn)
{
	int i;
	MTraceCall("eerm:\tEermNodeListFind..");

	MEermIsValid(e);
	MNodeListIsValid(NodeList, Nn);
	MAssertInt((Nn <= e->Nn) && (Nn >= 1), "Wrong number nodes");

	for (i = 0; i < e->Ns; i++)
	{
		if (NodeListCompare(e->simplices[i]->nodes, e->simplices[i]->Nn,NodeList, Nn))
		{
			MTraceCall("eerm:\tEermNodeListFind finished.");
			return i;
		}
	}
	MTraceCall("eerm:\tEermNodeListFind finished.");
	return -1;
}


//---------------------- EermTokenDelete

void	EermTokenDelete(Eerm *e, int i)
{
	int num;

	MMemEntry;
	MTraceCall("eerm:\tEermTokenDelete..");
	MEermIsValid(e);
	MAssertVoid(i >= 0, "invalid token index.");
	MTokenIsValid(e->tokens[i]);

	
	TokenFree(e->tokens[i], e->NnMax);

	num = CompactPtrArray((void **)e->tokens, e->NtMax);
	// Todo: Need a version of this which updates the Token Indices.
	// Todo: Need to figure out how to make this into a consistent interface,
	//       in which the client maintains its own index of the Tokens.
	//       -- Perhaps we can return a vector of ints.
	
	e->Nt = e->Nt - 1;
	MAssertVoid(e->Nt == num, "Token list size after compacting is not correct.");

	MMemExit;

	MTraceCall("eerm:\tEermTokenDelete finished.");
	return;
}


//---------------------- EermSimplexDelete

void EermSimplexDelete(Eerm *e, int i)
{
	MMemEntry;
	MTraceCall("eerm:\tEermSimplexDelete..");
	MEermIsValid(e);
	MAssertVoid((i > 0) && (i < e->Ns), "index out of range");	

	MSimplexIsValid(e->simplices[i]);
	
	EermSimplexZeroTp(e, i);

	SimplexFree(e->simplices[i]);

	//e->Ns = e->Ns - 1;  
	// [Todo] See comments above.	
	MMemExit;
	MTraceCall("eerm:\tEermSimplexDelete finished.");
	return;
}


//---------------------- EermSimplexZeroTp

void EermSimplexZeroTp(Eerm *e, int i)
{
	int j;
	MMemEntry;

	MTraceCall("eerm:\tEermSimplexZeroTp..");
	MEermIsValid(e);
	MAssertVoid((i > 0) && (i < e->Ns), "index out of range");

	for (j=0; j<e->Ns; j++)
	{
		e->simplices[j]->tp[i] = 0.0;
	}

	MMemExit;
	MTraceCall("eerm:\tEermSimplexZeroTp finished.");
}


//---------------------- EermSetEntry

void	EermSetEntry(Eerm *e, int i)
{
	MMemEntry;	
	MTraceCall("eerm:\tEermSetEntry..");
	MAssertVoid((e != NULL), "null ptr received");
	MAssertVoid(i >= -1, "Invalid entry point");

	e->entrysimplex = e->simplices[i];

	MMemExit;	
	MTraceCall("eerm:\tEermSetEntry finished.");
}



//====================== Set Parameters

//---------------------- EermSetDt

void	EermSetDt(Eerm *e, float Dt)
{
	MMemEntry;
	MTraceCall("eerm:\tEermSetDt..");
	MAssertVoid(Dt > 0.0, "MInvalid dt");

	e->dt = Dt;	

	MMemExit;
	MTraceCall("eerm:\tEermSetDt finished.");
}


//---------------------- EermSetWeights

// set all weights to the desired vals.
void	EermSetWeights(Eerm *e, float *w, int n)
{
	int i;
	MMemEntry;
	
	MTraceCall("eerm:\tEermSetWeights..");
	MWeightIsValid(w, n);

	FeatureSetWeights(e->tmptoken->f, w, n);
	FeatureSetWeights(e->protof, w, n);
	for (i = 0; i < e->Nt; i++)
	{
		FeatureSetWeights(e->tokens[i]->f, w, n);	
	}

	MMemExit;
	MTraceCall("eerm:\tEermSetWeights finished.");
}


//---------------------- EermSetSlew

// set all slews to the desired vals.
void	EermSetSlew(Eerm *e, float slew)
{
	int i;
	MMemEntry;
	MTraceCall("eerm:\tEermSetSlew..");

	e->tmptoken->f->slew = slew;
	e->protof->slew = slew;

	for (i = 0; i < e->Nt; i++)
	{
		e->tokens[i]->f->slew = slew;
	}

	MMemExit;
	MTraceCall("eerm:\tEermSetSlew finished.");
}



//---------------------- TokenSetSimplex

void	TokenSetSimplex(Token *t, Simplex *s, Eerm *e)
{
	MTraceCall("eerm:\tTokenSetSimplex..");
	MTokenIsValid(t);
	MSimplexIsValid(s);

	if (t->Nn != s->Nn) 
	{
		/* Todo : use this version later.
		t->coord = (float *)resizemem(t->coord, 
			t->Nn * sizeof(float), s->Nn * sizeof(float));
		t->vcoord = (float *)resizemem(t->vcoord, 
			t->Nn * sizeof(float), s->Nn * sizeof(float));
		*/
		// Todo : clean up these here dependencies.
		t->Nn = s->Nn;
		initvec(t->coord, 0.0, e->Nn);
		initvec(t->coord, 1.0 / (float)s->Nn, s->Nn);
		initvec(t->vcoord, 0.0, e->Nn);
	}
	t->s = s;
	MTokenIsValid(t);
	MTraceCall("eerm:\tTokenSetSimplex finished.");
	return;
}


//---------------------- TokenSetSimplexWithCoord

void	TokenSetSimplexWithCoord(Token *t, Simplex *s, Eerm *e, float *coord, float *vcoord, int Nn)
{
	MTraceCall("eerm:\tTokenSetSimplex..");
	MTokenIsValid(t);
	MSimplexIsValid(s);
	
	// not yet implemented.

	return;
}





//====================== Forces
//---------------------- TokenSensorForceAccum

void TokenSensorForceAccum(Token *t, float *F, int Nn, int sensorforce)
{	
	int i;
	float E;

	MMemEntry;
	MTraceCall("eerm:\tTokenSensorForceAccum..");
	MTokenIsValid(t);
	MAssertVoid(Nn == t->Nn, "incompatible simplex size");
	MAssertVoid(F != NULL, "invalid force ptr");


	// Calc the force due to each node:
	for (i = 0; i < t->Nn; i++)
	{
		// Calc the coupling of the feature to the node:
		E = NodeSensorCoupling(t->s->nodes[i], t->f);
		#ifdef MTraceForce
			post("Node %d : E_sensor = %f", t->s->nodes[i]->index, E);
			post("Node %d : SensorCoupling = %f",t->s->nodes[i]->index,exp(-1.0 * t->expscale * E)); 
		#endif 
		
		if (sensorforce == 0)
		{
			F[i] += SpringForce(exp(-1.0 * t->expscale * E), t->coord[i] - 1.0)
				 - t->damping * t->vcoord[i];
		#ifdef MTraceForce
			post("Node %d : SpringForce = %f",
				t->s->nodes[i]->index,
				SpringForce(exp(-1.0 * t->expscale * E), t->coord[i] - 1.0)
					- t->damping * t->vcoord[i]); 
		#endif 
		}
		else
		{
			F[i] += 
			GravityForce(
				exp(-1.0 * t->expscale * E), 
				t->mass,
				t->s->nodes[i]->potential,	// Todo : incorporate this better -
				MMax(t->coord[i] - 1.0, 0.0001)) 
				- t->damping * t->vcoord[i];
		#ifdef MTraceForce
			post("Node %d : GravityForce = %f",
				t->s->nodes[i]->index,
				GravityForce(
					exp(-1.0 * t->expscale * E), 
					t->mass,
					t->s->nodes[i]->potential,	// Todo : incorporate this better -
					MMax(t->coord[i] - 1.0, 0.0001)) 
					- t->damping * t->vcoord[i]);
		#endif 

		}

		#ifdef MTraceForce	 
			MTrace2("TokenSensorForceAccum:\tF[%d] = %f",i,F[i]);
		#endif
	}	
	
	MMemExit;
	MTraceCall("eerm:\tTokenSensorForceAccum finished.");
}



//---------------------- TokenForce
// Compute the net force on a single token.

void TokenForce(Token *t, Eerm *e, float *F, int Nn)
{
	int i;
	MMemEntry;

	MTraceCall("eerm:\tTokenForce..");
	MTokenIsValid(t);
	MEermIsValid(e);
	MAssertVoid(Nn == t->Nn, "incompatible nn");
	MAssertVoid(F != NULL, "invalid force ptr");

	initvec(F, 0.0, Nn);

	// 1. Calculate the force due to other tokens:
	if (t->tokencoupling != 0.0)
	{
		for (i = 0; i < e->Nt; i++)
		{
			if (i != t->index)
			{
				TokenTokenForceAccum(t,e->tokens[i], F, Nn);
			}
		}
	}
	
	// 2. Calculate the SensorForce:
	
	if (!t->stulle)
	{
		TokenSensorForceAccum(t, F, Nn, e->sensorforce);
	}

	// This is necessary for non-central forces:
	ProjectTangentToSimplex(F, Nn);

	#ifdef MTraceForce
		for (i = 0; i < Nn; i++)
		{
			post("Net force F[%d] = %f", i, F[i]);
		}
	#endif

	MMemExit;
	MTraceCall("eerm:\tTokenForce finished.");
}



//---------------------- NodeSensorCoupling

// Computes a log likelihood of the feature given the node,
// as the weighted-squared distance between feature and node data. 
float NodeSensorCoupling(Node *n, Feature *f)
{
	int i;
	float df;
	float D = 0.0;

	MTraceCall("eerm:\tNodeSensorCoupling..");
	MNodeIsValid(n);
	MFeatureIsValid(f);
	MAssertFloat(n->Nf == f->Nf, "incompatible nf");
	
	for (i = 0; i < f->Nf; i++)
	{
		df = (n->mean[i] - f->out[i]) * f->weights[i];
		D += df * df * n->ivar[i];
		#ifdef MTraceForce
			post("node %d, m - f = %f - %f = %f", 
				n->index, 
				n->mean[i],
				f->out[i],
				n->mean[i] - f->out[i]);
		#endif 
	}

	MTraceCall("eerm:\tNodeSensorCoupling finished.");
	return D;
}


//---------------------- EermForceMeter
// Output the coupling of f to each node in e.

void	EermForceMeter(Eerm *e, Feature *f, float *forces, int Nn)
{
	int i;
	MMemEntry;
		
	MTraceCall("eerm:\tEermForceMeter..");
	MEermIsValid(e);
	MFeatureIsValid(f);
	MAssertVoid(Nn == e->Nn, "incompatible nn");
	MAssertVoid(forces != NULL, "invalid force ptr");
	MAssertVoid(f->Nf == e->protof->Nf, "incompatible nf");

	for (i = 0; i < Nn; i++)
	{
		forces[i] = NodeSensorCoupling(e->nodes[i], f);
	}	
	MMemExit;
	MTraceCall("eerm:\tEermForceMeter finished.");
}


//====================== Evolution

//---------------------- TokenEvolve
// Evolve a single token of the eerm.

void	TokenEvolve(Token *t, Eerm *e)
{
	int i;
	float *F;
	float InverseMass;
	MMemEntry;

	MTraceCall("eerm:\tTokenEvolve..");
	MEermIsValid(e);
	MTokenIsValid(t);
	
	MAssertVoid(e->dt >= KMinDt, "Invalid interval");

	F = (float *)getmem(t->Nn * sizeof(float));
	initvec(F, 0.0, t->Nn);

	TokenForce(t,e,F,t->Nn);
	
	InverseMass = 1.0 / t->mass;
	for (i = 0; i < t->Nn; i++) 
	{
		t->coord[i]  += t->vcoord[i] * e->dt;
		t->vcoord[i] += F[i] * InverseMass * e->dt;
	}

	// This should be necessary only due to roundoff errors:
	ForceConvex(t->coord, t->Nn);

	#ifdef MTraceEvolve
	for (i = 0; i < t->Nn; i++)
	{
		MTrace4("TokenEvolve:\tInverseMass = %f, F[%d] = %f, dt = %f", InverseMass, i, F[i], e->dt);
		MTrace2("TokenEvolve:\tdCoord[%d] = %f", i, t->vcoord[i] * e->dt);
		MTrace2("TokenEvolve:\tdVcoord[%d] = %f", i, F[i] * InverseMass * e->dt); 
		MTrace2("TokenEvolve:\tvcoord[%d] = %f", i, t->vcoord[i]);
	}
	#endif

	freemem(F, t->Nn * sizeof(float));

	TokenCheckTransition(t, e);
	
	MTraceCall("eerm:\tTokenEvolve finished.");
	MMemExit;
}


//---------------------- EermTokensEvolve
// Evolve all tokens in the Eerm.

void	EermTokensEvolve(Eerm *e)
{
	int i = 0;
	int j = 0;
	MMemEntry;

	MTraceCall("eerm:\tEermTokensEvolve..");
	MEermIsValid(e);

	while (i < e->Nt)
	{
		// Todo : find out if this is safe practice. For now, the token-delete function is MInvalid-ed.  
		// Todo : implement the same idea elsewhere, as it looks like we are
		// going with it.

		MAssertVoid(!(!(e->tokens[j]) && (!(e->tokens[j] == NULL))), "Bad assumption");   

		if (e->tokens[j])  // can this just be written "if (e->tokens[j])" ?
		{
			TokenEvolve(e->tokens[j], e);
			i++;
		}
		j++;
	}
		
	MMemExit;
	MTraceCall("eerm:\tEermTokensEvolve finished.");
}




//====================== Token Transition

//---------------------- TokenCheckTransition
// Determine if a transition between simplices is warranted by the
// dynamics, and if so, execute it.

void TokenCheckTransition(Token *t, Eerm *e)
{	
	int n = t->Nn; 
	int SimplexNodeLostIndex = -1;
	MMemEntry;

	MTraceCall("eerm:\tTokenCheckTransition..");
	MTokenIsValid(t);
	MWeightIsValid(t->coord, t->Nn);
	
	// Determine if we have hit a boundary:
	SimplexNodeLostIndex = TokenCheckBoundary(t);
	
	if (SimplexNodeLostIndex != -1)
	{			
		TokenDoTransition(t, e, SimplexNodeLostIndex);
	}

	// Todo : Please assert the return values etc on the Token transition functions.;	
	MMemExit;
	MTraceCall("eerm:\tTokenCheckTransition finished.");
}


//---------------------- TokenDoTransition

// Perform the transition deleting the node with index SimplexNodeLostIndex,
// if one exists, otherwise bounce off that boundary.  
// Note: 0 <= SimplexNodeLostIndex < t->Nn
void TokenDoTransition(Token *t, Eerm *e, int SimplexNodeLostIndex)
{
	int i;
	int NewSimplexIndex;
	float *oldcoord;
	float *oldvcoord;
	int *perm;

	MMemEntry;
	MTraceCall("eerm:\tTokenDoTransition..");
	MTokenIsValid(t);
	MEermIsValid(e);
	MAssert((SimplexNodeLostIndex >= 0) && (SimplexNodeLostIndex < t->Nn), "Invalid index");
	MTrace1("eerm:\tTokenDoTransition removing %d.", SimplexNodeLostIndex);
	MTokenTraceCoord(t);

	perm 			= (int *)getmem(t->Nn * sizeof(int));
	oldcoord 	= (float *)getmem(t->Nn * sizeof(float));
	oldvcoord = (float *)getmem(t->Nn * sizeof(float));

	// Record the old coordinate & velocity (reflecting the bdy vel)
	t->vcoord[SimplexNodeLostIndex] *= -1.0;
	copyvec(t->coord, oldcoord, t->Nn);
	copyvec(t->vcoord, oldvcoord, t->Nn);

	// Find the simplex to which we transition, or else stay on original:
	NewSimplexIndex = TokenFindTransition(t, e, SimplexNodeLostIndex);
	MTrace2("TokenDoTransition:\tTransition from simplex %d -> %d", t->s->index, NewSimplexIndex);

	// Perform the transition:
	if (!(NewSimplexIndex == t->s->index)) 
	{
		// Get the permutation from old to new simplex 
		//   (e.g. 1 3 5 -> 1 2 3 returns perm 0 2 -1)
	 	SimplexComparePermute(e->simplices[NewSimplexIndex], t->s, perm, t->Nn);

		// Iterate over indices of the new simplex:
	 	for (i = 0; i < t->Nn; i++)
	 	{
			// Todo : this only works because same-dimension simplices.
			MTrace2("Transition Permutation: %d -> %d", i, perm[i]);
	
			// Todo : integrate this better with ComparePermute.
			if (perm[i] == -1)
			{
				t->coord[i]  = oldcoord[SimplexNodeLostIndex];
		 		t->vcoord[i] = oldvcoord[SimplexNodeLostIndex];

				// Debug:
				//MTrace3("i = %d: set c = %f, v = %f", i, t->coord[i], t->vcoord[i]); 

			}
			else
			{
				MAssert((perm[i] >= 0) && (perm[i] < t->Nn), "invalid node index");
		 		MAssert(t->s->nodes[perm[i]] == e->simplices[NewSimplexIndex]->nodes[i], "bad sort returned.");
				MAssert(perm[i] != SimplexNodeLostIndex, "invalid permutation.");

				// Set coordinates on the new simplex:
		 		t->coord[i]  = oldcoord[perm[i]];
		 		t->vcoord[i] = oldvcoord[perm[i]];

				// Debug:
				//MTrace3("i = %d: set c = %f, v = %f", i, t->coord[i], t->vcoord[i]); 

			}
	 	}		

		MTokenTraceCoord(t);
		MAssert(t->s != e->simplices[NewSimplexIndex], "Simplex should not be set yet.");

		// Todo : figure out how to reduce this to a call to TokenSetSimplexWithCoord(..)
		t->s = e->simplices[NewSimplexIndex];
	}
	
	// Deallocate:
	freemem(perm, t->Nn * sizeof(int));
	freemem(oldcoord, t->Nn * sizeof(float));
	freemem(oldvcoord, t->Nn * sizeof(float));
	MTraceCall("eerm:\tTokenDoTransition finished.");
	MMemExit;
}


//---------------------- TokenTraceCoord

void TokenTraceCoord(Token *t)
{
	int i;
	MTokenIsValid(t);
	
	for (i = 0; i < t->Nn; i++)
	{
		MTrace4("t->coord[%d] = %f   t->vcoord[%d] = %f", i, t->coord[i], i, t->vcoord[i]);
	}	
}


//---------------------- TokenFindTransition

// Look for the best available transition, if
// there is one; return -1 if none found.

// Note: 0 <= SimplexNodeLostIndex < t->Nn

int TokenFindTransition(Token *t, Eerm *e, int SimplexNodeLostIndex)
{
	int i;
	int Test1,Test2;
	// default to the original simplex:
	int NewSimplexIndex = t->s->index;
	MMemEntry;

	MTraceCall("eerm:\tTokenFindTransition..");
	MEermIsValid(e);
	MTokenIsValid(t);
	MAssertInt((SimplexNodeLostIndex >= 0) & (SimplexNodeLostIndex < t->Nn), "bad SimplexNodeLostIndex");

	// Examine all e->simplices[i]
	for (i = 0; i < e->Ns; i++)
	{
		// If  (1) A connection exists from t->s to e->simplices[i]
		// and (2) e->simplices[i] does not contain node t->s->nodes[SimplexNodeLostIndex]
		Test1 = (t->s->tp[i] > 0.0);
		Test2 = (SimplexNodeFind(e->simplices[i], t->s->nodes[SimplexNodeLostIndex]) == -1);

		if ((t->s->tp[i] > 0.0) && 
			( SimplexNodeFind(e->simplices[i], t->s->nodes[SimplexNodeLostIndex]) == -1))
 		{
 			// Transition is best so far in the following cases:
 			if (NewSimplexIndex == t->s->index) NewSimplexIndex = i;

 			MAssertInt((NewSimplexIndex >= 0) && (NewSimplexIndex < e->Ns), 
 				"TokenFindTransition:\tBad NewSimplexIndex");
 			
 			if (t->s->tp[i] > t->s->tp[NewSimplexIndex]) NewSimplexIndex = i;
 		}
	}
		
	MMemExit;
	MTraceCall("eerm:\tTokenFindTransition finished.");
	return NewSimplexIndex;	
}



//====================== Comparison

// Todo : Make sure all "return"s accompanied by MMemExit.		
		









//--------------------------------------------------------------------------------
//------------------------------ OPTIONAL ----------------------------------------
//--------------------------------------------------------------------------------

//---------------------- EermNodeDelete

void	EermNodeDelete(Eerm *e, int i)
{
	int j;
	MMemEntry;
	MEermIsValid(e);
	MNodeIsValid(e->nodes[i]);

	NodeFree(e->nodes[i]);
	// e->Nn = e->Nn - 1; 
	
	// [Todo] : these are ORDERED so we cannot simply decrement the foregoing.
	//   one solution would be to use a linked list.  another would be to reallocatte
	//   the empty slot as needed.  

	// Alternately, we could use the mechanism used above, for the
	// tokens, but again have the problem that anyone relying on the
	// "index" of a node will have to update that information.
	
	// This seems to point to the idea that we should not be using the "index"!
	
	// (However, it makes NodeList math simpler.)
	
	for (j=0; j<e->Ns; j++)
	{
		e->nodes[j]->tp[i] = 0.0;
	}

	MInvalid("not yet implemented");
	MMemExit;
	
	return;
}

//---------------------- EermMoreSimplices

void 	EermMoreSimplices(Eerm *e, int NsMax)
{
	MMemEntry;	
	MEermIsValid(e);
	MAssertVoid(NsMax > 0, "Bad arg NsMax");
	MMemExit;	
	MInvalid("not yet implemented");
}


//---------------------- EermMoreNodes

void 	EermMoreNodes(Eerm *e, int NnMax)
{
	MMemEntry;	
	MEermIsValid(e);
	MAssertVoid(NnMax > 0, "Bad arg NnMax");
	MMemExit;	
	MInvalid("not yet implemented");
}

//---------------------- NodeFuse

int	NodeFuse(Node *n1, Node *n2, int opt)
{
	MMemEntry;
	MNodeIsValid(n1);
	MNodeIsValid(n2);
	MAssertInt(opt >= 0, "bad opt");

	// 1. Redirect
	// 2. Collapse EermNodeList
	// 3. Search for degenerates.

	return -1;
	MInvalid("not yet implemented");
	MMemExit;
}


//---------------------- SimplexSubdivide

Node *SimplexSubdivide(Simplex *s, Eerm *e)
{
	MSimplexIsValid(s);
	MAssertPtr(e != NULL, "invalid eerm ptr");
	return NULL;
	
/*	int i,j;
	Node *n;
	Node **nodelist;
	Simplex *snew;
	
	SimplexIsValid(s);
		
	// 1. Create the necessary node
	n = NodeNew(1, e->tmpnode->Nf, e->NnMax);
	EermNodeAdd(e, n);
	initvec(n->ivar,0.0, n->Nf);

	// 2. Compute the new node data
	for (i = 0; i < s->Nn; i++)
	{
		for (j = 0; j < n->Nf; j++)
		{
			n->mean[j] += s->nodes[i]->mean[j] / s->Nn;
			n->ivar[j] += s->nodes[i]->ivar[j] / s->Nn;		// <-not quite right.
		}
		n->potential += s->nodes[i]->potential / s->Nn;
	}		
	
	// 3. Create the new simplices
	
	nodelist = (Node **)getmem(s->Nn * sizeof(Node *));
	for (i = 0; i < s->Nn; i++)
	{
		copyvec(s->nodes, nodelist, s->Nn);
		nodelist[i] = n;
	}
		EermSimplexAdd(e, s->Nn, nodelist);
		EermSimplexAdd(e, snew);
		// Would be good to combine last 2 into EermSimplexAddNew(..)
			
	
	// 4. Copy Simplex Data From the original simplex
	
	// 5. Delete The Original Simplex

	MInvalid("Not done yet..");
	return n; 
*/
}

/*

void SimplexTokenTrain(Simplex *s, Token *t, float a, float vf) 
{
	int f, i, Nf = n->Nf; size = s->size;
	double dist, L, w, P, N, sumw = 0.0, sumv=0.0, *dm, *dV;
	float *mm, *ivm;
	if (size != t->size) {
		error("smpmodel:token and simplex sizes must be equal!");
		return;
	}
	dm = (double *)getmem((Nf * sizeof(double)));
	dV = (double *)getmem((Nf * sizeof(double)));
	mm =  (float *)getmem((Nf * sizeof(float)));
	vm = (float *)getmem((Nf * sizeof(float)));
	
	twopiNf = 2 * PI * Nf;
	recipdistdenom = 1.0 / (2.0 * Nf);
	for(i=0; i<size; i++) {
		dist = 0.0;
		w = t->coord[i];
		for(f=0; f<Nf; f++) {
			vm[f] = 1.0 / s->nodes[i].ivar[f];
			mm[f] = s->nodes[i].mean[f];
			dm[f] = t->obs[f] - mm[f];
			dm2 = dm[f] * dm[f];
			dist = dist + dm2 * s->nodes[i].ivar[f];
			dV[f] = dm2 - vm[f];
		}
		dist = dist * recipdistdenom;
		P = exp(-1.0 * dist);
		L = a * w * P;
		for(f=0; f < Nf; f++) {
			s->nodes[i].mean[f] + L * dm[f];
			vm[f] = vm[f] + L * dV[f];
			s->nodes[i].ivar = 1.0 / (MAX(vm[f], vf));
		}
	}
	freemem(dm, (Nf * sizeof(double)));
	freemem(dV, (Nf * sizeof(double)));
	freemem(mm, (Nf * sizeof(float)));
	freemem(vm, (Nf * sizeof(float)));
}	

*/


