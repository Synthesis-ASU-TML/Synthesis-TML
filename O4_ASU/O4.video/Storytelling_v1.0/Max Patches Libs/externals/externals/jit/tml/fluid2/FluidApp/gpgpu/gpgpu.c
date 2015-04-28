/*
 *  gpgpu.c
 *  FluidApp
 */

#include "gpgpu_pvt.h"
#include <stdio.h>
#include <string.h>

#ifdef MP_OPENCL
typedef struct
{
	cl_context r_context;
	cl_device_id r_device;
	cl_command_queue r_commQueue;
} GPGPU_pvt;

static GPGPU_pvt *g_gpu = NULL;

cl_context GPGPU_OpenCLContext_pvt()
{
	errorAssert(g_gpu != NULL, error_flags, "Call GPGPU_Init() first!");

	return g_gpu->r_context;
}

cl_device_id GPGPU_OpenCLDevice_pvt()
{
	errorAssert(g_gpu != NULL, error_flags, "Call GPGPU_Init() first!");
	
	return g_gpu->r_device;
}

cl_command_queue GPGPU_OpenCLCommandQueue_pvt()
{
	errorAssert(g_gpu != NULL, error_flags, "Call GPGPU_Init() first!");
	
	return g_gpu->r_commQueue;
}

void GPGPU_Finish()
{
	cl_int err = clFinish(g_gpu->r_commQueue);
	errorAssert(err == CL_SUCCESS, error_create, "Failed finishing command: %i", err);
}

void GPGPU_OnFree(void *o)
{
	errorAssert(o == g_gpu, error_flags, "Consistent-check failed!");
	
	if (g_gpu->r_context)
	{
		clReleaseContext(g_gpu->r_context);
	}
	
	if (g_gpu->r_commQueue)
	{
		clReleaseCommandQueue(g_gpu->r_commQueue);
	}
	
	g_gpu = NULL;
}

void gpgpuNotifyOpenCL(const char *errinfo,
				   const void *private_info, size_t cb, void *user_data)
{
	printf(" -> OpenCL error: %s\n", errinfo);
}

void GPGPU_Init()
{
	errorAssert(g_gpu == NULL, error_create, "GPGPU_Init called twice!");
	
	g_gpu = x_malloc(sizeof(GPGPU_pvt), GPGPU_OnFree);
	memset(g_gpu, 0, sizeof(g_gpu));
	
	cl_uint cGPU = 0;
	int err = clGetDeviceIDs(NULL, CL_DEVICE_TYPE_GPU, 1, &g_gpu->r_device, &cGPU);
	
	errorAssert(err == CL_SUCCESS, error_create, "Failed querying OpenCL for GPUs");
	
	if (cGPU == 0)
	{
		printf("Warning: OpenCL-ready GPU not found - falling back to CPU!\n");
		err = clGetDeviceIDs(NULL, CL_DEVICE_TYPE_ALL, 1, &g_gpu->r_device, &cGPU);
		
		errorAssert(err == CL_SUCCESS, error_create, "Failed querying OpenCL for CUs");
		errorAssert(cGPU > 0, error_create, "No compute units found!");
	}
	
	cl_uint numCU;
	char szData[1024];
	printf("OpenCL device information:\n");
	err = clGetDeviceInfo(g_gpu->r_device, CL_DEVICE_MAX_COMPUTE_UNITS,
							sizeof(numCU), &numCU, NULL);
	errorAssert(err == CL_SUCCESS, error_create, "Failed # of compute units!");
	printf(" - %i compute units max\n", (int)numCU);
	
	err = clGetDeviceInfo(g_gpu->r_device, CL_DEVICE_NAME,
							1024, szData, NULL);
	errorAssert(err == CL_SUCCESS, error_create, "Failed querying device name!");
	printf(" - name: %s\n", szData);
	
	err = clGetDeviceInfo(g_gpu->r_device, CL_DEVICE_VENDOR, 1024, szData, NULL);
	errorAssert(err == CL_SUCCESS, error_create, "Failed querying vendor name!");
	printf(" - vendor: %s\n", szData);
	
	err = clGetDeviceInfo(g_gpu->r_device, CL_DEVICE_VERSION, 1024, szData, NULL);
	errorAssert(err == CL_SUCCESS, error_create, "Failed querying device version!");
	printf(" - version: %s\n", szData);
	
	size_t wg_size;
	err = clGetDeviceInfo(g_gpu->r_device, CL_DEVICE_MAX_WORK_GROUP_SIZE,
							sizeof(wg_size), &wg_size, NULL);
	errorAssert(err == CL_SUCCESS, error_create, "Failed querying max work-group size");
	printf(" - max work-group size: %i\n", (int)wg_size);
	
	cl_ulong max_alloc;
	err = clGetDeviceInfo(g_gpu->r_device, CL_DEVICE_MAX_MEM_ALLOC_SIZE,
							sizeof(max_alloc), &max_alloc, NULL);
	errorAssert(err == CL_SUCCESS, error_create, "Failed querying max alloc size");
	printf(" - max alloc size: %iMiB\n", (int)(max_alloc/(1024*1024)));
	
	cl_bool imgSupport;
	err = clGetDeviceInfo(g_gpu->r_device, CL_DEVICE_IMAGE_SUPPORT,
							sizeof(imgSupport), &imgSupport, NULL);
	errorAssert(err == CL_SUCCESS, error_create, "Failed querying image support");
	printf(" - supports images: %i\n", (int)imgSupport);
	
	err = clGetDeviceInfo(g_gpu->r_device, CL_DEVICE_EXTENSIONS,
							1024, szData, NULL);
	errorAssert(err == CL_SUCCESS, error_create, "Failed querying device exts!");
	printf(" - extensions: %s\n", szData);
	
	g_gpu->r_context = clCreateContext(NULL, 1, &g_gpu->r_device,
										gpgpuNotifyOpenCL, NULL, &err);
	errorAssert(err == CL_SUCCESS, error_create, "Failed creating context!");
	
	g_gpu->r_commQueue = clCreateCommandQueue(g_gpu->r_context,
											g_gpu->r_device,
											0, &err);
	errorAssert(err == CL_SUCCESS, error_create, "Failed creating command queue!");
}


void GPGPU_Stop()
{
	errorAssert(g_gpu != NULL, error_create, "GPGPU_Init must be called first!");
	
	x_free(g_gpu);
}


#else

static int didInit = 0;

void GPGPU_Finish()
{
}

void GPGPU_Init()
{
	errorAssert(didInit == 0, error_create, "GPGPU_Init called twice!");
	didInit = 1;
}

void GPGPU_Stop()
{
	errorAssert(didInit == 1, error_create, "GPGPU_Init must be called first!");
	didInit = 0;
}

#endif
