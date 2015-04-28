/*
 *  JitToCV.c
 *  jit.tml.fakeDepth
 *
 *  Created by Michael on 11/11/10.
 *  Copyright 2010 __MyCompanyName__. All rights reserved.
 *
 */

#include "JitToCV.h"
#include "cv.h"

struct DepthData
{
	CvStereoGCState *s;
	CvStereoBMState *bm;
	
	CvMat* srcLeft;
	CvMat* srcRight;
	
	CvMat* dstOut;
	
	CvMat* dLeft;
	CvMat* dRight;
	
	int w;
	int h;
};


void computeDepth(DepthData *d,
		unsigned char *left, int l_width, int l_height, int l_sx, int l_sy,
		unsigned char *right, int r_sx, int r_sy,
		unsigned char *output, int o_sx, int o_sy)
{
//
////Alternately to OpenCV - the depth information we obtain depends on the
////distance of the two cameras...
//
////that is, we have n pixels between cameras, therefore n depth values
////that we can extract.
//
////The closer the match is, the further away a pixel is.  For example,
////if a pixel is the same location in both frames and n > 0, then we could
////say that the pixel is at infinity (depth = 0).
//
////If the pixel is at 0 in left and n in right, then the depth is n.
//// (perceived depth we'll say).
//
////This leads to a very simple (if not elegant) means of computing the depth.
//	int y, x;
//	for (y=0; y<l_height; y++)
//	{
//		for (x=0; x<l_width; x++)
//		{
//			//We will assume a few pixels wide...
//			int p;
//			
//			unsigned char m1, p1;
//			if (y > 0) m1 = left[x+(y-1)*l_sy];
//			if (y < l_height-1) p1 = left[x+(y+1)*l_sy];
//			unsigned char cur = left[x+y*l_sy];
//			
//			int minD = 0;
//			int minP = 0;
//			for (p=1; p<64; p++)
//			{
//				if (p + x >= l_width)
//					break;
//				
//				int d = abs((int)cur - (int)right[p+x +y*r_sy]);
//				
//				if (y > 0)
//					d += abs((int)m1 - (int)right[p+x +(y-1)*r_sy]);
//				
//				if (y < l_height-1)
//					d += abs((int)p1 - (int)right[p+x +(y+1)*r_sy]);
//				
//				if (d < 10)
//				{
//					if (minP == 0)
//					{
//						minP = p;
//					}
//					else
//					{
//						minD ++;
//					}
//				}
//			}
//			
//			if (minD > 9)
//				minP = 0;
//			
//			output[x + y*o_sy] = minP*8;
//			
//		}
//	}

	int e = 1;
	if (d->w != l_width || d->h != l_height)
	{
		e = 0;
		if (d->srcLeft)
		{
			cvFree(&d->srcLeft);
			cvFree(&d->srcRight);
			cvFree(&d->dLeft);
			cvFree(&d->dRight);
			cvFree(&d->dstOut);
		}
		
		d->srcLeft = cvCreateMatHeader(l_width, l_height, CV_8UC1);
		d->srcRight = cvCreateMatHeader(l_width, l_height, CV_8UC1);
		
		d->dLeft = cvCreateMat(l_width, l_height, CV_16S);
		d->dRight = cvCreateMat(l_width, l_height, CV_16S);
		
		d->dstOut = cvCreateMatHeader(l_width, l_height, CV_8UC1);
		
		d->w = l_width;
		d->h = l_height;
	}
	
	cvSetData(d->srcLeft, left, l_sy);
	cvSetData(d->srcRight, right, r_sy);
	cvSetData(d->dstOut, output, o_sy);
	
	cvFindStereoCorrespondenceGC(d->srcLeft, d->srcRight, d->dLeft, d->dRight, d->s, 0);
	//cvFindStereoCorrespondenceBM(d->srcLeft, d->srcRight, d->dLeft, d->bm);
	
	cvConvertScale(d->dLeft, d->dstOut, -16.0, 0.0);
}


DepthData* depthDataAlloc()
{
	DepthData *d = malloc(sizeof(DepthData));
	d->s = cvCreateStereoGCState(64, 10);	//Disparities / iterations
	d->bm = cvCreateStereoBMState(CV_STEREO_BM_BASIC, 0);
	
	d->bm->speckleRange = 1;
	d->bm->uniquenessRatio = 1.0f;
	d->bm->numberOfDisparities = 2;
	
	d->w = -1;
	d->h = -1;
	
	d->srcLeft = NULL;
	d->srcRight = NULL;
	
	d->dLeft = NULL;
	d->dRight = NULL;
	
	return d;
}

void depthDataFree(DepthData *d)
{
	cvReleaseStereoGCState(&(d->s));
	cvReleaseStereoBMState(&(d->bm));
	
	if (d->srcLeft)
	{
		cvFree(&d->srcLeft);
		cvFree(&d->srcRight);
		cvFree(&d->dLeft);
		cvFree(&d->dRight);
		cvFree(&d->dstOut);
	}
	free(d);
}
