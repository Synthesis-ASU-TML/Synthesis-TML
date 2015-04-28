/* 
	xray.jit.crossproduct
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

#define PI 		3.14159

typedef struct _xray_jit_crossproduct 
{
	t_object	ob;
	char		normalize[2];
	long		normalizecount;
	
} t_xray_jit_crossproduct;

t_jit_err xray_jit_crossproduct_init(void); 
t_jit_err xray_jit_crossproduct_matrix_calc(t_xray_jit_crossproduct *x, void *inputs, void *outputs);

void *_xray_jit_crossproduct_class;

//jitter object/MOP methods
t_jit_err xray_jit_crossproduct_init(void);
t_xray_jit_crossproduct *xray_jit_crossproduct_new(void);
void xray_jit_crossproduct_free(t_xray_jit_crossproduct *x);
void xray_jit_crossproduct_calculate_ndim(t_xray_jit_crossproduct *obj, long dimcount, long planecount, long *dim, 
		t_jit_matrix_info *in1_minfo, char *bip1,
		t_jit_matrix_info *in2_minfo, char *bip2, 
		t_jit_matrix_info *out1_minfo, char *bop1);

t_jit_err xray_jit_crossproduct_init(void)
{
	long attrflags=0;
	t_jit_object *attr,*mop;
	t_symbol *atsym;
	void *o;
	t_atom a[2];
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_crossproduct_class = jit_class_new("xray_jit_crossproduct",(method)xray_jit_crossproduct_new,(method)xray_jit_crossproduct_free,
		sizeof(t_xray_jit_crossproduct),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,2,1);
	jit_atom_setsym(a, _jit_sym_float32);
	jit_atom_setsym(a+1, _jit_sym_float64);

	o = jit_object_method(mop,_jit_sym_getinput,1);
	jit_object_method(o,_jit_sym_types,2,a);
	
	o = jit_object_method(mop,_jit_sym_getinput,2);
	jit_object_method(o,_jit_sym_types,2,a);
	
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_object_method(o,_jit_sym_types,2,a);
	
	jit_class_addadornment(_xray_jit_crossproduct_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_crossproduct_class, (method)xray_jit_crossproduct_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//normalize
	attr = jit_object_new(_jit_sym_jit_attr_offset_array,"normalize",_jit_sym_char,2,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_crossproduct,normalizecount),calcoffset(t_xray_jit_crossproduct,normalize));
	jit_class_addattr(_xray_jit_crossproduct_class,attr);
		
	jit_class_register(_xray_jit_crossproduct_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_crossproduct_matrix_calc(t_xray_jit_crossproduct *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, in2_savelock, out1_savelock;
	t_jit_matrix_info in1_minfo, in2_minfo, out1_minfo;
	char *in1_bp, *in2_bp, *out1_bp;
	long i,dimcount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *in2_matrix, *out1_matrix;
	
	in1_matrix = jit_object_method(inputs,_jit_sym_getindex,0);
	in2_matrix = jit_object_method(inputs,_jit_sym_getindex,1);
	out1_matrix = jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&in2_matrix&&out1_matrix)
	{
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		in2_savelock = (long) jit_object_method(in2_matrix,_jit_sym_lock,1);
		out1_savelock = (long) jit_object_method(out1_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(in2_matrix,_jit_sym_getinfo,&in2_minfo);
		jit_object_method(out1_matrix,_jit_sym_getinfo,&out1_minfo);
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(in2_matrix,_jit_sym_getdata,&in2_bp);
		jit_object_method(out1_matrix,_jit_sym_getdata,&out1_bp);
		
		if (!in1_bp || !in2_bp)
		{
			err=JIT_ERR_INVALID_INPUT;
			goto out;
		}
		
		if (!out1_bp)
		{
			err=JIT_ERR_INVALID_OUTPUT;
			goto out;
		}
		
		//get dimensions/planecount
		dimcount    = in1_minfo.dimcount;
		for (i=0;i<dimcount;i++) {
			dim[i] = in1_minfo.dim[i];
		}		
		
		//calculate
		xray_jit_crossproduct_calculate_ndim(x, dimcount, in1_minfo.planecount, dim, 
				&in1_minfo, in1_bp, 
				&in2_minfo, in2_bp, 
				&out1_minfo, out1_bp);	
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(in2_matrix,gensym("lock"),in2_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	jit_object_method(out1_matrix,gensym("lock"),out1_savelock);
	return err;
}


void xray_jit_crossproduct_calculate_ndim(t_xray_jit_crossproduct *obj, long dimcount, long planecount, long *dim, 
		t_jit_matrix_info *in1_minfo, char *bip1,
		t_jit_matrix_info *in2_minfo, char *bip2, 
		t_jit_matrix_info *out1_minfo, char *bop1)
{
	long i, j;
	long width, height;
	float *fop, *fip1, *fip2;
	double *dop, *dip1, *dip2;
	long in1colspan, in1rowspan;
	long in2colspan, in2rowspan;
	long outcolspan, outrowspan;
	float norm1, norm2;
	double dnorm1, dnorm2;
	
	if (dimcount<1) return; //safety
	
	switch(dimcount)
	{
	case 1:
		dim[1] = 1;
	case 2:	
		width = dim[0];
		height = dim[1];
		
		if (in1_minfo->type==_jit_sym_float32) {
			in1colspan = in1_minfo->dimstride[0];
			in1rowspan = in1_minfo->dimstride[1];
			in2colspan = in2_minfo->dimstride[0];
			in2rowspan = in2_minfo->dimstride[1];
			outcolspan = out1_minfo->dimstride[0];
			outrowspan = out1_minfo->dimstride[1];

			if(obj->normalize[0] == 0 && obj->normalize[1] == 0) {
				for(i=0; i < height; i++) {
					fip1 = (float *)(bip1 + i*in1rowspan);
					fip2 = (float *)(bip2 + i*in2rowspan);
					fop = (float *)(bop1 + i*outrowspan);
					
					//calculate crossproduct
					for(j=0; j < width; j++) {
						fop[3*j] = fip1[3*j+1]*fip2[3*j+2] - fip1[3*j+2]*fip2[3*j+1];
						fop[3*j+1] = fip1[3*j+2]*fip2[3*j] - fip1[3*j]*fip2[3*j+2];
						fop[3*j+2] = fip1[3*j]*fip2[3*j+1] - fip1[3*j+1]*fip2[3*j];
					}
				}
			}
			else if(obj->normalize[0] == 1 && obj->normalize[1] == 0) {
				for(i=0; i < height; i++) {
					fip1 = (float *)(bip1 + i*in1rowspan);
					fip2 = (float *)(bip2 + i*in2rowspan);
					fop = (float *)(bop1 + i*outrowspan);
					
					//calculate crossproduct
					for(j=0; j < width; j++) {
						norm1 = jit_math_sqrt(fip1[3*j]*fip1[3*j] + fip1[3*j+1]*fip1[3*j+1] + fip1[3*j+2]*fip1[3*j+2]);
						
						if(norm1 != 0.0) {
							fop[3*j] = (fip1[3*j+1]*fip2[3*j+2] - fip1[3*j+2]*fip2[3*j+1])/norm1;
							fop[3*j+1] = (fip1[3*j+2]*fip2[3*j] - fip1[3*j]*fip2[3*j+2])/norm1;
							fop[3*j+2] = (fip1[3*j]*fip2[3*j+1] - fip1[3*j+1]*fip2[3*j])/norm1;
						}
						else {
							fop[3*j] = 0.0;
							fop[3*j+1] = 0.0;
							fop[3*j+2] = 0.0;
						}
					}
				}
			}
			else if(obj->normalize[0] == 0 && obj->normalize[1] == 1) {
				for(i=0; i < height; i++) {
					fip1 = (float *)(bip1 + i*in1rowspan);
					fip2 = (float *)(bip2 + i*in2rowspan);
					fop = (float *)(bop1 + i*outrowspan);
					
					//calculate crossproduct
					for(j=0; j < width; j++) {
						norm2 = jit_math_sqrt(fip2[3*j]*fip2[3*j] + fip2[3*j+1]*fip2[3*j+1] + fip2[3*j+2]*fip2[3*j+2]);
					
						if(norm2 != 0.0) {
							fop[3*j] = (fip1[3*j+1]*fip2[3*j+2] - fip1[3*j+2]*fip2[3*j+1])/norm2;
							fop[3*j+1] = (fip1[3*j+2]*fip2[3*j] - fip1[3*j]*fip2[3*j+2])/norm2;
							fop[3*j+2] = (fip1[3*j]*fip2[3*j+1] - fip1[3*j+1]*fip2[3*j])/norm2;
						}
						else {
							fop[3*j] = 0.0;
							fop[3*j+1] = 0.0;
							fop[3*j+2] = 0.0;
						}
					}
				}
			}
			else if(obj->normalize[0] == 1 && obj->normalize[1] == 1) {
				for(i=0; i < height; i++) {
					fip1 = (float *)(bip1 + i*in1rowspan);
					fip2 = (float *)(bip2 + i*in2rowspan);
					fop = (float *)(bop1 + i*outrowspan);
					
					//calculate crossproduct
					for(j=0; j < width; j++) {
						norm1 = jit_math_sqrt(fip1[3*j]*fip1[3*j] + fip1[3*j+1]*fip1[3*j+1] + fip1[3*j+2]*fip1[3*j+2]);
						norm2 = jit_math_sqrt(fip2[3*j]*fip2[3*j] + fip2[3*j+1]*fip2[3*j+1] + fip2[3*j+2]*fip2[3*j+2]);
						
						if(norm1*norm2 != 0.0) {
							fop[3*j] = (fip1[3*j+1]*fip2[3*j+2] - fip1[3*j+2]*fip2[3*j+1])/(norm1*norm2);
							fop[3*j+1] = (fip1[3*j+2]*fip2[3*j] - fip1[3*j]*fip2[3*j+2])/(norm1*norm2);
							fop[3*j+2] = (fip1[3*j]*fip2[3*j+1] - fip1[3*j+1]*fip2[3*j])/(norm1*norm2);
						}
						else {
							fop[3*j] = 0.0;
							fop[3*j+1] = 0.0;
							fop[3*j+2] = 0.0;
						}
					}
				}
			}
		}
		else if(in1_minfo->type==_jit_sym_float64) {
			in1colspan = in1_minfo->dimstride[0];
			in1rowspan = in1_minfo->dimstride[1];
			in2colspan = in2_minfo->dimstride[0];
			in2rowspan = in2_minfo->dimstride[1];
			outcolspan = out1_minfo->dimstride[0];
			outrowspan = out1_minfo->dimstride[1];

			if(obj->normalize[0] == 0 && obj->normalize[1] == 0) {
				for(i=0; i < height; i++) {
					dip1 = (double *)(bip1 + i*in1rowspan);
					dip2 = (double *)(bip2 + i*in2rowspan);
					dop = (double *)(bop1 + i*outrowspan);
					
					//calculate crossproduct
					for(j=0; j < width; j++) {
						dop[3*j] = dip1[3*j+1]*dip2[3*j+2] - dip1[3*j+2]*dip2[3*j+1];
						dop[3*j+1] = dip1[3*j+2]*dip2[3*j] - dip1[3*j]*dip2[3*j+2];
						dop[3*j+2] = dip1[3*j]*dip2[3*j+1] - dip1[3*j+1]*dip2[3*j];
					}
				}
			}
			else if(obj->normalize[0] == 1 && obj->normalize[1] == 0) {
				for(i=0; i < height; i++) {
					dip1 = (double *)(bip1 + i*in1rowspan);
					dip2 = (double *)(bip2 + i*in2rowspan);
					dop = (double *)(bop1 + i*outrowspan);
					
					//calculate crossproduct
					for(j=0; j < width; j++) {
						dnorm1 = jit_math_sqrt(dip1[3*j]*dip1[3*j] + dip1[3*j+1]*dip1[3*j+1] + dip1[3*j+2]*dip1[3*j+2]);
						
						if(dnorm1 != 0.0) {
							dop[3*j] = (dip1[3*j+1]*dip2[3*j+2] - dip1[3*j+2]*dip2[3*j+1])/dnorm1;
							dop[3*j+1] = (dip1[3*j+2]*dip2[3*j] - dip1[3*j]*dip2[3*j+2])/dnorm1;
							dop[3*j+2] = (dip1[3*j]*dip2[3*j+1] - dip1[3*j+1]*dip2[3*j])/dnorm1;
						}
						else {
							dop[3*j] = 0.0;
							dop[3*j+1] = 0.0;
							dop[3*j+2] = 0.0;
						}
					}
				}
			}
			else if(obj->normalize[0] == 0 && obj->normalize[1] == 1) {
				for(i=0; i < height; i++) {
					dip1 = (double *)(bip1 + i*in1rowspan);
					dip2 = (double *)(bip2 + i*in2rowspan);
					dop = (double *)(bop1 + i*outrowspan);
					
					//calculate crossproduct
					for(j=0; j < width; j++) {
						dnorm2 = jit_math_sqrt(dip2[3*j]*dip2[3*j] + dip2[3*j+1]*dip2[3*j+1] + dip2[3*j+2]*dip2[3*j+2]);
					
						if(dnorm2 != 0.0) {
							dop[3*j] = (dip1[3*j+1]*dip2[3*j+2] - dip1[3*j+2]*dip2[3*j+1])/dnorm2;
							dop[3*j+1] = (dip1[3*j+2]*dip2[3*j] - dip1[3*j]*dip2[3*j+2])/dnorm2;
							dop[3*j+2] = (dip1[3*j]*dip2[3*j+1] - dip1[3*j+1]*dip2[3*j])/dnorm2;
						}
						else {
							dop[3*j] = 0.0;
							dop[3*j+1] = 0.0;
							dop[3*j+2] = 0.0;
						}
					}
				}
			}
			else if(obj->normalize[0] == 1 && obj->normalize[1] == 1) {
				for(i=0; i < height; i++) {
					dip1 = (double *)(bip1 + i*in1rowspan);
					dip2 = (double *)(bip2 + i*in2rowspan);
					dop = (double *)(bop1 + i*outrowspan);
					
					//calculate crossproduct
					for(j=0; j < width; j++) {
						dnorm1 = jit_math_sqrt(dip1[3*j]*dip1[3*j] + dip1[3*j+1]*dip1[3*j+1] + dip1[3*j+2]*dip1[3*j+2]);
						dnorm2 = jit_math_sqrt(dip2[3*j]*dip2[3*j] + dip2[3*j+1]*dip2[3*j+1] + dip2[3*j+2]*dip2[3*j+2]);
						
						if(dnorm1*dnorm2 != 0.0) {
							dop[3*j] = (dip1[3*j+1]*dip2[3*j+2] - dip1[3*j+2]*dip2[3*j+1])/(dnorm1*dnorm2);
							dop[3*j+1] = (dip1[3*j+2]*dip2[3*j] - dip1[3*j]*dip2[3*j+2])/(dnorm1*dnorm2);
							dop[3*j+2] = (dip1[3*j]*dip2[3*j+1] - dip1[3*j+1]*dip2[3*j])/(dnorm1*dnorm2);
						}
						else {
							dop[3*j] = 0.0;
							dop[3*j+1] = 0.0;
							dop[3*j+2] = 0.0;
						}
					}
				}
			}
		}
		break;
	default:
		break;
	}
}

t_xray_jit_crossproduct *xray_jit_crossproduct_new(void)
{
	t_xray_jit_crossproduct *x;
		
	if (x=(t_xray_jit_crossproduct *)jit_object_alloc(_xray_jit_crossproduct_class)) {
		x->normalize[0] = 0;
		x->normalize[1] = 0;

		x->normalizecount = 2;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_crossproduct_free(t_xray_jit_crossproduct *x)
{
	//nada
}