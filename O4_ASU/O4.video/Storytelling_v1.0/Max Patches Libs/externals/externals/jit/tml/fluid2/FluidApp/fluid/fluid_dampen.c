#include "fluid_macros_2.h"
#include "fluid_cpu.h"

/*
 *  fluid_dampen.c
 *  FluidApp
 *
 *  A generic dampener for the fluid simulation.  Can be useful on both the
 *	velocities as well as the densities.  On the velocities; this is a kind
 *	of friction (from a table surface, for example).  For the densities, this
 *	is useful for smoke effects.
 */

void fluid_dampen(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct dampen * d = &mode->dampen;
	
	field *f = d->f;
	float scale = d->e;
	
	int w = fieldWidth(f);
	
	int nc = fieldComponents(f);
	
	int sx = fieldStrideX(f);
	int sy = fieldStrideY(f)*y;
	
	float *ptr = fieldData(f);
	
	int i;
	for (i=0; i<w; i++)
	{
		int c;
		for (c=0; c<nc; c++)
		{
			fluidFloatPointer(ptr, sy)[c] *= scale;
		}
		sy+=sx;
	}
}

