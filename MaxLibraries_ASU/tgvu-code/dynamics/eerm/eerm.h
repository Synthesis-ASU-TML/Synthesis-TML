// eerm.h 
//   a particle/token based response model


//====================== Includes

#ifndef _eerm_h
#define _eerm_h

#include "stdlib.h"
#include "math.h"	

//====================== Eerm Parameter Defaults

// Choose these 3 such that Dt << sqrt(ExpScale/Mass) :
// sorry-- this should probably be:
//   Dt << sqrt(exp(-Expscale)/Mass)
// Todo : work this out properly.

#define KDtInMsDefault 					20.0
#define KMassDefault 						500000.0
#define KExpScaleDefault				0.5


// Likewise damping needs to be chosen in good units.
#define KDampingDefault					50.0
#define KSlewDefault						0.0
#define KTempDefault						1.0
#define KTokenCouplingDefault		0.0
#define KInvVarianceDefault			1.0

#define KSensorForceDefault 		0
#define KNMaxTokensDefault			2
#define KNMaxSimplicesDefault		2
#define KNNodesDefault					2
#define KNfDefault							2

#define KNodePotentialDefault		1.0

//====================== Globals (For memory debug only)

#ifdef MemDebug

	long gMemSimplex = 0;
	long gMemToken = 0;
	long gMemNode = 0;
	long gMemEerm = 0;
	long gMemFeature = 0;

#endif

//====================== Definitions

typedef struct feature
{
	int Nf;
	float *weights;  	// stream weights for f data	
	float *out;
	float slew;
} Feature;

typedef struct node	// what about heinz nodes?  simply maintain ivar = 0, or new struct?.
{
	int index;			// index in the parent graph; -1 is "outside"
	int Nf;
	int nstates;
	float *tp;			// transition prob list
	float *mean;		// feature mean [Nf]
	float *ivar;		// feature ivar [Nf]
	float potential;	// static potential
} Node;

typedef struct simplex
{
	int index;			// index in parent complex; -1 is "outside"
	int Nn;
	Node **nodes;		// double** because nodes not packed in memory
	int NsMax;			// this is needed because it determines trans list
	float *tp;  			// inter-simplex transition list
} Simplex;					// (but we need to keep track of which node has zero weight when making trans!)

typedef struct token
{
	int index;		// index of the token
	int stulle;		// stulle flag
	Simplex *s;		// the simplex
	int Nn;			// size of the coord (simplex) 
	int Nf;			// size of the obs (feature)
	float *coord;	//
	float *vcoord;
	float *obs;
	Feature *f;	  	// the current feature data
	double logp;	// log likelihood of this token
	float mass;
	float expscale;	// when this is zero, we have heinz token.
	float damping;		// damping coefficient
	float tokencoupling;
} Token;

// TODO : be sure to copy token attributes to/from the tmptoken.
// Todo : Track down all the todos.

typedef struct eerm
{
	int Nn;
	int NnMax;
	int NsMax;		// (current) maximum number simplices
	int Ns;			// current number simplices
	int Nt;
	int NtMax;

	Token **tokens;
	Node **nodes; 	 		// the graph is a list of structured pnodes	
	Simplex **simplices;	// the complex of simplices; a simplex points to the relevant nodes

	Simplex *tmpsmp;	 	// temporary simplex
	Node *tmpnode;	 		// temporary node
	Token *tmptoken;
	Feature *protof;		// prototype feature

	Simplex *entrysimplex;		// where new tokens are added

	float dt;				// a timescale
	float temp;
	
	int sensorforce;	// flag switching sensor coupling mode

} Eerm;
	
//====================== Methods

// Todo : verify that there is no iteration
// on deallocated structs.

// Todo : Change refs to Ns to pointer variables, so
// that all simplices may point to the common value. (?)

//---------------------- Validity checks

void VectorIsPositive(float *w, int n);
void VectorIsNonNegative(float *w, int n);
void WeightIsValid(float *w, int n);
void VectorIsTangent(float *w, int n);
void VectorIsConvex(float *w, int n);
void NodeIsValid(Node *n);
void NodeListIsValid(Node **n, int Nn);
void TokenIsValid(Token *t);
void SimplexIsValid(Simplex *s);
void SimplexIsValidWithoutNodes(Simplex *s);  // doesn't check component nodes.
void FeatureIsValid(Feature *f);
void EermIsValid(Eerm *e);
void TokenTraceCoord(Token *t);


TBool NodeIndexListIsValid(Eerm *e, int *n, int Nn);
TBool SortedNodeIndexListIsValid(Eerm *e, int *n, int Nn);

void	ProjectTangentToSimplex(float *f, int n);
void	ForceConvex(float *f, int n);

//---------------------- New / Free

Feature *FeatureNew(int Nf, float slew);  
void 	FeatureFree(Feature *f);	

Token	*TokenNew(int index, Simplex *s, int Nf, float slew, int NnMax); 
Token	*StulleTokenNew(int index, Simplex *s, int Nf, float slew, int NnMax); 
void	TokenFree(Token *t, int NnMax);	

Node 	*NodeNew(int index, int Nf, int nstates);  
void 	NodeFree(Node *n); 

Simplex	*SimplexNew(int index, int Ns, int NsMax, int Nn, Node **nodes); 
void 	SimplexFree(Simplex *s); 

Eerm	*EermNew(int Nn, int NsMax, int NtMax, int Nf, float dt); 
void 	EermFree(Eerm *e);  


//---------------------- Adds

int	EermTokenAdd(Eerm *e, Token *t); 
int EermTokenAddAt(Eerm *e, Token *t, int i);	
int	EermNodeAdd(Eerm *e, Node *n); 

int 	EermSimplexAdd(Eerm *e, int Nn, int *n);	
void	EermMoreTokens(Eerm *e, int NtMax);
int		EermNodeAdd(Eerm *e, Node *n);	// Todo : need NnMax to avoid resize?

//---------------------- Set

void EermSetDt(Eerm *e, float dt);
void EermSetSlew(Eerm *e, float slew);
void EermSetWeights(Eerm *e, float *w, int n);

void	TokenSetSimplex(Token *t, Simplex *s, Eerm *e);  // Todo : remove this ref to e by resizing token memory when simplex changes.
void	TokenSetSimplexWithCoord(Token *t, Simplex *s, Eerm *e, float *coord, float *vcoord, int Nn);
void 	TokenSetFeature(Token *t, Feature *f, int Nf);
void 	TokenSetCoord(Token *t, float *coord, float *vcoord, int Nn);

void 	NodeSetMean(Node *n, float *mean, int N);
void	NodeSetVar(Node *n, float *var, int N);
void	NodeSetPotential(Node *n, float potential);  // opt

int SimplexSetTp(Simplex *s1, Simplex *s2, float tp);
int SimplexNeighbor(Simplex *s1, Simplex *s2);

void	EermSetEntry(Eerm *e, int i);

void 	FeatureUpdate(Feature *f, float *in, int Nf);
void 	FeatureSetWeights(Feature *f, float *w, int n);

//---------------------- Calc

inline float SpringForce(float Coupling, float Distance);
inline float GravityForce(float Coupling, float Mass1, float Mass2, float Distance);

void	TokenForce(Token *t, Eerm *e, float *F, int Nn);
void 	TokenTokenForceAccum(Token *t1, Token *t2, float *F1, int Nn1);
void 	TokenSensorForceAccum(Token *t, float *F, int N, int sensorforce);
float NodeSensorCoupling(Node *n, Feature *f);

void	EermForceMeter(Eerm *e, Feature *f, float *forces, int Nn);

// -- Evolution --    

void	EermTokensEvolve(Eerm *e); 
void 	TokenEvolve(Token *t, Eerm *e);
//int	TokenTransition(Token *t, Eerm *e, Node *ndelete);  // transition deletes n
void  TokenCheckTransition(Token *t, Eerm *e);
void 	TokenDoTransition(Token *t, Eerm *e, int NodeLostIndex);
int 	TokenCheckBoundary(Token *t);
int TokenFindTransition(Token *t, Eerm *e, int NodeLostIndex);

// -- Compare --

int 	NodeListCompare(Node **n1, int Nn1, Node **n2, int Nn2);
int 	EermNodeListFind(Eerm *e, Node **NodeList, int Nn);
int 	SimplexNodeFind(Simplex *s, Node *n);
int 	SimplexCompare(Simplex *s1, Simplex *s2);
int 	SimplexCompareCount(Simplex *s1, Simplex *s2);
int 	SimplexComparePermute(Simplex *s1, Simplex *s2, int *p, int np);
  

void 	EermSimplexDelete(Eerm *e, int i);

void EermSimplexZeroTp(Eerm *e, int i);


// -- Output --

void ActiveSimplices(Eerm *e, int *simplices, int Ns);

//===================== Not Yet Finished

void 	EermMoreNodes(Eerm *e, int NnMax);
void 	EermMoreSimplices(Eerm *e, int NsMax);
void 	EermTokenDelete(Eerm *e, int i);
void	EermNodeDelete(Eerm *e, int i);
Node *SimplexSubdivide(Simplex *s, Eerm *e);
void 	TokenTrainSimplex(Token *t);
int	NodeFuse(Node *n1, Node *n2, int opt);
void 	TokenObs(Token *t, float *obs, int Nf);

//===================== Not Yet Implemented

void 	SimplexTrainTp(Simplex *s, int trans, float tf); 


#endif

