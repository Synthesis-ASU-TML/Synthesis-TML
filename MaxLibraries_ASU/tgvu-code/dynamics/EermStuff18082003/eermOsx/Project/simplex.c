// simplex.c

#include "node.h"
#include "simplex.h"
#include "math.h"	
#include <stdlib.h>
#include <stdio.h>
#include "ext.h"
#include <assert.h>
#include "eermDefines.h"
#include "eermDefaults.h"
#include "GraphModelUtil.h"

//====================== Validity


//---------------------- SimplexIsValid

void SimplexIsValid(Simplex *s)
{
	int i;
	MTraceCall("eerm:\tSimplexIsValid..");
	MAssertVoid(s != NULL, "Invalid simplex: null ptr");
	MAssertVoid(s->index >= -1, "Invalid simplex: bad index");
	MAssertVoid(s->Nn >= 1, "Invalid simplex: bad nn");
	for (i = 0; i < s->Nn; i++)
	{
		NodeIsValid(s->nodes[i]);
	}
	MWeightIsValid(s->tp, s->NsMax);
	MTraceCall("eerm:\tSimplexIsValid finished.");
}

//---------------------- SimplexIsValidWithoutNodes

void SimplexIsValidWithoutNodes(Simplex *s)
{
	int i;
	MTraceCall("eerm:\tSimplexIsValid..");
	MAssertVoid(s != NULL, "Invalid simplex: null ptr");
	MAssertVoid(s->index >= -1, "Invalid simplex: bad index");
	MAssertVoid(s->Nn >= 1, "Invalid simplex: bad nn");
	for (i = 0; i < s->Nn; i++)
	{
		NodeIsValid(s->nodes[i]);
	}
	MWeightIsValid(s->tp, s->NsMax);
	MTraceCall("eerm:\tSimplexIsValid finished.");
}


//====================== New / Free


//---------------------- SimplexNew

Simplex	*SimplexNew(int index, int Ns, int NsMax, int Nn, Node **nodes)
{
	Simplex *s;
	MMemChkStart;

	MTraceCall("eerm:\tSimplexNew..");
	// Check args
	MAssertPtr(NsMax >= 1, "Bad num simplices");
	MAssertPtr(Nn >= 1, "Null ptr received");
	NodeListIsValid(nodes, Nn);
	
	// Make new struct
	s = (Simplex *)getmem(sizeof(struct simplex));
	MAssertPtr(s != NULL, "Didn't get mem.");

	// Set state
	s->index = index;
	s->Nn = Nn;
	s->NsMax = NsMax;
	
	// Allocate arrays
	s->tp = (float *)getmem(NsMax * sizeof(float));
	MAssertPtr(s->tp != NULL, "didn't get mem");

	s->nodes = (Node **)getmem(Nn * sizeof(Node *));
	MAssertPtr(s->nodes != NULL, "didn't get mem");

	// Init arrays
	copyvec(nodes, s->nodes, s->Nn);
	initvec(s->tp, 0.0, s->NsMax); // Disconnected by default.

	// This is not very nice, but shouldn't matter:
	if (s->index == -1)
	{
		s->tp[0] = 1.0;
	}
	else
	{
		s->tp[s->index] = 1.0;
	}

	MSimplexIsValid(s);

	#ifdef MemDebug
	MMemChkExit(gMemSimplex); 
	#endif

	MTraceCall("eerm:\tSimplexNew finished.");
	
	return s;
}


//---------------------- SimplexFree

void 	SimplexFree(Simplex *s)
{
	MMemChkStart;
	MTraceCall("eerm:\tSimplexFree..");
	MSimplexIsValidWithoutNodes(s);

	freemem(s->tp, s->NsMax * sizeof(float));
	freemem(s->nodes, s->Nn * sizeof(Node *));
	
	freemem(s,sizeof(struct simplex));
	
	s = NULL;
	MTraceCall("eerm:\tSimplexFree finished.");

	#ifdef MemDebug
	MMemChkExit(gMemSimplex);
	#endif

	return;
}	


//====================== Set



//---------------------- SimplexSetTp

int SimplexSetTp(Simplex *s1, Simplex *s2, float tp)
{
	MMemEntry;
	MTraceCall("eerm:\tSimplexSetTransition..");

	if (!SimplexNeighbor(s1,s2)) 
	{
		MTraceCall("eerm:\tSimplexSetTransition finished.");
		return 0;
	}
	
	s1->tp[s2->index] = tp;
	
	ForceConvex(s1->tp, s1->NsMax);

	MMemExit;

	MTraceCall("eerm:\tSimplexSetTransition finished.");
	return 1;
}


//---------------------- SimplexNeighbor

// Todo:
// Is there a reasonable constraint here?

// But we might want to generalize this to: s1 and s2 must
// each lie in star({s1\n1, s2\n2}).
int SimplexNeighbor(Simplex *s1, Simplex *s2)
{
	int i;
	MMemEntry;

	MTraceCall("eerm:\tSimplexNeighbor..");
	MSimplexIsValid(s1);
	MSimplexIsValid(s2);
	
	i = ( SimplexCompareCount(s1, s2) == (MMax(s1->Nn, s2->Nn) - 1) );

	MMemExit;

	MTraceCall("eerm:\tSimplexNeighbor finished.");
		
	return i;
}



//====================== Compare 


//---------------------- SimplexNodeFind

int SimplexNodeFind(Simplex *s, Node *n)
{
	// Todo: use the fact that the Node indices are 
	// sorted to perform e.g. a binary search.
	int i;
	MMemEntry;
	
	MTraceCall("eerm:\tSimplexNodeFind..");
	MSimplexIsValid(s);
	MNodeIsValid(n);
	
	for (i = 0; i < s->Nn; i++)
	{
		if (s->nodes[i] == n) 
		{
			MTraceCall("eerm:\tSimplexNodeFind finished.");
			MMemExit;
			return i;
		}
	}
		
	MMemExit;
	MTraceCall("eerm:\tSimplexNodeFind..");
	return -1;
}

//---------------------- SimplexCompareCount

int SimplexCompareCount(Simplex *s1, Simplex *s2)
// returns the number of matching nodes, or -1 if different sizes.  see also below.
{
	int *n1, *n2;
	int i, count=0, inc=0;

	MMemEntry;
	MTraceCall("eerm:\tSimplexCompareCount..");
	MSimplexIsValid(s1);
	MSimplexIsValid(s2);

	n1 = (int *)getmem(s1->Nn * sizeof(int));
	n2 = (int *)getmem(s2->Nn * sizeof(int));
	
	for (i = 0; i < s1->Nn; i++)
	{
		n1[i] = s1->nodes[i]->index;
	}
	for (i = 0; i < s2->Nn; i++)
	{
		n2[i] = s2->nodes[i]->index;
	}
	
	// can do SortedCompare on addresses, because underlying indices are sorted:
	count = SortedCompareCount(n1, s1->Nn, n2, s2->Nn);
	
	freemem(n1, s1->Nn * sizeof(int));
	freemem(n2, s2->Nn * sizeof(int));	

	MMemExit;
	
	MTraceCall("eerm:\tSimplexCompareCount finished.");
	return count;	
}


//---------------------- SimplexComparePermute

int SimplexComparePermute(Simplex *s1, Simplex *s2, int *p, int np)
// does the same as above, but returns the permutation connecting them.
{
	int *n1, *n2;
	int i=0, count=0, inc=0;

	MMemEntry;
	MTraceCall("eerm:\tSimplexComparePermute..");
	MSimplexIsValid(s1);
	MSimplexIsValid(s2);
	MAssertInt(np == s1->Nn, "incompatible perm size");

	n1 = (int *)getmem(s1->Nn * sizeof(int));
	n2 = (int *)getmem(s2->Nn * sizeof(int));
	
	for (i = 0; i < s1->Nn; i++)
	{
		n1[i] = s1->nodes[i]->index;
	}
	for (i = 0; i < s2->Nn; i++)
	{
		n2[i] = s2->nodes[i]->index;
	}
	
	// This returns p(i1) = i2.
	count = SortedComparePermute(n1, s1->Nn, n2, s2->Nn, p, np);

	freemem(n1, s1->Nn * sizeof(int));
	freemem(n2, s2->Nn * sizeof(int));	

	MMemExit;
	
	MTraceCall("eerm:\tSimplexComparePermute finished.");
	return count;	
}



