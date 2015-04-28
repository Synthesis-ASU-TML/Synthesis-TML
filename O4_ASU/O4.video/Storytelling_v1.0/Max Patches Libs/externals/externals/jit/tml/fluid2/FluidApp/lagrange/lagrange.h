/*
 *  lagrange.h
 *  FluidApp
 */

#ifndef LAGRANGE_H
#define LAGRANGE_H

#include "error.h"

//Defines a particle system designed to simulate fluids in 2D...
//typedef struct lagrange_particle lagrange_particle;
typedef struct lagrange lagrange;

lagrange *lagrangeCreate(int in_maxParticles);

void lagrangeFree(lagrange *in_l);

#endif
