/*
 *  FSCPU_Jacobi_Impl.h
 *  CocoaGame
 *
 */

#ifdef tFS_Name
#define t_FS_JP_Name FSConcat(FSCPU_JacobiPressure, tFS_Name)
#else
#define t_FS_JP_Name FSCPU_JacobiPressure
#endif

//#ifdef tFS_

void FSCPU_JacobiPressure(int in_nIterations, FXTaskSequence *in_seq,
						  int32_t *atomicY,
						  FSStreamDesc velocity,
						  FSStreamDesc collision,
						  FSStreamDesc pressure[])
{
	//Make sure that all sizes are the same...
	if (velocity.width != collision.width
		|| velocity.width != pressure[0].width
		|| velocity.width != pressure[1].width
		|| velocity.height != collision.height
		|| velocity.height != pressure[0].height
		|| velocity.height != pressure[1].height)
	{
		[NSException raise:@"Jacobi" format:@"Jacobi: Fields of different size!"];
	}
	
	//Other checks...
	if (velocity.type != FSCPU_Type_Float2D
		|| velocity.components != 2
		|| collision.type != FSCPU_Type_Character2D
		|| collision.components != 1
		|| pressure[0].type != FSCPU_Type_Float2D
		|| pressure[0].components != 1
		|| pressure[1].type != FSCPU_Type_Float2D
		|| pressure[1].components != 1)
	{
		[NSException raise:@"Jacobi" format:@"Jacobi: type/component mismatch!"];
	}
	
	FSStreamDesc *p1 = pressure;
	FSStreamDesc *p2 = pressure+1;
	
	//Good, now we iterate...
	int itrNo,x,y;
	for (itrNo =0; itrNo < in_nIterations; itrNo++)
	{
		y = OSAtomicIncrement32Barrier(atomicY)-1;
		
		
		for (; y<velocity.height;)
		{
			int yp1 = (y+1)%velocity.height;
			int ym1 = (y+velocity.height-1)%velocity.height;
			
			int xm1 = velocity.width-1;
			
			int colStrideY = y*collision.strideY;
			int colStrideX = 0;
			
			int p1StrideY = y*p1->strideY;
			int p2StrideY = y*p2->strideY;
			
			int p2StrideYP1 = yp1*p2->strideY;
			int p2StrideYM1 = ym1*p2->strideY;
			
			int vStrideY = y*velocity.strideY;
			int vStrideYP1 = yp1*velocity.strideY;
			int vStrideYM1 = ym1*velocity.strideY;
			
			int p2StrideX = 0;
			int p2StrideXM1 = xm1*p2->strideX;
			
			int vStrideX = 0;
			int vStrideXM1 = xm1*velocity.strideX;
			
			int vStrideXP1 = 0;
			int p2StrideXP1 = 0;
			int p1StrideX = 0;
			
			float srcLeftVal = *(FSFloatPtrOffset(p2->data.f,
												p2StrideXM1 + p2StrideY));
			
			float srcVal = *(FSFloatPtrOffset(p2->data.f,
												 p2StrideX + p2StrideY));
			
			
			float vLeftVal = *(FSFloatPtrOffset(velocity.data.f,
											vStrideXM1
											+ vStrideY));
			
			float vVal = *(FSFloatPtrOffset(velocity.data.f,
												vStrideX
												+ vStrideY));
			for(x=0; x<velocity.width; x++)
			{
				//NOTE: Under PPC - Int division/mod very expensive.  Use
				//		?: instead!
				int xp1;
				if (x+1<velocity.width)
				{
					xp1 = x+1;
					vStrideXP1 += velocity.strideX;
					p2StrideXP1 +=p2->strideX;
				}
				else
				{
					xp1 = 0;
					vStrideXP1 = 0;
					p2StrideXP1 = 0;
				}
				
				unsigned char ptrCollision = collision.data.c[colStrideX
															+ colStrideY];
				colStrideX += collision.strideX;
				
				float *dest = FSFloatPtrOffset(p1->data.f,
											   p1StrideX + p1StrideY);
				p1StrideX += p1->strideX;
				
				float srcRightVal = *(FSFloatPtrOffset(p2->data.f,
												  p2StrideXP1 + p2StrideY));
				
				float *srcUp = FSFloatPtrOffset(p2->data.f,
												  p2StrideX + p2StrideYM1);
				
				float *srcDown = FSFloatPtrOffset(p2->data.f,
												  p2StrideX + p2StrideYP1);
				
				float vRightVal = *(FSFloatPtrOffset(velocity.data.f,
												vStrideXP1
												+ vStrideY));
				
				float *vUp = FSFloatPtrOffset(velocity.data.f,
												vStrideX
												+ vStrideYM1);
				
				float *vDown = FSFloatPtrOffset(velocity.data.f,
												vStrideX
												+ vStrideYP1);
				
				//No collisions - regular pressure EQ
				if (ptrCollision == 0)
				{
					*dest = (srcLeftVal + srcRightVal + *srcUp + *srcDown
							- (vRightVal - vLeftVal + vDown[1] - vUp[1]))*0.25f;
				}
				
				//Collisions - compensate
				else
				{
					unsigned char left, right, up, down;
					
					left = collision.data.c[xm1*collision.strideX
											+ y*collision.strideY];
					right = collision.data.c[xp1*collision.strideX
											 + y*collision.strideY];
					up = collision.data.c[x*collision.strideX
										  + ym1*collision.strideY];
					down = collision.data.c[x*collision.strideX
											+ yp1*collision.strideY];
					
					if (left == 0)
					{
						*dest = srcLeftVal;
					}
					else if (right == 0)
					{
						*dest = srcRightVal;
					}
					else if (up == 0)
					{
						*dest = *srcUp;
					}
					else if (down == 0)
					{
						*dest = *srcDown;
					}
					else
						*dest = 0;
				}
				
				
				xm1 = x;
				
				srcLeftVal = srcVal;
				srcVal = srcRightVal;
				
				vLeftVal = vVal;
				vVal = vRightVal;
				
				p2StrideXM1 = p2StrideX;
				p2StrideX = p2StrideXP1;
				
				vStrideXM1 = vStrideX;
				vStrideX = vStrideXP1;
			}
			
			y = OSAtomicIncrement32Barrier(atomicY)-1;
		}
		
		[in_seq waitForTask];
		
		FSStreamDesc *ptmp = p1;
		p1 = p2;
		p2 = ptmp;
		
	}
	
	//Finally apply the pressure
	y = OSAtomicIncrement32Barrier(atomicY)-1;
	for (; y<velocity.height; )
	{
		for (x=0; x<velocity.width; x++)
		{
			int xp1 = (x+1)%velocity.width;
			int yp1 = (y+1)%velocity.height;
			
			int xm1 = (x+velocity.width-1)%velocity.width;
			int ym1 = (y+velocity.height-1)%velocity.height;
			
			float *srcLeft = FSFloatPtrOffset(p2->data.f,
											  xm1*p2->strideX + y*p2->strideY);
			
			float *srcRight = FSFloatPtrOffset(p2->data.f,
											   xp1*p2->strideX + y*p2->strideY);
			
			float *srcUp = FSFloatPtrOffset(p2->data.f,
											x*p2->strideX + ym1*p2->strideY);
			
			float *srcDown = FSFloatPtrOffset(p2->data.f,
											  x*p2->strideX + yp1*p2->strideY);
			
			float *vDest = FSFloatPtrOffset(velocity.data.f,
											x*velocity.strideX
											+ y*velocity.strideY);
			
			vDest[0] -= (srcRight[0] - srcLeft[0]);
			vDest[1] -= (srcDown[0] - srcUp[0]);
		}
		y = OSAtomicIncrement32Barrier(atomicY)-1;
	}
	[in_seq waitForTask];
}



void FSCPU_JacobiDiffusion(int in_nIterations,
						   FXTaskSequence *in_seq, int32_t *atomicY,
						   FSStreamDesc *v1, FSStreamDesc *v2,
						   FSStreamDesc *collision,
						   float viscocity, float timestep)
{
	float alpha = 1.0f/viscocity * timestep;
	float beta = 1.0f/(alpha + 4);
	
	//Validate dimensions
	if (v1->width != v2->width ||
		v1->width != collision->width ||
		v1->height != v2->height ||
		v1->height != collision->height)
	{
		[NSException raise:@"Jacobi" format:@"Jacobi: Sizes differ"];
	}
	
	//Validate the rest...
	if (v1->type != FSCPU_Type_Float2D
		|| v2->type != FSCPU_Type_Float2D
		|| collision->type != FSCPU_Type_Character2D
		|| v1->components != 2
		|| v2->components != 2
		|| collision->components != 1)
	{
		[NSException raise:@"Jacobi" format:@"Jacobi: Wrong data types"];
	}
	
	//Now loop...
	int itrNo,x,y;
	for (itrNo =0; itrNo < in_nIterations; itrNo++)
	{
		y = OSAtomicIncrement32Barrier(atomicY)-1;
		
		for (; y<v1->height;)
		{
			int colStrideY = y*collision->strideY;
			int colStrideX = 0;
			
			int xm1 = v1->width-1;
			int ym1 = (y+v1->height-1)%v1->height;
			int yp1 = (y+1)%v1->height;
			
			int curStrideX2 = 0;
			int prevStrideX2 = xm1*v2->strideX;
			
			int v1StrideY = y*v1->strideY;
			int v2StrideY = y*v2->strideY;
			int v2StrideYP1 = yp1*v2->strideY;
			int v2StrideYM1 = ym1*v2->strideY;
			
			int v1StrideX = 0;
			
			int nextStrideX2 = 0;
			
			float *v2Left = FSFloatPtrOffset(v2->data.f,
												 prevStrideX2
												 + v2StrideY);
			
			for(x=0; x<v1->width; x++)
			{
				//Base: 10fps, DT=0.1, res=256, c2d.
				//	- Incrementally compute xm1: 11fps, DT=0.08
				//	- Moving y out (normal no change - compiler caught it!)
				//	- Did some for pressure: 11fps, DT=0.083
				//	- Removed all integer mults in inner loop: 14fps, DT=0.06
				
				//NOTE: Under PPC - Int division/mod very expensive.  Use
				//		?: instead!
				int xp1;
				if (x+1<v1->width)
				{
					xp1 = x+1;
					nextStrideX2 += v2->strideX;
				}
				else
				{
					xp1 = 0;
					nextStrideX2 = 0;
				}
				
				unsigned char collisionDat = collision->data.c[colStrideX
															   + colStrideY];
				colStrideX += collision->strideX;
				
				float *dest = FSFloatPtrOffset(v1->data.f,
											   v1StrideX
												+ v1StrideY);
				v1StrideX += v1->strideX;
				
				float *v2loc = FSFloatPtrOffset(v2->data.f,
												curStrideX2
												+ v2StrideY);
				
				float *v2Right = FSFloatPtrOffset(v2->data.f,
												  nextStrideX2
												  + v2StrideY);
				
				float *v2Up = FSFloatPtrOffset(v2->data.f,
											   curStrideX2
											   + v2StrideYM1);
				
				float *v2Down = FSFloatPtrOffset(v2->data.f,
												 curStrideX2
												 + v2StrideYP1);
				
				//Branch has next to no effect on performance...
				if (collisionDat == 0)
				{
					dest[0] = (v2Left[0] + v2Right[0] + v2Up[0] + v2Down[0]
								+ v2loc[0]*alpha)*beta;
					
					dest[1] = (v2Left[1] + v2Right[1] + v2Up[1] + v2Down[1]
								+ v2loc[1]*alpha)*beta;
				}
				else
				{
					unsigned char left, right, up, down;
					
					left = collision->data.c[xm1*collision->strideX
											+ y*collision->strideY];
					right = collision->data.c[xp1*collision->strideX
											 + y*collision->strideY];
					up = collision->data.c[x*collision->strideX
										  + ym1*collision->strideY];
					down = collision->data.c[x*collision->strideX
											+ yp1*collision->strideY];
					
					if (left == 0)
					{
						dest[0] = -v2Left[0];
						dest[1] = -v2Left[1];
					}
					else if (right == 0)
					{
						dest[0] = -v2Right[0];
						dest[1] = -v2Right[1];
					}
					else if (up == 0)
					{
						dest[0] = -v2Up[0];
						dest[1] = -v2Up[1];
					}
					else if (down == 0)
					{
						dest[0] = -v2Down[0];
						dest[1] = -v2Down[1];
					}
					else
					{
						dest[0] = 0;
						dest[1] = 0;
					}
				}
				
				xm1 = x;
				
				prevStrideX2 = curStrideX2;
				curStrideX2 = nextStrideX2;
				
				v2Left = v2loc;
			}
			y = OSAtomicIncrement32Barrier(atomicY)-1;
		}
		
		[in_seq waitForTask];
		FSStreamDesc *tmp = v1;
		v1 = v2;
		v2 = tmp;
	}
}

