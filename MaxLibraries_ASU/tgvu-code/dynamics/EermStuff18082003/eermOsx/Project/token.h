// token.h 

//#include "simplex.h"
//#include "feature.h"

//====================== Definitions

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

//====================== Methods

//---------------------- Validity checks

void TokenIsValid(Token *t);
void TokenTraceCoord(Token *t);

//---------------------- New / Free

Token	*TokenNew(int index, Simplex *s, int Nf, float slew, int NnMax); 
Token	*StulleTokenNew(int index, Simplex *s, int Nf, float slew, int NnMax); 
void	TokenFree(Token *t, int NnMax);	


//---------------------- Set

//void 	TokenSetFeature(Token *t, Feature *f, int Nf);
void 	TokenSetCoord(Token *t, float *coord, float *vcoord, int Nn);


//---------------------- Calc

void 	TokenTokenForceAccum(Token *t1, Token *t2, float *F1, int Nn1);
int 	TokenCheckBoundary(Token *t);

//===================== Not (Yet) Implemented

void 	TokenTrainSimplex(Token *t);
void 	TokenObs(Token *t, float *obs, int Nf);
