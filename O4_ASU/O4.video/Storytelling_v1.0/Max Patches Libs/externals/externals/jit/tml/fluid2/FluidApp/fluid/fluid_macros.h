/*
 *  fluid_macros.h
 *  FluidApp
 */

#ifndef FLUID_MACROS_H
#define FLUID_MACROS_H

// Concatenation of two macros	(make sure preprocessor works as expected)
#define FSConcatReal(a,b) a ## b
#define FSConcat(a,b) FSConcatReal(a,b)

//	Linear interpolation of character data
#define chInterpolation(sx,sy,zz,oz,zo,oo)	\
clampC(LinearInterpolation(sx,sy,zz,oz,zo,oo))

//Linear interpolation of arrays.
#define ArrayLInterpolation(sx,sy,a,base,dx,dy)	\
LinearInterpolation(sx,sy,a[base],a[base+dx],a[base+dy],a[base+dx+dy])

//Same for character data
#define chALInterpolation(sx,sy,a,base,dx,dy) \
clampC(ArrayLInterpolation(sx,sy,a,base,dx,dy))

//Easy way to read "Minimum"
#define Smallest(a,b)	((a)<(b)?(a):(b))
#define Largest(a,b)	((a)>(b)?(a):(b))

//Minimum of a quad (4-blocks)
#define QSmallest(a,b,c,d)	Smallest(Smallest(a,b),Smallest(c,d))
#define QLargest(a,b,c,d)	Largest(Largest(a,b),Largest(c,d))

//What if in array?
#define QASmallest(arr,base,dx,dy) \
QSmallest(arr[base],arr[base+dx],arr[base+dy],arr[base+dx+dy])
#define QALargest(arr,base,dx,dy) \
QLargest(arr[base],arr[base+dx],arr[base+dy],arr[base+dx+dy])

//Clamping is always good...
#define Clamp(a,min,max)	Smallest(max, Largest(a,min))

//Divergence (array to look into, base, stride)
#define Divergence1(array, base, stride)	\
(array[base+stride] - array[base-stride])
#define Divergence2(array, base, stride1, stride2) \
(Divergence1(array,base,stride1) + Divergence1(array,base+1,stride2))
#define Divergence3(array, base, s1, s2, s3) \
(Divergence2(array,base,s1,s2) + Divergence1(array,base+2,s3))

//Utility to get a pointer offseted by characters...
#define FSFloatPtrOffset(base, offset) \
((float*)(((char*)base) + (offset)))

//Again, interpolation, but the indices are inside of ptrs.
//Two versions: 1 for floats, 1 for characters
#define FSFloatArrayLinearInterpolation(base, sx, sy, zz, oz, zo, oo,c) \
LinearInterpolation(sx, sy,	\
FSFloatPtrOffset(base, zz)[c], \
FSFloatPtrOffset(base, oz)[c], \
FSFloatPtrOffset(base, zo)[c], \
FSFloatPtrOffset(base, oo)[c] )

#define FSFloatDataLinearInterpolation(base, sx, sy, strideX, strideY, x1, y1, x2, y2,c) \
FSFloatArrayLinearInterpolation(base, sx, sy, \
x1*strideX + y1*strideY,			\
x2*strideX + y1*strideY,			\
x1*strideX + y2*strideY,			\
x2*strideX + y2*strideY,c)

#define FSCharacterDataLinearInterpolationNoClamp(base, sx, sy, strideX, strideY, x1, y1, x2, y2, c) \
(LinearInterpolation(sx, sy, \
base[x1*strideX + y1*strideY + c], \
base[x2*strideX + y1*strideY + c], \
base[x1*strideX + y2*strideY + c], \
base[x2*strideX + y2*strideY + c] ))

#define FSCharacterDataLinearInterpolation(base, sx, sy, strideX, strideY, x1, y1, x2, y2, c) \
Clamp(FSCharacterDataLinearInterpolationNoClamp(base,sx,sy,strideX,strideY,x1,y1,x2,y2,c)+0.5f,0,255)

//Minimum/maximum within a rectangle...
#define FSCharacterMinimum(base, strideX, strideY, x1, y1, x2, y2, c) \
QSmallest(base[x1*strideX + y1*strideY + c], \
base[x1*strideX + y2*strideY + c], \
base[x2*strideX + y1*strideY + c], \
base[x2*strideX + y2*strideY + c])

#define FSCharacterMaximum(base, strideX, strideY, x1, y1, x2, y2, c) \
QLargest(base[x1*strideX + y1*strideY + c], \
base[x1*strideX + y2*strideY + c], \
base[x2*strideX + y1*strideY + c], \
base[x2*strideX + y2*strideY + c])

#define FSFloatMinimum(base, strideX, strideY, x1, y1, x2, y2, c) \
QSmallest(FSFloatPtrOffset(base,x1*strideX + y1*strideY)[c], \
FSFloatPtrOffset(base,x1*strideX + y2*strideY)[c], \
FSFloatPtrOffset(base,x2*strideX + y1*strideY)[c], \
FSFloatPtrOffset(base,x2*strideX + y2*strideY)[c])


#define FSFloatMaximum(base, strideX, strideY, x1, y1, x2, y2, c) \
QLargest(FSFloatPtrOffset(base,x1*strideX + y1*strideY)[c], \
FSFloatPtrOffset(base,x1*strideX + y2*strideY)[c], \
FSFloatPtrOffset(base,x2*strideX + y1*strideY)[c], \
FSFloatPtrOffset(base,x2*strideX + y2*strideY)[c])					


////////////////////////////////////////////////////////////////////////////////
//
//	These macros allow me to change the algorithm at various parts of the
//	program by simply altering how they work...
//
////////////////////////////////////////////////////////////////////////////////

#undef LinearInterpolation

#ifdef FSInterpolation_NearestNeighbor

//Nearest neighbor interpolation.  We pick the neighbor that is the
//closest, and work with that.
#define LinearInterpolation(sx,sy,zz,oz,zo,oo)		\
((sx < 0.5f) ? (sy<0.5f ? zz:zo) : (sy < 0.5f ? oz:oo))

#else
//	Linear Interpolation used all over the place.
//		- sx/sy values between 0 and 1 (coordinates in the grid)
//		-	zz oz
//		-	zo oo
#define LinearInterpolation(sx,sy,zz,oz,zo,oo)		\
((1-sy)	* ((1-sx) * zz + sx*oz)		\
+ sy	* ((1-sx) * zo + sx*oo))
#endif


#ifdef FSWrap_Clamp
//Rather than wrap... CLAMP!!!!
#define FSWrap(value, scale, width) Clamp(value,0,width-1)
#define FSWrapPlus1(value, plus1, scale, width) \
int plus1 = Clamp(value+1,0,width-1)
#else
//Naive wrapping functions...
//	- Value we wish to wrap (integer)
//	- The scale (floating point) of value.
//	- The width. (integer)
//eg. backX = -3.7, then nBackX = -3, therefore scaleX = -0.7 (backX - nBackX)
//		
#define FSWrap(value, scale, width)	\
if (scale < 0 || value < 0)	{ scale = 1+scale; value = (width-1) - ((-value)%(width)); } \
else value = (value)%(width)

#define FSWrapPlus1(value, plus1, scale, width) \
int plus1 = (value + 1)%(width)
#endif

#endif
