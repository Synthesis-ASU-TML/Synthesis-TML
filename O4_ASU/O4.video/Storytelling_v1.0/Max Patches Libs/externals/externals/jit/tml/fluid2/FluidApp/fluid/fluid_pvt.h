/*
 *  fluid_pvt.h
 *  FluidApp
 */

#ifndef FLUID_PVT_H
#define FLUID_PVT_H

#include "fluid.h"
#include "field.h"
#include "memory.h"
#include "gpgpu.h"

//hw specific versions of FluidAdvance (to switch used solver)
void fluidAdvance_cpu(fluid *in_f);
void fluidAdvance_gpu(fluid *in_f);

////////////////////////////////////////////////////////////////////////////////
//
//			Data passed around to the functions (so that we can use them
//			for various purposes!!)
//
//When just advecting velocity.  (Use this to create a repos matrix)
struct advection_stam_velocity
{
	// NOTE: All assume same stride and size
	field *srcVelX;
	field *srcVelY;
	field *dstVelX;
	field *dstVelY;
	
	field *dstReposX;	//For n-pt that can compute this while
	field *dstReposY;	//doing advection.
	
	//Use this to flip the timestep (from forward to backward, & vice-versa...
	float timestep;
	
	int clamp;
};

//When doing predictor-corrector (correcting velocity + build repos)
struct mccormack_vel_repos
{
	field *srcVelX;		//Source velocities
	field *srcVelY;
	
	field *dstReposX;	//Used to advect everything else once....
	field *dstReposY;
	
	//Useful...
	float timestep;
};

//Simple reposition of data...
struct repos
{
	field *reposX;		//Fields describing where to fetch data
	field *reposY;
	field *src;			//Source field
	field *dst;			//Destination field
	field *src2;
	field *dst2;
	
	float timestep;
	int clamp;			//Set to 1 to clamp
};

//Simple pressure of data...
struct pressure
{
	field *velX;		//Velocity
	field *velY;
	field *pressure;	//Pressure
	field *density;		//density (if we want free-surfaces)
};

//Simple viscosity data...
struct viscosity
{
	field *velX;
	field *velY;
	
	float alpha;		//Improved thanks to Harris
	float beta;
	
	int red;			//For red/black...
};

//Vorticity data...
struct vorticity
{
	field *z;			//Direction...
						// (note that other components become 0)
	
	field *velX;		//Used to compute curl, and apply vorticity...
	field *velY;
	
	float e;			//Simple scale
};

//Dampening data
struct dampen
{
	field *f;			//Can be any field
	float e;			//Dampening scale
};

//Video output data
struct video
{	
	field *f;			//Can be anything...	(float)
	
	field *velX;		//Other fields (that are useful...)
	field *velY;
	field *pressure;
	
	field *o;			//Must be an output matrix (char)
	
	float scale;		//Some sort of scaling factor
};

//Velocity io data
struct velocityIO
{
	field *velX;		//Internally, seperate X/Y
	field *velY;
	
	field *velIn;		//Input is x/y interlaced
	
	float scale;		//We might use this at some point....
};

//Required for temperature
struct temperature
{
	field *density;
	field *velX;
	field *velY;
	
	float upX;		//For gravity (up direction)
	float upY;
	
	float alpha;	//For temperature effects...
	float beta;
	
	float ambient;	//Ambient temperature
};

//Ensure that parameters are passed around somewhat cleanly
typedef union
{
	//When just advecting velocity.  (Use this to create a repos matrix)
	struct advection_stam_velocity advection_stam_velocity;
	
	//When doing predictor-corrector (correcting velocity + build repos)
	struct mccormack_vel_repos mccormack_vel_repos;
	
	//When doing simple repositioning
	struct repos repos;
	
	//When doing pressure (generating or applying)
	struct pressure pressure;
	
	//When applying viscuous drag
	struct viscosity viscosity;
	
	//When exagerating vorticity
	struct vorticity vorticity;
	
	//When dampening
	struct dampen dampen;
	
	//When doing video
	struct video video;
	
	struct velocityIO velocityIO;
	
	struct temperature temperature;
	
} pvt_fluidMode;

////////////////////////////////////////////////////////////////////////////////
//
//		Read-only set of data describing function pointers to the various
//		components...		(fluid object for pointers, rowID for dataset)
//
typedef void(*pvtFluidFn)(fluid *in_f, int rowID, pvt_fluidMode *mode);
typedef struct
{
	pvtFluidFn fn;			//The function itself
	pvt_fluidMode mode;		//Data for the function
	int32_t *times;			//Timing info for performance
} pvtFluidFnS __attribute__ ((aligned(16)));

#define MAX_FNS				32

#define FLUID_SIMPLEFREE		0x00000001
#define FLUID_TIMERS			0x00000002
#define FLUID_QUICK_VORTICTY	0x00000004
#define FLUID_DENSITY			0x00000008

#define TIME_ADVECTION		0
#define TIME_PRESSURE		1
#define TIME_VISCOSITY		2
#define TIME_VORTICITY		3
#define TIME_TASKSCHED		4
#define TIME_TOTAL			5

#define GPU_BUFFERS			8

#define ACCEL_CPU			0
#define ACCEL_GPU			1

////////////////////////////////////////////////////////////////////////////////
//
//		Structure defining how we use the fluid
//
struct fluid
{
	//Function pointer bases
	pvtFluidFnS m_fns[MAX_FNS];
	
	//Pointers to current buffers
	field *r_velocityX;
	field *r_velocityY;
	field *r_density;
	field *r_pressure;
	
	//Output buffers	(video-out)
	field *r_vidOutput;
	
	//The following fields can be used temporarily
	//	for a sequence of operations.
	field *r_density_swap;	//Used as a destination for densities
	
	field *r_tmpVelX;		//Temporary velocity X (advection work as Stam)
	field *r_tmpVelY;		//Temporary velocity Y (advection work as Stam)
	
	field *r_reposX;		//Used to accelerate advection (noticeable now
	field *r_reposY;		//							that data is in cache!)
	
	field *r_collision;		//Used to provide collision of some sort.
	
	u128f *m_tempGrad;		//Temperature gradient...
	
	//Used for working...
	mpCoherence *r_coherence;
	
	//Used to stall the system until an iteration completes
	mpQueue		*r_blocker;
	
	x128f		m_velocityScale;
	x128f		m_pressureScale;
	x128f		m_densityScale;
	x128f		m_velocityMult;
	x128f		m_pressureMult;
	
	x128f		m_velocityIScale;
	x128f		m_pressureIScale;
	x128f		m_velocityIMult;
	x128f		m_pressureIMult;
	
	//The type of data we hold
	int accelerator;
	
	//The viscosity		(default 1.0f)
	float m_viscosity;
	float m_vorticity;
	float m_timestep;
	
	//Temperature
	float m_gravity;		//Amount of gravity
	float m_heatSpeed;		//Impact from change in temperature
	float m_ambient;		//Ambient temperature
	float m_gravityX;
	float m_gravityY;
	
	//Fade of the velocity/density (for effects)
	float m_fadeVel;
	float m_fadeDens;
	
	//Accuracy of pressure and viscosity
	int m_pressureAccuracy;
	int m_viscosityAccuracy;
	
	//Flags (toggles for switches, and so forth)
	unsigned int flags;
	
	//Number of used functions
	int m_usedFunctions;
	
	int spawned;
	
	//Temporary buffers used as needed (we want to minimize memory footprint
	//to maximize cache usage)
	
	int m_curField;
	
	//If we want timing, we take some sort of performance penalty...
	int32_t m_times[TIME_TOTAL];
	
	//Output size
	int m_velWidth;
	int m_velHeight;
	
	//Visual style
	int m_outStyle;
	
	//GPGPU data...				//	(I/O)
	GPUField *gpu_velX_in;
	GPUField *gpu_velY_in;
	
	int gpu_curBuffer;					//	Current buffer (next to use)
	GPUField *gpu_tmp1[GPU_BUFFERS];	//	Temp buffers (rotation - 1)
	
	GPUField *gpu_velocityX;	//	Current holder of velocity data
	GPUField *gpu_velocityY;
	
	GPUField *gpu_pressure;		//	Current holder of pressure data
	
	GPUField *gpu_dens_in;		//	Density in
	GPUField *gpu_density;		//	Current density
	GPUField *gpu_dens_tmp;		//	Temporary density
	
	GPUProgram *gpu_fn_viscosity;	//	Compute viscosity
	GPUProgram *gpu_fn_viscosity_xy;	//	Compute viscosity
	GPUProgram *gpu_fn_pressure;	//	Compute pressure
	GPUProgram *gpu_fn_advection;	//	Move stuff!  Stam99 Style!
};


#endif
