/*
 *  gpgpu_pvt.h
 *  FluidApp
 *
 */

#include "gpgpu.h"
#include "error.h"
#include "memory.h"

#ifdef MP_OPENCL
#include <OpenCL/cl.h>

struct GPUField
{
	cl_mem r_handle;
	
	int m_width;
	int m_height;
};

struct GPUProgram
{
	cl_program	r_binary;		//Binary (program)
	cl_kernel	r_execution;	//Execution environment (kernels, etc.)
	
	float m_floats[4];			//Floating-point arguments...
	int m_float;				//Current floating-point argument
	int m_arg;					//Current argument that we're modifying
};

//Interop functions
cl_context GPGPU_OpenCLContext_pvt();
cl_device_id GPGPU_OpenCLDevice_pvt();
cl_command_queue GPGPU_OpenCLCommandQueue_pvt();

#endif
