// Node.c


//====================== Includes

#include "node.h"
#include "math.h"	
#include <stdlib.h>
#include <stdio.h>
#include "ext.h"
#include <assert.h>
#include "eermDefines.h"
#include "eermDefaults.h"
#include "GraphModelUtil.h"

//====================== Validity

//---------------------- NodeIsValid

void NodeIsValid(Node *n)
{
	MTraceCall("eerm:\tNodeIsValid..");
	MAssertVoid(n != NULL, "Invalid node: null ptr");
	MAssertVoid(n->index >= -1, "Invalid node: bad index");
	MAssertVoid(n->Nf >= 0, "Invalid node: bad Nf");
	MWeightIsValid(n->tp, n->nstates);
	MAssertVoid(n->mean != NULL, "Invalid node: bad meanptr");
	MAssertVoid(n->ivar != NULL, "Invalid node: bad varptr");
	MAssertVoid(n->nstates > -1, "Invalid node: bad nstates");	
	MTraceCall("eerm:\tNodeIsValid finished.");
}


//---------------------- NodeListIsValid

void NodeListIsValid(Node **n, int Nn)
{
	int i;
	MTraceCall("eerm:\tNodeListIsValid..");
	MAssertVoid(n != NULL, "NodeListIsValid: null nodelist ptr");
	MAssertVoid(Nn > 0, "NodeListIsValid: NodeList is empty.");
	MNodeIsValid(n[0]);
	for (i = 1; i < Nn; i++)
	{
		MAssertVoid(n[i-1]->index <= n[i]->index, "NodeListIsValid: bad ordering");
		MNodeIsValid(n[i]);
	}		
	MTraceCall("eerm:\tNodeListIsValid finished.");
}


//====================== New / Free

//---------------------- NodeNew

Node 	*NodeNew(int index, int Nf, int nstates)
{
	Node *n;

	MMemChkStart;
	MTraceCall("eerm:\tNodeNew..");

	// Check args
	MAssertPtr(nstates >= 1, "received bad nstates");
	MAssertPtr(Nf >= 1, "bad Nf");
	
	// Make new struct
	n = (Node *)getmem(sizeof(struct node));

	// Set state
	n->index = index;
	n->Nf = Nf;
	n->nstates = nstates;
	n->potential = KNodePotentialDefault;

	// Allocate arrays	
	n->tp = (float *)getmem(nstates * sizeof(float));
	MAssertPtr(n->tp != NULL, "didn't get mem");

	n->mean = (float *)getmem(Nf * sizeof(float));
	MAssertPtr(n->mean != NULL, "didn't get mem");

	n->ivar = (float *)getmem(Nf * sizeof(float));
	MAssertPtr(n->ivar != NULL, "didn't get mem");

	// Init arrays
	initvec(n->tp, 1.0 / nstates, nstates);
	initvec(n->mean, 0.0, Nf);
	initvec(n->ivar, KInvVarianceDefault, Nf);

	MNodeIsValid(n);	

	#ifdef MemDebug
	MMemChkExit(gMemNode);
	#endif

	MTraceCall("eerm:\tNodeNew finished.");
	return n;
}


//---------------------- NodeFree

void 	NodeFree(Node *n)
{
	MMemChkStart;
	MTraceCall("eerm:\tNodeFree..");

	MNodeIsValid(n);

	freemem(n->tp, n->nstates * sizeof(float));
	freemem(n->mean, n->Nf * sizeof(float));
	freemem(n->ivar, n->Nf * sizeof(float));
	freemem(n, sizeof(struct node));

	n = NULL;
	
	#ifdef MemDebug
	MMemChkExit(gMemNode);
	#endif

	MTraceCall("eerm:\tNodeFree finished.");
	return;
}


//====================== Set

//---------------------- NodeSetMean

void	NodeSetMean(Node *n, float *mean, int Nf)
{
	MMemEntry;
	MTraceCall("eerm:\tNodeSetMean..");
	MNodeIsValid(n);
	MAssertVoid((mean != NULL), "null ptr received");
	MAssertVoid(Nf == n->Nf, "wrong Nf");

	copyvec(mean, n->mean, Nf);	

	MNodeIsValid(n);
	MMemExit;
	MTraceCall("eerm:\tNodeSetMean finished.");
}


//---------------------- NodeSetVar

void	NodeSetVar(Node *n, float *var, int Nf)
{
	MMemEntry;
	MTraceCall("eerm:\tNodeSetVar..");
	MNodeIsValid(n);
	MAssertVoid((var != NULL), "null ptr received");
	MAssertVoid(Nf == n->Nf, "wrong Nf");

	copyvec(1.0 / var, n->ivar, Nf);
	
	MNodeIsValid(n);
	MMemExit;
	MTraceCall("eerm:\tNodeSetVar finished.");
}


//---------------------- NodeSetPotential

void	NodeSetPotential(Node *n, float potential)
{
	MMemEntry;
	MTraceCall("eerm:\tNodeSetPotential..");
	MNodeIsValid(n);
	//MAssertVoid(potential > 0.0, "negative potential");
	
	n->potential = potential;

	MMemExit;
	MTraceCall("eerm:\tNodeSetPotential finished.");
}


//====================== Comparison


//---------------------- NodeListCompare

// Compare a pair of lists of ptrs to Nodes.
int NodeListCompare(Node **n1, int Nn1, Node **n2, int Nn2)
{
	int i;
	int comparison = 1;
	MMemEntry;

	MTraceCall("eerm:\tNodeListCompare..");
	MNodeListIsValid(n1, Nn1);
	MNodeListIsValid(n2, Nn2);

	if (Nn1 != Nn2) 
	{
		MTraceCall("eerm:\tNodeListCompare finished.");
		return 0;
	}
		
	for (i = 0; i < MMin(Nn1, Nn2); i++)
	{
		comparison = comparison && (n1[i] == n2[i]);
	}

	MMemExit;	

	MTraceCall("eerm:\tNodeListCompare finished.");
	return comparison;
}
		

