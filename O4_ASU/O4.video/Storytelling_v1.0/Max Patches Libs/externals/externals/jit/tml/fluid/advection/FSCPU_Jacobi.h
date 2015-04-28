//
//  FSCPU_Jacobi.h
//  CocoaGame
//

#import "FSCPUCore.h"
#import "FXTaskSequence.h"

void FSCPU_JacobiPressure(int in_nIterations, FXTaskSequence *in_seq,
						  int32_t *atomicY,
						  FSStreamDesc velocity,
						  FSStreamDesc collision,
						  FSStreamDesc pressure[]);

void FSCPU_JacobiDiffusion(int in_nIterations,
						   FXTaskSequence *in_seq, int32_t *atomicY,
						   FSStreamDesc *v1, FSStreamDesc *v2,
						   FSStreamDesc *collision,
						   float viscocity, float timestep);
