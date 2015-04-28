/* 
	xray.jit.sift
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_sift 
{
	t_object				ob;
	long					siftdim;
	long					siftplane;
} t_xray_jit_sift;

void *_xray_jit_sift_class;

//jitter object/MOP methods
t_jit_err xray_jit_sift_init(void);
t_xray_jit_sift *xray_jit_sift_new(void);
void xray_jit_sift_free(t_xray_jit_sift *x);
t_jit_err xray_jit_sift_matrix_calc(t_xray_jit_sift *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_sift_calculate_ndim(t_xray_jit_sift *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *in2_minfo, char *bip2, 
		t_jit_matrix_info *out_minfo, char *bop);

//utility methods
long xray_jit_sift_count_size(t_xray_jit_sift *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in2_minfo, char *bip2);

t_jit_err xray_jit_sift_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_sift_class = jit_class_new("xray_jit_sift",(method)xray_jit_sift_new,(method)xray_jit_sift_free,
		sizeof(t_xray_jit_sift),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,2,1);
	o = jit_object_method(mop,_jit_sym_getinput,2);
	jit_attr_setlong(o,_jit_sym_dimlink,0);
	jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt);
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_attr_setlong(o,_jit_sym_dimlink,0);
	
	jit_class_addadornment(_xray_jit_sift_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_sift_class, (method)xray_jit_sift_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//siftdim
	attr = jit_object_new(atsym,"siftdim",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_sift,siftdim));
	jit_class_addattr(_xray_jit_sift_class,attr);
	
	//siftplane
	attr = jit_object_new(atsym,"siftplane",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_sift,siftplane));
	jit_class_addattr(_xray_jit_sift_class,attr);
	
	jit_class_register(_xray_jit_sift_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_sift_matrix_calc(t_xray_jit_sift *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, in2_savelock, out1_savelock;
	t_jit_matrix_info in1_minfo, in2_minfo, out1_minfo;
	char *in1_bp, *in2_bp, *out1_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *in2_matrix, *out1_matrix;
	long count;
	
	in1_matrix = jit_object_method(inputs,_jit_sym_getindex,0);
	in2_matrix = jit_object_method(inputs,_jit_sym_getindex,1);
	out1_matrix = jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&in2_matrix&&out1_matrix) {
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		in2_savelock = (long) jit_object_method(in2_matrix,_jit_sym_lock,1);
		out1_savelock = (long) jit_object_method(out1_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(in2_matrix,_jit_sym_getinfo,&in2_minfo);
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(in2_matrix,_jit_sym_getdata,&in2_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!in2_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		
		//get dimensions/planecount
		dimcount   = in1_minfo.dimcount;
		planecount = in1_minfo.planecount;			
		
		for (i=0;i<dimcount;i++)
		{
			dim[i] = in1_minfo.dim[i];
		}
		
		count = xray_jit_sift_count_size(x, dimcount, dim, planecount,  &in2_minfo,  in2_bp);
	
		jit_object_method(out1_matrix,_jit_sym_getinfo, &out1_minfo);
		
		if(x->siftdim) {
			out1_minfo.dim[0] = in1_minfo.dim[0];
			out1_minfo.dim[1] = count;
		}
		else {
			out1_minfo.dim[0] = count;
			out1_minfo.dim[1] = in1_minfo.dim[1];
		}
		
		out1_minfo.planecount = in1_minfo.planecount;
		out1_minfo.type = in1_minfo.type;
				
		jit_object_method(out1_matrix,_jit_sym_setinfo,&out1_minfo);
		jit_object_method(out1_matrix,_jit_sym_getinfo,&out1_minfo);
		jit_object_method(out1_matrix,_jit_sym_getdata,&out1_bp);		
		
		if (!out1_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}

		xray_jit_sift_calculate_ndim(x, dimcount, dim, planecount, &in1_minfo, in1_bp, &in2_minfo, in2_bp, &out1_minfo, out1_bp);
		
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out1_matrix,gensym("lock"),out1_savelock);
	jit_object_method(in2_matrix,gensym("lock"),in2_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	return err;
}

long xray_jit_sift_count_size(t_xray_jit_sift *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in2_minfo, char *bip2)
{
	long width, height, i, incolspan, inrowspan;
	long count = 0;
	long siftplane;
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
		width  = dim[0];
		height = dim[1];
		
		incolspan = in2_minfo->dimstride[0];
		inrowspan = in2_minfo->dimstride[1];
		
		siftplane = CLIP(x->siftplane, 0, in2_minfo->planecount-1);
		
		if (in2_minfo->type==_jit_sym_char) {
			if(x->siftdim) {
				for(i=0; i < height; i++) {
					if( *((uchar *)(bip2 + i*inrowspan) + siftplane) == 255)
						count++;
				}
			}
			else {
				for(i=0; i < width; i++) {
					if( *((uchar *)(bip2 + i*incolspan) + siftplane) == 255 )
						count++;
				}
			}
		}
		else if (in2_minfo->type==_jit_sym_long) {
			if(x->siftdim) {
				for(i=0; i < height; i++) {
					if( *((long *)(bip2 + i*inrowspan) + siftplane) == 1)
						count++;
				}
			}
			else {
				for(i=0; i < width; i++) {
					if( *((long *)(bip2 + i*incolspan) + siftplane) == 1 )
						count++;
				}
			}
		}
		else if (in2_minfo->type==_jit_sym_float32) {
			if(x->siftdim) {
				for(i=0; i < height; i++) {
					if( *((float *)(bip2 + i*inrowspan) + siftplane) == 1.0)
						count++;
				}
			}
			else {
				for(i=0; i < width; i++) {
					if( *((float *)(bip2 + i*incolspan) + siftplane) == 1.0 )
						count++;
				}
			}
		}
		else if (in2_minfo->type==_jit_sym_float64) {
			if(x->siftdim) {
				for(i=0; i < height; i++) {
					if( *((double *)(bip2 + i*inrowspan) + siftplane) == 1.0)
						count++;
				}
			}
			else {
				for(i=0; i < width; i++) {
					if( *((double *)(bip2 + i*incolspan) + siftplane) == 1.0 )
						count++;
				}
			}
		}
	}
	
	return count;
}

void xray_jit_sift_calculate_ndim(t_xray_jit_sift *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *in2_minfo, char *bip2, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i,j,k;
	long count = 0;
	uchar *cip1, *cip2, *cop;
	long *lip1, *lip2, *lop;
	float *fip1, *fip2, *fop;
	double *dip1, *dip2, *dop;
	long height, width;
	long in1rowspan, in2rowspan, outrowspan;
	long siftplane;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1] = 1;
	case 2:
		width  = dim[0];
		height = dim[1];
		
		in1rowspan = in1_minfo->dimstride[1];
		in2rowspan = in2_minfo->dimstride[1];
		outrowspan = out_minfo->dimstride[1];
		
		siftplane = CLIP(x->siftplane, 0, in2_minfo->planecount-1);
		
		if (in1_minfo->type==_jit_sym_char) {
			if(x->siftdim) {
				for(i=0; i < height; i++) {
					cip2 = (uchar *)(bip2 + i*in2rowspan);
					
					if(cip2[siftplane] == 255) {
						cip1 = (uchar *)(bip1 + i*in1rowspan);
						cop = (uchar *)(bop + count*outrowspan);

						for(j=0; j < width*planecount; j++) {
							cop[j] = cip1[j];
						}
						
						count++;
					}
				}
			}
			else {
				cip2 = (uchar *)bip2;
				
				for(i=0; i < width; i++) {	
					if(cip2[i*planecount+siftplane] == 255) {
						for(j=0; j < height; j++) {
							cip1 = ((uchar *)(bip1 + j*in1rowspan) + i*planecount);
							cop = ((uchar *)(bop + j*outrowspan) + count*planecount);
							
							for(k=0; k < planecount; k++) {
								cop[k] = cip1[k];
							}
						}
						
						count++;
					}
				}
			}
		}
		else if (in1_minfo->type==_jit_sym_long) {
			if(x->siftdim) {
				for(i=0; i < height; i++) {
					lip2 = (long *)(bip2 + i*in2rowspan);
					
					if(lip2[siftplane] == 1) {
						lip1 = (long *)(bip1 + i*in1rowspan);
						lop = (long *)(bop + count*outrowspan);

						for(j=0; j < width*planecount; j++) {
							lop[j] = lip1[j];
						}
						
						count++;
					}
				}
			}
			else {
				lip2 = (long *)bip2;
				
				for(i=0; i < width; i++) {	
					if(lip2[i*planecount+siftplane] == 1) {
						for(j=0; j < height; j++) {
							lip1 = ((long *)(bip1 + j*in1rowspan) + i*planecount);
							lop = ((long *)(bop + j*outrowspan) + count*planecount);
							
							for(k=0; k < planecount; k++) {
								lop[k] = lip1[k];
							}
						}
						
						count++;
					}
				}
			}
		}
		else if (in1_minfo->type==_jit_sym_float32) {
			if(x->siftdim) {
				for(i=0; i < height; i++) {
					fip2 = (float *)(bip2 + i*in2rowspan);
					
					if(fip2[siftplane] == 1.0) {
						fip1 = (float *)(bip1 + i*in1rowspan);
						fop = (float *)(bop + count*outrowspan);

						for(j=0; j < width*planecount; j++) {
							fop[j] = fip1[j];
						}
						
						count++;
					}
				}
			}
			else {
				fip2 = (float *)bip2;
				
				for(i=0; i < width; i++) {	
					if(fip2[i*planecount+siftplane] == 1.0) {
						for(j=0; j < height; j++) {
							fip1 = ((float *)(bip1 + j*in1rowspan) + i*planecount);
							fop = ((float *)(bop + j*outrowspan) + count*planecount);
							
							for(k=0; k < planecount; k++) {
								fop[k] = fip1[k];
							}
						}
						
						count++;
					}
				}
			}
		}
		else if (in1_minfo->type==_jit_sym_float64) {
			if(x->siftdim) {
				for(i=0; i < height; i++) {
					dip2 = (double *)(bip2 + i*in2rowspan);
					
					if(dip2[siftplane] == 1.0) {
						dip1 = (double *)(bip1 + i*in1rowspan);
						dop = (double *)(bop + count*outrowspan);

						for(j=0; j < width*planecount; j++) {
							dop[j] = dip1[j];
						}
						
						count++;
					}
				}
			}
			else {
				dip2 = (double *)bip2;
				
				for(i=0; i < width; i++) {	
					if(dip2[i*planecount+siftplane] == 1.0) {
						for(j=0; j < height; j++) {
							dip1 = ((double *)(bip1 + j*in1rowspan) + i*planecount);
							dop = ((double *)(bop + j*outrowspan) + count*planecount);
							
							for(k=0; k < planecount; k++) {
								dop[k] = dip1[k];
							}
						}
						
						count++;
					}
				}
			}
		}
		break;
	}
}

t_xray_jit_sift *xray_jit_sift_new(void)
{
	t_xray_jit_sift *x;
		
	if (x=(t_xray_jit_sift *)jit_object_alloc(_xray_jit_sift_class)) {
		x->siftdim = 0;
		x->siftplane = 0;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_sift_free(t_xray_jit_sift *x)
{

}