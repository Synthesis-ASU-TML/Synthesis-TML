//
//  JITTask.h
//  jit.tml.fluid.advection
//

#import "FXTaskSequence.h"
#import "FSCPUCore.h"

#ifdef BUILD_PRESSURE
#define JITTask		JITTask_Pressure
#elif defined BUILD_ADVECTION
#define JITTask		JITTask_Advection
#elif defined BUILD_MCCORMACK
#define JITTask		JITTask_McCormack
#elif defined BUILD_VISCOCITY
#define JITTask		JITTask_Viscocity
#elif defined BUILD_REPOS
#define JITTask		JITTask_Repos
#elif defined BUILD_GENREPOS
#define JITTask		JITTask_GenRepos
#elif defined BUILD_BLEND
#import "FSMacros.h"
#define JITTask		JITTask_Blend
#else
#error Unsupported Build
#endif

@interface JITTask : FXTaskSequence <FXTaskDispatcher>
{
	int32_t atomic;
	
	FSStreamDesc *sInputs, *sOutputs;
	
	int fluids;
	float timeStep;
	int style;
	
#ifdef BUILD_PRESSURE
	float *pressureBuffer;
	int pWidth, pHeight;
#elif defined BUILD_VISCOCITY
	float *pressureBuffer;
	int pWidth, pHeight;
	float viscocity;
#elif defined BUILD_GENREPOS
	FSStreamDesc r_tmpStream;
	FSStreamDesc r_tmpPos;
#elif defined BUILD_BLEND
	float scaleA, addA, scaleB, addB;
#endif
}

#ifdef BUILD_BLEND
-(void)setScaleA:(float)in_sa addA:(float)in_aa
		scaleB:(float)in_sb addB:(float)in_ab;
#endif

#ifdef BUILD_VISCOCITY
- (void)setViscocity:(float)in_val;
#endif

- (void)setInputs:(FSStreamDesc*)in_inputs outputs:(FSStreamDesc*)out_outputs
					fluids:(int)in_fluids timestep:(float)in_ts style:(int)in_st;

@end
