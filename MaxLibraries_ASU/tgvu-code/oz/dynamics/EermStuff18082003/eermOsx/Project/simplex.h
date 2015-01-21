// simplex.h 

//#include "node.h"

//====================== Definitions

typedef struct simplex
{
	int index;			// index in parent complex; -1 is "outside"
	int Nn;
	Node **nodes;		// double** because nodes not packed in memory
	int NsMax;			// this is needed because it determines trans list
	float *tp;  			// inter-simplex transition list
} Simplex;					// (but we need to keep track of which node has zero weight when making trans!)


//====================== Methods


//---------------------- Validity checks

void SimplexIsValid(Simplex *s);
void SimplexIsValidWithoutNodes(Simplex *s);  // doesn't check component nodes.

//---------------------- New / Free

Simplex	*SimplexNew(int index, int Ns, int NsMax, int Nn, Node **nodes); 
void 	SimplexFree(Simplex *s); 

//---------------------- Set

int SimplexSetTp(Simplex *s1, Simplex *s2, float tp);

int SimplexNeighbor(Simplex *s1, Simplex *s2);

// -- Compare --

int 	SimplexNodeFind(Simplex *s, Node *n);
int 	SimplexCompareCount(Simplex *s1, Simplex *s2);
int 	SimplexComparePermute(Simplex *s1, Simplex *s2, int *p, int np);
  
//===================== Not (Yet) Implemented

int 	SimplexCompare(Simplex *s1, Simplex *s2);
void 	SimplexTrainTp(Simplex *s, int trans, float tf); 

