// Node.h 



//====================== Definitions

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


//====================== Methods

//---------------------- Validity checks

void NodeIsValid(Node *n);
void NodeListIsValid(Node **n, int Nn);

//---------------------- New / Free

Node 	*NodeNew(int index, int Nf, int nstates);  
void 	NodeFree(Node *n); 

//---------------------- Set

void 	NodeSetMean(Node *n, float *mean, int N);
void	NodeSetVar(Node *n, float *var, int N);
void	NodeSetPotential(Node *n, float potential);  // opt

// -- Compare --

int 	NodeListCompare(Node **n1, int Nn1, Node **n2, int Nn2);
