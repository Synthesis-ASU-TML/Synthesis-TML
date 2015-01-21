#include <math.h>
#include "forcestep.h"

void setVec(Vec *v, float xval, float yval)
{
    v->x = xval;
    v->y = yval;
}

void copyVec(Vec *v1, Vec *v2)
{
    v1->x = v2->x;
    v1->y = v2->y;
}

void multVec(Vec *v, float a)
{
    v->x *= a;
    v->y *= a;
}

void addVec(Vec *v1, Vec *v2)
{
    v1->x += v2->x;
    v1->y += v2->y;
}

void subVec(Vec *v1, Vec *v2)
{
    v1->x -= v2->x;
    v1->y -= v2->y;
}

float inner(Vec *v1, Vec *v2)
{
    return (v1->x * v2->x + v1->y * v2->y);
}

float magnitude(Vec *v)
{
	float ip = inner(v, v);
	return (ip == 0.0f) ? 0.0f : (float)sqrt(ip);
}

void normalize(Vec *v)
{
    float mag = magnitude(v);
    multVec(v, 1./mag);
}

// resetForce
void resetForce(Particle p[], int pnum)
{
    int i;
    for(i=0; i<pnum; i++) setVec(&p[i].force, 0.f, 0.f);
}

// gravityForce
void gravityForce(Particle p[], int pnum, Vec *gravity)
{
    int i;
    Vec force;

    for(i=0; i<pnum; i++){
    	if(!p[i].locked){
		copyVec(&force, gravity);
		multVec(&force, p[i].mass);
		addVec(&p[i].force, &force);
	}
    }
}

// dragForce
void dragForce(Particle p[], int pnum, float dragCoeff)
{
    int i;
    Vec force;
    float mag;

    for(i=0; i<pnum; i++){
    	if(!p[i].locked){
    		mag = magnitude(&p[i].vel);
    		
    		if(mag == 0.0f) continue;
    	
		copyVec(&force, &p[i].vel);
		normalize(&force);
	
		
		multVec(&force, -1.0 * mag * mag * dragCoeff);
		addVec(&p[i].force, &force);
	}
    }
}

// springForce
void springForce(Particle p[], int pnum, Spring s[], int snum)
{
    int i;
    int p1, p2;
    Vec pd, vd;
    float spf, dpf;
    float magpd;
    Vec force1, force2;

    for(i=0; i<snum; i++){
	p1 = s[i].p1;
	p2 = s[i].p2;

	copyVec(&pd, &p[p1].pos);
	subVec(&pd, &p[p2].pos);

	copyVec(&vd, &p[p1].vel);
	subVec(&vd, &p[p2].vel);

	magpd = magnitude(&pd);

	spf = s[i].k * (magnitude(&pd) - s[i].len);
	dpf = s[i].d * (inner(&vd, &pd) / magpd);

	copyVec(&force1, &pd);
	multVec(&force1, (- spf - dpf) / magpd);

	copyVec(&force2, &force1);
	multVec(&force2, -1.f);

	if(!p[p1].locked) addVec(&p[p1].force, &force1);
	if(!p[p2].locked) addVec(&p[p2].force, &force2);
	
	
    }
}

int onTheWall(Matrix *wall, int x, int y)
{
	int val;
	if(!wall->mp) return 0;
	val = wall->mp[y * wall->dimstride + x];
	return (val ? 1 : 0);
}

int getEdgeOfWall(Matrix *wall, int x, int y)
{
	int j, val;
	if(!wall->mp) return 0;
	
	for(j=0; j<y; j++){
		val = wall->mp[j * wall->dimstride + x];
		if(val) return (j ? j-1 : 0);
	}
	return y;
}


// calcForce
void calcForce(PSinfo *psi)
{
    	char forceMask = psi->forceMask;

    	resetForce(psi->p, psi->pnum);
    	if(forceMask & 0x1) gravityForce(psi->p, psi->pnum, &psi->gravity);
    	if(forceMask & 0x2) dragForce(psi->p, psi->pnum, psi->dragCoeff);
    	if(forceMask & 0x4) springForce(psi->p, psi->pnum, psi->s, psi->snum);
}

// forceStep
void forceStep(Particle p[], int pnum, float dt, float floor, Matrix *wall, char forceMask)
{
	int i;
    	Vec v;

    	for(i=0; i<pnum; i++){
    		if(p[i].pos.y > floor){
    			p[i].pos.y = floor;
    			p[i].force.y = 0.0f;
    			p[i].vel.y = 0.0f;
    		}
    		
    		//else if((forceMask & 0x8) && onTheWall(wall, (int)p[i].pos.x, (int)p[i].pos.y) && !p[i].locked){
    		else if((forceMask & 0x8) && !p[i].locked){
    			int ny = getEdgeOfWall(wall, (int)p[i].pos.x, (int)p[i].pos.y);
    			
    			if(ny != (int)p[i].pos.y){
    			p[i].pos.y = ny;
    			p[i].force.y = 0.0f;
    			p[i].vel.y = 0.0f;
    			}
    		}
    
		copyVec(&p[i].acl, &p[i].force);
		multVec(&p[i].acl, p[i].mass);	

		if(!p[i].locked){
			copyVec(&v, &p[i].acl);
			multVec(&v, dt);
			addVec(&p[i].vel, &v);
		}
		else setVec(&p[i].vel, 0.0f, 0.0f);

		copyVec(&v, &p[i].vel);
		multVec(&v, dt);
		addVec(&p[i].pos, &v);
    	}
}