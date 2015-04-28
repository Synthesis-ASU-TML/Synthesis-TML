//
//	jit.tml.fluid2.c
//						06.06.03	by Yoichiro Serita	(pixelWeight)
//						2007-04-04	Michael Fortin		(same code base)

#include "jit.common.h"
#include <dispatch/dispatch.h>

typedef struct _jit_tml_fieldToMask t_jit_tml_fieldToMask;

typedef struct dispatchMessage
{
	int message;
	
	t_jit_tml_fieldToMask *o;
} dispatchMessage;

struct _jit_tml_fieldToMask 
{
    t_object				ob;
	
	float	*vf;
	
	
	//Width/height of allocated bitmap
	long width;
	long height;
	long allocated;
	
	float speed;
	float speedExp;
};


void x_init();
void mpInit(int in_workers);		//# of worker threads
void mpTerminate();


void *_jit_tml_fieldToMask_class;
void jit_tml_fieldToMask_allocate(t_jit_tml_fieldToMask *x, int in_width, int in_height);
t_jit_tml_fieldToMask *jit_tml_fieldToMask_new(void);
void jit_tml_fieldToMask_free(t_jit_tml_fieldToMask *x);
t_jit_err jit_tml_fieldToMask_matrix_calc(t_jit_tml_fieldToMask *x, void *inputs, void *outputs);

t_jit_err jit_tml_fieldToMask_init(void);


t_jit_err jit_tml_fieldToMask_set(t_jit_tml_fieldToMask *x, void *attr, long argc, t_atom *argv);


t_jit_err jit_tml_fieldToMask_init(void) 
{
    long attrflags=0;
    t_jit_object *attr;
    t_jit_object *mop, *o;
	
	
    _jit_tml_fieldToMask_class = jit_class_new("jit_tml_fieldToMask",(method)jit_tml_fieldToMask_new,(method)jit_tml_fieldToMask_free,
						 sizeof(t_jit_tml_fieldToMask),A_CANT,0L); //A_CANT = untyped

    // add mop
    mop = jit_object_new(_jit_sym_jit_mop,1,1);	// 1 matrix input / 1 matrix output

    // need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
    
//	int i;
//	for (i=0; i<T; i++)
//	{
//		jit_mop_input_nolink(mop,2+i);
//		o= jit_object_method(mop,_jit_sym_getinput,2+i);
//		jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt);
//	}
	
	
    jit_class_addadornment(_jit_tml_fieldToMask_class,mop);
	
    // add methods
    jit_class_addmethod(_jit_tml_fieldToMask_class, (method)jit_tml_fieldToMask_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	//Add attributes
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"speed",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fieldToMask,speed));
	jit_class_addattr(_jit_tml_fieldToMask_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"speedExp",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_fieldToMask,speedExp));
	jit_class_addattr(_jit_tml_fieldToMask_class,attr);
	
//	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "minMass",
//						  _jit_sym_long, T, 
//						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fieldToMask, minMassCount),
//						  calcoffset(t_jit_tml_fieldToMask,minMass));
//	jit_class_addattr(_jit_tml_fieldToMask_class,attr);
//	
//	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "maxMass",
//						  _jit_sym_long, T, 
//						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fieldToMask, maxMassCount),
//						  calcoffset(t_jit_tml_fieldToMask,maxMass));
//	jit_class_addattr(_jit_tml_fieldToMask_class,attr);
//	
//	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "minDampening",
//						  _jit_sym_long, T, 
//						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fieldToMask, minDampCount),
//						  calcoffset(t_jit_tml_fieldToMask,minDamp));
//	jit_class_addattr(_jit_tml_fieldToMask_class,attr);
//	
//	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "maxDampening",
//						  _jit_sym_long, T, 
//						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fieldToMask, maxDampCount),
//						  calcoffset(t_jit_tml_fieldToMask,maxDamp));
//	jit_class_addattr(_jit_tml_fieldToMask_class,attr);
//	
//	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "speed",
//						  _jit_sym_float32, T, 
//						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fieldToMask, speedCount),
//						  calcoffset(t_jit_tml_fieldToMask,speed));
//	jit_class_addattr(_jit_tml_fieldToMask_class,attr);
//	
//	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "respawn",
//						  _jit_sym_long, T, 
//						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fieldToMask, respawnCount),
//						  calcoffset(t_jit_tml_fieldToMask,respawn));
//	jit_class_addattr(_jit_tml_fieldToMask_class,attr);
//	attr = jit_object_new(	_jit_sym_jit_attr_offset,"speed",_jit_sym_float32,
//							attrflags,(method)0L,(method)0L,
//							calcoffset(t_jit_tml_fieldToMask,speed));
//	jit_class_addattr(_jit_tml_fieldToMask_class,attr);


		
    jit_class_register(_jit_tml_fieldToMask_class);

    return JIT_ERR_NONE;
}


inline float frand()
{
	return ((float)(rand()%10000000))/10000000.0f;
}


t_jit_err jit_tml_fieldToMask_matrix_calc(t_jit_tml_fieldToMask *x, void *inputs, void *outputs)
{
	int i;
    t_jit_err err=JIT_ERR_NONE;
    long vel_savelock,ov_savelock;
    t_jit_matrix_info vel_minfo, ov_minfo;
    void *vel_matrix, *ov_matrix;
	unsigned char *vel_bp = NULL;
	float *ov_bp;
	
    vel_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	ov_matrix	= jit_object_method(outputs,_jit_sym_getindex,0);

    if (x)
	{

		vel_savelock = (long) jit_object_method(vel_matrix,_jit_sym_lock,1);
		ov_savelock = (long)jit_object_method(ov_matrix, _jit_sym_lock,1);
		
		jit_object_method(vel_matrix,_jit_sym_getinfo,&vel_minfo);
		jit_object_method(ov_matrix, _jit_sym_getinfo, &ov_minfo);

		
		//Validate the velocity field (assume this comes from fluid2 - so min 8x8)
		if (vel_minfo.dimcount != 2 || vel_minfo.planecount != 1
			|| vel_minfo.type != _jit_sym_char || vel_minfo.dim[0] < 8
			|| vel_minfo.dim[1] < 8)
		{
			error("For input 0, found (expected) dim=%i (2), planes=%i (1), type=char, "
				  " width=%i (>=8), height=%i (>=8)",
				  vel_minfo.dimcount, vel_minfo.planecount, vel_minfo.dim[0], vel_minfo.dim[1]);
			err = JIT_ERR_MISMATCH_PLANE;
			goto out;
		}
		
		
		//Patch up internal velocity buffer to match size of input (if needed)
		if (vel_minfo.dim[0] != x->width || vel_minfo.dim[1] != x->height)
		{
			
			if (vel_minfo.dim[0] * vel_minfo.dim[1] > x->allocated)
			{
				if (x->vf)		free(x->vf);
				
				x->allocated = vel_minfo.dim[0]*vel_minfo.dim[1];
				x->vf = malloc(sizeof(float)*x->allocated);
			}
			
			x->width = vel_minfo.dim[0];
			x->height = vel_minfo.dim[1];
			memset(x->vf, 0, sizeof(float)*x->allocated);
		}
		
		
		//Coerce the output velocity field to match the internal velocity field!
		if (2 != ov_minfo.dimcount
			|| 2 != ov_minfo.planecount
			|| _jit_sym_float32 != ov_minfo.type
			|| x->width != ov_minfo.dim[0]
			|| x->height != ov_minfo.dim[1])
		{
			ov_minfo.dimcount = 2;
			ov_minfo.planecount = 2;
			ov_minfo.type = _jit_sym_float32;
			ov_minfo.dim[0] = x->width;
			ov_minfo.dim[1] = x->height;
			
			if (jit_object_method(ov_matrix, _jit_sym_setinfo, &(ov_minfo) ))
			{
				error("Unable to resize output matrix %i to match input!", 1+i);
				err = JIT_ERR_GENERIC;
				goto out;
			}
			jit_object_method(ov_matrix,_jit_sym_getinfo,&(ov_minfo) );
		}
		
		
		//Obtain the latest values from the jitter matrices...
		jit_object_method(vel_matrix,_jit_sym_getdata,&vel_bp);
		
		//If we have data... output it!
		if (x->vf)
		{
			//Before output though, best to update the data...
			int i,j;
			
			for (j=0; j<x->height; j++)
			{
				for (i=0; i<x->width; i++)
				{
					if (vel_bp[i+j*vel_minfo.dimstride[1]] > 128)
						x->vf[i+j*x->width] = 1;
					else
					{
						float min = x->width*x->height*100;
						
						if (i > 0 && min > x->vf[i-1 + j*x->width])
							min = x->vf[i-1 + j*x->width];
						
						if (i < x->width-1 && min > x->vf[i+1 + j*x->width])
							min = x->vf[i+1 + j*x->width];
						
						if (j > 0 && min > x->vf[i + (j-1)*x->width])
							min = x->vf[i + (j-1)*x->width];
						
						if (j < x->height-1 && min > x->vf[i + (j+1)*x->width])
							min = x->vf[i + (j+1)*x->width];
						
						x->vf[i+j*x->width] = min+x->speed + (min*min*x->speedExp);
						
						if (isnan(min) || isinf(min))
							x->vf[i+j*x->width] = 0;
					}
				}
			}
			
			jit_object_method(ov_matrix,_jit_sym_getdata,&ov_bp);
			
			//Now output...  separate pass, unfortunately...
			for (j=0; j<x->height; j++)
			{
				for (i=0; i<x->width; i++)
				{
					if (i == 0 || j == 0 || i == x->width-1 || j == x->height-1)
					{
						ov_bp[i*2+j*x->width*2 +0] = 0;
						ov_bp[i*2+j*x->width*2 +1] = 0;
					}
					else
					{						
						ov_bp[i*2+j*x->width*2 +0]	= x->vf[i+1 + j*x->width]
													- x->vf[i-1 + j*x->width];
						ov_bp[i*2+j*x->width*2 +1]	= x->vf[i + (j+1)*x->width]
													- x->vf[i + (j-1)*x->width];
					}
				}
			}
			
			// end do we have an object
		}

		
		
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
    }
	
 out:
    
	jit_object_method(vel_matrix,_jit_sym_lock,vel_savelock);
    jit_object_method(ov_matrix,_jit_sym_lock,ov_savelock);
    return err;
}



t_jit_tml_fieldToMask *jit_tml_fieldToMask_new(void)
{
    t_jit_tml_fieldToMask *x;
    //long i;
	
	
    if (x=(t_jit_tml_fieldToMask *)jit_object_alloc(_jit_tml_fieldToMask_class)) {
		//Setup defaults
		x->width = 0;
		x->height = 0;
		x->allocated = 0;
		
		x->speed = 0.1f;
		x->speedExp = 0.0f;

		x->vf = NULL;

    } else {
	x = NULL;
    }	
    return x;
}

void jit_tml_fieldToMask_free(t_jit_tml_fieldToMask *x)
{
	if (x->vf)			free(x->vf);
}
