//
//	jit.tml.fakeDepth.c
//						06.06.03	by Yoichiro Serita	(pixelWeight)
//						2007-04-04	Michael Fortin		(same code base)

#include "jit.common.h"
#include "JitToCV.h"

typedef struct _jit_tml_fakeDepth 
{
    t_object				ob;
	
	DepthData *d;
	
} t_jit_tml_fakeDepth;


void *_jit_tml_fakeDepth_class;
void jit_tml_fakeDepth_allocate(t_jit_tml_fakeDepth *x, int in_width, int in_height);
t_jit_tml_fakeDepth *jit_tml_fakeDepth_new(void);
void jit_tml_fakeDepth_free(t_jit_tml_fakeDepth *x);
t_jit_err jit_tml_fakeDepth_matrix_calc(t_jit_tml_fakeDepth *x, void *inputs, void *outputs);

t_jit_err jit_tml_fakeDepth_init(void);


t_jit_err jit_tml_fakeDepth_set(t_jit_tml_fakeDepth *x, void *attr, long argc, t_atom *argv);


t_jit_err jit_tml_fakeDepth_init(void) 
{
    long attrflags=0;
    t_jit_object *attr;
    t_jit_object *mop, *o;
	
	
    _jit_tml_fakeDepth_class = jit_class_new("jit_tml_fakeDepth",(method)jit_tml_fakeDepth_new,(method)jit_tml_fakeDepth_free,
						 sizeof(t_jit_tml_fakeDepth),A_CANT,0L); //A_CANT = untyped

    // add mop
    mop = jit_object_new(_jit_sym_jit_mop,2,1);	// 1 matrix input / 1 matrix output

    // need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
    jit_mop_input_nolink(mop,2);
    o= jit_object_method(mop,_jit_sym_getinput,2);
    jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
    jit_class_addadornment(_jit_tml_fakeDepth_class,mop);
	
    // add methods
    jit_class_addmethod(_jit_tml_fakeDepth_class, (method)jit_tml_fakeDepth_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	//Add attributes
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;	

		
    jit_class_register(_jit_tml_fakeDepth_class);

    return JIT_ERR_NONE;
}


t_jit_err jit_tml_fakeDepth_matrix_calc(t_jit_tml_fakeDepth *x, void *inputs, void *outputs)
{
    t_jit_err err=JIT_ERR_NONE;
    long left_savelock,out_savelock,right_savelock;
    t_jit_matrix_info left_minfo,right_minfo,out_minfo;
    long dimcount,planecount;
    void *left_matrix,*right_matrix, *out_matrix;
	unsigned char *left_bp, *right_bp, *out_bp;
	
    left_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);				// 1st matrix (left)
    right_matrix 	= jit_object_method(inputs,_jit_sym_getindex,1);			// 2nd matrix (right)
    out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);				// 1st matrix (depth)
	

    if (x && left_matrix && right_matrix && out_matrix)
	{
		left_savelock = (long) jit_object_method(left_matrix,_jit_sym_lock,1); 
		right_savelock = (long) jit_object_method(right_matrix,_jit_sym_lock,1); 
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
			
			
		jit_object_method(left_matrix,_jit_sym_getinfo,&left_minfo);
		jit_object_method(right_matrix,_jit_sym_getinfo,&right_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		if (left_minfo.type != right_minfo.type ||
			left_minfo.type != _jit_sym_char)
		{
			post("Inputs must of of type _jit_sym_char!");
			err = JIT_ERR_MISMATCH_TYPE;
			goto out;
		}
		
		if (left_minfo.dimcount != 2 || right_minfo.dimcount != 2
			|| left_minfo.dim[0] != right_minfo.dim[0]
			|| left_minfo.dim[1] != right_minfo.dim[1])
		{
			post("2 dimensions required - both must be the same");
			err = JIT_ERR_MISMATCH_DIM;
			goto out;
		}
		
		if (left_minfo.planecount != 1 || right_minfo.planecount !=1)
		{
			post("1 plane needed!");
			err = JIT_ERR_MISMATCH_PLANE;
			goto out;
		}
		
		
		if (left_minfo.dimcount != out_minfo.dimcount ||
			left_minfo.dim[0]	!= out_minfo.dim[0] ||
			left_minfo.dim[1]	!= out_minfo.dim[1] ||
			left_minfo.type		!= out_minfo.type ||
			left_minfo.planecount != out_minfo.planecount)
		{
			out_minfo.dimcount= left_minfo.dimcount;
			out_minfo.dim[0]	= left_minfo.dim[0];
			out_minfo.dim[1]	= left_minfo.dim[1];
			out_minfo.type	= left_minfo.type;
			out_minfo.planecount = left_minfo.planecount;
			
			if (jit_object_method(out_matrix, _jit_sym_setinfo, &out_minfo))
			{
				error("Unable to resize output matrix to match input!");
				err = JIT_ERR_GENERIC;
				goto out;
			}
			
			jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		}
		
		jit_object_method(left_matrix,_jit_sym_getdata,&left_bp);
		jit_object_method(right_matrix,_jit_sym_getdata,&right_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
			
			
		if (!left_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!right_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
			
		//get dimensions/planecount
		dimcount   = out_minfo.dimcount;
		planecount = out_minfo.planecount;
		
		computeDepth(x->d, left_bp, left_minfo.dim[0], left_minfo.dim[1], left_minfo.dimstride[0], left_minfo.dimstride[1], right_bp, right_minfo.dimstride[0], right_minfo.dimstride[1], out_bp, out_minfo.dimstride[0], out_minfo.dimstride[1]);
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
    }
	
 out:
    jit_object_method(out_matrix,_jit_sym_lock,out_savelock);
    jit_object_method(left_matrix,_jit_sym_lock,left_savelock);
    jit_object_method(right_matrix,_jit_sym_lock,right_savelock);
    return err;
}





t_jit_tml_fakeDepth *jit_tml_fakeDepth_new(void)
{
    t_jit_tml_fakeDepth *x;
    //long i;
		
    if (x=(t_jit_tml_fakeDepth *)jit_object_alloc(_jit_tml_fakeDepth_class)) {
		x->d = depthDataAlloc();
    } else {
	x = NULL;
    }	
    return x;
}

void jit_tml_fakeDepth_free(t_jit_tml_fakeDepth *x)
{
    depthDataFree(x->d);
}


////////////////////////////// Setters ///////////////////////////////////////
t_jit_err jit_tml_fakeDepth_set(t_jit_tml_fakeDepth *x, void *attr, long argc, t_atom *argv)
{
	long ss;
	
	if (argc != 1)
	{
		error("tml.ode.core: Quick Step is a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	//Make sure that the quickStep is either 0 or 1.
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss != 0 && ss != 1)
	{
		error("jit.tml.fakeDepth: background is either 0 or 1.  0 no learning, 1 learn next frame.");
		return JIT_ERR_GENERIC;
	}
	
	return JIT_ERR_NONE;
}
