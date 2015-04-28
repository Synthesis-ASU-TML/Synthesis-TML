/*
 *  fluid_gpu.c
 *  FluidApp
 */

#include "fluid_pvt.h"
#include <stdlib.h>


GPUField *fluidGPUSwapBuffer(fluid *f, GPUField *in_field)
{
	GPUField *out_field = f->gpu_tmp1[f->gpu_curBuffer];
	f->gpu_tmp1[f->gpu_curBuffer] = in_field;
	
	f->gpu_curBuffer = f->gpu_curBuffer + 1;
	if (f->gpu_curBuffer >= GPU_BUFFERS)
		f->gpu_curBuffer = 0;
	
	return out_field;
}


void fluidGPUViscosity(fluid *f, int in_iter)
{
	int x;
	for (x=0; x<in_iter; x++)
	{
		GPUProgramPushField(f->gpu_fn_viscosity, f->gpu_velocityX);
		
		f->gpu_velocityX = fluidGPUSwapBuffer(f, f->gpu_velocityX);
		GPUProgramPushField(f->gpu_fn_viscosity, f->gpu_velocityX);
		
		GPUProgramPushFloat(f->gpu_fn_viscosity, (1.0f / f->m_viscosity) * f->m_timestep);
		GPUProgramPushFloat(f->gpu_fn_viscosity, (1.0f / (1.0f/f->m_viscosity) * f->m_timestep + 4.0f));
		
		GPUProgramExecute(f->gpu_fn_viscosity, f->gpu_velocityX);
		
		
		GPUProgramPushField(f->gpu_fn_viscosity, f->gpu_velocityY);
		
		f->gpu_velocityX = fluidGPUSwapBuffer(f, f->gpu_velocityY);
		GPUProgramPushField(f->gpu_fn_viscosity, f->gpu_velocityY);
		
		GPUProgramPushFloat(f->gpu_fn_viscosity, (1.0f / f->m_viscosity) * f->m_timestep);
		GPUProgramPushFloat(f->gpu_fn_viscosity, (1.0f / (1.0f/f->m_viscosity) * f->m_timestep + 4.0f));
		
		GPUProgramExecute(f->gpu_fn_viscosity, f->gpu_velocityY);
	}
}


void fluidGPUViscosity_xy(fluid *f, int in_iter)
{
	int x;
	for (x=0; x<in_iter; x++)
	{
		GPUProgramPushField(f->gpu_fn_viscosity_xy, f->gpu_velocityX);
		
		f->gpu_velocityX = fluidGPUSwapBuffer(f, f->gpu_velocityX);
		GPUProgramPushField(f->gpu_fn_viscosity_xy, f->gpu_velocityX);
		
		GPUProgramPushField(f->gpu_fn_viscosity_xy, f->gpu_velocityY);
		
		f->gpu_velocityY = fluidGPUSwapBuffer(f, f->gpu_velocityY);
		GPUProgramPushField(f->gpu_fn_viscosity_xy, f->gpu_velocityY);
		
		GPUProgramPushFloat(f->gpu_fn_viscosity_xy, (1.0f / f->m_viscosity) * f->m_timestep);
		GPUProgramPushFloat(f->gpu_fn_viscosity_xy, (1.0f / (1.0f/f->m_viscosity) * f->m_timestep + 4.0f));
		
		GPUProgramExecute(f->gpu_fn_viscosity_xy, f->gpu_velocityX);
		
	}
}


void fluidGPUPressure(fluid *f, int in_iter)
{
	int x;
	for (x=0; x<in_iter; x++)
	{	
		GPUProgramPushField(f->gpu_fn_pressure, f->gpu_pressure);
		GPUProgramPushField(f->gpu_fn_pressure, f->gpu_velocityX);
		GPUProgramPushField(f->gpu_fn_pressure, f->gpu_velocityY);
		
		f->gpu_pressure = fluidGPUSwapBuffer(f, f->gpu_pressure);
		GPUProgramPushField(f->gpu_fn_pressure, f->gpu_pressure);
		GPUProgramExecute(f->gpu_fn_pressure, f->gpu_pressure);
	}
}


void fluidGPUAdvection(fluid *f)
{
	GPUProgramPushField(f->gpu_fn_advection, f->gpu_velocityX);
	GPUProgramPushField(f->gpu_fn_advection, f->gpu_velocityY);
	
	f->gpu_velocityX = fluidGPUSwapBuffer(f, f->gpu_velocityX);
	f->gpu_velocityY = fluidGPUSwapBuffer(f, f->gpu_velocityY);
	
	GPUProgramPushField(f->gpu_fn_advection, f->gpu_velocityX);
	GPUProgramPushField(f->gpu_fn_advection, f->gpu_velocityY);
	
	GPUProgramPushFloat(f->gpu_fn_advection, -f->m_timestep);
	GPUProgramExecute(f->gpu_fn_advection, f->gpu_velocityX);
}


void fluidAdvance_gpu(fluid *f)
{
	//On fail return to working implementation...
	if (f->gpu_fn_advection == NULL)
	{
		fluidAdvance_cpu(f);
		return;
	}
	
	//Now; do the work as expected except on the GPU
	fluidGPUViscosity_xy(f, 10);
	fluidGPUPressure(f, 10);
	fluidGPUAdvection(f);
	
	GPGPU_Finish();
	
}
