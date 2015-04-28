

extern "C" {
	#include "jit.common.h"
}

/*
	This structure is used for each pixel in order to determine how to define
	a stable way to get the background and foreground.
 */
typedef struct _stability
{
	//Data used for patterns
	struct _stability *prev;
	struct _stability *next;
	int blobID;

	int stabilityFactor;		//How stable is the dX and dY?

	unsigned char pStableX;		//Stable change in X
	unsigned char pStableY;		//Stable change in Y
	
	unsigned char pDX;	//Previous change in X
	unsigned char pDY;	//Previous change in Y
	
	long moveColor;
} t_stability;


typedef struct _blob
{
	long weight;		//The weight of the blob
	t_stability *start;	//Start of the blob
	
	struct _blob *next;	//The next blob
	struct _blob *prev;	//The prev blob
} t_blob;


typedef struct _jit_tml_constellations 
{
	t_object				ob;
	
	long invert;
	
	long threshold;				//How much error to accept
	long learnRate;				//How quickly should we learn?
	
	long movementThreshold;		//How much error to accept with movement.
	long minBlobSize;			//The minimum size of a blob.
	
	long ptCount;				//Number of points to return
	
	long radius;				//Size of the scan radius.
	
	//The size of the previous matrix...
	long prevDataSize;
	t_stability *prevData;		//Data to keep track of every frame...
	
	//All the "blob" links.
	t_blob *curBlobs;		//For the current frame.
	t_blob *oldBlobs;		//From prev frames (only free when obj is destroyed)
	
} t_jit_tml_constellations ;


void *_jit_tml_constellations_class;

//Various methods
t_jit_tml_constellations *jit_tml_constellations_new(void);
void jit_tml_constellations_allocate(t_jit_tml_constellations *x, long width, long height);
void jit_tml_constellations_free(t_jit_tml_constellations *x);
t_jit_err jit_tml_constellations_matrix_calc(t_jit_tml_constellations *x, void *inputs, void *outputs);
t_jit_err jit_tml_constellations_init(void);

//Getters/setters for members
t_jit_err jit_tml_constellations_setInvert(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_constellations_setDeltas(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_constellations_setPtFloat(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_constellations_setMinBlobSize(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_constellations_setThreshold(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_constellations_setMovementThreshold(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_constellations_setLearnRate(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_constellations_setPtCount(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_constellations_setRadius(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv);



//Sort a blob's pixel, so the brightest come to the top.
void sortBlobPix(t_stability *parent, t_stability *toAdd)
{
	//Move up!
	while (parent->prev != NULL && parent->moveColor < toAdd->moveColor)
	{
		parent = parent->prev;
	}
	
	//At the top of the list?
	if (parent->prev == NULL && parent->moveColor < toAdd->moveColor)
	{
		parent->prev = toAdd;
		toAdd->next = parent;
	}
	
	//No?, then put it after
	else
	{
		while (parent->next != NULL && parent->moveColor > toAdd->moveColor)
		{
			parent = parent->next;
		}
		
		if (parent->next == NULL)
		{
			parent->next = toAdd;
			toAdd->prev = parent;
		}
		else	//Or in the middle somewhere.
		{
			toAdd->next = parent->next;
			toAdd->prev = parent;
			
			toAdd->next->prev = toAdd;
			parent->next = toAdd;
		}
	}
}


//Recursively marks a blob until it has found all the points...
//
//	Do this by looking at the 4 adjacent pixels, and the 4 on the diagonals.
//
//	Returns the "weight" - how many pixels...
int markBlob(t_jit_tml_constellations *x, long nx, long ny, 
							long width, long height, int bid)
{
	t_stability *ts_parent = &(x->prevData[nx + ny*width]);
	
	int weight = 0;
	
	if (nx > 0)
	{
		t_stability *ts = &(x->prevData[nx-1 + ny*width]);
		
		if (ts->moveColor > x->movementThreshold && ts->blobID == -1)
		{
			weight += ts->moveColor;
			ts->blobID = bid;
			sortBlobPix(ts_parent, ts);
			weight += markBlob(x, nx-1, ny, width, height, bid);
		}
	}
	
	if (ny > 0)
	{
		t_stability *ts = &(x->prevData[nx + (ny-1)*width]);
		
		if (ts->moveColor > x->movementThreshold && ts->blobID == -1)
		{
			weight += ts->moveColor;
			ts->blobID = bid;
			sortBlobPix(ts_parent, ts);
			weight += markBlob(x, nx, ny-1, width, height, bid);
		}
		
		if (nx > 0)
		{
			t_stability *ts = &(x->prevData[nx-1 + (ny-1)*width]);
			
			if (ts->moveColor > x->movementThreshold && ts->blobID == -1)
			{
				weight += ts->moveColor;
				ts->blobID = bid;
				sortBlobPix(ts_parent, ts);
				weight += markBlob(x, nx-1, ny-1, width, height, bid);
			}
		}
		
		if (nx < width-1)
		{
			t_stability *ts = &(x->prevData[nx+1 + (ny-1)*width]);
			
			if (ts->moveColor > x->movementThreshold && ts->blobID == -1)
			{
				weight += ts->moveColor;
				ts->blobID = bid;
				sortBlobPix(ts_parent, ts);
				weight += markBlob(x, nx+1, ny-1, width, height, bid);
			}
		}
	}
	
	if (nx < width-1)
	{
		t_stability *ts = &(x->prevData[nx+1 + ny*width]);
		
		if (ts->moveColor > x->movementThreshold && ts->blobID == -1)
		{
			weight += ts->moveColor;
			ts->blobID = bid;
			sortBlobPix(ts_parent, ts);
			weight += markBlob(x, nx+1, ny, width, height, bid);
		}
	}
	
	if (ny < height-1)
	{
		t_stability *ts = &(x->prevData[nx + (ny+1)*width]);
		
		if (ts->moveColor > x->movementThreshold && ts->blobID == -1)
		{
			weight += ts->moveColor;
			ts->blobID = bid;
			sortBlobPix(ts_parent, ts);
			weight += markBlob(x, nx, ny+1, width, height, bid);
		}
		
		
		if (nx > 0)
		{
			t_stability *ts = &(x->prevData[nx-1 + (ny+1)*width]);
			
			if (ts->moveColor > x->movementThreshold && ts->blobID == -1)
			{
				weight += ts->moveColor;
				ts->blobID = bid;
				sortBlobPix(ts_parent, ts);
				weight += markBlob(x, nx-1, ny+1, width, height, bid);
			}
		}
		
		if (nx < width-1)
		{
			t_stability *ts = &(x->prevData[nx+1 + (ny+1)*width]);
			
			if (ts->moveColor > x->movementThreshold && ts->blobID == -1)
			{
				weight += ts->moveColor;
				ts->blobID = bid;
				sortBlobPix(ts_parent, ts);
				weight += markBlob(x, nx+1, ny+1, width, height, bid);
			}
		}
	}
	
	return weight;
}


////////////////////////////////////////////////////////////////////////////////
//
//	Called on every bang to handle IO requests.
//
t_jit_err jit_tml_constellations_matrix_calc(t_jit_tml_constellations *x, void *inputs, void *outputs)
{
	void *matrix_image;
	void *matrix_mask;
	void *matrix_output;
	void *matrix_point;
	
	unsigned char *data_image;
	unsigned char *data_mask;
	unsigned char *data_output;
	unsigned char *data_point;
	
	t_jit_matrix_info	info_image, info_mask, info_output, info_point;
	
	t_jit_err err = JIT_ERR_NONE;
	
	matrix_image	= jit_object_method(inputs, _jit_sym_getindex, 0);
	matrix_mask		= jit_object_method(inputs, _jit_sym_getindex, 1);
	matrix_output	= jit_object_method(outputs, _jit_sym_getindex, 0);
	matrix_point	= jit_object_method(outputs, _jit_sym_getindex, 1);
	
	if (!matrix_image || !matrix_output)
	{
		error("Missing input/output image!");
		return JIT_ERR_GENERIC;
	}
	
	//Get information on matrix.
	jit_object_method(matrix_image, _jit_sym_getinfo, &info_image);
	jit_object_method(matrix_output, _jit_sym_getinfo, &info_output);
	
	//Validate required matrices...
	if (info_image.dimcount != 2)
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
	
	if (width <= 0 || height <= 0)
	{
		error("Zero-sized matrix!");
		return JIT_ERR_GENERIC;
	}
	
	if (width * height != x->prevDataSize)
	{
		x->prevData = (t_stability*)malloc(width*height*sizeof(t_stability));
		if (x->prevData == NULL)
		{
			error("tml.jit.constellations: Out of memory!");
			return JIT_ERR_GENERIC;
		}
		memset(x->prevData, 0, width*height*sizeof(t_stability));
		x->prevDataSize = width*height;
	}
	
	//Handle mask
	if (matrix_mask)
	{
		jit_object_method(matrix_mask, _jit_sym_getinfo, &info_mask);
		if (info_mask.dimcount != 2 || info_mask.dim[0] != width ||
			info_mask.dim[1] != height || info_mask.type != _jit_sym_char)
		{
			matrix_mask = NULL;
		}
	}
	
	//Coerce output (2 planes for maximum information)
	if (info_image.dimcount != info_output.dimcount ||
		info_image.dim[0]	!= info_output.dim[0] ||
		info_image.dim[1]	!= info_output.dim[1] ||
		info_image.type		!= info_output.type ||
		info_output.planecount != 3)
	{
		info_output.dimcount= info_image.dimcount;
		info_output.dim[0]	= info_image.dim[0];
		info_output.dim[1]	= info_image.dim[1];
		info_output.type	= info_image.type;
		info_output.planecount = 3;
		
		if (jit_object_method(matrix_output, _jit_sym_setinfo, &info_output))
		{
			error("Unable to resize output matrix to match input!");
			return JIT_ERR_GENERIC;
		}
		
		jit_object_method(matrix_output, _jit_sym_getinfo, &info_output);
	}
	
	//Get data...
	jit_object_method(matrix_image, _jit_sym_getdata, &data_image);
	jit_object_method(matrix_output, _jit_sym_getdata, &data_output);
	if (matrix_mask)
		jit_object_method(matrix_mask, _jit_sym_getdata, &data_mask);
	else
		data_mask = NULL;
	
	//Copy data!
	long nx,ny;
	long plane;
	long pointCount = 0;		//Number of useful points for stars found.
	unsigned char maxDiffX;
	unsigned char maxDiffY;
	
	unsigned char *ref;
	unsigned char *curX;
	unsigned char *curY;
	unsigned char *out;
	unsigned char *mask;
	
	//Figure out the outlines and the blobs...
	for (ny=0; ny<height;ny++)
	{
		for (nx=0; nx<width; nx++)
		{
			//Compute locations for the current pixels
			ref = data_image + nx*info_image.dimstride[0] + ny*info_image.dimstride[1];
			
			if (nx == 0)
				curX = ref;
			else
				curX = data_image + (nx-1)*info_image.dimstride[0] + ny*info_image.dimstride[1];
				
			if (ny == 0)
				curY = ref;
			else
				curY = data_image + nx*info_image.dimstride[0] + (ny-1)*info_image.dimstride[1];
			
			out = data_output + nx*info_output.dimstride[0] + ny*info_output.dimstride[1];
			
			if (data_mask)
				mask = data_mask + nx*info_mask.dimstride[0] + ny*info_mask.dimstride[1];
			
			
			//And for each element that makes up the plane; compute maximum difference
			maxDiffX = 0;
			maxDiffY = 0;
				
			t_stability *ts = &(x->prevData[nx + ny*width]);
			if (data_mask == NULL || mask[0] != 0)
			{
				for (plane=0; plane < info_image.planecount; plane++)
				{
					if (ref[plane] > curX[plane])
					{
						if (ref[plane] - curX[plane] > maxDiffX)
							maxDiffX = ref[plane] - curX[plane];
					}
					else
					{
						if (curX[plane] - ref[plane] > maxDiffX)
							maxDiffX = curX[plane] - ref[plane];
					}
					
					if (ref[plane] > curY[plane])
					{
						if (ref[plane] - curY[plane] > maxDiffY)
							maxDiffY = ref[plane] - curY[plane];
					}
					else
					{
						if (curY[plane] - ref[plane] > maxDiffY)
							maxDiffY = curY[plane] - ref[plane];
					}
				}
				
				//Red is the current value (live!)
				out[0] = (maxDiffX > maxDiffY)?maxDiffX:maxDiffY;
				
				//Update the stable counter....
				//	same as "previous", increment...
				out[2] = 0;
				int changeX = (maxDiffX > ts->pDX)?maxDiffX - ts->pDX:ts->pDX - maxDiffX;
				int changeY = (maxDiffY > ts->pDY)?maxDiffY - ts->pDY:ts->pDY - maxDiffY;
				
				if (nx > 0)
				{
					t_stability *ts2 = &(x->prevData[nx-1 + ny*width]);
					
					int c2X = (maxDiffX > ts2->pDX)?maxDiffX - ts2->pDX:ts2->pDX - maxDiffX;
					int c2Y = (maxDiffY > ts2->pDY)?maxDiffX - ts2->pDY:ts2->pDY - maxDiffY;
					
					if (c2X < changeX) changeX = c2X;
					if (c2Y < changeY) changeY = c2Y;
				}
				
				if (nx < width-1)
				{
					t_stability *ts2 = &(x->prevData[nx+1 + ny*width]);
					
					int c2X = (maxDiffX > ts2->pDX)?maxDiffX - ts2->pDX:ts2->pDX - maxDiffX;
					int c2Y = (maxDiffY > ts2->pDY)?maxDiffX - ts2->pDY:ts2->pDY - maxDiffY;
					
					if (c2X < changeX) changeX = c2X;
					if (c2Y < changeY) changeY = c2Y;
				}
				
				if (ny > 0)
				{
					t_stability *ts2 = &(x->prevData[nx + (ny-1)*width]);
					
					int c2X = (maxDiffX > ts2->pDX)?maxDiffX - ts2->pDX:ts2->pDX - maxDiffX;
					int c2Y = (maxDiffY > ts2->pDY)?maxDiffX - ts2->pDY:ts2->pDY - maxDiffY;
					
					if (c2X < changeX) changeX = c2X;
					if (c2Y < changeY) changeY = c2Y;
				}
				
				if (ny < height-1)
				{
					t_stability *ts2 = &(x->prevData[nx + (ny+1)*width]);
					
					int c2X = (maxDiffX > ts2->pDX)?maxDiffX - ts2->pDX:ts2->pDX - maxDiffX;
					int c2Y = (maxDiffY > ts2->pDY)?maxDiffX - ts2->pDY:ts2->pDY - maxDiffY;
					
					if (c2X < changeX) changeX = c2X;
					if (c2Y < changeY) changeY = c2Y;
				}
				
				if (changeX > x->threshold || changeY > x->threshold)
				{
					if (ts->stabilityFactor > 0)
					{
						out[2] = (maxDiffX > maxDiffY)?maxDiffX:maxDiffY;
						
						if (out[2] > x->movementThreshold)
						{
							pointCount++;
						}
						else
							out[2] = 0;
						
						if (ts->stabilityFactor > x->learnRate)
							ts->stabilityFactor = x->learnRate;
						
						(ts->stabilityFactor)--;
					}
					else
					{
						ts->pDX = maxDiffX;
						ts->pDY = maxDiffY;
					}
				}
				else if (ts->stabilityFactor > x->learnRate)
				{
					ts->stabilityFactor = 0;	//Once stable, force it to find a new color.
					ts->pStableX = maxDiffX;
					ts->pStableY = maxDiffY;
				}
				else
					(ts->stabilityFactor)++;
				
				//Clear pattern stuff...
				
				//Store the stable value as green.
				out[1] = (ts->pStableX > ts->pStableY)?ts->pStableX:ts->pStableY;
				
				
				if (data_mask != NULL)
					out[0] = out[0] * mask[0] / 255;
			}
			else
			{
				out[0] = 0;
				out[1] = 0;
				out[2] = 0;
			}
			
			ts->prev = NULL;
			ts->next = NULL;
			ts->blobID = -1;
			ts->moveColor = out[2];
		}
	}
	
	
	//Find all the blobs if we want points...
	int blobCount = 0;
	int bigBlobs = 0;
	if (x->ptCount > 0 && matrix_point != NULL)
	{
		//Save old objects for re-use.
		t_blob *cur;
		if (x->oldBlobs == NULL)
			x->oldBlobs = x->curBlobs;
		else
		{
			cur = x->oldBlobs;
			while (cur->next != NULL)
				cur = cur->next;
			
			cur->next = x->curBlobs;
		}
		x->curBlobs = NULL;
	
		//Scan for blobs
		for (ny=0; ny<height;ny++)
		{
			for (nx=0; nx<width; nx++)
			{
				t_stability *ts = &(x->prevData[nx + ny*width]);
				
				if (ts->moveColor > x->movementThreshold && ts->blobID == -1)
				{
					ts->blobID = blobCount;
					long size = markBlob(x, nx, ny, width, height, blobCount);
					blobCount++;
					
					//If the blob is BIG enough
					if (size > x->minBlobSize)
					{
						cur = x->oldBlobs;
						
						if (cur == NULL)
							cur = (t_blob*)malloc(sizeof(t_blob));
						else
							x->oldBlobs = x->oldBlobs->next;
						
						if (cur == NULL)
						{
							error("Constellations: Ran out of memory blob-tracking");
							return JIT_ERR_GENERIC;
						}
						
						memset(cur, 0, sizeof(t_blob));
						
						//Find head of blob...
						while (ts->prev != NULL)
							ts = ts->prev;
						
						cur->start = ts;
						cur->weight = size;
						
						//Link in the blob (heavier on top)
						if (x->curBlobs == NULL)
						{
							x->curBlobs = cur;
						}
						else
						{
							t_blob *at = x->curBlobs;
							while (at->next != NULL && at->weight > cur->weight)
								at = at->next;
							
							if (at->weight > cur->weight)
							{
								at->next = cur;
								cur->prev = at;
								cur->next = NULL;
							}
							else
							{
								cur->next = at;
								cur->prev = at->prev;
								
								if (at->prev != NULL)
								{
									at->prev->next = cur;
								}
								else
								{
									x->curBlobs = cur;
								}
								at->prev = cur;
							}
						}
						
						bigBlobs++;
					}
					
					//Get rid of the blob from the output (visual response to what is
					//being eliminated to confirm correctness.
					else
					{
						t_stability *w = ts;
						unsigned int istart = (unsigned int)x->prevData;
						while (w->prev != NULL)
						{
							w = w->prev;
							w->moveColor = 0;
							
							unsigned int iw = ((unsigned int)w - istart) / sizeof(t_stability);
							
							unsigned int x = iw%width;
							unsigned int y = iw/width;
							
							out = data_output + x*info_output.dimstride[0] + y*info_output.dimstride[1];
							out[2] = 0;
						}
						
						w = ts;
						while (w->next != NULL)
						{
							w = w->next;
							w->moveColor = 0;
							
							unsigned int iw = ((unsigned int)w - istart) / sizeof(t_stability);
							
							unsigned int x = iw%width;
							unsigned int y = iw/width;
							
							out = data_output + x*info_output.dimstride[0] + y*info_output.dimstride[1];
							out[2] = 0;
						}
						
						ts->moveColor = 0;
						
						unsigned int iw = ((unsigned int)ts - istart) / sizeof(t_stability);
						
						unsigned int x = iw%width;
						unsigned int y = iw/width;
						
						out = data_output + x*info_output.dimstride[0] + y*info_output.dimstride[1];
						out[2] = 0;
					}
				}
			}
		}
	}
	
	//Do we want points?  then let's pick them out!
	if (x->ptCount > 0 && matrix_point != NULL)
	{
		jit_object_method(matrix_point, _jit_sym_getinfo, &info_point);
		
		
		if (info_point.type != _jit_sym_float32 ||
			info_point.planecount != 2 ||
			info_point.dimcount != 1 ||
			info_point.dim[0] != x->ptCount * bigBlobs)
		{
			info_point.type = _jit_sym_float32;
			info_point.planecount = 3;
			info_point.dimcount = 1;
			info_point.dim[0] = x->ptCount * bigBlobs;
			
			if (jit_object_method(matrix_point, _jit_sym_setinfo, &info_point))
			{
				error("Unable to resize point matrix!");
				return JIT_ERR_GENERIC;
			}
			
			jit_object_method(matrix_point, _jit_sym_getinfo, &info_point);
		}
		
		jit_object_method(matrix_point, _jit_sym_getdata, &data_point);
		
		long curPoint = 0;
		float *fl32;
		
		int k;
		unsigned int istart = (unsigned int)x->prevData;
		for (k=0; k<bigBlobs; k++)
		{
			t_blob *cur = x->curBlobs;
			if (cur==NULL)
			{
				error("Overscanning blob array!");
				return JIT_ERR_GENERIC;
			}
		
			int z;
			for (z=0; z<x->ptCount; z++)
			{
				//Pick out the first point, write it out...
				fl32 = (float*)(data_point + curPoint * info_point.dimstride[0]);
				curPoint++;
				
				t_stability *ts = cur->start;
				unsigned int iw = ((unsigned int)ts - istart) / sizeof(t_stability);
						
				int nx = iw%width;
				int ny = iw/width;
				
				fl32[0] = (float)nx / (float)width;
				fl32[1] = (float)ny / (float)height;
				fl32[2] = k;

				//Resort this array according to radius...
				/*long sx = (0 > nx - x->radius) ? 0 : nx-x->radius;
				long sy = (0 > ny - x->radius) ? 0 : ny-x->radius;
				long ex = (nx + x->radius < width-1) ? nx+x->radius : width-1;
				long ey = (ny + x->radius < height-1) ? ny+x->radius : height-1;
				long l;
				int first = 1;
				
				while (sy <= ey)
				{
					for (l=sx; l<=ex; l++)
					{
						long distance = (l-nx)*(l-nx) + (sy-ny)*(sy-ny);
						if (distance < x->radius * x->radius)
						{
							t_stability *old = &(x->prevData[l + sy*width]);
							
							if (old->blobID == ts->blobID)
							{
								if (old != ts)
								{
									old->moveColor-= (x->radius*x->radius - distance)*255;
									
									t_stability *top = old->prev;
									t_stability *bot = old->next;
									
									if (top != NULL) top->next = bot;
									if (bot != NULL) bot->prev = top;
									
									old->prev = NULL;
									old->next = NULL;
									
									sortBlobPix(ts, old);
									
									first = 0;
								}
							}
						}
					}
					sy++;
				}*/
				
				if (cur->start->next != NULL) cur->start = cur->start->next;
				cur->start->prev = NULL;
				
				//Move the index of cur to top...
				//while (cur->start->prev != NULL)
				//	cur->start = cur->start->prev;
			}
						
			x->curBlobs = x->curBlobs->next;
			cur->next = x->oldBlobs;
			x->oldBlobs = cur;
		}
		
	}
	
	return err;
}


t_jit_err jit_tml_constellations_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop, *o;
	
	//Create class with given constructors & destructors
	_jit_tml_constellations_class = jit_class_new("jit_tml_constellations",(method)jit_tml_constellations_new,(method)jit_tml_constellations_free,
		sizeof(t_jit_tml_constellations),A_CANT,0L); //A_CANT = untyped

	// 2 matrix input / 3 matrix output
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,2,3);

	// need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
	jit_mop_input_nolink(mop,2);
	 o= (t_jit_object*)jit_object_method(mop,_jit_sym_getinput,2);
	jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
	jit_class_addadornment(_jit_tml_constellations_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_tml_constellations_class, (method)jit_tml_constellations_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	// Add attribute -- invert (0 or 1) - go from white/black to black/white
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "invert", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_constellations_setInvert,
							calcoffset(t_jit_tml_constellations, invert));
	jit_class_addattr(_jit_tml_constellations_class, attr);
	
	
	// Add attribute -- minimum blob size (since blobs get huge)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "minBlobSize", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_constellations_setMinBlobSize,
							calcoffset(t_jit_tml_constellations, minBlobSize));
	jit_class_addattr(_jit_tml_constellations_class, attr);
	
	
	// Add attribute -- threshold (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "threshold", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_constellations_setThreshold,
							calcoffset(t_jit_tml_constellations, threshold));
	jit_class_addattr(_jit_tml_constellations_class, attr);
	
	
	// Add attribute -- threshold on the movement
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "movementThreshold", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_constellations_setMovementThreshold,
							calcoffset(t_jit_tml_constellations, movementThreshold));
	jit_class_addattr(_jit_tml_constellations_class, attr);
	
	
	// Add attribute -- rate of learning (how many frames until stability?)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "learnRate", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_constellations_setLearnRate,
							calcoffset(t_jit_tml_constellations, learnRate));
	jit_class_addattr(_jit_tml_constellations_class, attr);
	
	
	// Add attribute -- ptCount - the number of points to use for outline.
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "ptCount", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_constellations_setPtCount,
							calcoffset(t_jit_tml_constellations, ptCount));
	jit_class_addattr(_jit_tml_constellations_class, attr);
	
	
	// Add attribute -- grays (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "radius", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_constellations_setRadius,
							calcoffset(t_jit_tml_constellations, radius));
	jit_class_addattr(_jit_tml_constellations_class, attr);
	
	//Done!	
	jit_class_register(_jit_tml_constellations_class);

	return JIT_ERR_NONE;
}


t_jit_tml_constellations *jit_tml_constellations_new(void)
{
	t_jit_tml_constellations *x;
		
	if (x=(t_jit_tml_constellations *)jit_object_alloc(_jit_tml_constellations_class))
	{
		x->prevData = NULL;
		x->prevDataSize = 0;
		x->invert = 0;
		x->threshold = 20;
		x->ptCount = 0;
		x->radius = 2;
		x->learnRate = 100;
		x->movementThreshold = 0;
		x->minBlobSize = 1000;
		
		x->curBlobs = NULL;
		x->oldBlobs = NULL;
		
	} else {
		x = NULL;
	}	
	return x;
}

void jit_tml_constellations_free(t_jit_tml_constellations *x)
{
	//Free the array of previous derivatives.
	if (x->prevData != NULL) free(x->prevData);
	
	//Free all the blob-related data
	while (x->curBlobs != NULL)
	{
		t_blob *t = x->curBlobs;
		x->curBlobs = x->curBlobs->next;
		free(t);
	}
	
	while (x->oldBlobs != NULL)
	{
		t_blob *t = x->oldBlobs;
		x->oldBlobs = x->oldBlobs->next;
		free(t);
	}
}


//Setters:
t_jit_err jit_tml_constellations_setInvert(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.constellations: invert requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss != 0 && ss != 1)
	{
		error("jit.tml.constellations: invert is 0=no, 1=yes");
		return JIT_ERR_GENERIC;
	}
	
	x->invert = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_constellations_setMinBlobSize(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.constellations: blob size requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0 || ss > 1024*1024*1024)
	{
		error("jit.tml.constellations: Exceeded limit of blob size (0-1024*1024*1024)!");
		return JIT_ERR_GENERIC;
	}
	
	x->minBlobSize = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_constellations_setThreshold(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.constellations: threshold requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0 || ss > 255)
	{
		error("jit.tml.constellations: Exceeded limit of threshold (0-255)!");
		return JIT_ERR_GENERIC;
	}
	
	x->threshold = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_constellations_setMovementThreshold(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.constellations: movement threshold requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0 || ss > 255)
	{
		error("jit.tml.constellations: Exceeded limit of movement threshold (0-255)!");
		return JIT_ERR_GENERIC;
	}
	
	x->movementThreshold = ss;
	
	return JIT_ERR_NONE;
}



t_jit_err jit_tml_constellations_setLearnRate(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.constellations: threshold requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0 || ss > 1024*1024*1024)
	{
		error("jit.tml.constellations: Exceeded limit of learning rate (0-1024*1024*1024)!");
		return JIT_ERR_GENERIC;
	}
	
	x->learnRate = ss;
	
	return JIT_ERR_NONE;
}



t_jit_err jit_tml_constellations_setPtCount(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.constellations: ptCount requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.constellations: Exceeded limit of ptCount ( < 0)!");
		return JIT_ERR_GENERIC;
	}
	
	x->ptCount = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_constellations_setRadius(t_jit_tml_constellations *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.constellations: radius requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0 || ss > 1024)
	{
		error("jit.tml.constellations: Radius too big (0, 1024)!");
		return JIT_ERR_GENERIC;
	}
	
	x->radius = ss;
	
	return JIT_ERR_NONE;
}


