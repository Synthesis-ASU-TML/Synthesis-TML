/* 
	xray.jit.cellminmax
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_cellminmax 
{
	t_object				ob;
	long					mode;
} t_xray_jit_cellminmax;

void *_xray_jit_cellminmax_class;

//jitter object/MOP methods
t_jit_err xray_jit_cellminmax_init(void);
t_xray_jit_cellminmax *xray_jit_cellminmax_new(void);
void xray_jit_cellminmax_free(t_xray_jit_cellminmax *x);
t_jit_err xray_jit_cellminmax_matrix_calc(t_xray_jit_cellminmax *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_cellminmax_calculate_ndim(t_xray_jit_cellminmax *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop);

t_jit_err xray_jit_cellminmax_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	t_atom a[2];
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_cellminmax_class = jit_class_new("xray_jit_cellminmax",(method)xray_jit_cellminmax_new,(method)xray_jit_cellminmax_free,
		sizeof(t_xray_jit_cellminmax),0L);

	//add mop - output size is always 2-plane Nx2
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_attr_setlong(o,_jit_sym_dimlink,0);
	
	jit_class_addadornment(_xray_jit_cellminmax_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_cellminmax_class, (method)xray_jit_cellminmax_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//mode
	attr = jit_object_new(atsym,"mode",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_cellminmax,mode));
	jit_class_addattr(_xray_jit_cellminmax_class,attr);
	
	jit_class_register(_xray_jit_cellminmax_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_cellminmax_matrix_calc(t_xray_jit_cellminmax *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock,out_savelock;
	t_jit_matrix_info in1_minfo,out_minfo;
	char *in1_bp,*out_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix,*out_matrix;
	
	in1_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&out_matrix) {
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		if(x->mode <= 0) {
			out_minfo.dim[0] = in1_minfo.dim[0];
		}
		else {
			out_minfo.dim[0] = in1_minfo.dim[1];
		}
		
		out_minfo.dim[1] = 2;
		out_minfo.planecount = 2;
		out_minfo.type = _jit_sym_float32;
		
		jit_object_method(out_matrix,_jit_sym_setinfo,&out_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
			
		//get dimensions/planecount
		dimcount   = out_minfo.dimcount;
		planecount = out_minfo.planecount;			
		
		for (i=0;i<dimcount;i++) {
			dim[i] = in1_minfo.dim[i];
		}
		
		CLIP(x->mode, 0, 2);
				
		xray_jit_cellminmax_calculate_ndim(x, dimcount, dim, planecount, &in1_minfo, in1_bp, &out_minfo, out_bp);
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	return err;
}


void xray_jit_cellminmax_calculate_ndim(t_xray_jit_cellminmax *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i,j;
	float *fop;
	long height,width, incolspan, outcolspan, inrowspan, outrowspan;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
		width  = dim[0];
		height = dim[1];
		
		incolspan = in1_minfo->dimstride[0];
		inrowspan = in1_minfo->dimstride[1];

		outcolspan = out_minfo->dimstride[0];
		outrowspan = out_minfo->dimstride[1];
		
		if (in1_minfo->type==_jit_sym_char)
		{
			//vertical min-max
			if(x->mode <= 0) {
				for(j=0; j < width; j++) {
					fop = (float *)(bop + j*outcolspan);
					fop[0] = (float)j;
					
					for(i=0; i < height; i++) {
						if(*(uchar *)(bip1 + i*inrowspan + j*incolspan) > 0)
							break;
					}

					if(i >= height) {
						if(j!=0) {
							fop[1] = *((float *)(bop + (j-1)*outcolspan)+1);
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[0] = (float)j;
							fop[1] = *((float *)(bop + (j-1)*outcolspan + outrowspan)+1);
						}
						else {
							fop[1] = height;
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[0] = (float)j;
							fop[1] = height;
						}
					}
					else {
						fop[1] = (float)i;
						fop = (float *)(bop + j*outcolspan + outrowspan);
						fop[0] = (float)j;
					
						for(i=height-1; i >= 0; i--) {						
							if(*(uchar *)(bip1 + i*inrowspan + j*incolspan) > 0)
								break;
						}
						
						fop[1] = (float)i;
					}
				}
			}
			//horizontal min-max
			else {
				for(j=0; j < height; j++) {
					fop = (float *)(bop + j*outcolspan);
					fop[1] = (float)j;
					
					for(i=0; i < width; i++) {
						if(*(uchar *)(bip1 + j*inrowspan + i*incolspan) > 0)
							break;
					}

					if(i >= width) {
						if(j!=0) {
							fop[0] = *(float *)(bop + (j-1)*outcolspan);
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[1] = (float)j;
							fop[0] = *(float *)(bop + (j-1)*outcolspan + outrowspan);
						}
						else {
							fop[0] = width;
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[1] = (float)j;
							fop[0] = width;
						}
					}
					else {
						fop[0] = (float)i;
						fop = (float *)(bop + j*outcolspan + outrowspan);
						fop[1] = (float)j;
					
						for(i=width-1; i >= 0; i--) {						
							if(*(uchar *)(bip1 + j*inrowspan + i*incolspan) > 0)
								break;
						}
						
						fop[0] = (float)i;
					}
				}
			}
		}
		else if (in1_minfo->type==_jit_sym_long)
		{
			//vertical min-max
			if(x->mode <= 0) {
				for(j=0; j < width; j++) {
					fop = (float *)(bop + j*outcolspan);
					fop[0] = (float)j;
					
					for(i=0; i < height; i++) {
						if(*(long *)(bip1 + i*inrowspan + j*incolspan) != 0)
							break;
					}

					if(i >= height) {
						if(j!=0) {
							fop[1] = *((float *)(bop + (j-1)*outcolspan)+1);
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[0] = (float)j;
							fop[1] = *((float *)(bop + (j-1)*outcolspan + outrowspan)+1);
						}
						else {
							fop[1] = height;
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[0] = (float)j;
							fop[1] = height;
						}
					}
					else {
						fop[1] = (float)i;
						fop = (float *)(bop + j*outcolspan + outrowspan);
						fop[0] = (float)j;
					
						for(i=height-1; i >= 0; i--) {						
							if(*(long *)(bip1 + i*inrowspan + j*incolspan) != 0)
								break;
						}
						
						fop[1] = (float)i;
					}
				}
			}
			//horizontal min-max
			else {
				for(j=0; j < height; j++) {
					fop = (float *)(bop + j*outcolspan);
					fop[1] = (float)j;
					
					for(i=0; i < width; i++) {
						if(*(long *)(bip1 + j*inrowspan + i*incolspan) != 0)
							break;
					}

					if(i >= width) {
						if(j!=0) {
							fop[0] = *(float *)(bop + (j-1)*outcolspan);
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[1] = (float)j;
							fop[0] = *(float *)(bop + (j-1)*outcolspan + outrowspan);
						}
						else {
							fop[0] = width;
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[1] = (float)j;
							fop[0] = width;
						}
					}
					else {
						fop[0] = (float)i;
						fop = (float *)(bop + j*outcolspan + outrowspan);
						fop[1] = (float)j;
					
						for(i=width-1; i >= 0; i--) {						
							if(*(long *)(bip1 + j*inrowspan + i*incolspan) != 0)
								break;
						}
						
						fop[0] = (float)i;
					}
				}
			}
		}
		if (in1_minfo->type==_jit_sym_float32)
		{
			//vertical min-max
			if(x->mode <= 0) {
				for(j=0; j < width; j++) {
					fop = (float *)(bop + j*outcolspan);
					fop[0] = (float)j;
					
					for(i=0; i < height; i++) {
						if(*(float *)(bip1 + i*inrowspan + j*incolspan) != 0.0)
							break;
					}

					if(i >= height) {
						if(j!=0) {
							fop[1] = *((float *)(bop + (j-1)*outcolspan)+1);
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[0] = (float)j;
							fop[1] = *((float *)(bop + (j-1)*outcolspan + outrowspan)+1);
						}
						else {
							fop[1] = height;
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[0] = (float)j;
							fop[1] = height;
						}
					}
					else {
						fop[1] = (float)i;
						fop = (float *)(bop + j*outcolspan + outrowspan);
						fop[0] = (float)j;
					
						for(i=height-1; i >= 0; i--) {						
							if(*(float *)(bip1 + i*inrowspan + j*incolspan) != 0.0)
								break;
						}
						
						fop[1] = (float)i;
					}
				}
			}
			//horizontal min-max
			else {
				for(j=0; j < height; j++) {
					fop = (float *)(bop + j*outcolspan);
					fop[1] = (float)j;
					
					for(i=0; i < width; i++) {
						if(*(float *)(bip1 + j*inrowspan + i*incolspan) != 0.0)
							break;
					}

					if(i >= width) {
						if(j!=0) {
							fop[0] = *(float *)(bop + (j-1)*outcolspan);
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[1] = (float)j;
							fop[0] = *(float *)(bop + (j-1)*outcolspan + outrowspan);
						}
						else {
							fop[0] = width;
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[1] = (float)j;
							fop[0] = width;
						}
					}
					else {
						fop[0] = (float)i;
						fop = (float *)(bop + j*outcolspan + outrowspan);
						fop[1] = (float)j;
					
						for(i=width-1; i >= 0; i--) {						
							if(*(float *)(bip1 + j*inrowspan + i*incolspan) != 0.0)
								break;
						}
						
						fop[0] = (float)i;
					}
				}
			}
		}
		if (in1_minfo->type==_jit_sym_float64)
		{
			//vertical min-max
			if(x->mode <= 0) {
				for(j=0; j < width; j++) {
					fop = (float *)(bop + j*outcolspan);
					fop[0] = (float)j;
					
					for(i=0; i < height; i++) {
						if(*(double *)(bip1 + i*inrowspan + j*incolspan) != 0.0)
							break;
					}

					if(i >= height) {
						if(j!=0) {
							fop[1] = *((float *)(bop + (j-1)*outcolspan)+1);
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[0] = (float)j;
							fop[1] = *((float *)(bop + (j-1)*outcolspan + outrowspan)+1);
						}
						else {
							fop[1] = height;
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[0] = (float)j;
							fop[1] = height;
						}
					}
					else {
						fop[1] = (float)i;
						fop = (float *)(bop + j*outcolspan + outrowspan);
						fop[0] = (float)j;
					
						for(i=height-1; i >= 0; i--) {						
							if(*(double *)(bip1 + i*inrowspan + j*incolspan) != 0.0)
								break;
						}
						
						fop[1] = (float)i;
					}
				}
			}
			//horizontal min-max
			else {
				for(j=0; j < height; j++) {
					fop = (float *)(bop + j*outcolspan);
					fop[1] = (float)j;
					
					for(i=0; i < width; i++) {
						if(*(double *)(bip1 + j*inrowspan + i*incolspan) != 0.0)
							break;
					}

					if(i >= width) {
						if(j!=0) {
							fop[0] = *(float *)(bop + (j-1)*outcolspan);
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[1] = (float)j;
							fop[0] = *(float *)(bop + (j-1)*outcolspan + outrowspan);
						}
						else {
							fop[0] = width;
							fop = (float *)(bop + j*outcolspan + outrowspan);
							fop[1] = (float)j;
							fop[0] = width;
						}
					}
					else {
						fop[0] = (float)i;
						fop = (float *)(bop + j*outcolspan + outrowspan);
						fop[1] = (float)j;
					
						for(i=width-1; i >= 0; i--) {						
							if(*(double *)(bip1 + j*inrowspan + i*incolspan) != 0.0)
								break;
						}
						
						fop[0] = (float)i;
					}
				}
			}
		}
		break;
	default:
	;
	}
}

t_xray_jit_cellminmax *xray_jit_cellminmax_new(void)
{
	t_xray_jit_cellminmax *x;
		
	if (x=(t_xray_jit_cellminmax *)jit_object_alloc(_xray_jit_cellminmax_class)) {
		x->mode = 0;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_cellminmax_free(t_xray_jit_cellminmax *x)
{
	//nada
}
