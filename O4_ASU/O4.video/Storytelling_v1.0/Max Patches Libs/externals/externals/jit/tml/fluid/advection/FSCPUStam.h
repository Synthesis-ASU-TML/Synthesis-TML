/*
 *  FSCPUStam.h
 *  CocoaGame
 */

/*
	This file contains the implementation for the backward/stam style
	advection.
 
	It's here so various versions of it may be created through macro
	manipulation.
 */

#import "FSCPUCore.h"

//Resolve the name...
#ifdef tFS_Name
#define t_FS_Name FSConcat(FSCPU_Advection_Backward, tFS_Name)
#else
#define t_FS_Name FSCPU_Advection_Backward
#endif

void t_FS_Name(FSStreamDesc field, FSStreamDesc collisions, FSStreamDesc *advectionIn, FSStreamDesc *advectionOut, int numStreams, float timestep, int32_t *atomic)
{
	//Do a bunch of checks to make sure we are A-OK.
	int x;
	for (x=0; x<numStreams; x++)
	{
		if (advectionIn[x].width != advectionOut[x].width
			|| advectionIn[x].height != advectionOut[x].height
			|| advectionIn[x].type != advectionOut[x].type
			|| advectionIn[x].components != advectionOut[x].components
			|| advectionIn[x].width != field.width
			|| advectionIn[x].height != field.height)
		{
			[NSException raise:@"FSCPU_Advection_Backward"
						format:@"Sizes and types must match on input/output..."];
		}
	}
	
	//One more check...
	if (field.type != FSCPU_Type_Float2D || field.components != 2
		|| collisions.type != FSCPU_Type_Character2D ||
		collisions.width != field.width
		|| collisions.height != field.height
		|| collisions.components != 1)
	{
		[NSException raise:@"FSCPU_Advection_Backward"
					format:@"Float with 2 components for the advection part..."];
	}
	
	
	//Now, the second part is the actual advection.
	int y = OSAtomicIncrement32Barrier(atomic)-1;
	for (; y<field.height; )
	{
		for (x=0; x<field.width; x++)
		{
			if (collisions.data.c[x*collisions.strideX + y*collisions.strideY] == 0)
			{
				float *fData = FSFloatPtrOffset(field.data.f, x*field.strideX + y*field.strideY);
				
				float backX = -timestep * fData[0] + (float)x;
				float backY = -timestep * fData[1] + (float)y;
				
				int nBackX = (int)backX;
				int nBackY = (int)backY;
				
				float scaleX = backX - (float)nBackX;
				float scaleY = backY - (float)nBackY;
				
				//Negative?		(this code wraps the fluid around the edges)
				FSWrap(nBackX, scaleX, field.width);
				FSWrap(nBackY, scaleY, field.height);
				
				//Since we're wrapping we have two corner cases (one per axis).
				//	The issue is - should we take the data directly from a neighboring
				//	cell - or should we wrap around...?
				FSWrapPlus1(nBackX, x2, scaleX, field.width);
				FSWrapPlus1(nBackY, y2, scaleY, field.height);
				
				//Good - now we can advect!!!!
				int k;	//Loop over streams
				int c;	//Loop over components
				for (k=0; k<numStreams; k++)
				{
					switch(advectionIn[k].type)
					{
						case FSCPU_Type_Float2D:
							{
								float *curDest = FSFloatPtrOffset(advectionOut[k].data.f,
															  x*advectionOut[k].strideX
															  + y*advectionOut[k].strideY);
								
								int offBackX = nBackX * advectionIn[k].strideX;
								int offBackY = nBackY * advectionIn[k].strideY;
								int offX2 = x2 * advectionIn[k].strideX;
								int offY2 = y2 * advectionIn[k].strideY;
								
								float *bZZ = FSFloatPtrOffset(advectionIn[k].data.f,
															  offBackX + offBackY);
								float *bOZ = FSFloatPtrOffset(advectionIn[k].data.f,
															  offX2 + offBackY);
								float *bZO = FSFloatPtrOffset(advectionIn[k].data.f,
															  offBackX + offY2);
								float *bOO = FSFloatPtrOffset(advectionIn[k].data.f,
															  offX2 + offY2);
								
								for (c=0; c<advectionIn[k].components; c++)
								{
									curDest[c] = LinearInterpolation(scaleX, scaleY,
																bZZ[c], bOZ[c],
																bZO[c], bOO[c]);
								}
							}
							break;
							
						case FSCPU_Type_Character2D:
							{
								unsigned char *curDest = advectionOut[k].data.c
													+ x*advectionOut[k].strideX
													+ y*advectionOut[k].strideY;
								for (c=0; c<advectionIn[k].components; c++)
								{
									curDest[c] = FSCharacterDataLinearInterpolation(
														  advectionIn[k].data.c,
														  scaleX, scaleY,
														  advectionIn[k].strideX,
														  advectionIn[k].strideY,
														  nBackX,nBackY,x2,y2,c);
								}
							}
							break;
					}
				} //end loop over streams
				
			}
			else
			{
				int c,k;
				for (k=0; k<numStreams; k++)
				{
					switch (advectionOut[k].type)
					{
						case FSCPU_Type_Float2D:
							for (c=0; c<advectionOut[k].components; c++)
							{
								float *curDest = FSFloatPtrOffset(advectionOut[k].data.f,
												  x*advectionOut[k].strideX
												  + y*advectionOut[k].strideY);
								curDest[c] = advectionOut[k].defaults.f[c];
							}
							break;
							
						case FSCPU_Type_Character2D:
							for (c=0; c<advectionOut[k].components; c++)
							{
								unsigned char *curDest = advectionOut[k].data.c
													+ x*advectionOut[k].strideX
													+ y*advectionOut[k].strideY;
								curDest[c] = advectionOut[k].defaults.c[c];
							}
							break;
					}
				}
			}
		}
		
		y = OSAtomicIncrement32Barrier(atomic)-1;
	}
}

#undef t_FS_Name
