//
//  FSCPUCore.m
//  CocoaGame
//

#import "FSCPUCore.h"
#import <Foundation/Foundation.h>

////////////////////////////////////////////////////////////////////////////////
//
//		UTILITY CODE FOR DEALING WITH STRUCT
//
FSStreamDesc FSStreamDescMakeCharacter2D(unsigned char *data, unsigned char*defaults, int strideX, int strideY, int width, int height, int components)
{
	FSStreamDesc toRet = {0, 0, strideX, strideY, width, height, components, FSCPU_Type_Character2D};
	toRet.data.c = data;
	toRet.defaults.c = defaults;
	return toRet;
}

FSStreamDesc FSStreamDescMakeFloat2D(float *data,float*defaults, int strideX, int strideY, int width, int height, int components)
{
	FSStreamDesc toRet = {0, 0,strideX, strideY, width, height, components, FSCPU_Type_Float2D};
	toRet.data.f = data;
	toRet.defaults.f = defaults;
	return toRet;
}


////////////////////////////////////////////////////////////////////////////////
//
//		STANDARD ADVECTION FROM STAM
//


#import "FSMacros.h"

#include "FSCPUStam.h"
#include "FSCPUMacCormack.h"
