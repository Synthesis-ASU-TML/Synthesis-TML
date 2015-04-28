/*
 *  FSCPUMacCormack.h
 *  CocoaGame
 *
 */

#import <Foundation/Foundation.h>
#import "FSMacros.h"
#import "FSCPUCore.h"

//Resolve the name...
#ifdef tFS_Name
#define t_FS_Name FSConcat(FSCPU_Advection_MacCormack, tFS_Name)
#else
#define t_FS_Name FSCPU_Advection_MacCormack
#endif

////////////////////////////////////////////////////////////////////////////////
//
//		MACCORMACK - BACKWARD FOR STAM
//
void t_FS_Name				(FSStreamDesc field, FSStreamDesc advField,
								FSStreamDesc collisions,
								FSStreamDesc *advectionIn, FSStreamDesc *advectionOut,
								FSStreamDesc *advectionFix,
								int numStreams, float timestep, int32_t *atomic)
{
	//Do a bunch of checks to make sure we are A-OK.
	int x;
	for (x=0; x<numStreams; x++)
	{
		if (advectionIn[x].width != advectionOut[x].width
			|| advectionIn[x].height != advectionOut[x].height
			|| advectionIn[x].type != advectionOut[x].type
			|| advectionIn[x].components != advectionOut[x].components
			|| advectionIn[x].width != advectionFix[x].width
			|| advectionIn[x].height != advectionFix[x].height
			|| advectionIn[x].type != advectionFix[x].type
			|| advectionIn[x].components != advectionFix[x].components
			|| advectionIn[x].width != field.width
			|| advectionIn[x].height != field.height)
		{
			[NSException raise:@"FSCPU_Advection_MacCormack"
						format:@"Sizes and types must match on input/output..."];
		}
	}
	
	//One more check...
	if (field.type != FSCPU_Type_Float2D || field.components != 2
		|| collisions.type != FSCPU_Type_Character2D ||
		collisions.width != field.width
		|| collisions.height != field.height
		|| collisions.components != 1
		|| advField.width != field.width
		|| advField.height != field.height
		|| advField.type != FSCPU_Type_Float2D
		|| advField.components != 2)
	{
		[NSException raise:@"FSCPU_Advection_MacCormack"
					format:@"Float with 2 components for the advection part..."];
	}
	
	//For the entire width/height...
	int y = OSAtomicIncrement32Barrier(atomic)-1;
	for (; y<field.height; )
	{
		for (x=0; x<field.width; x++)
		{
			if (collisions.data.c[x*collisions.strideX + y*collisions.strideY] == 0)
			{
				//Trace backwards to the original vertices
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
				
				float f_vel_x = FSFloatDataLinearInterpolation(advField.data.f,
															   scaleX, scaleY,
															   advField.strideX,
															   advField.strideY,
															   nBackX, nBackY, x2, y2, 0);
				
				float f_vel_y = FSFloatDataLinearInterpolation(advField.data.f,
															   scaleX, scaleY,
															   advField.strideX,
															   advField.strideY,
															   nBackX, nBackY, x2, y2, 1);
				
				//Now we recompute the backX and backY - but for the correction
				//data
				float new_backX = timestep*f_vel_x + backX;
				float new_backY = timestep*f_vel_y + backY;
				
				int new_nBackX = (int)new_backX;
				int new_nBackY = (int)new_backY;
				
				float new_scaleX = new_backX - (float)new_nBackX;
				float new_scaleY = new_backY - (float)new_nBackY;
				
				FSWrap(new_nBackX, new_scaleX, field.width);
				FSWrap(new_nBackY, new_scaleY, field.height);
				
				FSWrapPlus1(new_nBackX, new_x2, new_scaleX, field.width);
				FSWrapPlus1(new_nBackY, new_y2, new_scaleY, field.height);
				
				//Correct each field as we get it...
				int k;		//Current stream...
				int c;		//Current component...
				for (k=0; k<numStreams; k++)
				{
					switch(advectionIn[k].type)
					{
						case FSCPU_Type_Float2D:
							{								
								//Offsets from the input (stam)
								int inBackX = nBackX * advectionIn[k].strideX;
								int inBackY = nBackY * advectionIn[k].strideY;
								int inX2 = x2 * advectionIn[k].strideX;
								int inY2 = y2 * advectionIn[k].strideY;
								
								float *inZZ = FSFloatPtrOffset(advectionIn[k].data.f,
															  inBackX + inBackY);
								float *inOZ = FSFloatPtrOffset(advectionIn[k].data.f,
															  inX2 + inBackY);
								float *inZO = FSFloatPtrOffset(advectionIn[k].data.f,
															  inBackX + inY2);
								float *inOO = FSFloatPtrOffset(advectionIn[k].data.f,
															  inX2 + inY2);
								
								//Offsets from the output (predictor-corrector)
								int outBackX = new_nBackX * advectionOut[k].strideX;
								int outBackY = new_nBackY * advectionOut[k].strideY;
								int outX2 = new_x2 * advectionOut[k].strideX;
								int outY2 = new_y2 * advectionOut[k].strideY;
								
								float *outZZ = FSFloatPtrOffset(advectionOut[k].data.f,
															   outBackX + outBackY);
								float *outOZ = FSFloatPtrOffset(advectionOut[k].data.f,
															   outX2 + outBackY);
								float *outZO = FSFloatPtrOffset(advectionOut[k].data.f,
															   outBackX + outY2);
								float *outOO = FSFloatPtrOffset(advectionOut[k].data.f,
															   outX2 + outY2);
								
								//Unchanging Pointers...
								float *oldValue = FSFloatPtrOffset(advectionIn[k].data.f,
																   x*advectionIn[k].strideX 
																   + y*advectionIn[k].strideY);
								float *stamDest = FSFloatPtrOffset(advectionOut[k].data.f,
																   x*advectionOut[k].strideX
																   + y*advectionOut[k].strideY);
								float *mcDest = FSFloatPtrOffset(advectionFix[k].data.f,
																 x*advectionFix[k].strideX
																 + y*advectionFix[k].strideY);
								
								for (c=0; c<advectionIn[k].components; c++)
								{									
									mcDest[c] = stamDest[c] + 0.5f * (oldValue[c] -
																	  LinearInterpolation(
																			 new_scaleX, new_scaleY,
																			 outZZ[c], outOZ[c],
																			 outZO[c], outOO[c]));
									
									float minimum = QSmallest(inZZ[c], inOZ[c], inZO[c], inOO[c]);
									float maximum = QLargest(inZZ[c], inOZ[c], inZO[c], inOO[c]);
									
									Clamp(mcDest[c], minimum, maximum);
								}
							}
							break;
							
						case FSCPU_Type_Character2D:
							for (c=0; c<advectionIn[k].components; c++)
							{
								unsigned char *oldValue = advectionIn[k].data.c
												+ x*advectionIn[k].strideX
												+ y*advectionIn[k].strideY;
								
								unsigned char *stamDest = advectionOut[k].data.c
												+ x*advectionOut[k].strideX
												+ y*advectionOut[k].strideY;
								
								unsigned char *mcDest = advectionFix[k].data.c
												+ x*advectionFix[k].strideX
												+ y*advectionFix[k].strideY;
								
								unsigned char minimum = FSCharacterMinimum(advectionIn[k].data.c,
																		   advectionIn[k].strideX,
																		   advectionIn[k].strideY,
																		   nBackX, nBackY, x2, y2,c);
								
								unsigned char maximum = FSCharacterMaximum(advectionIn[k].data.c,
																		   advectionIn[k].strideX,
																		   advectionIn[k].strideY,
																		   nBackX, nBackY, x2, y2,c);
								
								mcDest[c] =	Clamp((float)stamDest[c] + 0.5f * (float)oldValue[c]
												  - 0.5f * FSCharacterDataLinearInterpolationNoClamp(
																	 advectionOut[k].data.c,
																	 new_scaleX, new_scaleY,
																	 advectionOut[k].strideX,
																	 advectionOut[k].strideY,
																	 new_nBackX,new_nBackY,
																	 new_x2,new_y2,c) + 0.55f,minimum,maximum);
							}
							break;
					}
				}	//End for (number of streams)
			}	//End if (are there collisions?)
		}
		
		y = OSAtomicIncrement32Barrier(atomic)-1;
	}
}

#undef t_FS_Name
