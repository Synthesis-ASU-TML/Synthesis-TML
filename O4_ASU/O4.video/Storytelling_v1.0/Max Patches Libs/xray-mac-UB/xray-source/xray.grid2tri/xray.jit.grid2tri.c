/* 
	xray.jit.grid2tri
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 13-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_grid2tri 
{
	t_object				ob;
} t_xray_jit_grid2tri;

void *_xray_jit_grid2tri_class;

//jitter object/MOP methods
t_jit_err xray_jit_grid2tri_init(void);
t_xray_jit_grid2tri *xray_jit_grid2tri_new(void);
void xray_jit_grid2tri_free(t_xray_jit_grid2tri *x);
t_jit_err xray_jit_grid2tri_matrix_calc(t_xray_jit_grid2tri *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_grid2tri_calculate_ndim(t_xray_jit_grid2tri *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop);

t_jit_err xray_jit_grid2tri_init(void) 
{
	t_jit_object *mop;
	
	_xray_jit_grid2tri_class = jit_class_new("xray_jit_grid2tri",(method)xray_jit_grid2tri_new,(method)xray_jit_grid2tri_free,
		sizeof(t_xray_jit_grid2tri),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	jit_class_addadornment(_xray_jit_grid2tri_class,mop);

	//add methods
	jit_class_addmethod(_xray_jit_grid2tri_class, (method)xray_jit_grid2tri_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	jit_class_register(_xray_jit_grid2tri_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_grid2tri_matrix_calc(t_xray_jit_grid2tri *x, void *inputs, void *outputs)
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
		
		out_minfo.dim[0] = 3;
		out_minfo.dim[1] = 2*(in1_minfo.dim[0]-1)*(in1_minfo.dim[1]-1);
		out_minfo.planecount = in1_minfo.planecount;
		
		jit_object_method(out_matrix,_jit_sym_setinfo,&out_minfo);
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
		dimcount   = in1_minfo.dimcount;
		planecount = in1_minfo.planecount;			
		
		for (i=0;i<dimcount;i++)
		{
			dim[i] = in1_minfo.dim[i];
		}
				
		xray_jit_grid2tri_calculate_ndim(x, dimcount, dim, planecount, 
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


void xray_jit_grid2tri_calculate_ndim(t_xray_jit_grid2tri *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i,j;
	float *fip,*fop;
	double *dip, *dop;
	long height,width;
	long incolstride, inrowstride, outcolstride, outrowstride;
	
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
	default:			
		width  = dim[0];
		height = dim[1];
		
		incolstride = in1_minfo->dimstride[0];
		inrowstride = in1_minfo->dimstride[1];
		outcolstride = out_minfo->dimstride[0];
		outrowstride = out_minfo->dimstride[1];
		
		if (in1_minfo->type==_jit_sym_float32) {
			if(planecount == 3) {
				for(i=0; i < height-1; i++) {
					for(j=0; j < width-1; j++) {					
						//first triangle
						fop = (float *)(bop + 2*(i*(width-1)+j)*outrowstride);
						
						fip = (float *)(bip1 + i*inrowstride + j*incolstride);
						fop[0] = fip[0];
						fop[1] = fip[1];
						fop[2] = fip[2];
						
						fip = (float *)(bip1 + i*inrowstride + (j+1)*incolstride);
						fop[3] = fip[0];
						fop[4] = fip[1];
						fop[5] = fip[2];
						
						fip = (float *)(bip1 + (i+1)*inrowstride + j*incolstride);
						fop[6] = fip[0];
						fop[7] = fip[1];
						fop[8] = fip[2];
						
						//second triangle
						fop = (float *)(bop + (2*(i*(width-1)+j)+1)*outrowstride);
						
						fop[6] = fip[0];
						fop[7] = fip[1];
						fop[8] = fip[2];
						
						fip = (float *)(bip1 + (i+1)*inrowstride + (j+1)*incolstride);
						fop[3] = fip[0];
						fop[4] = fip[1];
						fop[5] = fip[2];
						
						fip = (float *)(bip1 + i*inrowstride + (j+1)*incolstride);
						fop[0] = fip[0];
						fop[1] = fip[1];
						fop[2] = fip[2];
					}
				}
			}
			else if(planecount == 2) {
				for(i=0; i < height-1; i++) {
					for(j=0; j < width-1; j++) {					
						//first triangle
						fop = (float *)(bop + 2*(i*(width-1)+j)*outrowstride);
						
						fip = (float *)(bip1 + i*inrowstride + j*incolstride);
						fop[0] = fip[0];
						fop[1] = fip[1];
						
						fip = (float *)(bip1 + i*inrowstride + (j+1)*incolstride);
						fop[2] = fip[0];
						fop[3] = fip[1];
						
						fip = (float *)(bip1 + (i+1)*inrowstride + j*incolstride);
						fop[4] = fip[0];
						fop[5] = fip[1];
						
						//second triangle
						fop = (float *)(bop + (2*(i*(width-1)+j)+1)*outrowstride);
						
						fop[4] = fip[0];
						fop[5] = fip[1];
						
						fip = (float *)(bip1 + (i+1)*inrowstride + (j+1)*incolstride);
						fop[2] = fip[0];
						fop[3] = fip[1];
						
						fip = (float *)(bip1 + i*inrowstride + (j+1)*incolstride);
						fop[0] = fip[0];
						fop[1] = fip[1];
					}
				}
			}
		}
		else if (in1_minfo->type==_jit_sym_float64)
		{
			if(planecount == 3) {
				for(i=0; i < height-1; i++) {
					for(j=0; j < width-1; j++) {					
						//first triangle
						dop = (double *)(bop + 2*(i*(width-1)+j)*outrowstride);
						
						dip = (double *)(bip1 + i*inrowstride + j*incolstride);
						dop[0] = dip[0];
						dop[1] = dip[1];
						dop[2] = dip[2];
						
						dip = (double *)(bip1 + i*inrowstride + (j+1)*incolstride);
						dop[3] = dip[0];
						dop[4] = dip[1];
						dop[5] = dip[2];
						
						dip = (double *)(bip1 + (i+1)*inrowstride + j*incolstride);
						dop[6] = dip[0];
						dop[7] = dip[1];
						dop[8] = dip[2];
						
						//second triangle
						dop = (double *)(bop + (2*(i*(width-1)+j)+1)*outrowstride);
						
						dop[6] = dip[0];
						dop[7] = dip[1];
						dop[8] = dip[2];
						
						dip = (double *)(bip1 + (i+1)*inrowstride + (j+1)*incolstride);
						dop[3] = dip[0];
						dop[4] = dip[1];
						dop[5] = dip[2];
						
						dip = (double *)(bip1 + i*inrowstride + (j+1)*incolstride);
						dop[0] = dip[0];
						dop[1] = dip[1];
						dop[2] = dip[2];
					}
				}
			}
			else if(planecount == 2) {
				for(i=0; i < height-1; i++) {
					for(j=0; j < width-1; j++) {					
						//first triangle
						dop = (double *)(bop + 2*(i*(width-1)+j)*outrowstride);
						
						dip = (double *)(bip1 + i*inrowstride + j*incolstride);
						dop[0] = dip[0];
						dop[1] = dip[1];
						
						dip = (double *)(bip1 + i*inrowstride + (j+1)*incolstride);
						dop[2] = dip[0];
						dop[3] = dip[1];
						
						dip = (double *)(bip1 + (i+1)*inrowstride + j*incolstride);
						dop[4] = dip[0];
						dop[5] = dip[1];
						
						//second triangle
						dop = (double *)(bop + (2*(i*(width-1)+j)+1)*outrowstride);
						
						dop[4] = dip[0];
						dop[5] = dip[1];
						
						dip = (double *)(bip1 + (i+1)*inrowstride + (j+1)*incolstride);
						dop[2] = dip[0];
						dop[3] = dip[1];
						
						dip = (double *)(bip1 + i*inrowstride + (j+1)*incolstride);
						dop[0] = dip[0];
						dop[1] = dip[1];
					}
				}
			}
		}
		break;
	}
}

t_xray_jit_grid2tri *xray_jit_grid2tri_new(void)
{
	t_xray_jit_grid2tri *x;
		
	if (x=(t_xray_jit_grid2tri *)jit_object_alloc(_xray_jit_grid2tri_class)) {
		//nothing
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_grid2tri_free(t_xray_jit_grid2tri *x)
{
	//nada
}
