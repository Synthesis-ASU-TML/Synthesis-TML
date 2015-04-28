//#include <math.h>


typedef struct {
    float x;
    float y;
} Vec;

typedef struct {
    Vec pos;
    Vec vel;
    Vec acl;
    Vec force;
    float mass;
    char locked;
} Particle;

typedef struct {
    float len;
    float k;
    float d;
    int p1;
    int p2;
} Spring;

typedef struct {
    Particle *p;
    int pnum;
    Spring *s;
    int snum;

    Vec gravity;
    float dragCoeff;
    float dt;

    char forceMask;
} PSinfo;

typedef struct {
	unsigned char *mp;
	int width;
	int height;
	long dimstride;
} Matrix;	


void setVec(Vec *v, float xval, float yval);

void copyVec(Vec *v1, Vec *v2);
void multVec(Vec *v, float a);
void addVec(Vec *v1, Vec *v2);

void subVec(Vec *v1, Vec *v2);

float inner(Vec *v1, Vec *v2);
float magnitude(Vec *v);
void normalize(Vec *v);
// resetForce
void resetForce(Particle p[], int pnum);
// gravityForce
void gravityForce(Particle p[], int pnum, Vec *gravity);

// dragForce
void dragForce(Particle p[], int pnum, float dragCoeff);

// springForce
void springForce(Particle p[], int pnum, Spring s[], int snum);

// calcForce
void calcForce(PSinfo *psi);

// forceStep
void forceStep(Particle p[], int pnum, float dt, float floor, Matrix *matrix, char forceMask);