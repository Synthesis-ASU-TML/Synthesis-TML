

extern "C" {
	#include "jit.common.h"
}


struct pixData
{
	//The counter...
	long counter;		//Score on the counter
	long bgCount;		//Score on the background
	
	//Blob ID (so we can identify/track blobs)
	long blobID;

	//Color data (prev. for counter)
	unsigned char r;
	unsigned char g;
	unsigned char b;
	
	//Color of the background (once graduated)
	unsigned char bg_r;
	unsigned char bg_g;
	unsigned char bg_b;
	
	//Value for smoothing.  Better way to get edges.
	//	(We let foreground emerge rather than pop in - should be much more stable!)
	long smooth;
	
	//Change of the color of the background (once graduate)
	float drx, dry;
	float dgx, dgy;
	float dbx, dby;
	
	//The status... ('s'=static, 'm'=moving, '?' = unknown, '_' = shadow, '.' = movement near shadow)
	unsigned char status;
};


typedef struct _jit_tml_rockeby 
{
	t_object				ob;
	
	long thresholdMin;				//How much error to accept
	long thresholdMax;
	long movement;
	long minWeight;
	float derivative;

	float shadow;

	long width;
	long height;
	long smoothIn;
	long smoothOut;
	pixData *pData;
	
} t_jit_tml_rockeby ;



void *_jit_tml_rockeby_class;

//Various methods
t_jit_tml_rockeby *jit_tml_rockeby_new(void);
void jit_tml_rockeby_allocate(t_jit_tml_rockeby *x, long width, long height);
void jit_tml_rockeby_free(t_jit_tml_rockeby *x);
t_jit_err jit_tml_rockeby_matrix_calc(t_jit_tml_rockeby *x, void *inputs, void *outputs);
t_jit_err jit_tml_rockeby_init(void);

//Getters/setters for members
t_jit_err jit_tml_rockeby_setThreshold(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_rockeby_setShadow(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_rockeby_setMovement(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_rockeby_setMinWeight(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_rockeby_setDerivative(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_rockeby_setSmooth(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv);


void eraseBlob(t_jit_tml_rockeby *o, int x, int y)
{
	pixData *p = o->pData + x + y*o->width;
	
	if (p->status != 'm' && p->status != '.' && p->status != '?') return;
	
	p->status = '_';
	p->blobID = -2;
	
	if (x > 0) eraseBlob(o, x-1, y);
	if (y > 0) eraseBlob(o, x, y-1);
	if (x < o->width-1) eraseBlob(o, x+1, y);
	if (y < o->height-1) eraseBlob(o, x, y+1);
}

int markBlob(t_jit_tml_rockeby *o, int x, int y, long bid)
{
	int weight = 0;
	
	pixData *p = o->pData + x + y*o->width;
	if (p->status != 'm' && p->status != '.' && p->status != '?')
		return 0;
	
	if (p->blobID != -1) return 0;
	
	p->blobID = bid;
	
	if (p->status == 'm')	weight = 10;
	else					weight = 1;
	
	if (x > 0) weight += markBlob(o, x-1, y, bid);
	if (y > 0) weight += markBlob(o, x, y-1, bid);
	if (x < o->width-1) weight += markBlob(o, x+1, y, bid);
	if (y < o->height-1) weight += markBlob(o, x, y+1, bid);
	
	return weight;
}


unsigned char clampChar(float inVal)
{
	if (inVal > 255) return 255;
	if (inVal < 0) return 0;
	return (unsigned char) inVal;
}

t_jit_err jit_tml_rockeby_matrix_calc(t_jit_tml_rockeby *x, void *inputs, void *outputs)
{
	void *matrix_image;
	void *matrix_output[4];
	
	unsigned char *data_image;
	unsigned char *data_mask;
	unsigned char *data_output[4];
	
	t_jit_matrix_info	info_image, info_output[4];
	
	t_jit_err err = JIT_ERR_NONE;
	
	matrix_image	= jit_object_method(inputs, _jit_sym_getindex, 0);
	
	if (!matrix_image || !matrix_output)
	{
		error("Missing input/output image!");
		return JIT_ERR_GENERIC;
	}
	
	//Get information on matrix.
	jit_object_method(matrix_image, _jit_sym_getinfo, &info_image);
	
	//Validate required matrices...
	if (info_image.dimcount != 2 || info_image.planecount != 4)
	{
		error("Invalid matrix inputs!");
		return JIT_ERR_GENERIC;
	}
	
	if (info_image.type != _jit_sym_char)
	{
		error("Need characters!");
		return JIT_ERR_GENERIC;
	}
	
	//Matrix width/height
	long width = info_image.dim[0];
	long height = info_image.dim[1];
	long strideX = info_image.dimstride[0];
	long strideY = info_image.dimstride[1];
	
	if (width*height < 1)
	{
		error("Input matrix 1 too small in size");
		return JIT_ERR_GENERIC;
	}
	
	//Resize internal...
	if (width != x->width || height != x->height)
	{
		if (x->pData != NULL) free(x->pData);
		x->pData = (pixData*)malloc(sizeof(pixData) * width * height);
		
		x->width = width;
		x->height = height;
		
		memset(x->pData, 0, sizeof(pixData) * width * height);
	}
	
	//Fetch the input ptr
	jit_object_method(matrix_image, _jit_sym_getdata, &data_image);
	
	//Coerce output (all optional...)
	
	int k;
	for (k=0; k<3; k++)
	{
		matrix_output[k]	= jit_object_method(outputs, _jit_sym_getindex, k);
		
		if (matrix_output[k] == NULL)
			data_output[k] = NULL;
		else
		{
			jit_object_method(matrix_output[k], _jit_sym_getinfo, &info_output[k]);
			
			if (info_image.dimcount != info_output[k].dimcount ||
				info_image.dim[0]	!= info_output[k].dim[0] ||
				info_image.dim[1]	!= info_output[k].dim[1] ||
				info_image.type		!= info_output[k].type ||
				info_output[k].planecount != 4)
			{
				info_output[k].dimcount= info_image.dimcount;
				info_output[k].dim[0]	= info_image.dim[0];
				info_output[k].dim[1]	= info_image.dim[1];
				info_output[k].type	= info_image.type;
				info_output[k].planecount = 4;
				
				if (jit_object_method(matrix_output[k], _jit_sym_setinfo, &info_output[k]))
				{
					error("Unable to resize output matrix %i to match input!", k);
					return JIT_ERR_GENERIC;
				}
				
				jit_object_method(matrix_output[k], _jit_sym_getinfo, &info_output[k]);
			}
			
			//Get data...
			jit_object_method(matrix_output[k], _jit_sym_getdata, &data_output[k]);
		}
	}
	
	//Copy data!
	long nx,ny;
	float avgR = 0;	//Compute the average intensity change so we can use the deviation to extract shadows.
	float avgG = 0;	//and update the background as needed.
	float avgB = 0;
	
	unsigned char *ref;
	unsigned char *out[4];
	unsigned int found = 0;
	
	//Do the background extraction algorithm...
	for (ny=0; ny<height; ny++)
	{
		for (nx=0; nx<width; nx++)
		{
			//Get pointers...
			ref = data_image + nx*strideX + ny*strideY;
			pixData *p = x->pData + nx + ny*width;
			
			//Clear blob data
			p->blobID = -1;
			
			//Update the input...
			int distance = ((int)ref[1] - (int)(p->r)) * ((int)ref[1] - (int)(p->r))
							+ ((int)ref[2] - (int)(p->g)) * ((int)ref[2] - (int)(p->g))
							+ ((int)ref[3] - (int)(p->b)) * ((int)ref[3] - (int)(p->b));

			if (distance < x->movement)
				(p->counter)++;
			else
			{
				(p->counter) = 0;
			
				p->r = ref[1];
				p->g = ref[2];
				p->b = ref[3];
			}
			
			//Figure out if we're moving
			distance = ((int)ref[1] - (int)(p->bg_r)) * ((int)ref[1] - (int)(p->bg_r))
						+ ((int)ref[2] - (int)(p->bg_g)) * ((int)ref[2] - (int)(p->bg_g))
						+ ((int)ref[3] - (int)(p->bg_b)) * ((int)ref[3] - (int)(p->bg_b));
			if (distance < x->movement)
			{
				p->status = 's';
			}
			else
			{
				if (p->bgCount <= x->thresholdMin)
				{
					p->status = '?';
				}
				else
				{
					p->status = 'm';
				}
			}
			
			//Figure out the deviation with the shadows.  (we'll later use this for standard deviation...)
			if (p->bgCount > 0 && p->status =='s')
			{
				found++;
			
				//Update calculations for shadows
				float diff = (1.0f + (float)ref[1]);
				diff/= (1.0f + (float)p->bg_r);
				avgR += diff;
				
				diff = (1.0f + (float)ref[2]);
				diff/= (1.0f + (float)p->bg_g);
				avgG += diff;
				
				diff = (1.0f + (float)ref[3]);
				diff/= (1.0f + (float)p->bg_b);
				avgB += diff;
			}
			
		}
	}
	
	//Find the standard deviation so we can compensate for lighting...
	float stdDevR = 0;
	float maxDevR = 0;
	float stdDevG = 0;
	float maxDevG = 0;
	float stdDevB = 0;
	float maxDevB = 0;
	if (found > 0)
	{
		avgR/=(float)(found);
		avgG/=(float)(found);
		avgB/=(float)(found);
		
		for (ny=0; ny<height; ny++)
		{
			for (nx=0; nx<width; nx++)
			{
				ref = data_image + nx*strideX + ny*strideY;			
				pixData *p = x->pData + nx + ny*width;
				
				//This might actually be static...
				if (p->bgCount > 0 && p->status =='s')
				{
					float diff = (1.0f + (float)ref[1]);
					diff/= (1.0f + (float)p->bg_r);
					diff-=avgR;
					stdDevR += diff*diff;
					
					if (diff < 0) diff *= -1;
					if (diff > maxDevR) maxDevR = diff;
					
					
					diff = (1.0f + (float)ref[2]);
					diff/= (1.0f + (float)p->bg_g);
					diff-=avgG;
					stdDevG += diff*diff;
					
					if (diff < 0) diff *= -1;
					if (diff > maxDevG) maxDevG = diff;
					
					
					diff = (1.0f + (float)ref[3]);
					diff/= (1.0f + (float)p->bg_b);
					diff-=avgB;
					stdDevB += diff*diff;
					
					if (diff < 0) diff *= -1;
					if (diff > maxDevB) maxDevB = diff;
				}
				
			}
		}
		
		stdDevR /= (float)found;
		stdDevR = sqrt(stdDevR);
		
		stdDevG /= (float)found;
		stdDevG = sqrt(stdDevG);
		
		stdDevB /= (float)found;
		stdDevB = sqrt(stdDevB);
		//post("average: %f  stddev: %f    maxdev: %f", avg, stdDev, maxDev);
	}
	
	stdDevR += x->shadow;
	stdDevG += x->shadow;
	stdDevB += x->shadow;
	
	
	//Do a bit of post-lighting correction... (fill in any holes - 1 pixel in size stuff)
	for (ny=0; ny<height; ny++)
	{
		for (nx=0; nx<width; nx++)
		{
			ref = data_image + nx*strideX + ny*strideY;
			unsigned char *refRight = data_image + ((nx == width-1)?nx:(nx+1))*strideX + ny*strideY;
			unsigned char *refDown = data_image + (nx)*strideX + ((ny == height-1)?ny:(ny+1))*strideY;
			
			pixData *p = x->pData + nx + ny*width;
			pixData *left = x->pData + ((nx == 0)?nx:(nx-1)) + ny*width;
			pixData *right = x->pData + ((nx == width-1)?nx:(nx+1)) + ny*width;
			pixData *up = x->pData + nx + ((ny == 0)?ny:ny-1)*width;
			pixData *down = x->pData + nx + ((ny == height-1)?ny:(ny+1))*width;
			
			//Update the background...
			if (p->counter > p->bgCount && right->counter > right->bgCount
				&& down->counter > down->bgCount)
			{
				p->bgCount = p->counter;
				
				p->bg_r = ref[1];
				p->bg_g = ref[2];
				p->bg_b = ref[3];
				
				p->drx = (float)ref[1] - (float)refRight[1];
				p->dgx = (float)ref[2] - (float)refRight[2];
				p->dbx = (float)ref[3] - (float)refRight[3];
				
				p->dry = (float)ref[1] - (float)refDown[1];
				p->dgy = (float)ref[2] - (float)refDown[2];
				p->dby = (float)ref[3] - (float)refDown[3];
			}
			
			if (p->bgCount > x->thresholdMax)
			{
				p->bgCount = x->thresholdMax;
			}
			
			if (p->counter > x->thresholdMax)
			{
				p->counter = x->thresholdMax;
			}
			
			//This might actually be static...
			float diffR = (1.0f + (float)ref[1]);
			diffR/= (1.0f + (float)p->bg_r);
			diffR-=avgR;
			
			float diffG = (1.0f + (float)ref[2]);
			diffG/= (1.0f + (float)p->bg_g);
			diffG-=avgG;
			
			float diffB = (1.0f + (float)ref[3]);
			diffB/= (1.0f + (float)p->bg_b);
			diffB-=avgB;
			
			if (diffR < 0) diffR*=-1;
			if (diffG < 0) diffG*=-1;
			if (diffB < 0) diffB*=-1;
			
			
			if (diffR < stdDevR && diffG < stdDevG && diffB < stdDevB)
			{
				p->status = '_';
			}
			else if (diffR < maxDevR && diffG < stdDevG && diffB < stdDevB)
			{
				p->status = '.';
			}
			
			//Swap between motion/passive view depending upon movement.  This should cancel out any
			//noise found with the blobs (I'm sure this won't be the last time I say this...)
			if (p->status == 's' || p->status == '_')
			{
				(p->smooth) -= (x->smoothOut);
				if (p->smooth < 0) p->smooth = 0;
				if (p->smooth > 100)
				{
					p->status = '.';
				}
			}
			else
			{
				(p->smooth) += (x->smoothIn);
				if (p->smooth > 256*100) p->smooth = 256*100;
				if (p->smooth < 100)
				{
					p->status = '_';
				}
			}
		}
	}
	
	long curBlob = 0;
	//(last pass) Find the blobs within the image.  If a blob is too small, e
	for (ny=0; ny<height; ny++)
	{
		for (nx=0; nx<width; nx++)
		{
			//Holder for previous
			unsigned char prevR, prevG, prevB;
		
			//Get required data...
			ref = data_image + nx*strideX + ny*strideY;
			pixData *left = x->pData + ((nx == 0)?nx:(nx-1)) + ny*width;
			pixData *up = x->pData + nx + ((ny == 0)?ny:ny-1)*width;
			pixData *lu = x->pData + ((nx == 0)?nx:(nx-1)) + ((ny == 0)?ny:ny-1)*width;
			pixData *right = x->pData + ((nx == width-1)?nx:(nx+1)) + ny*width;
			pixData *down = x->pData + nx + ((ny == height-1)?ny:(ny+1))*width;
			pixData *p = x->pData + nx + ny*width;
			for (k=0; k<3; k++)
			{
				if (data_output[k] != NULL)
					out[k] = data_output[k] + nx*info_output[k].dimstride[0] + ny*info_output[k].dimstride[1];
				else
					out[k] = NULL;
			}
			
			//Scan blobs...
			if ((p->status == 'm' || p->status == '.' || p->status == '?') && p->blobID == -1)
			{
				int weight = markBlob(x, nx, ny, curBlob);
				
				if (weight < x->minWeight)
					eraseBlob(x, nx, ny);
				else
					curBlob++;
			}
		
			//Update the output
			if (out[0] != NULL)
			{
				//If there are enough pixels... then use the current avg/stddev
				//to offset the colors in order to make them blend well.
				
				if (nx > 0 && ny > 0)		//Compensate using previous...
				{
					unsigned char *outUp = out[0] - info_output[0].dimstride[1];
					//The average p->bg_r / ref is avg.
					//So, we have p->bg_r / ? = avg, ? = avg * p->bg_r...
					//
					//	But that would be too simple.
					//
					//	avg is the sum + 1.  And it might change from pixel to
					//	pixel.  (this is to keep the colors consistent)
					//
					//	We can rephrase as (p->bg + 1) / (ref+1) = avg + ERR
					//
					//	The error term is what we should use to correct things.
					//	
					//		(p->bg + 1) / (ref + 1) - ERR = avg
					//
					//		(p->bg + 1) / (ref + 1) - (ref + 1) * ERR / (ref + 1) = avg
					//
					//		(p->bg + 1 - ERR*ref - ERR) / (ref + 1) = avg
					//
					//	Which is much nicer and keeps into account that we may
					//	learn new values out of order...
					//float ERR =  - avg + ((float)p->bg_r + (float)p->bg_g + (float)p->bg_b + 1.0f)
					//					 /((float)ref[1] + (float)ref[2] + (float)ref[3] + 1.0f);
					
					//OPTICAL FLOW
					
					//MORPHOLOGICAL FILTER
					
					//With the error term, now we should figure out how to propagate
					//the error term to the rest of the image.
					//out[0][0] = 255;
					//out[0][1] = clampChar((float)p->bg_r - ERR * (float)ref[1]);
					//out[0][2] = clampChar((float)p->bg_g - ERR * (float)ref[2]);
					//out[0][3] = clampChar((float)p->bg_b - ERR * (float)ref[3]);
					
					//But that didn't work... Let's try something else...
					//drx = cur-right, right = cur - drx
					float tot = x->derivative * 2 + 1;
					float e = x->derivative;
					out[0][0] = 255;
					out[0][1] = clampChar(( e*((float)prevR - left->drx) + e*((float)outUp[1] - up->dry) + (float)p->bg_r)/tot);
					out[0][2] = clampChar(( e*((float)prevG - left->dgx) + e*((float)outUp[2] - up->dgy) + (float)p->bg_g)/tot);
					out[0][3] = clampChar(( e*((float)prevB - left->dbx) + e*((float)outUp[3] - up->dby) + (float)p->bg_b)/tot);
					
					//This gives hard edges, so compensate the previous value with this one...
					unsigned char *out2 = outUp - info_output[0].dimstride[0];
					out2[1] = clampChar(( e*((float)outUp[1] + lu->drx) + e*((float)prevR + lu->dry) + (float)out2[1])/tot);
					out2[2] = clampChar(( e*((float)outUp[2] + lu->dgx) + e*((float)prevG + lu->dgy) + (float)out2[2])/tot);
					out2[3] = clampChar(( e*((float)outUp[3] + lu->dbx) + e*((float)prevB + lu->dby) + (float)out2[3])/tot);
				}
				else
				{
					out[0][0] = 255;
					out[0][1] = p->bg_r;
					out[0][2] = p->bg_g;
					out[0][3] = p->bg_b;
				}
				
				prevR = out[0][1];
				prevG = out[0][2];
				prevB = out[0][3];
			}
			
			if (out[2] != NULL)
			{
				out[2][0] = 255;
				if (p->status == 's')
				{
					if (p->bgCount < x->thresholdMin)
						out[2][1] = 128 + (p->bgCount*48) / x->thresholdMin;
					else if (x->thresholdMax != x->thresholdMin)
						out[2][1] = 255-64 + (int)((int)p->bgCount - (int)x->thresholdMin)*64 / (x->thresholdMax - x->thresholdMin+1);
					out[2][3] = 0;
				}
				else  if (p->status == '_')
				{
					out[2][1] = 32 + (p->bgCount*64) / x->thresholdMax;
					out[2][3] = 0;
				}
				else
				{
					int diff = (int)p->bg_r - (int)ref[1];
					if (diff < 0) diff *=-1;
				
					out[2][1] = 0;
					
					if (p->status =='?')
					{
						out[2][3] = 128+ diff *48 / 255;
					}
					else  if (p->status == '.')
					{
						out[2][1] = 0;
						out[2][3] = 32 + diff *64 / 255;
					}
					else
					{
						out[2][3] = 255 - 64 + diff *64 / 255;
					}
				}
				
				if (p->blobID > -1)
				{
					switch(p->blobID % 5)
					{
						case 0: out[2][2] = 64; break;
						case 1: out[2][2] = 128; break;
						case 2: out[2][2] = 128+64; break;
						case 3: out[2][2] = 255; break;
					}
				}
				else
					out[2][2] = 0;
			}
			
			
			if (out[1] != NULL)
			{
				if (p->status == 's' || p->status == '_')
				{
					out[1][1] = 0;
					out[1][2] = 0;
					out[1][3] = 0;
				}
				else
				{
					
					/*int count = 4;
					if (left->status == 's' || left->status == '_')		count--;
					if (right->status == 's' || right->status == '_')		count--;
					if (up->status == 's' || up->status == '_')		count--;
					if (down->status == 's' || down->status == '_')		count--;
				
					int distance = ((int)ref[1] - (int)(p->bg_r)) * ((int)ref[1] - (int)(p->bg_r))
						+ ((int)ref[2] - (int)(p->bg_g)) * ((int)ref[2] - (int)(p->bg_g))
						+ ((int)ref[3] - (int)(p->bg_b)) * ((int)ref[3] - (int)(p->bg_b));
				
					int curVal = count * 255/4;
					
					if (curVal > distance * 255 / (x->smooth))
						curVal = distance * 255 / (x->smooth);
				*/
					out[1][1] = ref[1];
					out[1][2] = ref[2];
					out[1][3] = ref[3];
				}
				out[1][0] = clampChar((float)(p->smooth) / 100);
			}
		}
	}
	
	return err;
}


t_jit_err jit_tml_rockeby_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop, *o;
	
	//Create class with given constructors & destructors
	_jit_tml_rockeby_class = jit_class_new("jit_tml_rockeby",(method)jit_tml_rockeby_new,(method)jit_tml_rockeby_free,
		sizeof(t_jit_tml_rockeby),A_CANT,0L); //A_CANT = untyped

	// 2 matrix input / 1 matrix output
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,1,4);

	// need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
	//jit_mop_input_nolink(mop,2);
	// o= (t_jit_object*)jit_object_method(mop,_jit_sym_getinput,2);
	//jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
	jit_class_addadornment(_jit_tml_rockeby_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_tml_rockeby_class, (method)jit_tml_rockeby_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	
	// Add attribute -- threshold (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "threshold", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_rockeby_setThreshold,
							calcoffset(t_jit_tml_rockeby, thresholdMin));
	jit_class_addattr(_jit_tml_rockeby_class, attr);
	
	//This attribute controls how much the shadows play a part in this effect...
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "shadows", _jit_sym_float32,
							attrflags, (method)0L,
							(method)jit_tml_rockeby_setShadow,
							calcoffset(t_jit_tml_rockeby, shadow));
	jit_class_addattr(_jit_tml_rockeby_class, attr);
	
	//Moves stuff around
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "movement", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_rockeby_setMovement,
							calcoffset(t_jit_tml_rockeby, movement));
	jit_class_addattr(_jit_tml_rockeby_class, attr);
	
	
	//Minimum size of the blobs...
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "weight", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_rockeby_setMinWeight,
							calcoffset(t_jit_tml_rockeby, minWeight));
	jit_class_addattr(_jit_tml_rockeby_class, attr);
	
	//How much the derivative will affect the final result
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "derivative", _jit_sym_float32,
							attrflags, (method)0L,
							(method)jit_tml_rockeby_setDerivative,
							calcoffset(t_jit_tml_rockeby, derivative));
	jit_class_addattr(_jit_tml_rockeby_class, attr);
	
	
	//How smooth the motion data is
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "smooth", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_rockeby_setSmooth,
							calcoffset(t_jit_tml_rockeby, smoothIn));
	jit_class_addattr(_jit_tml_rockeby_class, attr);
	
	
	//Done!	
	jit_class_register(_jit_tml_rockeby_class);

	return JIT_ERR_NONE;
}


t_jit_tml_rockeby *jit_tml_rockeby_new(void)
{
	t_jit_tml_rockeby *x;
		
	if (x=(t_jit_tml_rockeby *)jit_object_alloc(_jit_tml_rockeby_class))
	{
		x->thresholdMin = 30;
		x->thresholdMax = 120;
		x->width = 0;
		x->height = 0;
		x->shadow = 0.5f;
		x->movement = 5*5;
		x->minWeight = 20;
		x->derivative = 20;
		x->smoothIn = 10;		//Wait 10 frames before popping
		x->smoothOut = 25600;	//Immediately lose focus
		x->pData = NULL;
	} else {
		x = NULL;
	}	
	return x;
}

void jit_tml_rockeby_free(t_jit_tml_rockeby *x)
{
	if (x->pData != NULL)
		free(x->pData);
}





t_jit_err jit_tml_rockeby_setThreshold(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 2)
	{
		error("jit.tml.rockeby: threshold requires two values (min/max)!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: Threshold > 0!");
		return JIT_ERR_GENERIC;
	}
	
	x->thresholdMin = ss;
	
	jit_atom_arg_getlong(&ss, 0, 1, argv+1);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: Threshold > 0!");
		return JIT_ERR_GENERIC;
	}
	
	x->thresholdMax = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_rockeby_setShadow(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv)
{
	float ss;

	if (argc != 1)
	{
		error("jit.tml.rockeby: Shadow requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getfloat(&ss, 0, 1, argv);
	
	x->shadow = ss;
	
	
	return JIT_ERR_NONE;
}



t_jit_err jit_tml_rockeby_setMovement(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.rockeby: movement requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: movement threshold must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	x->movement = ss;
	
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_rockeby_setMinWeight(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.rockeby: weight requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: weight threshold must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	x->minWeight = ss;
	
	
	return JIT_ERR_NONE;
}

t_jit_err jit_tml_rockeby_setDerivative(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv)
{
	float ss;

	if (argc != 1)
	{
		error("jit.tml.rockeby: Derivative requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getfloat(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: Derivative must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	x->derivative = ss;
	
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_rockeby_setSmooth(t_jit_tml_rockeby *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 2)
	{
		error("jit.tml.rockeby: Smooth requires two values!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: Smooth must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	x->smoothIn = ss;
	
	jit_atom_arg_getlong(&ss, 0, 1, argv+1);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: Smooth must be positive!");
		return JIT_ERR_GENERIC;
	}
	x->smoothOut = ss;
	
	return JIT_ERR_NONE;
}
