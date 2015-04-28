/* 
	xray.jit.crossproduct
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_cumsum 
{
	t_object	ob;	
	char		dimmode;
} t_xray_jit_cumsum;

void *_xray_jit_cumsum_class;

//jitter object/MOP methods
t_jit_err xray_jit_cumsum_init(void);
t_xray_jit_cumsum *xray_jit_cumsum_new(void);
void xray_jit_cumsum_free(t_xray_jit_cumsum *x);
t_jit_err xray_jit_cumsum_matrix_calc(t_xray_jit_cumsum *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_cumsum_calculate_ndim(t_xray_jit_cumsum *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop);
	
t_jit_err xray_jit_cumsum_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	t_atom a[1];
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_cumsum_class = jit_class_new("xray_jit_cumsum",(method)xray_jit_cumsum_new,(method)xray_jit_cumsum_free,
		sizeof(t_xray_jit_cumsum),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop, 1, 1);
	jit_atom_setsym(a, _jit_sym_float32);

	o = jit_object_method(mop,_jit_sym_getinput,1);
	jit_object_method(o,_jit_sym_types,1,a);
	
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_object_method(o,_jit_sym_types,1,a);
	
	jit_class_addadornment(_xray_jit_cumsum_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_cumsum_class, (method)xray_jit_cumsum_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//dimmode
	attr = jit_object_new(atsym,"dimmode",_jit_sym_char,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_cumsum,dimmode));
	jit_class_addattr(_xray_jit_cumsum_class,attr);
	
	jit_class_register(_xray_jit_cumsum_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_cumsum_matrix_calc(t_xray_jit_cumsum *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, out1_savelock;
	t_jit_matrix_info in1_minfo, out1_minfo;
	char *in1_bp, *out1_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *out1_matrix;

	in1_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out1_matrix = jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&out1_matrix) {
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		out1_savelock = (long) jit_object_method(out1_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(out1_matrix,_jit_sym_getinfo,&out1_minfo);
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(out1_matrix,_jit_sym_getdata,&out1_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out1_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//compatible types?
		if (in1_minfo.type!=out1_minfo.type)
		{ 
			err=JIT_ERR_MISMATCH_TYPE; 
			goto out;
		}	
			
		//get dimensions/planecount
		dimcount   = in1_minfo.dimcount;
		planecount = in1_minfo.planecount;			
		
		for (i=0; i< dimcount;i++)
		{
			dim[i] = in1_minfo.dim[i];
		}
		
		xray_jit_cumsum_calculate_ndim(x, dimcount, dim, planecount, 
				&in1_minfo, in1_bp, 
				&out1_minfo, out1_bp);
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out1_matrix,gensym("lock"),out1_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	return err;
}

void xray_jit_cumsum_calculate_ndim(t_xray_jit_cumsum *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i,j,k;
	float *fip1, *fop, *last_fop;
	long height, width, in1colspan, outcolspan, in1rowspan, outrowspan;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount)
	{
	default:
	case 1:
		dim[1]=1;
	case 2:
		width  = dim[0];
		height = dim[1];
		
		in1colspan = in1_minfo->dimstride[0];
		in1rowspan = in1_minfo->dimstride[1];
		outcolspan = out_minfo->dimstride[0];
		outrowspan = out_minfo->dimstride[1];
		
		if (in1_minfo->type==_jit_sym_float32) {
		
			if(x->dimmode == 0) {
				for(i=0; i < height; i++) {
					fip1 = (float *)(bip1 + i*in1rowspan);
					fop = (float *)(bop + i*in1rowspan);
					
					for(k=0; k < planecount; k++) {
						fop[k] = fip1[k];
					}
				
					for(j=1; j < width; j++) {
						for(k=0; k < planecount; k++) {
							fop[j*planecount+k] = fip1[j*planecount+k] + fop[(j-1)*planecount+k];
						}
					}
				}
			}
			else {
				for(i=0; i < width; i++) {
					fip1 = (float *)(bip1 + i*in1colspan);
					fop = (float *)(bop + i*outcolspan);
					
					for(k=0; k < planecount; k++) {
						fop[k] = fip1[k];
					}
				
					for(j=1; j < height; j++) {
						last_fop = fop;
						fip1 = (float *)(bip1 + j*in1rowspan + i*in1colspan);
						fop = (float *)(bop + j*outrowspan + i*outcolspan);
						
						for(k=0; k < planecount; k++) {
							fop[k] = fip1[k] + last_fop[k];
						}
					}
				}
			}
			
		}
		
		break;
	}
}

t_xray_jit_cumsum *xray_jit_cumsum_new(void)
{
	t_xray_jit_cumsum *x;
		
	if (x=(t_xray_jit_cumsum *)jit_object_alloc(_xray_jit_cumsum_class))
	{
		x->dimmode = 0;
	}
	else
	{
		x = NULL;
	}	
	return x;
}

void xray_jit_cumsum_free(t_xray_jit_cumsum *x)
{
	//nada
}
