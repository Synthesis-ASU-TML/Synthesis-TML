// eermMax.h


//======================= Includes

#include "ext.h"
#include "eermGraphicsI.h"
#include <string.h>

//======================= Macros

#define arg_num(val,idx,ac,av) \
	if ((av)&&((ac)>(idx))) { \
		if ((av)[(idx)].a_type==A_LONG) (val) = (av)[(idx)].a_w.w_long; \
		else if ((av)[(idx)].a_type==A_FLOAT) (val) = (av)[(idx)].a_w.w_float; \
	}

#define KBoundaryThreshold  0.001  // the min weight before transition.

#define MAtomToVec(ac, av, n) 			\
	if (av[0].a_type == A_LONG) 			\
	{ 												\
		for (iii = 0; iii < ac; iii++) 	\
			n[iii] = av[iii].a_w.w_long; 	\
	} 												\
	else if (av[0].a_type == A_FLOAT) 	\
	{ 												\
		for (iii = 0; iii < ac; iii++) 	\
			n[iii] = av[iii].a_w.w_float; \
	} 												\
	else {error("invalid atom type");}		
	
	
#define MAtomLongToVec(ac, av, n) \
	for (iii = 0; iii < ac; iii++) \
		n[iii] = av[iii].a_w.w_long;
		
#ifdef MTraces

#define MTraceSimplices(m) TraceSimplices(m)
#define MTraceLabels(m) TraceLabels(m)

#else
#define MTraceSimplices(m) {}
#define MTraceLabels(m) {}

#endif

		
#define KNullStr "NullStr"
//char *gNullStr = KNullStr;

//----------------------- Atom Checks

void AtomFloatIsValid(short ac, Atom *av, int len);
void AtomPosFloatIsValid(short ac, Atom *av, int len);
void AtomPosIntIsValid(short ac, Atom *av, int len);
void AtomIsValid(short ac, Atom *av, short len, Atom *proto);
void AtomToFloatVector(short ac, Atom *av, short len, float *f);

//======================= Definition

typedef struct eermmax
{	
	Object ob;
	void *out;
	void *xout;
	
	Eerm *e;
	//EermGraphics *g;

	char **NodeLabel;
	char **SimplexLabel;
	char **TokenLabel;

	int DoClock;
	short packcoords;
	short autopost;
	short dt;

} EermMax;

void *EermMaxClass;


//======================= Globals

//----------------------- Symbols

Symbol 
	*PsEermSimplexSetEntry, 
	*PsEermSetDt, 				// float
	*PsEermSetWeights, 
	*PsEermForceMeter, 

	*PsSimplexNew, 
	*PsSimplexDelete, 		// ??
	*PsSimplexSetTp, 

	*PsNodeNew, 
	*PsNodeSetMean, 
	*PsNodeSetVar, 
	*PsNodeSetLabel,
	
	*PsTokenFeatureUpdate,  // this symbol not needed.

	*PsStulleTokenNew, 
	*PsTokenNew, 
	*PsTokenDelete, 
	*PsTokenSetCoord, 
	*PsTokenSetMass, 
	*PsTokenSetDamping, 
	*PsTokenSetExpScale, 
	*PsTokenSetTokenCoupling,
	
	*PsClockEvolution; 		


//----------------------- Atoms

//======================= Max Methods

// Parses the msg to produce eerm with desired attributes.
void *EermMaxNew(Symbol *s, short ac, Atom *av);
void EermMaxFree(EermMax *m);
void EermMaxTick(EermMax *m);

void EermMaxLabelsNew(EermMax *m);
void EermMaxLabelsFree(EermMax *m);

//======================= Messages

//void EermMaxFoo(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxBang(EermMax *m);
void EermMaxInt(EermMax *m, int i);

void EermMaxSimplexSetEntry(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxSetDt(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxSetForce(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxSetSlew(EermMax *m, Symbol *msg, short ac, Atom *av);

void EermMaxSetWeights(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxTokenSetWeights(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxForceMeter(EermMax *m, Symbol *msg, short ac, Atom *av);

void EermMaxPostSimplices(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxPostTokens(EermMax *m, Symbol *msg, short ac, Atom *av);
void TraceSimplices(EermMax *m);
void TraceLabels(EermMax *m);

void EermMaxSimplexNew(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxSimplexDelete(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxSimplexSetTp(EermMax *m, Symbol *msg, short ac, Atom *av);

void EermMaxNodeNew(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxNodeSetLabelMsg(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxNodeSetMean(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxNodeSetVar(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxNodeSetPotential(EermMax *m, Symbol *msg, short ac, Atom *av);

void EermMaxStulleTokenNew(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxTokenNew(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxTokenDelete(EermMax *m, Symbol *msg, short ac, Atom *av);

void EermMaxTokenSetSimplex(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxTokenSetCoord(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxTokenSetMass(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxTokenSetDamping(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxTokenSetExpScale(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxTokenSetTokenCoupling(EermMax *m, Symbol *msg, short ac, Atom *av);

void EermMaxClockEvolution(EermMax *m, int DoClock);
void EermMaxClockOnce(EermMax *m, Symbol *msg, short ac, Atom *av);
void EermMaxEvolve(EermMax *m);

void EermMaxOutputTokens(EermMax *m);
void EermMaxOutputToken(EermMax *m, int i);

void EermMaxTokenFeatureUpdate(EermMax *m, Symbol *msg, short ac, Atom *av);


//======================= Strings

void StringArraySetLabel(char **a, int asize, int i, char *s);
char *StringArrayLabel(char **a, int asize, int i);
int StringArrayIndex(char **a, int asize, char *s);

void EermMaxTokenSetLabel(EermMax *m, int i, char *s);
char *EermMaxTokenLabel(EermMax *m, int i);
int EermMaxTokenIndex(EermMax *m, char *s);

void EermMaxNodeSetLabel(EermMax *m, int i, char *s);
char *EermMaxNodeLabel(EermMax *m, int i);
int EermMaxNodeIndex(EermMax *m, char *s);

void EermMaxSimplexSetLabel(EermMax *m, int i, char *s);
char *EermMaxSimplexLabel(EermMax *m, int i);
int EermMaxSimplexIndex(EermMax *m, char *s);

int EermMaxNodeAtomToIndex(EermMax *m, int ac, Atom *av);
int EermMaxSimplexAtomToIndex(EermMax *m, int ac, Atom *av);

//??:
int EermMaxSimplexNodeIndexListToIndex(EermMax *m, int *NodeIndex);


