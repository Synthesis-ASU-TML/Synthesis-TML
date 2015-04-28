//
//  FSCPUQuickAdvection.m
//  CocoaGame
//

#import "FSCPUQuickAdvection.h"
#import "FSMacros.h"

void FSCPUQuickAdvection_GenRepos(FSStreamDesc in_vel,		//Velocities
								  FSStreamDesc out_repos,	//Output repos
								  FSStreamDesc tmp_vel,		//Temp velocity array
								  FSStreamDesc tmp_repos,	//Temporary repos
								  float in_timestep,		//The timestep
								  FXTaskSequence *in_seq,	//N-CPU helper.
								  int32_t *in_atomic)		//Atomic for n-cpu.
{
	//This is as much checking as we can do...
	if (in_vel.width != out_repos.width ||
		in_vel.height != out_repos.height ||
		in_vel.width != tmp_vel.width ||
		in_vel.height != tmp_vel.height ||
		in_vel.components != 2 ||
		out_repos.components != 2 ||
		tmp_vel.components != 2 ||
		in_vel.type != FSCPU_Type_Float2D ||
		out_repos.type != FSCPU_Type_Float2D ||
		tmp_vel.type != FSCPU_Type_Float2D)
	{
		[NSException raise:@"params"
					format:@"FSCPUQuickAdvection_GenRepos: Inconsistent Input"];
	}
	
	//This is muddled together for speed, so do a basic advection
	//of the velocities and generate the repos matrix.  (we could recycle
	//code, but my goal is to see how fast this can run)
	int y = OSAtomicIncrement32Barrier(in_atomic)-1, x;
	for (; y<in_vel.height; )
	{
		for (x=0; x<in_vel.width; x++)
		{
			float *fData = FSFloatPtrOffset(in_vel.data.f, x*in_vel.strideX
											+ y*in_vel.strideY);
			
			//Find the cell back in time
			float backX = -in_timestep * fData[0] + (float)x;
			float backY = -in_timestep * fData[1] + (float)y;
			
			int nBackX = (int)backX;
			int nBackY = (int)backY;
			
			float scaleX = backX - (float)nBackX;
			float scaleY = backY - (float)nBackY;
			
			//Wrap
			FSWrap(nBackX, scaleX, in_vel.width);
			FSWrap(nBackY, scaleY, in_vel.height);
			
			//And find adjacent cells...
			FSWrapPlus1(nBackX, x2, scaleX, in_vel.width);
			FSWrapPlus1(nBackY, y2, scaleY, in_vel.height);
			
			//That was easy... now advect the velocity...
			float *fVelDest = FSFloatPtrOffset(tmp_vel.data.f,
												x*tmp_vel.strideX
											   + y*tmp_vel.strideY);
			
			int offBackX = nBackX * in_vel.strideX;
			int offBackY = nBackY * in_vel.strideY;
			int offX2 = x2 * in_vel.strideX;
			int offY2 = y2 * in_vel.strideY;
			
			float *bZZ = FSFloatPtrOffset(in_vel.data.f,
										  offBackX + offBackY);
			float *bOZ = FSFloatPtrOffset(in_vel.data.f,
										  offX2 + offBackY);
			float *bZO = FSFloatPtrOffset(in_vel.data.f,
										  offBackX + offY2);
			float *bOO = FSFloatPtrOffset(in_vel.data.f,
										  offX2 + offY2);
			
			fVelDest[0] = LinearInterpolation(scaleX, scaleY,
											  bZZ[0], bOZ[0], bZO[0], bOO[0]);
			fVelDest[1] = LinearInterpolation(scaleX, scaleY,
											  bZZ[1], bOZ[1], bZO[1], bOO[1]);
			
			//And store our numbers (they'll be needed)
			float *fStamDest = FSFloatPtrOffset(tmp_repos.data.f,
								x*tmp_repos.strideX + y*tmp_repos.strideY);
			fStamDest[0] = (float)nBackX + scaleX;
			fStamDest[1] = (float)nBackY + scaleY;
		}
		
		y = OSAtomicIncrement32Barrier(in_atomic)-1;
	}
	
	//Once forward advection is done, we just have to do backwards/reverse
	//advection on the data.  This is actually quite trivial to implement...
	[in_seq waitForTask];
	
	//float error = 0;
	
	y = OSAtomicIncrement32Barrier(in_atomic)-1;
	for (; y<in_vel.width; )
	{
		for (x=0; x<in_vel.height; x++)
		{
			//We first repeat all the steps but will apply a corrector to
			//the mess...
			float *fData = FSFloatPtrOffset(in_vel.data.f, x*in_vel.strideX
											+ y*in_vel.strideY);
			float backX = -in_timestep * fData[0] + (float)x;
			float backY = -in_timestep * fData[1] + (float)y;
			
			int nBackX = (int)backX;
			int nBackY = (int)backY;
			
			float scaleX = backX - (float)nBackX;
			float scaleY = backY - (float)nBackY;
			
			//Wrap
			FSWrap(nBackX, scaleX, in_vel.width);
			FSWrap(nBackY, scaleY, in_vel.height);
			
			//And find adjacent cells...
			FSWrapPlus1(nBackX, x2, scaleX, in_vel.width);
			FSWrapPlus1(nBackY, y2, scaleY, in_vel.height);
			
			//Now... time for the extra code to handle the correction phase...
			//	Here we get the velocity in the advected field...
			//
			//	This velocity should bring us back (in a divergent-free world)
			//	to the start cell.  But due to numerical error, this may not
			//	necessarily be the case.
			
			int offBackX = nBackX * tmp_vel.strideX;
			int offBackY = nBackY * tmp_vel.strideY;
			int offX2 = x2 * tmp_vel.strideX;
			int offY2 = y2 * tmp_vel.strideY;
			
			float *bZZ = FSFloatPtrOffset(tmp_vel.data.f,
										  offBackX + offBackY);
			float *bOZ = FSFloatPtrOffset(tmp_vel.data.f,
										  offX2 + offBackY);
			float *bZO = FSFloatPtrOffset(tmp_vel.data.f,
										  offBackX + offY2);
			float *bOO = FSFloatPtrOffset(tmp_vel.data.f,
										  offX2 + offY2);
			
			float f_vel_x = LinearInterpolation(scaleX, scaleY,
											  bZZ[0], bOZ[0], bZO[0], bOO[0]);
			float f_vel_y = LinearInterpolation(scaleX, scaleY,
											  bZZ[1], bOZ[1], bZO[1], bOO[1]);
			
			//Now we recompute the backX and backY - but for the correction
			//data (notice that timestep is reversed - so we should return
			//		back to the start position)
			float new_backX = in_timestep*f_vel_x + backX;
			float new_backY = in_timestep*f_vel_y + backY;
			
			int new_nBackX = (int)new_backX;
			int new_nBackY = (int)new_backY;
			
			float new_scaleX = new_backX - (float)new_nBackX;
			float new_scaleY = new_backY - (float)new_nBackY;
			
			FSWrap(new_nBackX, new_scaleX, in_vel.width);
			FSWrap(new_nBackY, new_scaleY, in_vel.height);
			
			FSWrapPlus1(new_nBackX, new_x2, new_scaleX, in_vel.width);
			FSWrapPlus1(new_nBackY, new_y2, new_scaleY, in_vel.height);
			
			//Fortuneately, we cut quite a few calculations by just advecting
			//a repos matrix.
			//Also cut down on quite a few conditionals...
			
			//A few notes:	stam's values are stored in (backX) and (backY)
			//				old value is found in the (x) and (y)
			float *fReposDest = FSFloatPtrOffset(out_repos.data.f,
									out_repos.strideX*x + out_repos.strideY*y);
			
			//Offsets from the output (predictor-corrector)
			int outBackX = new_nBackX * tmp_repos.strideX;
			int outBackY = new_nBackY * tmp_repos.strideY;
			int outX2 = new_x2 * tmp_repos.strideX;
			int outY2 = new_y2 * tmp_repos.strideY;
			
			float *outZZ = FSFloatPtrOffset(tmp_repos.data.f,
											outBackX + outBackY);
			float *outOZ = FSFloatPtrOffset(tmp_repos.data.f,
											outX2 + outBackY);
			float *outZO = FSFloatPtrOffset(tmp_repos.data.f,
											outBackX + outY2);
			float *outOO = FSFloatPtrOffset(tmp_repos.data.f,
											outX2 + outY2);
			
			float interpX = LinearInterpolation(new_scaleX, new_scaleY,
												outZZ[0], outOZ[0], outZO[0], outOO[0]);
			float interpY = LinearInterpolation(new_scaleX, new_scaleY,
												outZZ[1], outOZ[1], outZO[1], outOO[1]);
			
			float xError = (float)x-interpX;
			if (fabsf(xError) > fabsf(((float)x+in_vel.width) - interpX))
				xError = ((float)x+in_vel.width) - interpX;
			if (fabsf(xError) > fabsf(((float)x-in_vel.width) - interpX))
				xError = ((float)x-in_vel.width) - interpX;
			
			fReposDest[0] = backX + 0.5f * xError;
			//Clamp(fReposDest[0], backX-1, backX+1);
			
			
			float yError = (float)y-interpY;
			if (fabsf(yError) > fabsf((float)(y+in_vel.height) - interpY))
				yError = (float)(y+in_vel.height) - interpY;
			if (fabsf(yError) > fabsf((float)(y-in_vel.height) - interpY))
				yError = (float)(y-in_vel.height) - interpY;
			
			fReposDest[1] = backY + 0.5f * yError;
			//Clamp(fReposDest[1], backY-1, backY+1);
			
			//error += ((float)x-interpX);
			
//			if (((float)x-interpX) < -0.1f)
//			{
//				NSLog(@"uhoh");
//			}
//			
			/*float *fStamDest = FSFloatPtrOffset(tmp_repos.data.f,
												x*tmp_repos.strideX + y*tmp_repos.strideY);
			fReposDest[0] = fStamDest[0];
			fReposDest[1] = fStamDest[1];*/
		}
		
		y = OSAtomicIncrement32Barrier(in_atomic)-1;
	}
	
	//NSLog(@"Error is %f", error);
}



void FSCPUQuickAdvection_Repos(FSStreamDesc in_repos,		//Repos matrix
							   FSStreamDesc *in_streams,	//Input streams
							   FSStreamDesc *out_streams,	//Output streams
							   FSStreamDesc in_coll,		//The collisions!
							   int in_streamCount,			//Number of streams
							   int32_t *in_atomic)			//Atomic for n-cpu
{
	if (in_repos.type != FSCPU_Type_Float2D
		|| in_repos.components != 2)
	{
		[NSException raise:@"params"
					format:@"FSCPUQuickAdvection_Repos: Bad repos matrix"];
	}
	
	int x, y;
	for (x=0; x<in_streamCount; x++)
	{
		if (in_repos.width != in_streams[x].width ||
			in_repos.height != in_streams[x].height ||
			in_repos.width != out_streams[x].width ||
			in_repos.height != out_streams[x].height ||
			in_streams[x].components != out_streams[x].components ||
			in_streams[x].type != FSCPU_Type_Float2D ||
			out_streams[x]. type != FSCPU_Type_Float2D)
		{
			[NSException raise:@"params"
						format:@"FSCPUQuickAdvection_Repos: Inconsistent Input"];
		}
	}
	
	
	y = OSAtomicIncrement32Barrier(in_atomic)-1;
	for (;y<in_repos.width; )
	{
		for (x=0; x<in_repos.height; x++)
		{
			float *fData = FSFloatPtrOffset(in_repos.data.f,
										x*in_repos.strideX + y*in_repos.strideY);
			
			int nBackX = fData[0];
			int nBackY = fData[1];
			
			float scaleX = fData[0] - (float)nBackX;
			float scaleY = fData[1] - (float)nBackY;
			
			FSWrap(nBackX, scaleX, in_repos.width);
			FSWrap(nBackY, scaleY, in_repos.height);
			
			FSWrapPlus1(nBackX, x2, scaleX, in_repos.width);
			FSWrapPlus1(nBackY, y2, scaleY, in_repos.height);
			
			unsigned char c1 = in_coll.data.c[in_coll.strideX*x + in_coll.strideY*y];
			unsigned char c2 = in_coll.data.c[in_coll.strideX*nBackX + in_coll.strideY*nBackY];
			
			//Good, now repos all the streams...
			int k,c;
			if (c1 == 0)
			{
				if (c2 != 0)
				{
					nBackX = x;
					nBackY = y;
					x2 = x;
					y2 = y;
				}
				
				for (k=0; k<in_streamCount; k++)
				{
					float *curDest = FSFloatPtrOffset(out_streams[k].data.f,
													  x*out_streams[k].strideX
													  + y*out_streams[k].strideY);
					
					int offBackX = nBackX * in_streams[k].strideX;
					int offBackY = nBackY * in_streams[k].strideY;
					int offX2 = x2 * in_streams[k].strideX;
					int offY2 = y2 * in_streams[k].strideY;
					
					float *bZZ = FSFloatPtrOffset(in_streams[k].data.f,
												  offBackX + offBackY);
					float *bOZ = FSFloatPtrOffset(in_streams[k].data.f,
												  offX2 + offBackY);
					float *bZO = FSFloatPtrOffset(in_streams[k].data.f,
												  offBackX + offY2);
					float *bOO = FSFloatPtrOffset(in_streams[k].data.f,
												  offX2 + offY2);
					
					for (c=0; c<in_streams[k].components; c++)
					{
						curDest[c] = LinearInterpolation(scaleX, scaleY,
														 bZZ[c], bOZ[c],
														 bZO[c], bOO[c]);
					}
				}
			}
			else
			{
				for (k=0; k<in_streamCount; k++)
				{
					float *curDest = FSFloatPtrOffset(out_streams[k].data.f,
													  x*out_streams[k].strideX
													  + y*out_streams[k].strideY);
					
					for (c=0; c<in_streams[k].components; c++)
					{
						curDest[c] = out_streams[k].defaults.f[c];
					}
				}
			}
		}
		y = OSAtomicIncrement32Barrier(in_atomic)-1;
	}
}
