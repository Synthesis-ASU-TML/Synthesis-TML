//
//  FSCPUCore.h
//  CocoaGame
//


/**
 *	This particular piece of code does the general stuff.  AKA, this is the
 *	library that the CPU code calls to get the work done.
 *
 *	There are raging debates in my head as to allow Objective-C or not.  However,
 *	the level of the runtime needed to use Objective-C on other platforms is
 *	not exagerated - so I'll use it...
 */


#include <libkern/OSAtomic.h>

/**
	The reason that there is a stream description as a C struct is that looping
	over this is quicker than always doing OBJ-C calls all over the place.
 
	The other option is to add the obj-c to array bridge within the functions,
	which adds a useless layer of complexity to this code...
 */
#define FSCPU_Type_Character2D		1
#define FSCPU_Type_Float2D			2
typedef struct
{
	//The data that we're dealing with
	union
	{
		float *f;
		unsigned char *c;
	} data;
	
	//The default values for said data (needed for collisions)
	union  {
		float *f;
		unsigned char *c;
	} defaults;
	
	//How to iterate over the data
	int strideX;
	int strideY;
	
	//How much data do we have?
	int width;
	int height;
	
	//How many components do we have?
	//	- Specify and use in all cases
	int components;
	
	//Type type of stream that this is... (int for alignment)
	int type;
} FSStreamDesc;

/** Utility function to quickly/easily create one of these structures... */
FSStreamDesc FSStreamDescMakeCharacter2D(unsigned char *data, unsigned char*defaults, int strideX, int strideY, int width, int height, int components);
FSStreamDesc FSStreamDescMakeFloat2D(float *data, float*defaults, int strideX, int strideY, int width, int height, int components);

/*
	The most important function is advection.  Again, as usual for me,
	performance is of utmost importance.  This means trying to reduce
	what happens in the main loop...
 
	Seperate list for in/out streams to be advected.
 */
void FSCPU_Advection_Backward(FSStreamDesc field, FSStreamDesc collisions,
							FSStreamDesc *advectionIn, FSStreamDesc *advectionOut,
							  int numStreams, float timestep, int32_t *atomic);

void FSCPU_Advection_Backward_NoWrap(FSStreamDesc field, FSStreamDesc collisions,
							  FSStreamDesc *advectionIn, FSStreamDesc *advectionOut,
							  int numStreams, float timestep, int32_t *atomic);

void FSCPU_Advection_Backward_NearestNeighbor(FSStreamDesc field, FSStreamDesc collisions,
									 FSStreamDesc *advectionIn, FSStreamDesc *advectionOut,
									 int numStreams, float timestep, int32_t *atomic);

void FSCPU_Advection_Backward_NoWrap_NearestNeighbor(FSStreamDesc field, FSStreamDesc collisions,
									 FSStreamDesc *advectionIn, FSStreamDesc *advectionOut,
									 int numStreams, float timestep, int32_t *atomic);

/*
	Simple predictor-corrector for advection.  This is required for getting
	more accurate results...
 
	advField is the advected field (predictor/corrector - recall!)
 
	Usually, we run this AFTER FSCPU_Advection_Backward.  New output is
	advectionFix.
 
	The rest is the same inputs to FSCPU_Advection_Backward...
 */
void FSCPU_Advection_MacCormack(FSStreamDesc field, FSStreamDesc advField, 
								FSStreamDesc collisions,
								FSStreamDesc *advectionIn, FSStreamDesc *advectionOut,
								FSStreamDesc *advectionFix,
								int numStreams, float timestep, int32_t *atomic);

void FSCPU_Advection_MacCormack_NoWrap(FSStreamDesc field, FSStreamDesc advField, 
								FSStreamDesc collisions,
								FSStreamDesc *advectionIn, FSStreamDesc *advectionOut,
								FSStreamDesc *advectionFix,
								int numStreams, float timestep, int32_t *atomic);

void FSCPU_Advection_MacCormack_NearestNeighbor(FSStreamDesc field, FSStreamDesc advField, 
								FSStreamDesc collisions,
								FSStreamDesc *advectionIn, FSStreamDesc *advectionOut,
								FSStreamDesc *advectionFix,
								int numStreams, float timestep, int32_t *atomic);

void FSCPU_Advection_MacCormack_NoWrap_NearestNeighbor(FSStreamDesc field, FSStreamDesc advField, 
								FSStreamDesc collisions,
								FSStreamDesc *advectionIn, FSStreamDesc *advectionOut,
								FSStreamDesc *advectionFix,
								int numStreams, float timestep, int32_t *atomic);
