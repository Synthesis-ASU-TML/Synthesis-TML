

extern "C" {
	#include "jit.common.h"
}


typedef struct _jit_tml_outlines 
{
	t_object				ob;
	
	long invert;
	
	long smpCount;				//Number of processes to run.
	
	long deltas;				//Number of deltas to process.
	
	long threshold;				//How much error to accept
	
	long ptCount;				//Number of points to return
	
	long grays;					//Number of gray levels for high/low
	
	long ptFloat;				//How many floats?
	
} t_jit_tml_outlines ;

/*
 *       njp    
 *      mebgo       
 *      ia.ck   
 *      qhdfs         
 *       rlt
 */

//Indices to graph:	   a,  b, c, d,  e, f,  g,  h,  i,  j, k, l,  m,  n, o, p,  q,  r,  s,  t
const int deltaX[] = {-1,  0, 1, 0, -1, 1,  1, -1, -2,  0, 2, 0, -2,  1, 2, 1, -2, -1,  2, -1};
const int deltaY[] = { 0, -1, 0, 1, -1, 1, -1,  1,  0, -2, 0, 2,  1, -2, 1, 2, -1, -2, -1,  2};
const int deltaXcnt = sizeof(deltaX)/sizeof(int);
const int deltaYcnt = sizeof(deltaY)/sizeof(int);


//Used for a single copy task.
typedef struct _jit_tml_outlines_task
{
	//Dimensions of data to copy
	long width;
	long height;
	
	//Stride
	long stride;
	
	//Strides
	long in_stride_width;
	long in_stride_height;
	
	long out_stride_width;
	long out_stride_height;
	
	//Data
	unsigned char *in_data;
	unsigned char *out_data;
	
	//Resources
	t_jit_tml_outlines *data;

} t_jit_tml_outlines_task;


void *_jit_tml_outlines_class;

//Various methods
t_jit_tml_outlines *jit_tml_outlines_new(void);
void jit_tml_outlines_allocate(t_jit_tml_outlines *x, long width, long height);
void jit_tml_outlines_free(t_jit_tml_outlines *x);
t_jit_err jit_tml_outlines_matrix_calc(t_jit_tml_outlines *x, void *inputs, void *outputs);
t_jit_err jit_tml_outlines_init(void);

//Getters/setters for members
t_jit_err jit_tml_outlines_setInvert(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_outlines_setDeltas(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_outlines_setPtFloat(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_outlines_setThreshold(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_outlines_setPtCount(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_outlines_setGrays(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_outlines_setSMP(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_outlines_setFrames(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_outlines_setInterlace(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_outlines_setMaxMemory(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv);


//Evaluate that works with more than 1 CPU.  BEWARE: this is not synchronized;
//things have been arranged so each location that is written to is written to
//by a single thread.
//
//	Note on interlacing:
//		* It is possible for a resolution to be interlaced.  This means that certain
//		  frames are stored in parts, where every minInterlace item is skipped.
//
//	useheight if ((height+curFrame)%interlace == 0)
//		height = (height/interlace)
OSStatus EvaluateMP(t_jit_tml_outlines_task *parameter)
{
	
	return noErr;
}


//Applies timespace to a given 2d plane
//	x			-- timespace structure
//	bip			-- pointer to start of image
//	bop			-- ppointer to start of output image
//	dimstride	-- stride of input/output image
//	width		-- width of input/output image
//	height		-- height of input/output image
//	bpp			-- the mask image
//	pdim		-- stride of mask image.
void Evaluate(t_jit_tml_outlines *x, char *bip, char *bop, long dimstride, long width, long height, char *bpp, long pdim)
{
	long j;
	long pCount;		//Number of Threads actually used
	
	//Create a queue
	MPQueueID pQueue;
	if (MPCreateQueue(&pQueue) != noErr)
	{
		return;
	}
		
	//UnsignedWide ticks;
	//Microseconds(&ticks);
	//post("Start: %u %u", ticks.lo, ticks.hi);
	
	//Create j threads, and wait on them...
	pCount = 0;
	MPTaskID task;
	if (x->smpCount < 0) x->smpCount = 1;
	t_jit_tml_outlines_task t[100];			//Max 100 threads
	
	for (j=0; j<x->smpCount; j++)
	{
		t[j].width = width;
		t[j].height = height;
		t[j].stride = x->smpCount;

		if (MPCreateTask((TaskProc)EvaluateMP, &t[j], 0, pQueue, NULL, NULL, 0, &task) == noErr)
			pCount++;
	}
	
	//Wait on all the threads
	for (j=0; j<pCount; j++)
	{
		//Microseconds(&ticks);
		//post("Thread: %u %u", ticks.lo, ticks.hi);
		MPWaitOnQueue(pQueue, NULL, NULL, NULL, kDurationForever);
	}
	
	MPDeleteQueue(pQueue);
}


t_jit_err jit_tml_outlines_matrix_calc(t_jit_tml_outlines *x, void *inputs, void *outputs)
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
	
	//Coerce output
	if (info_image.dimcount != info_output.dimcount ||
		info_image.dim[0]	!= info_output.dim[0] ||
		info_image.dim[1]	!= info_output.dim[1] ||
		info_image.type		!= info_output.type ||
		info_output.planecount != 1)
	{
		info_output.dimcount= info_image.dimcount;
		info_output.dim[0]	= info_image.dim[0];
		info_output.dim[1]	= info_image.dim[1];
		info_output.type	= info_image.type;
		info_output.planecount = 1;
		
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
	long ind;
	long plane;
	unsigned char maxDiff;
	unsigned char min=255;
	unsigned char max=0;
	
	unsigned char *ref;
	unsigned char *cur;
	unsigned char *out;
	unsigned char *mask;
	for (ny=0; ny<height;ny++)
	{
		for (nx=0; nx<width; nx++)
		{
			ref = data_image + nx*info_image.dimstride[0] + ny*info_image.dimstride[1];
			out = data_output + nx*info_output.dimstride[0] + ny*info_output.dimstride[1];
			if (data_mask)
				mask = data_mask + nx*info_mask.dimstride[0] + ny*info_mask.dimstride[1];
			
			maxDiff = 0;
			
			if (data_mask == NULL || mask[0] != 0)
			{
				for (ind=0; ind < x->deltas; ind++)
				{
					long u = nx + deltaX[ind];
					long v = ny + deltaY[ind];
					
					if (u >= 0 && v>=0 && u < width && v<height)
					{
						cur = data_image + u*info_image.dimstride[0] + v*info_image.dimstride[1];
						
						for (plane=0; plane < info_image.planecount; plane++)
						{
							if (ref[plane] > cur[plane])
							{
								if (ref[plane] - cur[plane] > maxDiff)
									maxDiff = ref[plane] - cur[plane];
							}
							else
							{
								if (cur[plane] - ref[plane] > maxDiff)
									maxDiff = cur[plane] - ref[plane];
							}
						}
					}
				}
				
				out[0] = maxDiff;
				
				if (maxDiff < min) min=maxDiff;
				if (maxDiff > max) max=maxDiff;
				
				if (data_mask != NULL)
					out[0] = out[0] * mask[0] / 255;
			}
			else
			{
				out[0] = 0;
			}
		}
	}
	
	//Histogram eq.
	if (x->threshold - min > 255)
		min = 255;
	else
		min+=x->threshold;
	
	long pointCount =0;
		
	for (ny=0;ny<height;ny++)
	{
		for (nx=0; nx<width; nx++)
		{
			out = data_output + nx*info_output.dimstride[0] + ny*info_output.dimstride[1];
			
			if (out[0] <= min)
				out[0] = (x->grays)*(out[0])/min;
			else
			{
				pointCount++;
				out[0] = (x->grays)*(out[0]-min)/(max-min) + 255 - x->grays;
			}
			
			if (x->invert)
				out[0] = 255 - out[0];
		}
	}
	
	
	//Do we want points
	if (x->ptCount > 0 && matrix_point != NULL && pointCount > 0)
	{
		jit_object_method(matrix_point, _jit_sym_getinfo, &info_point);
		
		if (x->ptFloat == 0)
		{
			if (info_point.type != _jit_sym_long ||
				info_point.planecount != 2 ||
				info_point.dimcount != 1 ||
				info_point.dim[0] != x->ptCount)
			{
				info_point.type = _jit_sym_long;
				info_point.planecount = 2;
				info_point.dimcount = 1;
				info_point.dim[0] = x->ptCount;
				
				if (jit_object_method(matrix_point, _jit_sym_setinfo, &info_point))
				{
					error("Unable to resize point matrix!");
					return JIT_ERR_GENERIC;
				}
				
				jit_object_method(matrix_point, _jit_sym_getinfo, &info_point);
			}
		}
		else
		{
			if (info_point.type != _jit_sym_float32 ||
				info_point.planecount != 2 ||
				info_point.dimcount != 1 ||
				info_point.dim[0] != x->ptCount)
			{
				info_point.type = _jit_sym_float32;
				info_point.planecount = 2;
				info_point.dimcount = 1;
				info_point.dim[0] = x->ptCount;
				
				if (jit_object_method(matrix_point, _jit_sym_setinfo, &info_point))
				{
					error("Unable to resize point matrix!");
					return JIT_ERR_GENERIC;
				}
				
				jit_object_method(matrix_point, _jit_sym_getinfo, &info_point);
			}
		}
		
		jit_object_method(matrix_point, _jit_sym_getdata, &data_point);
		
		long curPoint = 0;
		long ptSkip = pointCount / x->ptCount;
		long ptDouble = x->ptCount / pointCount + 1;
		
		long skipDat=0;
		long doubleDat=0;
		long *points;
		float *fl32;
		
		if (x->ptFloat == 0)
		{
			for (ny=0; ny<height && curPoint < x->ptCount; ny++)
			{
				for(nx=0; nx<width && curPoint < x->ptCount; nx++)
				{
					out = data_output + nx*info_output.dimstride[0] + ny*info_output.dimstride[1];
					
					if (out[0] > 128 && curPoint < x->ptCount)
					{
						if (ptDouble > 1)
						{
							for(doubleDat=0; doubleDat<ptDouble && curPoint < x->ptCount; doubleDat++)
							{
								points = (long*)(data_point + curPoint*info_point.dimstride[0]);
								points[0] = nx;
								points[1] = ny;
								curPoint++;
							}
						}
						else
						{
							skipDat++;
							if (skipDat >= ptSkip)
							{
								points = (long*)(data_point + curPoint*info_point.dimstride[0]);
								points[0] = nx;
								points[1] = ny;
								curPoint++;
								skipDat = 0;
							}
						}
					}
				}
			}
		}
		else
		{
			for (ny=0; ny<height && curPoint < x->ptCount; ny++)
			{
				for(nx=0; nx<width && curPoint < x->ptCount; nx++)
				{
					out = data_output + nx*info_output.dimstride[0] + ny*info_output.dimstride[1];
					
					if (out[0] > 128 && curPoint < x->ptCount)
					{
						if (ptDouble > 1)
						{
							for(doubleDat=0; doubleDat<ptDouble && curPoint < x->ptCount; doubleDat++)
							{
								fl32 = (float*)(data_point + curPoint*info_point.dimstride[0]);
								fl32[0] = (float)nx/(float)width;
								fl32[1] = (float)ny/(float)height;
								curPoint++;
							}
						}
						else
						{
							skipDat++;
							if (skipDat >= ptSkip)
							{
								fl32 = (float*)(data_point + curPoint*info_point.dimstride[0]);
								fl32[0] = (float)nx/(float)width;
								fl32[1] = (float)ny/(float)height;
								curPoint++;
								skipDat = 0;
							}
						}
					}
				}
			} // end ptFloat
		}
	}
	
	return err;
}


t_jit_err jit_tml_outlines_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop, *o;
	
	//Create class with given constructors & destructors
	_jit_tml_outlines_class = jit_class_new("jit_tml_outlines",(method)jit_tml_outlines_new,(method)jit_tml_outlines_free,
		sizeof(t_jit_tml_outlines),A_CANT,0L); //A_CANT = untyped

	// 2 matrix input / 1 matrix output
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,2,2);

	// need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
	jit_mop_input_nolink(mop,2);
	 o= (t_jit_object*)jit_object_method(mop,_jit_sym_getinput,2);
	jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
	jit_class_addadornment(_jit_tml_outlines_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_tml_outlines_class, (method)jit_tml_outlines_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	// Add attribute -- invert (0 or 1) - go from white/black to black/white
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "invert", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_outlines_setInvert,
							calcoffset(t_jit_tml_outlines, invert));
	jit_class_addattr(_jit_tml_outlines_class, attr);
	
	// Add attribute -- smp (number of processors to optimize for)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "smp", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_outlines_setSMP,
							calcoffset(t_jit_tml_outlines, smpCount));
	jit_class_addattr(_jit_tml_outlines_class, attr);
	
	
	// Add attribute -- deltas (number of points to scan for outline)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "deltas", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_outlines_setDeltas,
							calcoffset(t_jit_tml_outlines, deltas));
	jit_class_addattr(_jit_tml_outlines_class, attr);
	
	
	// Add attribute -- threshold (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "threshold", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_outlines_setThreshold,
							calcoffset(t_jit_tml_outlines, threshold));
	jit_class_addattr(_jit_tml_outlines_class, attr);
	
	
	// Add attribute -- ptCount (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "ptCount", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_outlines_setPtCount,
							calcoffset(t_jit_tml_outlines, ptCount));
	jit_class_addattr(_jit_tml_outlines_class, attr);
	
	
	// Add attribute -- grays (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "grays", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_outlines_setGrays,
							calcoffset(t_jit_tml_outlines, grays));
	jit_class_addattr(_jit_tml_outlines_class, attr);
	
	
	// Add attribute -- ptFloat (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "ptFloat", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_outlines_setPtFloat,
							calcoffset(t_jit_tml_outlines, ptFloat));
	jit_class_addattr(_jit_tml_outlines_class, attr);
	
	//Done!	
	jit_class_register(_jit_tml_outlines_class);
	
	post("outlines: coords found: %i %i",deltaXcnt, deltaYcnt);

	return JIT_ERR_NONE;
}


t_jit_tml_outlines *jit_tml_outlines_new(void)
{
	t_jit_tml_outlines *x;
		
	if (x=(t_jit_tml_outlines *)jit_object_alloc(_jit_tml_outlines_class))
	{
		
		x->invert = 0;
		x->smpCount = 4;
		x->deltas= deltaXcnt;
		x->threshold = 20;
		x->ptCount = 0;
		x->grays = 64;
		
	} else {
		x = NULL;
	}	
	return x;
}

void jit_tml_outlines_free(t_jit_tml_outlines *x)
{

}


//Setters:
t_jit_err jit_tml_outlines_setInvert(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.outlines: invert requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss != 0 && ss != 1)
	{
		error("jit.tml.outlines: invert is 0=no, 1=yes");
		return JIT_ERR_GENERIC;
	}
	
	x->invert = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_outlines_setSMP(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.outlines: invert requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 1 || ss > 100)
	{
		error("jit.tml.outlines: Limited to atleast 1 thread, maximum of 100");
		return JIT_ERR_GENERIC;
	}
	
	x->smpCount = ss;
	
	return JIT_ERR_NONE;
}

t_jit_err jit_tml_outlines_setDeltas(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.outlines: delta requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 1 || ss > deltaXcnt)
	{
		error("jit.tml.outlines: Exceeded limit of deltas!");
		return JIT_ERR_GENERIC;
	}
	
	x->deltas = ss;
	
	return JIT_ERR_NONE;
}

t_jit_err jit_tml_outlines_setThreshold(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.outlines: threshold requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0 || ss > 255)
	{
		error("jit.tml.outlines: Exceeded limit of threshold (0-255)!");
		return JIT_ERR_GENERIC;
	}
	
	x->threshold = ss;
	
	return JIT_ERR_NONE;
}



t_jit_err jit_tml_outlines_setPtCount(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.outlines: ptCount requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.outlines: Exceeded limit of ptCount ( < 0)!");
		return JIT_ERR_GENERIC;
	}
	
	x->ptCount = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_outlines_setGrays(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.outlines: grays requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0 || ss > 127)
	{
		error("jit.tml.outlines: Exceeded limit of ptCount ( 0-127 )!");
		return JIT_ERR_GENERIC;
	}
	
	x->grays = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_outlines_setPtFloat(t_jit_tml_outlines *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.outlines: ptFloat requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss != 0 && ss != 1)
	{
		error("jit.tml.outlines: ptFloat is true(1) or false (0)!");
		return JIT_ERR_GENERIC;
	}
	
	x->ptFloat = ss;
	
	return JIT_ERR_NONE;
}

