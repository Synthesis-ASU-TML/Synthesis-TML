/*
 *  fluid_pvt.c
 *  FluidApp
 */

#include "fluid_pvt.h"
#include "fluid_macros_2.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "memory.h"



////////////////////////////////////////////////////////////////////////////////
//
//	Private data structure and methods to operate on it
//
void fluidFree(void *in_o)
{
	fluid *o = (fluid*)in_o;
	
	if (o->r_blocker)		x_free(o->r_blocker);
	
	if (o->r_coherence)		x_free(o->r_coherence);
	
	if (o->r_pressure)		x_free(o->r_pressure);
	
	if (o->r_density)		x_free(o->r_density);
	if (o->r_density_swap)	x_free(o->r_density_swap);
	
	if (o->r_velocityX)		x_free(o->r_velocityX);
	if (o->r_velocityY)		x_free(o->r_velocityY);
	
	if (o->r_tmpVelX)		x_free(o->r_tmpVelX);
	if (o->r_tmpVelY)		x_free(o->r_tmpVelY);
	
	if (o->r_reposX)		x_free(o->r_reposX);
	if (o->r_reposY)		x_free(o->r_reposY);
	
	if (o->r_vidOutput)		x_free(o->r_vidOutput);
	
	if (o->r_collision)		x_free(o->r_collision);
	
	if (o->gpu_velX_in)		x_free(o->gpu_velX_in);
	if (o->gpu_velY_in)		x_free(o->gpu_velY_in);
	
	if (o->gpu_velocityX)	x_free(o->gpu_velocityX);
	if (o->gpu_velocityY)	x_free(o->gpu_velocityY);
	
	if (o->gpu_dens_in)		x_free(o->gpu_dens_in);
	if (o->gpu_density)		x_free(o->gpu_density);
	if (o->gpu_dens_tmp)	x_free(o->gpu_dens_tmp);
	
	if (o->gpu_fn_viscosity)	x_free(o->gpu_fn_viscosity);
	if (o->gpu_fn_viscosity_xy)	x_free(o->gpu_fn_viscosity_xy);
	if (o->gpu_fn_pressure)		x_free(o->gpu_fn_pressure);
	
	if (o->gpu_pressure)	x_free(o->gpu_pressure);
	
	int i;
	for (i=0; i<GPU_BUFFERS; i++)
	{
		if (o->gpu_tmp1[i])		x_free(o->gpu_tmp1[i]);
	}
}


fluid *fluidCreate(int in_width, int in_height)
{
	fluid *toRet = x_malloc(sizeof(fluid), fluidFree);
	memset(toRet, 0, sizeof(fluid));
	
	//CPU Buffers
	toRet->r_velocityX = fieldCreate(in_width, in_height, 1);
	toRet->r_velocityY = fieldCreate(in_width, in_height, 1);
	toRet->r_tmpVelX = fieldCreate(in_width, in_height, 1);
	toRet->r_tmpVelY = fieldCreate(in_width, in_height, 1);
	toRet->r_reposX = fieldCreate(in_width, in_height, 1);
	toRet->r_reposY = fieldCreate(in_width, in_height, 1);
	toRet->r_pressure = fieldCreate(in_width, in_height, 1);
	toRet->r_density = fieldCreate(in_width, in_height, 4);
	toRet->r_density_swap = fieldCreate(in_width, in_height, 4);
	toRet->r_vidOutput = fieldCreateChar(in_width, in_height, 4);
	toRet->r_collision = fieldCreate(in_width, in_height, 1);
	printf("   - Created CPU Buffers\n");
	
	//GPU Buffers
	toRet->gpu_velX_in = GPUFieldCreate(in_width, in_height, 1);
	toRet->gpu_velY_in = GPUFieldCreate(in_width, in_height, 1);
	toRet->gpu_velocityX = GPUFieldCreate(in_width, in_height, 1);
	toRet->gpu_velocityY = GPUFieldCreate(in_width, in_height, 1);
	toRet->gpu_dens_in = GPUFieldCreate(in_width, in_height, 4);
	toRet->gpu_density = GPUFieldCreate(in_width, in_height, 4);
	toRet->gpu_dens_tmp = GPUFieldCreate(in_width, in_height, 4);
	toRet->gpu_pressure = GPUFieldCreate(in_width, in_height, 1);
	printf("   - Created GPU Buffers\n");
	
	int k;
	toRet->gpu_curBuffer = 0;
	for (k=0; k<GPU_BUFFERS; k++)
	{
		toRet->gpu_tmp1[k] = GPUFieldCreate(in_width, in_height, 1);
	}
	
	//GPU Programs...
	toRet->gpu_fn_viscosity = GPUProgramCreate("viscosity.cl", GPUPROGRAM_FROM_FILE);
	toRet->gpu_fn_viscosity_xy = GPUProgramCreate("viscosity_xy.cl", GPUPROGRAM_FROM_FILE);
	toRet->gpu_fn_pressure = GPUProgramCreate("pressure.cl", GPUPROGRAM_FROM_FILE);
	toRet->gpu_fn_advection = GPUProgramCreate("advection.cl", GPUPROGRAM_FROM_FILE);
	printf("   - Loaded GPU Programs\n");
	
	toRet->r_blocker = mpQueueCreate(2);
	
	//NOTE: Make this configurable????
	toRet->r_coherence = mpCCreate(in_height, 128, 1024);
	
	toRet->m_curField = 0;
	
	toRet->m_usedFunctions = 0;
	
	toRet->m_viscosity = 1.0f;
	toRet->m_vorticity = 1.0f;
	toRet->m_timestep = 1.0f;
	
	toRet->m_fadeVel = 1.0f;
	toRet->m_fadeDens = 1.0f;
	
	toRet->m_gravity = 0.01f;
	toRet->m_heatSpeed = -0.2f;
	toRet->m_ambient = 0.0f;
	toRet->m_gravityX = 0;
	toRet->m_gravityY = -1.0f;
	
	toRet->m_velWidth = in_width;
	toRet->m_velHeight = in_height;
	
	toRet->m_velocityScale = x_simd_zero;
	toRet->m_pressureScale = x_simd_zero;
	toRet->m_densityScale = x_simd_one;
	toRet->m_velocityMult = x_simd_zero;
	toRet->m_pressureMult = x_simd_zero;
	
	toRet->m_velocityIScale = x_simd_zero;
	toRet->m_pressureIScale = x_simd_zero;
	toRet->m_velocityIMult = x_simd_zero;
	toRet->m_pressureIMult = x_simd_zero;
	
	toRet->accelerator = ACCEL_CPU;
	
	toRet->m_pressureAccuracy = 4;
	toRet->m_viscosityAccuracy = 4;
	
	toRet->m_outStyle = FLUID_OUT_DENSITY;
	
	toRet->flags = FLUID_DENSITY;
	
	int i;
	for (i=0; i<TIME_TOTAL; i++)
		toRet->m_times[i] = 0;
	
	return toRet;
}

void fluidVideoIVelocityScale(fluid *f, x128f in_s)
{
	f->m_velocityIScale = in_s;
}

void fluidVideoIPressureScale(fluid *f, x128f in_s)
{
	f->m_pressureIScale = in_s;
}

void fluidVideoIVelocityMultiply(fluid *f, x128f in_s)
{
	f->m_velocityIMult = in_s;
}

void fluidVideoIPressureMultiply(fluid *f, x128f in_s)
{
	f->m_pressureIMult = in_s;
}

void fluidVideoVelocityMultiply(fluid *f, x128f in_s)
{
	f->m_velocityMult = in_s;
}

void fluidVideoPressureMultiply(fluid *f, x128f in_s)
{
	f->m_pressureMult = in_s;
}

void fluidVideoDensityScale(fluid *f, x128f in_s)
{
	f->m_densityScale = in_s;
}

void fluidVideoVelocityScale(fluid *f, x128f in_s)
{
	f->m_velocityScale = in_s;
}

void fluidVideoPressureScale(fluid *f, x128f in_s)
{
	f->m_pressureScale = in_s;
}

void fluidAdvance(fluid *in_f)
{
	if (in_f->accelerator == ACCEL_CPU)
		fluidAdvance_cpu(in_f);
	else if (in_f->accelerator == ACCEL_GPU)
		fluidAdvance_gpu(in_f);
}

void fluidSetViscosity(fluid *f, float in_v)
{
	f->m_viscosity = in_v;
}


void fluidSetVorticity(fluid *f, float in_v)
{
	f->m_vorticity = in_v;
}

void fluidSetTimestep(fluid *f, float in_v)
{
	f->m_timestep = in_v;
}

void fluidSetDensityFade(fluid *f, float in_v)
{
	f->m_fadeDens = in_v;
}

void fluidSetVelocityFade(fluid *f, float in_v)
{
	f->m_fadeVel = in_v;
}

void fluidSetGravityVector(fluid *f, float x, float y)
{
	f->m_gravityX = x;
	f->m_gravityY = y;
}

void fluidSetGravityMagnitude(fluid *f, float v)
{
	f->m_gravity = v;
}

void fluidSetTemperatureMagnitude(fluid *f, float v)
{
	f->m_heatSpeed = v;
}


void fluidSetPressureAccuracy(fluid *f, float v)
{
	f->m_pressureAccuracy = v;
}

void fluidSetViscosityAccuracy(fluid *f, float v)
{
	f->m_viscosityAccuracy = v;
}

void fluidFreeSurfaceNone(fluid *f)
{
	f->flags = (f->flags & (~FLUID_SIMPLEFREE));
}

void fluidFreeSurfaceSimple(fluid *f)
{
	f->flags = (f->flags | FLUID_SIMPLEFREE);
}


void fluidVorticityQuick(fluid *f)
{
	f->flags = (f->flags | FLUID_QUICK_VORTICTY);
}

void fluidVorticityAccurate(fluid *f)
{
	f->flags = (f->flags & (~FLUID_QUICK_VORTICTY));
}

void fluidEnableTimers(fluid *f)
{
	f->flags = (f->flags | FLUID_TIMERS);
}

void fluidDisableTimers(fluid *f)
{
	f->flags = (f->flags & (~FLUID_TIMERS));
}

void fluidEnableDensity(fluid *f)
{
	f->flags = (f->flags | FLUID_DENSITY);
}

void fluidDisableDensity(fluid *f)
{
	f->flags = (f->flags & (~FLUID_DENSITY));
}

field *fluidDensity(fluid *in_f)
{
	return in_f->r_density;
}

field *fluidMovedDensity(fluid *in_f)
{
	return in_f->r_density_swap;
}

field *fluidVelocityX(fluid *in_f)
{
	return in_f->r_velocityX;
}

field *fluidVelocityY(fluid *in_f)
{
	return in_f->r_velocityY;
}

float fluidAdvectionTime(fluid *f)
{
	return (float)f->m_times[TIME_ADVECTION]/1000000.0f;
}

float fluidPressureTime(fluid *f)
{
	return (float)f->m_times[TIME_PRESSURE]/1000000.0f;
}

float fluidViscosityTime(fluid *f)
{
	return (float)f->m_times[TIME_VISCOSITY]/1000000.0f;
}

float fluidVorticityTime(fluid *f)
{
	return (float)f->m_times[TIME_VORTICITY]/1000000.0f;
}

float fluidThreadSchedulerTime(fluid *f)
{
	return (float)f->m_times[TIME_TASKSCHED]/1000000.0f;
}

field *fluidVideoOut(fluid *in_f)
{
	return in_f->r_vidOutput;
}

void fluidEnableCPU(fluid *in_f)
{
	in_f->accelerator = ACCEL_CPU;
}

void fluidEnableCL(fluid *in_f)
{
	in_f->accelerator = ACCEL_GPU;
}


void fluidVideoVelocityOutSize(fluid *f, int w, int h)
{
	f->m_velWidth = w;
	f->m_velHeight = h;
}

int fluidWidth(fluid *in_f)
{
	return fieldWidth(in_f->r_density);
}

int fluidHeight(fluid *in_f)
{
	return fieldHeight(in_f->r_density);
}

void fluidSetOutStyle(fluid *in_f, int vs)
{
	in_f->m_outStyle = vs;
}

void fluidSetTemperatureGradient(fluid *in_f, u128f *gradient)
{
	in_f->m_tempGrad = gradient;
}

