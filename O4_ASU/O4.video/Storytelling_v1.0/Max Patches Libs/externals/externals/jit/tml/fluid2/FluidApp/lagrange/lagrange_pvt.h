/*
 *  lagrange_pvt.h
 *  FluidApp
 */

#include "lagrange.h"

typedef struct lagrange_particle_pvt lagrange_particle_pvt;

#define NUM_SURROUND_PARTICLES		16

//The order is to enable easy & quick updating of forces using vector
//instructions!
struct lagrange
{	
	float *m_fPositions;
	float *m_fVelocities;
	float *m_fAccelerations;
	float *m_fDistances;		//2D array (NUM_SURROUND_PARTICLES stride)
	int *m_nSurroundings;		//2D array (NUM_SURROUND_PARTICLES stride)
};
