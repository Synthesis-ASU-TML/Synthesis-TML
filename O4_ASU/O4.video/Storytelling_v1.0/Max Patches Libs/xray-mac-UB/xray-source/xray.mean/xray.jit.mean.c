/* 
	xray.jit.mean
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_mean 
{
	t_object	ob;
	long		planecount;
	long		meandim;
	long 		mean;
} t_xray_jit_mean;

void *_xray_jit_mean_class;

//jitter object/MOP methods
t_jit_err xray_jit_mean_init(void);
t_xray_jit_mean *xray_jit_mean_new(void);
void xray_jit_mean_free(t_xray_jit_mean *x);
t_jit_err xray_jit_mean_matrix_calc(t_xray_jit_mean *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_mean_calculate_ndim(t_xray_jit_mean *x, long dimcount, long *dim, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out1_minfo, char *bop1);
void xray_jit_mean_precalc(t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out1_minfo, char *bop1);
void xray_jit_mean_mean(t_xray_jit_mean *x, 
		t_jit_matrix_info *in1_minfo, 
		t_jit_matrix_info *out1_minfo, char *bop1);

t_jit_err xray_jit_mean_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop;
	t_symbol *atsym;
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_mean_class = jit_class_new("xray_jit_mean",(method)xray_jit_mean_new,(method)xray_jit_mean_free,
		sizeof(t_xray_jit_mean),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	jit_class_addadornment(_xray_jit_mean_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_mean_class, (method)xray_jit_mean_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//meandim
	attr = jit_object_new(atsym,"meandim",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_mean,meandim));
	jit_class_addattr(_xray_jit_mean_class,attr);
	
	//mean
	attr = jit_object_new(atsym,"mean",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_mean,mean));
	jit_class_addattr(_xray_jit_mean_class,attr);
		
	jit_class_register(_xray_jit_mean_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_mean_matrix_calc(t_xray_jit_mean *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in_savelock, out_savelock;
	t_jit_matrix_info in_minfo, out_minfo;
	char *in_bp, *out_bp;
	long i,dimcount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in_matrix, *out_matrix;
	
	in_matrix = jit_object_method(inputs,_jit_sym_getindex,0);
	out_matrix = jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in_matrix&&out_matrix) {
		in_savelock = (long) jit_object_method(in_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);		
		
		jit_object_method(in_matrix,_jit_sym_getinfo,&in_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		//set mean matrix to be a row or column vector (nx1)
		if(x->meandim)
		{
			out_minfo.dim[0] = in_minfo.dim[0];
			out_minfo.dim[1] = 1;		
		}
		else
		{
			out_minfo.dim[0] = 1;
			out_minfo.dim[1] = in_minfo.dim[1];
		}
		
		if(in_minfo.type == _jit_sym_float64)
		{
			out_minfo.type = _jit_sym_float64;
		}
		else
		{
			out_minfo.type = _jit_sym_float32;
		}
		
		jit_object_method(out_matrix, _jit_sym_setinfo, &out_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		jit_object_method(in_matrix,_jit_sym_getdata,&in_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		if (!in_bp) { err=JIT_ERR_INVALID_INPUT; 	x->planecount = 0; goto out;}
		
		//get dimensions/planecount 
		//3m does this a bit different than how it happens for most other objects
		dimcount    = in_minfo.dimcount;
		for (i=0;i<dimcount;i++) {
			dim[i] = in_minfo.dim[i];
		}		
		
		//calculate
		xray_jit_mean_precalc(&in_minfo, in_bp, &out_minfo, out_bp);
		xray_jit_mean_calculate_ndim(x, dimcount, dim, &in_minfo, in_bp, &out_minfo, out_bp);

		if(x->mean)
		{
			xray_jit_mean_mean(x, &in_minfo, &out_minfo, out_bp);
		}
		
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in_matrix,gensym("lock"),in_savelock);
	return err;
}

void xray_jit_mean_precalc(t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out1_minfo, char *bop1) 
{
	long i,j;
	float *fop;
	double *dop;
	
	if(out1_minfo->type == _jit_sym_float32)
	{
		for (i=0;i < out1_minfo->dim[1];i++)
		{
			fop = (float *)(bop1 + i*out1_minfo->dimstride[1]);
			
			for (j=0;j < (out1_minfo->planecount)*(out1_minfo->dim[0]);j++)
			{
				*fop++ = 0;
			}
		}
	}
	else if(out1_minfo->type == _jit_sym_float64)
	{
		for (i=0;i < out1_minfo->dim[1];i++)
		{
			dop = (double *)(bop1 + i*out1_minfo->dimstride[1]);
			
			for (j=0;j < (out1_minfo->planecount)*(out1_minfo->dim[0]);j++)
			{
				*dop++ = 0;
			}
		}
	}
}

void xray_jit_mean_mean(t_xray_jit_mean *x, t_jit_matrix_info *in1_minfo, 
		t_jit_matrix_info *out1_minfo, char *bop1) 
{
	long count=1;
	long i, j;
	float *fop;
	double *dop;
	
	count = in1_minfo->dim[x->meandim];

	if(out1_minfo->type == _jit_sym_float32)
	{
		for (i=0;i < out1_minfo->dim[1];i++)
		{
			fop = (float *)(bop1 + i*out1_minfo->dimstride[1]);
			
			for (j=0;j < (out1_minfo->planecount)*(out1_minfo->dim[0]);j++)
			{
				*fop++ /= count;
			}
		}
	}
	else if(out1_minfo->type == _jit_sym_float64)
	{
		for (i=0;i < out1_minfo->dim[1];i++)
		{
			dop = (double *)(bop1 + i*out1_minfo->dimstride[1]);
			
			for (j=0;j < (out1_minfo->planecount)*(out1_minfo->dim[0]);j++)
			{
				*dop++ /= count;
			}
		}
	}
}


//recursive function to handle higher dimension matrices, by processing 2D sections at a time 
void xray_jit_mean_calculate_ndim(t_xray_jit_mean *x, long dimcount, long *dim, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out1_minfo, char *bop1)
{
	long i,j,k;
	uchar *ip1, *op1;
	float *fop, *fip;
	long *lip;
	double *dip, *dop;
	
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1] = 1;
	case 2:	
		if (in1_minfo->type==_jit_sym_char)
		{
			if(x->meandim)
			{
				for(i=0; i < dim[0]; i++)
				{
					ip1 = (uchar *)(bip1 + i*in1_minfo->dimstride[0]);
					fop = (float *)(bop1 + i*out1_minfo->dimstride[0]);
							
					for (j=0; j < dim[1]; j++)
					{
						for(k=0; k < in1_minfo->planecount; k++)
						{
							fop[k] += (float)(*ip1++);							
						}
						
						ip1 += in1_minfo->dimstride[1]-in1_minfo->planecount;
					}
				}
			}
			else
			{
				for(i=0; i < dim[1]; i++)
				{
					ip1 = (uchar *)(bip1 + i*in1_minfo->dimstride[1]);
					fop = (float *)(bop1 + i*out1_minfo->dimstride[1]);
							
					for(j=0; j < dim[0]; j++)
					{
						for(k=0; k < in1_minfo->planecount; k++)
						{
							fop[k] += (float)(*ip1++);
						}
					}
				}
			}
		}
		else if (in1_minfo->type==_jit_sym_long)
		{
			if(x->meandim)
			{
				for(i=0; i < dim[0]; i++)
				{
					fop = (float *)(bop1 + i*out1_minfo->dimstride[0]);
							
					for (j=0; j < dim[1]; j++)
					{
						lip = (long *)(bip1 + i*in1_minfo->dimstride[0] + j*in1_minfo->dimstride[1]);
						
						for(k=0; k < in1_minfo->planecount; k++)
						{
							fop[k] += (float)(*lip++);							
						}
					}
				}
			}
			else
			{
				for(i=0; i < dim[1]; i++)
				{
					lip = (long *)(bip1 + i*in1_minfo->dimstride[1]);
					fop = (float *)(bop1 + i*out1_minfo->dimstride[1]);
							
					for(j=0; j < dim[0]; j++)
					{
						for(k=0; k < in1_minfo->planecount; k++)
						{
							fop[k] += (float)(*lip++);
						}
					}
				}
			}
		}
		else if (in1_minfo->type==_jit_sym_float32)
		{
			if(x->meandim)
			{
				for(i=0; i < dim[0]; i++)
				{
					fop = (float *)(bop1 + i*out1_minfo->dimstride[0]);
							
					for (j=0; j < dim[1]; j++)
					{
						fip = (float *)(bip1 + i*in1_minfo->dimstride[0] + j*in1_minfo->dimstride[1]);
					
						for(k=0; k < in1_minfo->planecount; k++)
						{
							fop[k] += (float)(*fip++);							
						}
					}
				}
			}
			else
			{
				for(i=0; i < dim[1]; i++)
				{
					fip = (float *)(bip1 + i*in1_minfo->dimstride[1]);
					fop = (float *)(bop1 + i*out1_minfo->dimstride[1]);
							
					for(j=0; j < dim[0]; j++)
					{
						for(k=0; k < in1_minfo->planecount; k++)
						{
							fop[k] += (float)(*fip++);
						}
					}
				}
			}
		}
		else if (in1_minfo->type==_jit_sym_float64)
		{
			if(x->meandim)
			{
				for(i=0; i < dim[0]; i++)
				{
					dop = (double *)(bop1 + i*out1_minfo->dimstride[0]);
							
					for (j=0; j < dim[1]; j++)
					{
						dip = (double *)(bip1 + i*in1_minfo->dimstride[0] + j*in1_minfo->dimstride[1]);
						
						for(k=0; k < in1_minfo->planecount; k++)
						{
							dop[k] += (float)(*dip++);							
						}
					}
				}
			}
			else
			{
				for(i=0; i < dim[1]; i++)
				{
					dip = (double *)(bip1 + i*in1_minfo->dimstride[1]);
					dop = (double *)(bop1 + i*out1_minfo->dimstride[1]);
							
					for(j=0; j < dim[0]; j++)
					{
						for(k=0; k < in1_minfo->planecount; k++)
						{
							dop[k] += (float)(*dip++);
						}
					}
				}
			}
		} 
		break;
	default:
		for	(i=0;i<dim[dimcount-1];i++) {
			ip1 = (uchar *)(bip1 + i*in1_minfo->dimstride[dimcount-1]);
			op1 = (uchar *)(bop1 + i*out1_minfo->dimstride[dimcount-1]);
			xray_jit_mean_calculate_ndim(x,dimcount-1,dim,in1_minfo,(char *)ip1, out1_minfo, (char *)op1);
		}
	}
}

t_xray_jit_mean *xray_jit_mean_new(void)
{
	t_xray_jit_mean *x;
		
	if (x=(t_xray_jit_mean *)jit_object_alloc(_xray_jit_mean_class)) {
		x->planecount = 0;
		x->meandim = 0;
		x->mean = 1;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_mean_free(t_xray_jit_mean *x)
{
	//nada
}
