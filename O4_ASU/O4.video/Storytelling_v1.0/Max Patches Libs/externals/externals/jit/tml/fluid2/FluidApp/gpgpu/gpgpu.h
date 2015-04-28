/*
 *  gpgpu.h
 *  FluidApp
 *
 *  A series of wrappers to abstract away OpenCL and add in a few little routines
 *	for loading external files, and the such + simplify the entire process.
 */

#ifndef GPGPU_H
#define GPGPU_H

#include "field.h"

typedef struct GPUField GPUField;		//Used to connect fields
typedef struct GPUProgram GPUProgram;	//Used to do computes on fields

//Initialize the GPGPU subsystem (if needed)
void GPGPU_Init();

//Stop the GPGPU subsystem (if needed)
void GPGPU_Stop();

//Call each frame!
void GPGPU_Finish();

//Utilities to the images	(returns NULL if not supported)
GPUField *GPUFieldCreate(int in_width, int in_height, int in_planes);
GPUField *GPUFieldCreateFromField(field *in_field);


//Utilities to the programs	(returns NULL if not supported)
#define GPUPROGRAM_FROM_FILE	0x00000001
GPUProgram *GPUProgramCreate(char *in_szSource, unsigned int in_flags);

// Push parameters to the program...
void GPUProgramPushField(GPUProgram *p, GPUField *f);
void GPUProgramPushFloat(GPUProgram *p, float f);

//Executes the given program using width/height kernel
void GPUProgramExecute(GPUProgram *p, GPUField *d);

#endif

