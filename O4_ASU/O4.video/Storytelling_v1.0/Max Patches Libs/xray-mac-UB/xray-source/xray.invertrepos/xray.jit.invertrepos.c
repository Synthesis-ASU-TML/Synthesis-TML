/* 
	xray.jit.invertrepos
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 13-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_invertrepos 
{
	t_object				ob;
} t_xray_jit_invertrepos;

void *_xray_jit_invertrepos_class;

//jitter object/MOP methods
t_jit_err xray_jit_invertrepos_init(void);
t_xray_jit_invertrepos *xray_jit_invertrepos_new(void);
void xray_jit_invertrepos_free(t_xray_jit_invertrepos *x);
t_jit_err xray_jit_invertrepos_matrix_calc(t_xray_jit_invertrepos *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_invertrepos_calculate_ndim(t_xray_jit_invertrepos *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop);

t_jit_err xray_jit_invertrepos_init(void) 
{
	t_jit_object *mop,*o;
	t_atom a[2];
	
	_xray_jit_invertrepos_class = jit_class_new("xray_jit_invertrepos",(method)xray_jit_invertrepos_new,(method)xray_jit_invertrepos_free,
		sizeof(t_xray_jit_invertrepos),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	jit_atom_setsym(a+1, _jit_sym_char);
	jit_atom_setsym(a, _jit_sym_long);
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_object_method(o,_jit_sym_types,2,a);
	
	jit_class_addadornment(_xray_jit_invertrepos_class,mop);
	
	//add methods
	
	jit_class_addmethod(_xray_jit_invertrepos_class, (method)xray_jit_invertrepos_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	jit_class_register(_xray_jit_invertrepos_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_invertrepos_matrix_calc(t_xray_jit_invertrepos *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock,out_savelock;
	t_jit_matrix_info in1_minfo,out_minfo;
	char *in1_bp,*out_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix,*out_matrix;
	
	in1_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&out_matrix)
	{
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//compatible planes?
		if (in1_minfo.planecount!=out_minfo.planecount)
		{ 
			err=JIT_ERR_MISMATCH_PLANE; 
			goto out;
		}		
			
		//get dimensions/planecount
		dimcount   = out_minfo.dimcount;
		planecount = out_minfo.planecount;			
		
		for (i=0;i<dimcount;i++)
		{
			dim[i] = out_minfo.dim[i];
			if ((in1_minfo.dim[i]<dim[i]))
				dim[i] = in1_minfo.dim[i];
		}
				
		xray_jit_invertrepos_calculate_ndim(x, dimcount, dim, planecount, 
				&in1_minfo, in1_bp, 
				&out_minfo, out_bp);
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	return err;
}


void xray_jit_invertrepos_calculate_ndim(t_xray_jit_invertrepos *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i,j;
	long lxoff, lyoff;
	long height,width, offsetin, offsetout;
	long minX, minY;
	
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
	default:			
		width  = dim[0];
		height = dim[1];
		
		if (in1_minfo->type==_jit_sym_char)
		{
			minX = MIN(255, width-1);
			minY = MIN(255, height-1);
					
			for(i=0; i < height; i++)
			{
				for(j=0; j < width; j++)
				{
					offsetin = j*in1_minfo->dimstride[0] + i*in1_minfo->dimstride[1];
					lxoff = CLAMP(*(long *)(bip1 + offsetin), 0, minX);
					lyoff = CLAMP(*((long *)(bip1 + offsetin) + 1 ), 0, minY);
					
					offsetout = (lxoff)*out_minfo->dimstride[0] + (lyoff)*out_minfo->dimstride[1];
					*(uchar *)(bop + offsetout) = j;
					*((uchar *)(bop + offsetout) + 1 ) = i;
				}
			}
		}
		if (in1_minfo->type==_jit_sym_long)
		{		
			for(i=0; i < height; i++)
			{
				minX = width-1;
				minY = height-1;
				
				for(j=0; j < width; j++)
				{
					offsetin = j*in1_minfo->dimstride[0] + i*in1_minfo->dimstride[1];
					lxoff = CLAMP(*(long *)(bip1 + offsetin), 0, out_minfo->dim[0]-1);
					lyoff = CLAMP(*((long *)(bip1 + offsetin) + 1 ), 0, out_minfo->dim[0]-1);
					
					offsetout = (lxoff)*out_minfo->dimstride[0] + (lyoff)*out_minfo->dimstride[1];
					*(long *)(bop + offsetout) = j;
					*((long *)(bop + offsetout) + 1 ) = i;
				}
			}
		}
		break;
	}
}

t_xray_jit_invertrepos *xray_jit_invertrepos_new(void)
{
	t_xray_jit_invertrepos *x;
		
	if (x=(t_xray_jit_invertrepos *)jit_object_alloc(_xray_jit_invertrepos_class)) {
		//nothing
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_invertrepos_free(t_xray_jit_invertrepos *x)
{
	//nada
}
