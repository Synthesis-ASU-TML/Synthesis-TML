//
//	jit.ys.timespace.c
//						06.06.03	by Yoichiro Serita

#include "jit.common.h"

typedef struct _jit_ys_timespace 
{
	t_object				ob;
	
	long x, y, z;
	long datasize;
	uchar *data;
	long index;
	
	long frames;				//Maximum frames (so we may scale!)
	
	long invertTimespace;
	
	long smpCount;				//Number of processes to run.
	
	long minInterlace;
	long interlace;			//True if the resolution is so high that we must run in interlaced.
	
	long maxMemory;			//Determines the maximum amount of memory to allocate in MB (minimum is 100MB)
	
	long curFrame;			//Current frame # (for interlacing).
	
} t_jit_ys_timespace;


//Used for a single copy task.
typedef struct _jit_ys_timespace_task
{
	//Dimensions of data to copy
	long width;
	long height;
	
	//Stride
	long stride;
	
	//Initial element to copy
	long offset;
	
	//Index into the data
	t_jit_ys_timespace *x;
	
	//Pointers to data
	char *bip;			//Input data
	char *bop;			//Output data
	char *bpp;			//Bitmap mask
	long dimstride;
	long pdim;
	
	//Critical region
	MPCriticalRegionID cid;
} t_jit_ys_timespace_task;


void *_jit_ys_timespace_class;

//Various methods
t_jit_ys_timespace *jit_ys_timespace_new(void);
void jit_ys_timespace_allocate(t_jit_ys_timespace *x, long width, long height);
void jit_ys_timespace_free(t_jit_ys_timespace *x);
t_jit_err jit_ys_timespace_matrix_calc(t_jit_ys_timespace *x, void *inputs, void *outputs);
t_jit_err jit_ys_timespace_calculate_ndim(t_jit_ys_timespace *x, long dimcount, long *dim, long planecount, 
t_jit_matrix_info *in_minfo, char *bip, t_jit_matrix_info *out_minfo, char *bop, t_jit_matrix_info *param_info, char *bpp);
t_jit_err jit_ys_timespace_init(void);

//Getters/setters for members
t_jit_err jit_ys_timespace_setInvert(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_ys_timespace_setSMP(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_ys_timespace_setFrames(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_ys_timespace_setInterlace(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_ys_timespace_setMaxMemory(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv);


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
OSStatus EvaluateMP(t_jit_ys_timespace_task *parameter)
{
	long i,j,k;
	
	char *bop = parameter->bop;
	char *bpp = parameter->bpp;
	char *bip = parameter->bip;
	
	long width = parameter->width;
	long height = parameter->height;
	
	long stride = parameter->stride;
	
	long dimstride = parameter->dimstride;
	long pdim = parameter->pdim;
	
	t_jit_ys_timespace *x = parameter->x;
	
	long *dp;
	long *ip;
	
	long pindex;
	
	long  *op;
	uchar *pp;
	
	// get pixel by index
	for(k=parameter->offset; k<height; k+=stride)
	{
		for (j=k; j<k+x->interlace;j++)
		{
<<<<<<< .mine
<<<<<<< .mine
			//Copy current line...
			if ((j+x->curFrame)%x->interlace == 0)
			{
				ip = (long*)(bip + j*dimstride);	// dimstride[1] == width (bytes)
				dp = (long *)(x->data) + (j/x->interlace)*width + width * (height/x->interlace) * x->index;
				memcpy(dp, ip, sizeof(long)*width);		//Copy an entire line (this is real fast)
			}
		
			//Prepare to do time-space
			op = (long*)(bop  + j*dimstride);
			pp = (uchar*)(bpp + j*pdim);
		
			for( i=0; i<width; i++)
			{
				if (x->invertTimespace == 0)
					pindex = x->index - ((long)pp[i] * x->frames)/256;
				else
					pindex = x->index - (256 - ((long)pp[i] * x->frames)/256);
				
				pindex-=(x->interlace + j - x->curFrame)%(x->interlace);
				while (pindex < 0) pindex+=256;
=======
			if (x->invertTimespace == 0)
				pindex = x->index - ((long)pp[i] * x->frames)/256;
			else
				pindex = x->index - (256 - ((long)pp[i] * x->frames)/256);
			
			if (pindex < 0) pindex+=256;
=======
			//Copy current line...
			if ((j+x->curFrame)%x->interlace == 0)
			{
				ip = (long*)(bip + j*dimstride);	// dimstride[1] == width (bytes)
				dp = (long *)(x->data) + (j/x->interlace)*width + width * (height/x->interlace) * x->index;
				memcpy(dp, ip, sizeof(long)*width);		//Copy an entire line (this is real fast)
			}
		
			//Prepare to do time-space
			op = (long*)(bop  + j*dimstride);
			pp = (uchar*)(bpp + j*pdim);
		
			for( i=0; i<width; i++)
			{
				if (x->invertTimespace == 0)
					pindex = x->index - ((long)pp[i] * x->frames)/256;
				else
					pindex = x->index - (256 - ((long)pp[i] * x->frames)/256);
				
				pindex-=(j+x->curFrame)%(x->interlace);
				while (pindex < 0) pindex+=256;
>>>>>>> .r3
>>>>>>> .r1

				op[i] = *((long*)(x->data) + width*(height/x->interlace)*pindex + width*(j/x->interlace) + i);
			}
		}
		
	}
	
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
void Evaluate(t_jit_ys_timespace *x, char *bip, char *bop, long dimstride, long width, long height, char *bpp, long pdim)
{
	long j;
	long pCount;		//Number of Threads actually used
   	
   	// increment index
   	x->index = (x->index == 255) ? 0 : x->index + 1;
	
	x->curFrame = (x->curFrame + 1) % x->interlace;
	
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
	t_jit_ys_timespace_task t[100];			//Max 100 threads
	
	for (j=0; j<x->smpCount; j++)
	{
		t[j].width = width;
		t[j].height = height;
		t[j].stride = x->smpCount*x->interlace;
		t[j].offset = j*x->interlace;
		t[j].x = x;
		t[j].bip = bip;
		t[j].bop = bop;
		t[j].bpp = bpp;
		t[j].dimstride = dimstride;
		t[j].pdim = pdim;
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

t_jit_err jit_ys_timespace_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop, *o;
	
	
	_jit_ys_timespace_class = jit_class_new("jit_ys_timespace",(method)jit_ys_timespace_new,(method)jit_ys_timespace_free,
		sizeof(t_jit_ys_timespace),A_CANT,0L); //A_CANT = untyped

	// add mop
	mop = jit_object_new(_jit_sym_jit_mop,2,1);	// 1 matrix input / 1 matrix output

	// need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
	jit_mop_input_nolink(mop,2);
	 o= jit_object_method(mop,_jit_sym_getinput,2);
	jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
	jit_class_addadornment(_jit_ys_timespace_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_ys_timespace_class, (method)jit_ys_timespace_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	// Add attribute -- invert (0 or 1)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = jit_object_new(_jit_sym_jit_attr_offset, "invert", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_ys_timespace_setInvert,
							calcoffset(t_jit_ys_timespace, invertTimespace));
	jit_class_addattr(_jit_ys_timespace_class, attr);
	
	// Add attribute -- smp (number of processors to optimize for)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = jit_object_new(_jit_sym_jit_attr_offset, "smp", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_ys_timespace_setSMP,
							calcoffset(t_jit_ys_timespace, smpCount));
	jit_class_addattr(_jit_ys_timespace_class, attr);
	
	// Add attribute -- frames (number of frames to display at one time)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = jit_object_new(	_jit_sym_jit_attr_offset, "frames", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_ys_timespace_setFrames,
							calcoffset(t_jit_ys_timespace, frames));
	jit_class_addattr(_jit_ys_timespace_class, attr);
	
	// Add attribute -- interlace (Determines how "interlaced" the image is.)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = jit_object_new(	_jit_sym_jit_attr_offset, "interlace", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_ys_timespace_setInterlace,
							calcoffset(t_jit_ys_timespace,interlace));
	jit_class_addattr(_jit_ys_timespace_class, attr);
	
	// Add attribute -- memoryMB (How many megabytes of memory to allocate.)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = jit_object_new(	_jit_sym_jit_attr_offset, "memoryMB", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_ys_timespace_setMaxMemory,
							calcoffset(t_jit_ys_timespace,interlace));
	jit_class_addattr(_jit_ys_timespace_class, attr);
	
	//Done!	
	jit_class_register(_jit_ys_timespace_class);

	return JIT_ERR_NONE;
}


t_jit_err jit_ys_timespace_matrix_calc(t_jit_ys_timespace *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in_savelock,out_savelock,param_savelock;
	t_jit_matrix_info in_minfo,out_minfo, param_minfo;
	char *in_bp,*out_bp, *param_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in_matrix,*out_matrix, *param_matrix;
	
	in_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);			// 1st matrix
	param_matrix 	= jit_object_method(inputs,_jit_sym_getindex,1);			// 2nd matrix (parameter)
	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);		// 1st matrix
	

	if (x&&in_matrix&&out_matrix&&param_matrix) {
		in_savelock = (long) jit_object_method(in_matrix,_jit_sym_lock,1); 
		param_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		
		
		jit_object_method(in_matrix,_jit_sym_getinfo,&in_minfo);
		jit_object_method(param_matrix,_jit_sym_getinfo,&param_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		
		jit_object_method(in_matrix,_jit_sym_getdata,&in_bp);
		jit_object_method(param_matrix,_jit_sym_getdata,&param_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		
		if (!in_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		if (!param_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//compatible types?
		if ((in_minfo.type!=out_minfo.type)) { 
			err=JIT_ERR_MISMATCH_TYPE; 
			goto out;
		}		

		//compatible planes?
		if (in_minfo.planecount!=out_minfo.planecount) {
			err=JIT_ERR_MISMATCH_PLANE; 
			goto out;
		}
		
		//get dimensions/planecount
		dimcount   = out_minfo.dimcount;
		planecount = out_minfo.planecount;			
		for (i=0;i<dimcount;i++) {
			dim[i] = MIN(in_minfo.dim[i],out_minfo.dim[i]);
		}		

		//calculate
		jit_ys_timespace_calculate_ndim(x, dimcount, dim, planecount, &in_minfo, in_bp, &out_minfo, out_bp, &param_minfo, param_bp);
		
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,_jit_sym_lock,out_savelock);
	jit_object_method(in_matrix,_jit_sym_lock,in_savelock);
	jit_object_method(param_matrix,_jit_sym_lock,param_savelock);
	return err;
}

//recursive function to handle higher dimension matrices, by processing 2D sections at a time 
t_jit_err jit_ys_timespace_calculate_ndim(t_jit_ys_timespace *x, long dimcount, long *dim, long planecount, 
	t_jit_matrix_info *in_minfo, char *bip, t_jit_matrix_info *out_minfo, char *bop, t_jit_matrix_info *param_minfo, char *bpp) 
{
	long /*i, j,*/ width, height;
	//uchar *ip, *op;
		
	if (dimcount<1) return 0; //safety

	switch(dimcount) {
	case 1:
		dim[1] = 1;
	case 2:
		width = dim[0];
		height = dim[1];
		
		if (in_minfo->type==_jit_sym_char) {
			switch (planecount) {
			case 1:
				post("warning: plane count .. 1");
				return 1;
				break;
				
			case 2:
				post("warning: plane count .. 2");
				return 1;
				break;
				
			case 4:	// 4 plane (ARGB)
				if (x->x != width && x->y != height)
				{
					post("Changing dimensions of timespace: %i %i", width, height);
					jit_ys_timespace_free(x);
					jit_ys_timespace_allocate(x, width, height);
				}
					
				Evaluate(x, bip, bop, in_minfo->dimstride[1], width, height, bpp, param_minfo->dimstride[1]);
				break;
				
			default:
				post("warning: plane count .. default");
				return 1;
				break;
			}
		}
		break;
		
	default:
		break;
	}
	return 0;
}

void jit_ys_timespace_allocate(t_jit_ys_timespace *x, long width, long height)
{
	x->x = width;
	x->y = height;
	x->datasize = 4 * x->x *x->y * x->z;
	x->minInterlace = 1;
	
	while (x->datasize > 1024*1024*(x->maxMemory))
	{
		x->minInterlace++;
		x->datasize = 4 * x->x * (x->y / x->minInterlace) * x->z;
	}
	
	post("Allocated %i bytes, %i interlace",(int)x->datasize,(int)x->minInterlace);
	
	x->interlace = x->minInterlace;
	x->curFrame = 0;
	
	x->data = (uchar *)malloc(x->datasize);

}

t_jit_ys_timespace *jit_ys_timespace_new(void)
{
	t_jit_ys_timespace *x;
	long i;
		
	if (x=(t_jit_ys_timespace *)jit_object_alloc(_jit_ys_timespace_class)) {
	
		// attributes initialization
		x->index = 255;
		x->maxMemory = 512;
		x->z= 256;
		jit_ys_timespace_allocate(x, 320, 240);
		for(i=0; i<x->datasize; i++) x->data[i] = 0;
		
		x->invertTimespace = 0;
		x->smpCount = 4;
		x->frames = 256;
		
	} else {
		x = NULL;
	}	
	return x;
}

void jit_ys_timespace_free(t_jit_ys_timespace *x)
{
	if(x->data) free(x->data);
}


//Setters:
t_jit_err jit_ys_timespace_setInvert(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.ys.timespace: invert requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss != 0 && ss != 1)
	{
		error("jit.ys.timespace: invert is 0=no, 1=yes");
		return JIT_ERR_GENERIC;
	}
	
	x->invertTimespace = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_ys_timespace_setSMP(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.ys.timespace: invert requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 1 || ss > 100)
	{
		error("jit.ys.timespace: Limited to atleast 1 thread, maximum of 100");
		return JIT_ERR_GENERIC;
	}
	
	x->smpCount = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_ys_timespace_setFrames(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.ys.timespace: frames requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 1 || ss > 256)
	{
		error("jit.ys.timespace: Limited to atleast 1 frame, maximum of 256");
		return JIT_ERR_GENERIC;
	}
	else
		x->frames = ss;
	
	return JIT_ERR_NONE;
}





t_jit_err jit_ys_timespace_setInterlace(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.ys.timespace: interlace requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < x->minInterlace || ss > 256)
	{
		error("jit.ys.timespace: Interlace normally is between 1 and 2, but can be more.  On higher resolutions,");
		error("jit.ys.timespace: you may be forced to run in interlaced.  Right now, the minimum limit is %i.",(int)x->minInterlace); 
		return JIT_ERR_GENERIC;
	}
	else
		x->interlace = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_ys_timespace_setMaxMemory(t_jit_ys_timespace *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.ys.timespace: max memory requires a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 100 || ss > 2000)
	{
		error("jit.ys.timespace: Requires a minimum of 100MB (You may need more for HD).");
		return JIT_ERR_GENERIC;
	}
	else
	{
		x->maxMemory = ss;
		jit_ys_timespace_free(x);
		jit_ys_timespace_allocate(x, x->x, x->y);
	}
	
	return JIT_ERR_NONE;
}

