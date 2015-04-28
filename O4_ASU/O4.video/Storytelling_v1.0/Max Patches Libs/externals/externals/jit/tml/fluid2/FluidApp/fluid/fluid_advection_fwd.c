/*
 *  fluid_advection_fwd.c
 *  FluidApp
 *
 */

#include "fluid_macros_2.h"
#include "fluid_cpu.h"
#include <math.h>
#include <stdio.h>

#ifdef __SSE3__
#include <xmmintrin.h>
#include <emmintrin.h>
#include <pmmintrin.h>
#include <tmmintrin.h>
//#undef __SSE3__
#endif

#ifdef CELL
#include "altivec.h"
#endif

void fluid_advection_fwd_velocity(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct advection_stam_velocity *d = &mode->advection_stam_velocity;
	
	int w = fieldWidth(d->srcVelX);
	int h = fieldHeight(d->srcVelY);
	
	float *velX		= fieldData(d->srcVelX);
	float *velY		= fieldData(d->srcVelY);
	
	int sY = fieldStrideY(d->srcVelY);
	
	float timestep = -d->timestep / 18.0f;	// (2.0f * 9.0f)
	
	int x;
	if (y==0)
	{
	}
	else if (y == h-1)
	{
	}
	else
	{
#ifdef __APPLE_ALTIVEC__
		
		float *velDestX	= fieldData(d->dstVelX);
		float *velDestY	= fieldData(d->dstVelY);
		
		vector float *vVelX = (vector float*)fluidFloatPointer(velX, y*sY);
		vector float *vVelY = (vector float*)fluidFloatPointer(velY, y*sY);
		
		vector float *vVelYP = (vector float*)fluidFloatPointer(velY, (y-1)*sY);
		vector float *vVelYN = (vector float*)fluidFloatPointer(velY, (y+1)*sY);
		
		vector float *vVelXP = (vector float*)fluidFloatPointer(velX, (y-1)*sY);
		vector float *vVelXN = (vector float*)fluidFloatPointer(velX, (y+1)*sY);
		
		vector float *vDVelX = (vector float*)fluidFloatPointer(velDestX, y*sY);
		vector float *vDVelY = (vector float*)fluidFloatPointer(velDestY, y*sY);
		
		vector float vT = {timestep, timestep, timestep, timestep};
		vector float vZero = {0,0,0,0};
		vector float vPN = {ADVECT_DIST,ADVECT_DIST,ADVECT_DIST,ADVECT_DIST};
		vector float vNN = {-ADVECT_DIST,-ADVECT_DIST,-ADVECT_DIST,-ADVECT_DIST};
		
#define ADVECT_X_PRE(n)															\
		vector float sl_vx ## n = vec_sld(vVelX[x + n], vVelX[x+1 + n],4);		\
		vector float sr_vx ## n = vec_sld(vVelX[x-1 + n], vVelX[x + n], 12);
		
#define ADVECT_Y_PRE(n)															\
		vector float sl_vy ## n = vec_sld(vVelY[x + n], vVelY[x+1 + n],4);		\
		vector float sr_vy ## n = vec_sld(vVelY[x-1 + n], vVelY[x + n], 12);
		
#define ADVECT_X_POST(n)												\
		vector float postX ## n = vec_madd(vT, vec_madd(vVelX[x+n],		\
							vec_sub(sl_vx ## n, sr_vx ## n),			\
								vec_madd(vVelY[x+n],					\
									vec_sub(vVelXN[x+n], vVelXP[x+n]),	\
										 vZero)),						\
							vVelX[x+n]);
		
#define ADVECT_X_ASSIGN(n)											\
		vDVelX[x+n] = vec_min(vec_max(postX ## n, vNN), vPN);
		
#define ADVECT_Y_POST(n)											\
		vector float postY ## n = vec_madd(vT, vec_madd(vVelX[x+n],	\
						vec_sub(sl_vy ## n, sr_vy ## n),			\
							vec_madd(vVelY[x+n],					\
								vec_sub(vVelYN[x+n], vVelYP[x+n]),	\
									vZero)),						\
						vVelY[x+n]);
		
#define ADVECT_Y_ASSIGN(n)										\
		vDVelY[x+n] = vec_min(vec_max(postY ## n, vNN), vPN);
							
		x = 1;
		while (x<w/4-1 && x%4 != 0)
		{
			ADVECT_X_PRE(0)
			ADVECT_X_POST(0)
			ADVECT_X_ASSIGN(0)
			
			x++;
		}
		while (x<w/4-4)
		{
			ADVECT_X_PRE(0)
			ADVECT_X_PRE(1)
			ADVECT_X_PRE(2)
			ADVECT_X_PRE(3)
			
			ADVECT_X_POST(0)
			ADVECT_X_POST(1)
			ADVECT_X_POST(2)
			ADVECT_X_POST(3)
			
			ADVECT_X_ASSIGN(0)
			ADVECT_X_ASSIGN(1)
			ADVECT_X_ASSIGN(2)
			ADVECT_X_ASSIGN(3)
			
			x+=4;
		}
		while (x<w/4-1)
		{
			ADVECT_X_PRE(0)
			ADVECT_X_POST(0)
			
			ADVECT_X_ASSIGN(0)
			
			x++;
		}
		
		x = 1;
		while (x < w/4 - 1 && x%4 != 0)
		{			
			ADVECT_Y_PRE(0)
			ADVECT_Y_POST(0)
			ADVECT_Y_ASSIGN(0)
			x++;
		}
		while (x<w/4-4)
		{
			ADVECT_Y_PRE(0)
			ADVECT_Y_PRE(1)
			ADVECT_Y_PRE(2)
			ADVECT_Y_PRE(3)
			
			ADVECT_Y_POST(0)
			ADVECT_Y_POST(1)
			ADVECT_Y_POST(2)
			ADVECT_Y_POST(3)
			
			ADVECT_Y_ASSIGN(0)
			ADVECT_Y_ASSIGN(1)
			ADVECT_Y_ASSIGN(2)
			ADVECT_Y_ASSIGN(3)
			
			x+=4;
		}
		while (x < w/4 - 1)
		{			
			ADVECT_Y_PRE(0)
			ADVECT_Y_POST(0)
			ADVECT_Y_ASSIGN(0)
			x++;
		}
#elif defined __SSE3__
		__m128 *vVelX = (__m128*)fluidFloatPointer(velX, y*sY);
		__m128 *vVelY = (__m128*)fluidFloatPointer(velY, y*sY);
		
		__m128 *vVelYP = (__m128*)fluidFloatPointer(velY, (y-1)*sY);
		__m128 *vVelYN = (__m128*)fluidFloatPointer(velY, (y+1)*sY);
		
		__m128 *vVelXP = (__m128*)fluidFloatPointer(velX, (y-1)*sY);
		__m128 *vVelXN = (__m128*)fluidFloatPointer(velX, (y+1)*sY);
		
		__m128 vT = {timestep, timestep, timestep, timestep};
		
		__m128 vPN = {ADVECT_DIST,ADVECT_DIST,ADVECT_DIST,ADVECT_DIST};
		__m128 vNN = {-ADVECT_DIST,-ADVECT_DIST,-ADVECT_DIST,-ADVECT_DIST};
		
		for (x=1; x<w/4-2; x+=2)
		{
			__m128 sl_vx = _mm_srli_sf128(vVelX[x],4);
			sl_vx = _mm_add_ps(sl_vx,_mm_slli_sf128(vVelX[x+1],12));
			
			__m128 sr_vx = _mm_slli_sf128(vVelX[x],4);
			sr_vx = _mm_add_ps(sr_vx,_mm_srli_sf128(vVelX[x-1],12));
			
			
			__m128 sl_vx_2 = _mm_srli_sf128(vVelX[x+1],4);
			sl_vx_2 = _mm_add_ps(sl_vx_2,_mm_slli_sf128(vVelX[x+2],12));
			
			__m128 sr_vx_2 = _mm_slli_sf128(vVelX[x+1],4);
			sr_vx_2 = _mm_add_ps(sr_vx_2,_mm_srli_sf128(vVelX[x],12));
			
			
			
			__m128 out1 = _mm_add_ps(vVelX[x],
							_mm_mul_ps(vT,
								_mm_add_ps(
									_mm_mul_ps(vVelY[x],
											   _mm_sub_ps(vVelXN[x], vVelXP[x])),
									_mm_mul_ps(vVelX[x],
											   _mm_sub_ps(sl_vx, sr_vx)))));
			
	
			__m128 out2 = _mm_add_ps(vVelX[x+1],
							  _mm_mul_ps(vT,
								 _mm_add_ps(
									_mm_mul_ps(vVelY[x+1],
											   _mm_sub_ps(vVelXN[x+1], vVelXP[x+1])),
									_mm_mul_ps(vVelX[x+1],
											   _mm_sub_ps(sl_vx_2, sr_vx_2)))));
			
			vVelX[x] = _mm_min_ps(_mm_max_ps(out1, vNN), vPN);
			vVelX[x+1] = _mm_min_ps(_mm_max_ps(out2, vNN), vPN);
		}
			
		for (x=1; x<w/4-2; x+=2)
		{
			__m128 sl_vy = _mm_srli_sf128(vVelY[x],4);
			sl_vy = _mm_add_ps(sl_vy,_mm_slli_sf128(vVelY[x+1],12));
			
			__m128 sr_vy = _mm_slli_sf128(vVelY[x],4);
			sr_vy = _mm_add_ps(sr_vy,_mm_srli_sf128(vVelY[x-1],12));
			
			
			__m128 sl_vy_2 = _mm_srli_sf128(vVelY[x+1],4);
			sl_vy_2 = _mm_add_ps(sl_vy_2,_mm_slli_sf128(vVelY[x+2],12));
			
			__m128 sr_vy_2 = _mm_slli_sf128(vVelY[x+1],4);
			sr_vy_2 = _mm_add_ps(sr_vy_2,_mm_srli_sf128(vVelY[x],12));
			
			
			__m128 out1 = _mm_add_ps(vVelY[x],
							   _mm_mul_ps(vT,
								  _mm_add_ps(
									 _mm_mul_ps(vVelY[x],
												_mm_sub_ps(vVelYN[x], vVelYP[x])),
									 _mm_mul_ps(vVelX[x],
												_mm_sub_ps(sl_vy, sr_vy)))));
			
			__m128 out2 = _mm_add_ps(vVelY[x+1],
							  _mm_mul_ps(vT,
									 _mm_add_ps(
										_mm_mul_ps(vVelY[x+1],
											   _mm_sub_ps(vVelYN[x+1], vVelYP[x+1])),
										_mm_mul_ps(vVelX[x+1],
											   _mm_sub_ps(sl_vy_2, sr_vy_2)))));
			
			vVelY[x] = _mm_min_ps(_mm_max_ps(out1, vNN), vPN);
			vVelY[x+1] = _mm_min_ps(_mm_max_ps(out2, vNN), vPN);
		}
#else
		float *velDestX	= fieldData(d->dstVelX);
		float *velDestY	= fieldData(d->dstVelY);
		int sX = fieldStrideX(d->srcVelX);
		for (x=1; x<w-1; x++)
		{
			float *fVelDestX = fluidFloatPointer(velDestX, x*sX + y*sY);
			float fDataXM = fluidFloatPointer(velX, (x-1)*sX + y*sY)[0];
			float fDataX = fluidFloatPointer(velX, x*sX + y*sY)[0];
			float fDataXP = fluidFloatPointer(velX, (x+1)*sX + y*sY)[0];
			
			float fDataXM2 = fluidFloatPointer(velX, (x)*sX + (y-1)*sY)[0];
			float fDataXP2 = fluidFloatPointer(velX, (x)*sX + (y+1)*sY)[0];
			
			float fDataY = fluidFloatPointer(velY, x*sX + y*sY)[0];

			fVelDestX[0] = fDataX * timestep * (fDataXP - fDataXM)
							+ fDataY * timestep * (fDataXP2 - fDataXM2)
							+ fDataX;
			
//				if (fVelDestX[0] < -9)	fVelDestX[0] = -9;
//				if (fVelDestX[0] > 9)	fVelDestX[0] = 9;
		}
		
		for (x=1; x<w-1; x++)
		{
			float *fVelDestY = fluidFloatPointer(velDestY, x*sX + y*sY);
			float fDataYM = fluidFloatPointer(velY, (x)*sX + (y-1)*sY)[0];
			float fDataY = fluidFloatPointer(velY, x*sX + y*sY)[0];
			float fDataYP = fluidFloatPointer(velY, (x)*sX + (y+1)*sY)[0];
			
			
			float fDataYMX = fluidFloatPointer(velY, (x-1)*sX + y*sY)[0];
			float fDataYPX = fluidFloatPointer(velY, (x+1)*sX + y*sY)[0];
			
			float fDataX = fluidFloatPointer(velX, x*sX + y*sY)[0];
			
			fVelDestY[0] = fDataY * timestep * (fDataYP - fDataYM)
							+ fDataX * timestep * (fDataYPX - fDataYMX)
							+ fDataY;
			
//				if (fVelDestY[0] < -9)	fVelDestY[0] = -9;
//				if (fVelDestY[0] > 9)	fVelDestY[0] = 9;

		}
#endif
	}
}


void fluid_advection_fwd_dens(fluid *in_f, int y, pvt_fluidMode *mode)
{
	struct repos *data = &mode->repos;
	
	int w = fieldWidth(data->reposX);
	int h = fieldHeight(data->reposX);
	int sY = fieldStrideY(data->reposX);
	
	int dY = fieldStrideY(data->src);
	int dC = fieldComponents(data->src);
	
	float *reposX = fieldData(data->reposX);
	float *reposY = fieldData(data->reposY);
	float *src = fieldData(data->src);
	
	float timestep = -data->timestep / 36.0f;
	
	int x;
	if (y==0)
	{
	}
	else if (y == h-1)
	{
	}
	else
	{
#ifdef __SSE3__
		
		__m128 *vSrc = (__m128*)fluidFloatPointer(src, dY*y);
		__m128 *vSrcP = (__m128*)fluidFloatPointer(src, dY*(y-1));
		__m128 *vSrcN = (__m128*)fluidFloatPointer(src, dY*(y+1));
		
		float *velX = fluidFloatPointer(reposX, y*sY);
		float *velY = fluidFloatPointer(reposY, y*sY);
		
		__m128 vT = {timestep, timestep, timestep, timestep};
		__m128 dvs = {1.0f/8.0f,1.0f/8.0f,1.0f/8.0f,1.0f/8.0f};
		__m128 four = {4.0f,4.0f,4.0f,4.0f};
#else
		int dX = fieldStrideX(data->src);
		float *dst = fieldData(data->dst);
		int sX = fieldStrideX(data->reposX);
#endif

			
#ifdef __SSE3__
		dC /= 4;
		for (x=1; x<w-2; x+=2)
		{
			int c;
			
			__m128 vX = {velX[x], velX[x], velX[x], velX[x]};
			__m128 vY = {velY[x], velY[x], velY[x], velY[x]};
			
			__m128 vX_2 = {velX[x+1], velX[x+1], velX[x+1], velX[x+1]};
			__m128 vY_2 = {velY[x+1], velY[x+1], velY[x+1], velY[x+1]};
			
			/*__m128 vX_3 = {velX[x+2], velX[x+2], velX[x+2], velX[x+2]};
			__m128 vY_3 = {velY[x+2], velY[x+2], velY[x+2], velY[x+2]};
			
			__m128 vX_4 = {velX[x+3], velX[x+3], velX[x+3], velX[x+3]};
			__m128 vY_4 = {velY[x+3], velY[x+3], velY[x+3], velY[x+3]};*/
#else
		for (x=1; x<w-1; x++)
		{
			int c;
			
			float velX = fluidFloatPointer(reposX, x*sX + y*sY)[0];
			float velY = fluidFloatPointer(reposY, x*sX + y*sY)[0];
#endif
			
			//if (fabs(velX) > 0.0001f || fabs(velY) > 0.0001f)
			{
#ifdef __SSE3__
				for (c=0; c<dC; c++)
				{
					//Work
					__m128 top = _mm_add_ps(
											_mm_add_ps(vSrc[x-1],vSrc[x+1]),
											_mm_add_ps(vSrcN[x], vSrcP[x]));
					top = _mm_add_ps(_mm_mul_ps(four, vSrc[x]), top);
					top = _mm_mul_ps(top, dvs);
					
					
					__m128 top_2 = _mm_add_ps(
											  _mm_add_ps(vSrc[x],vSrc[x+2]),
											  _mm_add_ps(vSrcN[x+1], vSrcP[x+1]));
					top_2 = _mm_add_ps(_mm_mul_ps(four, vSrc[x+1]), top_2);
					top_2 = _mm_mul_ps(top_2, dvs);
					
					__m128 cx = _mm_mul_ps(vX, _mm_sub_ps(vSrc[x+1], vSrc[x-1]));
					__m128 cy = _mm_mul_ps(vY, _mm_sub_ps(vSrcN[x], vSrcP[x]));
					
					__m128 cx_2 = _mm_mul_ps(vX_2, _mm_sub_ps(vSrc[x+2], vSrc[x]));
					__m128 cy_2 = _mm_mul_ps(vY_2, _mm_sub_ps(vSrcN[x+1], vSrcP[x+1]));
					
					
					/*__m128 top_3 = _mm_add_ps(
											  _mm_add_ps(vSrc[x+1],vSrc[x+3]),
											  _mm_add_ps(vSrcN[x+2], vSrcP[x+2]));
					top_3 = _mm_add_ps(_mm_mul_ps(four, vSrc[x+2]), top_3);
					top_3 = _mm_mul_ps(top_3, dvs);
					
					__m128 cx_3 = _mm_mul_ps(vX_3, _mm_sub_ps(vSrc[x+3], vSrc[x+1]));
					__m128 cy_3 = _mm_mul_ps(vY_3, _mm_sub_ps(vSrcN[x+2], vSrcP[x+2]));
					
					
					__m128 top_4 = _mm_add_ps(
											  _mm_add_ps(vSrc[x+2],vSrc[x+4]),
											  _mm_add_ps(vSrcN[x+3], vSrcP[x+3]));
					top_4 = _mm_add_ps(_mm_mul_ps(four, vSrc[x+3]), top_4);
					top_4 = _mm_mul_ps(top_4, dvs);
					
					__m128 cx_4 = _mm_mul_ps(vX_4, _mm_sub_ps(vSrc[x+4], vSrc[x+2]));
					__m128 cy_4 = _mm_mul_ps(vY_4, _mm_sub_ps(vSrcN[x+3], vSrcP[x+3]));*/
					
					
					//Assign
					vSrc[x] = _mm_add_ps(top, _mm_mul_ps(vT, _mm_add_ps(cx, cy)));
					
					vSrc[x+1] = _mm_add_ps(top_2, _mm_mul_ps(vT, _mm_add_ps(cx_2, cy_2)));
					
					/*vSrc[x+2] = _mm_add_ps(top_3, _mm_mul_ps(vT, _mm_add_ps(cx_3, cy_3)));
					
					vSrc[x+3] = _mm_add_ps(top_4, _mm_mul_ps(vT, _mm_add_ps(cx_4, cy_4)));*/
				}
#else
				float *dest = fluidFloatPointer(dst, dX*x + dY*y);
				for (c=0; c<dC; c++)
				{
					//Compute change of C...
					float a00 = fluidFloatPointer(src, dX*x + dY*y)[c];
					float aM0 = fluidFloatPointer(src, dX*(x-1) + dY*y)[c];
					float aP0 = fluidFloatPointer(src, dX*(x+1) + dY*y)[c];
					float a0M = fluidFloatPointer(src, dX*x + dY*(y-1))[c];
					float a0P = fluidFloatPointer(src, dX*x + dY*(y+1))[c];
					
					dest[c] +=// (aM0 + aP0 + a0M + a0P + 4.0f*a00) * (1.0f/8.0f)
						   timestep * (velX * (aP0 - aM0) + velY * (a0P - a0M));
					
					//if (dest[c] < 0.0f)	dest[c] = 0;
					//else if (dest[c] > 1.0f)	dest[c] = 1;
				}
#endif
			}
			/*else
			{
				for (c=0; c<dC; c++)
				{
					//Compute change of C...
					float a00 = fluidFloatPointer(src, dX*x + dY*y)[c];
					dest[c] = a00;
				}
			}*/
		}
		
//		if (data->clamp == 1)
//		{
//			for (x=1; x<w-1; x++)
//			{
//				int c;
//				
//				for (c=0; c<dC; c++)
//				{
//					//float a00 = fluidFloatPointer(src, dX*x + dY*y)[c];
//					float aM0 = fluidFloatPointer(src, dX*(x-1) + dY*y)[c];
//					float aP0 = fluidFloatPointer(src, dX*(x+1) + dY*y)[c];
//					float a0M = fluidFloatPointer(src, dX*x + dY*(y-1))[c];
//					float a0P = fluidFloatPointer(src, dX*x + dY*(y+1))[c];			
//					float *dest = fluidFloatPointer(dst, dX*x + dY*y);
//					
//					dest[c] = (aM0 + aP0 + a0M + a0P) * 0.25f;
//				}
//			}
//		}
	}
}
