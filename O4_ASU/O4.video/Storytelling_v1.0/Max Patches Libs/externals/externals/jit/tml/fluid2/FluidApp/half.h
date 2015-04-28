/*
 *  half.h
 *  FluidApp
 *
 */

#ifndef HALF_H
#define HALF_H

typedef unsigned short float16;

//Convert a float to a half-float  (scalar)
float16 float2half(float in_float);

//Convert a half-float to a float  (scalar)
float half2float(float16 in_half);

//Output the data in a very legible way to stdout
void half2bin(float16 in_half);
void float2bin(float in_float);

#endif
