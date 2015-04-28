//
//  JITTask.m
//  jit.tml.fluid.advection
//

#import "jit.common.h"
#import "JITTask.h"

#ifdef BUILD_REPOS
#import "FSCPUQuickAdvection.h"
#elif defined BUILD_GENREPOS
#import "FSCPUQuickAdvection.h"
#endif

@implementation JITTask

- init
{
	if ([super initWithNumThreads:1 dispatchedTo:self])
	{
		atomic = 0;
	
		return self;
	}
	return nil;
}

#ifdef BUILD_PRESSURE
- (void)dealloc
{
	if (pressureBuffer)	free(pressureBuffer);
	[super dealloc];
}
#endif


#ifdef BUILD_GENREPOS
- (void)dealloc
{
	if (r_tmpStream.data.f)	free(r_tmpStream.data.f);
	if (r_tmpPos.data.f)	free(r_tmpPos.data.f);
	[super dealloc];
}
#endif


#ifdef BUILD_VISCOCITY
- (void)dealloc
{
	if (pressureBuffer)	free(pressureBuffer);
	[super dealloc];
}
#endif

- (void)runTaskAsSequence:(FXTaskSequence*)in_seq
{
#ifdef BUILD_ADVECTION
	switch (style)
	{
	case 1:
		FSCPU_Advection_Backward(sInputs[0], sInputs[1], sInputs+2, sOutputs,
								fluids, timeStep, &atomic);
		break;
	case 2:
		FSCPU_Advection_Backward_NoWrap(sInputs[0], sInputs[1], sInputs+2, sOutputs,
								fluids, timeStep, &atomic);
		break;
	case 3:
		FSCPU_Advection_Backward_NearestNeighbor(sInputs[0], sInputs[1], sInputs+2, sOutputs,
								fluids, timeStep, &atomic);
		break;
	case 4:
		FSCPU_Advection_Backward_NoWrap_NearestNeighbor(sInputs[0], sInputs[1], sInputs+2, sOutputs,
								fluids, timeStep, &atomic);
		break;
	default:
		FSCPU_Advection_Backward(sInputs[0], sInputs[1], sInputs+2, sOutputs,
								fluids, timeStep, &atomic);
		break;
	}
	
	[in_seq waitForTask];
#elif defined BUILD_REPOS
	FSCPUQuickAdvection_Repos(sInputs[0], sInputs+2, sOutputs, sInputs[1],
								fluids, &atomic);
	[in_seq waitForTask];

#elif defined BUILD_GENREPOS

	if(OSAtomicIncrement32Barrier(&atomic) == 1)
	{
		if (r_tmpStream.data.f == NULL || r_tmpStream.width != sInputs[0].width
			|| r_tmpStream.height != sInputs[0].height)
		{
			if (r_tmpStream.data.f)		free(r_tmpStream.data.f);
			r_tmpStream.data.f = NULL;
			
			if (r_tmpPos.data.f)		free(r_tmpPos.data.f);
			r_tmpPos.data.f = NULL;
			
			r_tmpStream.data.f =
				malloc(sizeof(float)*2*sInputs[0].width*sInputs[0].height);
			
			r_tmpPos.data.f =
				malloc(sizeof(float)*2*sInputs[0].width*sInputs[0].height);
			
			if (r_tmpPos.data.f)
			{
				r_tmpPos.width = sInputs[0].width;
				r_tmpPos.height = sInputs[0].height;
				
				r_tmpPos.type = FSCPU_Type_Float2D;
				
				r_tmpPos.components = 2;
				r_tmpPos.defaults.f = r_tmpPos.data.f;
				
				r_tmpPos.strideX = 2*sizeof(float);
				r_tmpPos.strideY = 2*sizeof(float)*r_tmpPos.width;
			}
			
			if (r_tmpStream.data.f)
			{
				r_tmpStream.width = sInputs[0].width;
				r_tmpStream.height = sInputs[0].height;
				
				r_tmpStream.type = FSCPU_Type_Float2D;
				
				r_tmpStream.components = 2;
				r_tmpStream.defaults.f = r_tmpStream.data.f;
				
				r_tmpStream.strideX = 2*sizeof(float);
				r_tmpStream.strideY = 2*sizeof(float)*r_tmpStream.width;
			}
		}
	}
	[in_seq waitForTask];
	
	FSCPUQuickAdvection_GenRepos(sInputs[0], sOutputs[0], r_tmpStream, r_tmpPos, timeStep,
							self, &atomic);
	[in_seq waitForTask];
	
#elif defined BUILD_MCCORMACK
	switch (style)
	{
	case 1:
		FSCPU_Advection_MacCormack(sInputs[0], sInputs[fluids+2], sInputs[1], sInputs+2,
								sInputs+fluids+3, sOutputs,
								fluids, timeStep, &atomic);
		break;
	case 2:
		FSCPU_Advection_MacCormack_NoWrap(sInputs[0], sInputs[fluids+2], sInputs[1], sInputs+2,
								sInputs+fluids+3, sOutputs,
								fluids, timeStep, &atomic);
		break;
	case 3:
		FSCPU_Advection_MacCormack_NearestNeighbor(sInputs[0], sInputs[fluids+2], sInputs[1], sInputs+2,
								sInputs+fluids+3, sOutputs,
								fluids, timeStep, &atomic);
		break;
	case 4:
		FSCPU_Advection_MacCormack_NoWrap_NearestNeighbor(sInputs[0], sInputs[fluids+2], sInputs[1], sInputs+2,
								sInputs+fluids+3, sOutputs,
								fluids, timeStep, &atomic);
		break;
	default:
		FSCPU_Advection_MacCormack(sInputs[0], sInputs[fluids+2], sInputs[1], sInputs+2,
								sInputs+fluids+3, sOutputs,
								fluids, timeStep, &atomic);
		break;
	}
	[in_seq waitForTask];
#elif defined BUILD_PRESSURE
	if (OSAtomicIncrement32Barrier(&atomic) == 1)
	{
		if (pressureBuffer == nil || sInputs[0].width != pWidth || sInputs[0].height != pHeight)
		{
			pWidth = sInputs[0].width;
			pHeight = sInputs[0].height;
			if (pressureBuffer) free(pressureBuffer);
			pressureBuffer = malloc(pWidth*pHeight*2*sizeof(float));
		}
		memset(pressureBuffer, 0, pWidth*pHeight*2*sizeof(float));
		memcpy(sOutputs[0].data.f, sInputs[0].data.f, sizeof(float)*pWidth*pHeight*2);
		//post("pressure CLS");
	}
	[in_seq waitForTask];
	
	FSStreamDesc pressure[2] =
	{
		FSStreamDescMakeFloat2D(pressureBuffer, pressureBuffer, sizeof(float), pWidth*sizeof(float), pWidth, pHeight, 1),
		FSStreamDescMakeFloat2D(pressureBuffer+(pWidth*pHeight), pressureBuffer, sizeof(float), pWidth*sizeof(float), pWidth, pHeight, 1)
	};
	
	FSCPU_JacobiPressure(style, in_seq, &atomic, sOutputs[0], sInputs[1], pressure);
	[in_seq waitForTask];
#elif defined BUILD_VISCOCITY
	if(OSAtomicIncrement32Barrier(&atomic) == 1)
	{
		if ((pressureBuffer == nil || sInputs[0].width != pWidth || sInputs[0].height != pHeight))
		{
			pWidth = sInputs[0].width;
			pHeight = sInputs[0].height;
			if (pressureBuffer) free(pressureBuffer);
			pressureBuffer = malloc(pWidth*pHeight*2*sizeof(float)*2);
		}
		memset(pressureBuffer, 0, pWidth*pHeight*2*sizeof(float)*2);
		//post("viscocity CLS");
	}
	[in_seq waitForTask];
	
	FSStreamDesc vWork[2] =
	{
		FSStreamDescMakeFloat2D(pressureBuffer, pressureBuffer, 2*sizeof(float), pWidth*2*sizeof(float), pWidth, pHeight, 2),
		FSStreamDescMakeFloat2D(pressureBuffer+(pWidth*pHeight)*2, pressureBuffer, 2*sizeof(float), pWidth*2*sizeof(float), pWidth, pHeight, 2)
	};
	
	FSCPU_JacobiDiffusion(1, in_seq, &atomic, vWork+0, sInputs+0, sInputs+1, viscocity,timeStep);
	FSCPU_JacobiDiffusion(style, in_seq, &atomic, vWork+1, vWork+0, sInputs+1, viscocity,timeStep);
	FSCPU_JacobiDiffusion(1, in_seq, &atomic, sOutputs+0, vWork+1, sInputs+1, viscocity, timeStep);
	[in_seq waitForTask];
#elif BUILD_BLEND
	//Just a simple iteration over the data to blend it...
	int x,y;
	
	y = OSAtomicIncrement32Barrier(&atomic) -1;
	for (;y<sInputs[0].height;)
	{
		for (x=0; x<sInputs[0].width; x++)
		{
			float *dest = FSFloatPtrOffset(sOutputs[0].data.f,
									x*sOutputs[0].strideX + y*sOutputs[0].strideY);
			
			float *srcA = FSFloatPtrOffset(sInputs[0].data.f,
									x*sInputs[0].strideX + y*sInputs[0].strideY);
			
			float *srcB = FSFloatPtrOffset(sInputs[1].data.f,
									x*sInputs[1].strideX + y*sInputs[1].strideY);
			
			int c;
			for (c=0; c<sInputs[0].components; c++)
			{
				dest[c] = (srcA[c]+addA)*scaleA + (srcB[c]+addB)*scaleB;
			}
		}
	
		y = OSAtomicIncrement32Barrier(&atomic) -1;
	}
	[in_seq waitForTask];
#else
	#error Unsupported Build
#endif
}

#ifdef BUILD_VISCOCITY
- (void)setViscocity:(float)in_val
{
	viscocity = in_val;
}
#endif


#ifdef BUILD_BLEND
-(void)setScaleA:(float)in_sa addA:(float)in_aa
		scaleB:(float)in_sb addB:(float)in_ab
{
	scaleA = in_sa;
	addA = in_aa;
	scaleB = in_sb;
	addB = in_ab;
}
#endif

- (void)onTaskCompleted
{
	atomic = 0;
}

- (void)setInputs:(FSStreamDesc*)in_inputs outputs:(FSStreamDesc*)out_outputs
					fluids:(int)in_fluids timestep:(float)in_ts style:(int)in_st
{
	sInputs = in_inputs;
	sOutputs = out_outputs;
	fluids = in_fluids;
	timeStep = in_ts;
	style = in_st;
}
@end
