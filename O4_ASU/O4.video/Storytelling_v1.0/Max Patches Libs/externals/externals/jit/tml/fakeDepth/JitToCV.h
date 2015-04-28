/*
 *  JitToCV.h
 *  jit.tml.fakeDepth
 *
 *  Created by Michael on 11/11/10.
 *  Copyright 2010 __MyCompanyName__. All rights reserved.
 *
 */

typedef struct DepthData DepthData;

DepthData* depthDataAlloc();
void depthDataFree(DepthData *d);

void computeDepth(DepthData *d,
		unsigned char *left, int l_width, int l_height, int l_sx, int l_sy,
		unsigned char *right, int r_sx, int r_sy,
		unsigned char *output, int o_sx, int o_sy);
