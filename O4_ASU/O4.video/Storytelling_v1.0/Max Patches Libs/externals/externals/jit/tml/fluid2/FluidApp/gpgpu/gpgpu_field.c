/*
 *  gpgpu_field.c
 *  FluidApp
 */

#include "gpgpu_pvt.h"
#include <string.h>

#ifdef MP_OPENCL

void GPUFieldOnRelease(void *in_o)
{
	GPUField *o = (GPUField*)in_o;
	
	if (o->r_handle)
		clReleaseMemObject(o->r_handle);
}

GPUField *GPUFieldCreate_pvt(int in_width, int in_height, int in_planes,
							float *in_data, int in_strideY)
{
	cl_context c = GPGPU_OpenCLContext_pvt();
	
	GPUField *ret = x_malloc(sizeof(GPUField), GPUFieldOnRelease);
	memset(ret, 0, sizeof(GPUField));
	
	cl_mem_flags flags = CL_MEM_READ_WRITE;
	if (in_data)
		flags |= CL_MEM_USE_HOST_PTR;
	
	cl_image_format cl_if;
	memset(&cl_if, 0, sizeof(cl_image_format));
	
	if (in_planes == 1 && in_width % 4 == 0)
	{
		in_width /= 4;
		cl_if.image_channel_order = CL_RGBA;
	}
	else if (in_planes == 2 && in_width % 2 == 0)
	{
		in_width /= 2;
		cl_if.image_channel_order = CL_RGBA;
	}
	else if (in_planes == 4)
		cl_if.image_channel_order = CL_RGBA;
	else
		errorRaise(error_create, "Unable to create object with %i planes", in_planes);
	cl_if.image_channel_data_type = CL_HALF_FLOAT;
	
	cl_int err;
	ret->r_handle = clCreateImage2D(c, flags, &cl_if,
									in_width, in_height, in_strideY,
									in_data, &err);
	
	ret->m_width = in_width;
	ret->m_height = in_height;
	
	errorAssert(err == CL_SUCCESS, error_create, "Failed creating image (%i)",err);
	
	return ret;
}

GPUField *GPUFieldCreate(int in_width, int in_height, int in_planes)
{
	return GPUFieldCreate_pvt(in_width, in_height, in_planes, NULL, 0);
}

GPUField *GPUFieldCreateFromField(field *in_field)
{
	errorAssert(!fieldIsCharData(in_field), error_create, "Unsupported data type");
	errorAssert(fieldComponents(in_field)*sizeof(float) == fieldStrideX(in_field),
				error_create, "Data in rows must be packed!");
	return GPUFieldCreate_pvt(	fieldWidth(in_field),
								fieldHeight(in_field),
								fieldComponents(in_field),
								fieldData(in_field),
								fieldStrideY(in_field));
}


#else


GPUField *GPUFieldCreate(int in_width, int in_height, int in_planes)
{
	return NULL;
}

GPUField *GPUFieldCreateFromField(field *in_field)
{
	return NULL;
}


#endif
