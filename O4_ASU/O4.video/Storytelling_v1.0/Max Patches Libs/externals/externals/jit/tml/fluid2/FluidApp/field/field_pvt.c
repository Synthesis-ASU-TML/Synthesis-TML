/*
 *  field_pvt.c
 *  FluidApp
 */

#include "field_pvt.h"
#include "memory.h"
#include "half.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

void fieldFree(void *in_o)
{
	field *in_f = (field*)in_o;
	
	if (in_f->r_data.f && (in_f->m_flags & Field_NoRelease) == 0)
		free(in_f->r_data.f);
}



field *fieldFromFloatData(float *in_data, int in_width, int in_height,
						  int in_strideX, int in_strideY,
						  int in_components)
{
	field *toRet = x_malloc(sizeof(field), fieldFree);
	
	toRet->r_data.f = in_data;
	if (toRet->r_data.f == NULL)
	{
		errorRaise(error_memory, "Failed creating field data");
	}
	
	toRet->m_width = in_width;
	toRet->m_height = in_height;
	toRet->m_components = in_components;
	
	toRet->m_strideX = in_strideX;
	toRet->m_strideY = in_strideY;
	
	toRet->m_flags = Field_NoRelease;
	
	return toRet;
}


field *fieldCreate(int in_width, int in_height, int in_components)
{
	int numData = in_width * in_height * in_components * sizeof(float);
	
	field *toRet = fieldFromFloatData(malloc128(numData),	in_width, in_height,
									  in_components * sizeof(float),
									  in_components * sizeof(float)*in_width,
									  in_components);
	
	toRet->m_flags = 0;
	
	memset(toRet->r_data.i, 1, numData);
	memset(toRet->r_data.i, 0, numData);
	
	toRet->m_allocatedBytes = numData;
	
	return toRet;
}


field *fieldFromCharData(unsigned char *in_data, int in_width, int in_height,
						  int in_strideX, int in_strideY,
						  int in_components)
{
	field *toRet = x_malloc(sizeof(field), fieldFree);
	
	toRet->r_data.c = in_data;
	if (toRet->r_data.c == NULL)
	{
		errorRaise(error_memory, "Failed creating field data");
	}
	
	toRet->m_width = in_width;
	toRet->m_height = in_height;
	toRet->m_components = in_components;
	
	toRet->m_strideX = in_strideX;
	toRet->m_strideY = in_strideY;
	
	toRet->m_flags = Field_NoRelease | Field_TypeChar;
	
	return toRet;
}


field *fieldCreateChar(int in_width, int in_height, int in_components)
{
	int numData = in_width * in_height * in_components * sizeof(unsigned char);
	
	field *toRet = fieldFromCharData(malloc128(numData),	in_width, in_height,
									  in_components * sizeof(unsigned char),
									  in_components * sizeof(unsigned char)*in_width,
									  in_components);
	
	toRet->m_flags = Field_TypeChar;
	
	memset(toRet->r_data.i, 1, numData);
	memset(toRet->r_data.i, 0, numData);
	
	toRet->m_allocatedBytes = numData;
	
	return toRet;
}


void fieldResize(field *in_f, int newW, int newH)
{
	if (in_f->m_flags & Field_NoRelease)
	{
		errorRaise(error_specify, "Must own memory to resize field");
	}

	int numData = newW * newH * in_f->m_components;
	int ds;
	if (in_f->m_flags & Field_TypeChar)
		ds = sizeof(char);
	else
		ds = sizeof(float);
	
	numData *= ds;
	
	errorAssert(numData <= in_f->m_allocatedBytes, error_specify,
				"Internal buffer not large enough for %i %i grid!",
				newW, newH);
	
	in_f->m_width = newW;
	in_f->m_height = newH;
	
	in_f->m_strideY = newW * in_f->m_strideX;
}


int fieldWidth(field *in_f)
{
	return in_f->m_width;
}


int fieldHeight(field *in_f)
{
	return in_f->m_height;
}


int fieldComponents(field *in_f)
{
	return in_f->m_components;
}


int fieldIsCharData(field *in_f)
{
	return in_f->m_flags & Field_TypeChar;
}


int fieldStrideX(field *in_f)
{
	return in_f->m_strideX;
}

int fieldStrideY(field *in_f)
{
	return in_f->m_strideY;
}

float *fieldData(field *in_f)
{
	return in_f->r_data.f;
}


unsigned char *fieldCharData(field *in_f)
{
	return in_f->r_data.c;
}

