/*
 *  lagrange_pvt.c
 *  FluidApp
 */

#include "lagrange_pvt.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

lagrange *lagrangeCreate(int in_maxParticles)
{
	lagrange *toRet;
	
	if (in_maxParticles <= 0)
	{
		errorRaise(error_flags, "Need at least a particle");
	}
	
	if (in_maxParticles%16 != 0)
	{
		errorRaise(error_flags,
							"Number of particles needs to be multiples of 16");
	}
	
	toRet = malloc(sizeof(lagrange));
	if (toRet == NULL)
	{
		errorRaise(error_memory,
									"Unable to allocate struct lagrange");
		return NULL;
	}
	
	return toRet;
}


void lagrangeFree(lagrange *in_l)
{
	if (in_l)
	{
		
		//Free everything else...
		if (in_l->m_fPositions)		free(in_l->m_fPositions);
		if (in_l->m_fVelocities)	free(in_l->m_fVelocities);
		if (in_l->m_fAccelerations)	free(in_l->m_fAccelerations);
		if (in_l->m_fDistances)		free(in_l->m_fDistances);
		if (in_l->m_nSurroundings)	free(in_l->m_nSurroundings);
	}
}
