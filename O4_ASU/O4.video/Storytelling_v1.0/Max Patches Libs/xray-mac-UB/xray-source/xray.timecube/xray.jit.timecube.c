/* 
	xray.jit.timecube
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_timecube 
{
	t_object				ob;
	long					mode;
	long					sync;
	char					squish;
} t_xray_jit_timecube;

void *_xray_jit_timecube_class;

//jitter object/MOP methods
t_jit_err xray_jit_timecube_init(void);
t_xray_jit_timecube *xray_jit_timecube_new(void);
void xray_jit_timecube_free(t_xray_jit_timecube *x);
t_jit_err xray_jit_timecube_matrix_calc(t_xray_jit_timecube *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_timecube_calculate_ndim(t_xray_jit_timecube *x, long dimcount, long *dim, long planecount, t_jit_matrix_info *in1_minfo, char *bip1, 
	t_jit_matrix_info *in2_minfo, char *bip2, t_jit_matrix_info *out_minfo, char *bop);

t_jit_err xray_jit_timecube_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	t_atom plane;
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_timecube_class = jit_class_new("xray_jit_timecube",(method)xray_jit_timecube_new,(method)xray_jit_timecube_free,
		sizeof(t_xray_jit_timecube),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,2,1);
	jit_mop_input_nolink(mop,2);

	o = jit_object_method(mop,_jit_sym_getinput,2);
	jit_attr_setlong(o,_jit_sym_planelink,0);
	jit_atom_setlong(&plane,1);
	jit_object_method(o,_jit_sym_minplanecount,1,&plane);
	jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt);

	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_attr_setlong(o,_jit_sym_dimlink,0);
	
	jit_class_addadornment(_xray_jit_timecube_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_timecube_class, (method)xray_jit_timecube_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//mode
	attr = jit_object_new(atsym,"mode",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_timecube,mode));
	jit_class_addattr(_xray_jit_timecube_class,attr);
	
	//sync
	attr = jit_object_new(atsym,"sync",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_timecube,sync));
	jit_class_addattr(_xray_jit_timecube_class,attr);
	
	//squish
	attr = jit_object_new(atsym,"squish",_jit_sym_char,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_timecube,squish));
	jit_class_addattr(_xray_jit_timecube_class,attr);
	
	jit_class_register(_xray_jit_timecube_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_timecube_matrix_calc(t_xray_jit_timecube *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock,in2_savelock,out_savelock;
	t_jit_matrix_info in1_minfo,in2_minfo,out_minfo;
	char *in1_bp,*in2_bp,*out_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix,*in2_matrix,*out_matrix;
	
	in1_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	in2_matrix 	= jit_object_method(inputs,_jit_sym_getindex,1);
	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&in2_matrix&&out_matrix)
	{
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		in2_savelock = (long) jit_object_method(in2_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(in2_matrix,_jit_sym_getinfo,&in2_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		if(x->squish) {
			if(x->mode == 2)  {
				out_minfo.dim[0] = in1_minfo.dim[0];
				out_minfo.dim[1] = in1_minfo.dim[1];
			}
			else if(x->mode == 1) {
				out_minfo.dim[0] = in1_minfo.dim[2];
				out_minfo.dim[1] = in1_minfo.dim[1];
			}
			else {
				out_minfo.dim[0] = in1_minfo.dim[0];
				out_minfo.dim[1] = in1_minfo.dim[2];
			}
		}
		else {
			out_minfo.dim[0] = in1_minfo.dim[0];
			out_minfo.dim[1] = in1_minfo.dim[1];
		}
		
		out_minfo.planecount = in1_minfo.planecount;
		out_minfo.dimcount = 2;
		
		jit_object_method(out_matrix, _jit_sym_setinfo, &out_minfo);

		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(in2_matrix,_jit_sym_getdata,&in2_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!in2_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		if (in1_minfo.planecount != 4 && in1_minfo.type != _jit_sym_char && in1_minfo.dimcount != 3)
		{ 
			err=JIT_ERR_INVALID_INPUT;
			error("xray.jit.timecube: 1st matrix input must be 3D 4-plane char");
			goto out;
		}
		
		if (in2_minfo.dim[0] != in1_minfo.dim[0] && in2_minfo.dim[1] != in1_minfo.dim[1] && x->mode == 2)
		{
			err=JIT_ERR_INVALID_INPUT;
			error("xray.jit.timecube: 2nd input matrix must be the same size as the 1st input matrix");
			goto out;
		}
			
		//get dimensions/planecount
		dimcount   = in1_minfo.dimcount;
		planecount = in1_minfo.planecount;			
		
		for (i=0;i< dimcount;i++)
		{
			dim[i] = in1_minfo.dim[i];
		}
				
		xray_jit_timecube_calculate_ndim(x, dimcount, dim, planecount, &in1_minfo, in1_bp, &in2_minfo, in2_bp, &out_minfo, out_bp);
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in2_matrix,gensym("lock"),in2_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	return err;
}


void xray_jit_timecube_calculate_ndim(t_xray_jit_timecube *x, long dimcount, long *dim, long planecount, t_jit_matrix_info *in1_minfo, char *bip1, 
	t_jit_matrix_info *in2_minfo, char *bip2, t_jit_matrix_info *out_minfo, char *bop)
{
	
	long i, j, n, k;
	uchar *cip1, *cip2, *cop;
	long *lip1, *lop, *lip2;
	float *fip1, *fop;
	double *dip1, *dop;
	float slHeight;
	long height,width, depth, sliceHeight = 1, slice = -1, sliceMod;
	
	long rowstride1, rowstride2, rowstride3, colstride1, colstride2, colstride3;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount)
	{
	case 1:
		dim[1]=1;
	case 2:
		dim[2]=1;
	case 3:
		width  = dim[0];
		height = dim[1];
		depth = dim[2];
		
		if(x->squish)  {
			if (in1_minfo->type==_jit_sym_char) {
				rowstride1 = in1_minfo->dimstride[1];
				rowstride2 = in2_minfo->dimstride[1];
				rowstride3 = out_minfo->dimstride[1];
				
				colstride1 = in1_minfo->dimstride[0];
				colstride2 = in2_minfo->dimstride[0];
				colstride3 = out_minfo->dimstride[0];

				switch(x->mode)
				{
				case 0:
				default:
					slHeight = (float)height/(float)depth;
					
					if(slHeight - (long)slHeight > 0.0) {
						sliceHeight = (long)slHeight+1;
					}
					else {
						sliceHeight = (long)slHeight;
					}
					
					slice = depth;
			
					for (i=0;i < out_minfo->dim[1];i++) {
						slice--;
							
						sliceMod = (slice + x->sync + depth) % depth;
						
						cip1 = (uchar *)(bip1 + i*sliceHeight*in1_minfo->dimstride[1] + in1_minfo->dimstride[1]*height*sliceMod);
						cop  = (uchar *)(bop  + i*out_minfo->dimstride[1]);
						
						for (j=0; j < out_minfo->dim[0]; j++) {	
							for(k=0; k < planecount; k++) {
								*cop++ = *cip1++;
							}
						}
					}
				break;
				}
			}
		}
		else {
			if (in1_minfo->type==_jit_sym_char)
			{
				rowstride1 = in1_minfo->dimstride[1];
				rowstride2 = in2_minfo->dimstride[1];
				rowstride3 = out_minfo->dimstride[1];
				
				colstride1 = in1_minfo->dimstride[0];
				colstride2 = in2_minfo->dimstride[0];
				colstride3 = out_minfo->dimstride[0];

				switch(x->mode)
				{
				case 1:	
					slHeight = (float)width/(float)depth;
					
					if(slHeight - jit_math_floor(slHeight) > 0.0) {
						sliceHeight = (long)slHeight+1;
					}
					else {
						sliceHeight = (long)slHeight;
					}
					
					slice = depth;

					for (i=0; i < width; i++) {
						if(i % sliceHeight == 0) {
							slice--;
						}
											
						sliceMod = (slice+ x->sync + depth) % depth;
											
						for (j=0; j < height; j++) {
							cip1 = (uchar *)(bip1 + j*rowstride1 + i*colstride1 + rowstride1*height*sliceMod);
							cop = (uchar *)(bop + j*rowstride3 + i*colstride3);
							
							for(k=0; k < planecount; k++) {
								*cop++ = *cip1++;
							}
						}
					}
					break;
				case 2:
					if(in2_minfo->type == _jit_sym_char) {
						for (i=0; i < height; i++) {
							cip2 = (uchar *)(bip2 + i*rowstride2);
							cop  = (uchar *)(bop  + i*rowstride3);
							
							for(j=0; j < width; j++) {
								cip1 = (uchar *)(bip1 + i*rowstride1 + rowstride1*height*(((long)(*cip2) + x->sync) % depth) + j*colstride1);
								
								for(k=0; k < planecount; k++) {
									*cop++ = *cip1++;
								}
								
								cip2 = cip2 + colstride2;							
							}
						}
					}
					else if(in2_minfo->type == _jit_sym_long) {
						for (i=0; i < height; i++) {
							lip2 = (long *)(bip2 + i*rowstride2);
							cop  = (uchar *)(bop  + i*rowstride3);
							
							for(j=0; j < width; j++) {
								n = i*width+j;
								cip1 = (uchar *)(bip1 + i*rowstride1 + rowstride1*height*((*((long *)lip2) + x->sync) % depth) + j*colstride1);
							
								for(k=0; k < planecount; k++) {
									*cop++ = *cip1++;
								}
								
								lip2 = lip2 + colstride2;							
							}
						}
					}
					break;
				case 0:
				default:
					slHeight = (float)height/(float)depth;
					
					if(slHeight - (long)slHeight > 0.0) {
						sliceHeight = (long)slHeight+1;
					}
					else {
						sliceHeight = (long)slHeight;
					}
					
					slice = depth;
			
					for (i=0;i < height;i++) {
						if(i % sliceHeight == 0) {
							slice--;	
						}
											
						sliceMod = (slice + x->sync + depth) % depth;
						
						cip1 = (uchar *)(bip1 + i*in1_minfo->dimstride[1] + in1_minfo->dimstride[1]*height*sliceMod);
						cop  = (uchar *)(bop  + i*out_minfo->dimstride[1]);
						
						for (j=0; j < width; j++) {	
							for(k=0; k < planecount; k++) {
								*cop++ = *cip1++;
							}
						}
					}
				break;
				}
			}
			if (in1_minfo->type==_jit_sym_long) {
				rowstride1 = in1_minfo->dimstride[1];
				rowstride2 = in2_minfo->dimstride[1];
				rowstride3 = out_minfo->dimstride[1];
				
				colstride1 = in1_minfo->dimstride[0];
				colstride2 = in2_minfo->dimstride[0];
				colstride3 = out_minfo->dimstride[0];

				switch(x->mode)
				{
				case 1:	
					slHeight = (float)width/(float)depth;
					
					if(slHeight - jit_math_floor(slHeight) > 0.0) {
						sliceHeight = (long)slHeight+1;
					}
					else {
						sliceHeight = (long)slHeight;
					}
					
					slice = depth;

					for (i=0;i<width;i++) {
						if(i % sliceHeight == 0) {
							slice--;
						}
											
						sliceMod = (slice+x->sync+depth) % depth;
											
						for (j=0;j<height;j++) {
							lip1 = (long *)(bip1 + j*rowstride1 + i*colstride1 + rowstride1*height*sliceMod);
							lop = (long *)(bop + j*rowstride3 + i*colstride3);
							
							for(k=0; k < planecount; k++) {
								*lop++ = *lip1++;
							}
						}
					}
					break;
				case 2:
					if(in2_minfo->type == _jit_sym_char) {
						for (i=0; i < height; i++) {
							cip2 = (uchar *)(bip2 + i*rowstride2);
							lop  = (long *)(bop  + i*rowstride3);
							
							for(j=0; j < width; j++) {
								lip1 = (long *)(bip1 + i*rowstride1 + rowstride1*height*(((long)(*cip2) + x->sync) % depth) + j*colstride1);
							
								for(k=0; k < planecount; k++) {
									*lop++ = *lip1++;
								}
								
								cip2 = cip2 + colstride2;					
							}
						}
					}
					else if(in2_minfo->type == _jit_sym_long) {
						for (i=0; i < height; i++) {
							lip2 = (long *)(bip2 + i*rowstride2);
							lop  = (long *)(bop  + i*rowstride3);
							
							for(j=0; j < width; j++) {
								lip1 = (long *)(bip1 + i*rowstride1 + rowstride1*height*((*((long *)lip2) + x->sync) % depth) + j*colstride1);
							
								for(k=0; k < planecount; k++) {
									*lop++ = *lip1++;
								}
								
								lip2 = lip2 + colstride2;							
							}
						}
					}
					break;
				case 0:
				default:
					slHeight = (float)height/(float)depth;
					
					if(slHeight - jit_math_floor(slHeight) > 0.0) {
						sliceHeight = (long)slHeight+1;
					}
					else {
						sliceHeight = (long)slHeight;
					}
					
					slice = depth;
			
					for (i=0;i < height;i++) {
						if(i % sliceHeight == 0) {
							slice--;	
						}
											
						sliceMod = (slice + x->sync + depth) % depth;
						
						lip1 = (long *)(bip1 + i*in1_minfo->dimstride[1] + in1_minfo->dimstride[1]*height*sliceMod);
						lop  = (long *)(bop  + i*out_minfo->dimstride[1]);
						
						for (j=0; j < width; j++) {
							for(k=0; k < planecount; k++)
							{
								*lop++ = *lip1++;
							}
						}
					}
				break;
				}
			}
			else if (in1_minfo->type==_jit_sym_float32) {
				rowstride1 = in1_minfo->dimstride[1];
				rowstride2 = in2_minfo->dimstride[1];
				rowstride3 = out_minfo->dimstride[1];
				
				colstride1 = in1_minfo->dimstride[0];
				colstride2 = in2_minfo->dimstride[0];
				colstride3 = out_minfo->dimstride[0];

				switch(x->mode)
				{
				case 1:	
					slHeight = (float)width/(float)depth;
					
					if(slHeight - jit_math_floor(slHeight) > 0.0) {
						sliceHeight = (long)slHeight+1;
					}
					else {
						sliceHeight = (long)slHeight;
					}
					
					slice = depth;

					for (i=0;i<width;i++) {
						if(i % sliceHeight == 0) {
							slice--;
						}
											
						sliceMod = (slice+x->sync+depth) % depth;
											
						for (j=0;j<height;j++) {
							fip1 = (float *)(bip1 + j*rowstride1 + i*colstride1 + rowstride1*height*sliceMod);
							fop = (float *)(bop + j*rowstride3 + i*colstride3);
							
							for(k=0; k < planecount; k++) {
								*fop++ = *fip1++;
							}
						}
					}
					break;
				case 2:
					if(in2_minfo->type == _jit_sym_char) {
						for (i=0; i < height; i++) {
							cip2 = (uchar *)(bip2 + i*rowstride2);
							fop  = (float *)(bop  + i*rowstride3);
							
							for(j=0; j < width; j++) {
								fip1 = (float *)(bip1 + i*rowstride1 + rowstride1*height*(((long)(*cip2) + x->sync) % depth) + j*colstride1);
							
								for(k=0; k < planecount; k++) {
									*fop++ = *fip1++;
								}
								
								cip2 = cip2 + colstride2;							
							}
						}
					}
					else if(in2_minfo->type == _jit_sym_long) {
						for (i=0; i < height; i++) {
							lip2 = (long *)(bip2 + i*rowstride2);
							fop  = (float *)(bop  + i*rowstride3);
							
							for(j=0; j < width; j++) {
								fip1 = (float *)(bip1 + i*rowstride1 + rowstride1*height*((*((long *)lip2) + x->sync) % depth) + j*colstride1);
							
								for(k=0; k < planecount; k++) {
									*fop++ = *fip1++;
								}
								
								lip2 = lip2 + colstride2;							
							}
						}
					}
					break;
				case 0:
				default:
					slHeight = (float)height/(float)depth;
					
					if(slHeight - jit_math_floor(slHeight) > 0.0) {
						sliceHeight = (long)slHeight+1;
					}
					else {
						sliceHeight = (long)slHeight;
					}
					
					slice = depth;
			
					for (i=0;i < height;i++) {
						if(i % sliceHeight == 0) {
							slice--;	
						}
											
						sliceMod = (slice + x->sync + depth) % depth;
						
						fip1 = (float *)(bip1 + i*in1_minfo->dimstride[1] + in1_minfo->dimstride[1]*height*sliceMod);
						fop  = (float *)(bop  + i*out_minfo->dimstride[1]);
						
						for (j=0; j < width; j++) {
							for(k=0; k < planecount; k++) {
								*fop++ = *fip1++;
							}
						}
					}
				break;
				}	
			}
			else if (in1_minfo->type==_jit_sym_float64) {
				rowstride1 = in1_minfo->dimstride[1];
				rowstride2 = in2_minfo->dimstride[1];
				rowstride3 = out_minfo->dimstride[1];
				
				colstride1 = in1_minfo->dimstride[0];
				colstride2 = in2_minfo->dimstride[0];
				colstride3 = out_minfo->dimstride[0];

				switch(x->mode)
				{
				case 1:	
					slHeight = (float)width/(float)depth;
					
					if(slHeight - jit_math_floor(slHeight) > 0.0) {
						sliceHeight = (long)slHeight+1;
					}
					else {
						sliceHeight = (long)slHeight;
					}
					
					slice = depth;

					for (i=0;i<width;i++) {
						if(i % sliceHeight == 0)  {
							slice--;
						}
											
						sliceMod = (slice+x->sync+depth) % depth;
											
						for (j=0;j<height;j++) {
							dip1 = (double *)(bip1 + j*rowstride1 + i*colstride1 + rowstride1*height*sliceMod);
							dop = (double *)(bop + j*rowstride3 + i*colstride3);
							
							for(k=0; k < planecount; k++) {
								*dop++ = *dip1++;
							}
						}
					}
					break;
				case 2:
					if(in2_minfo->type == _jit_sym_char) {
						for (i=0; i < height; i++) {
							cip2 = (uchar *)(bip2 + i*rowstride2);
							dop  = (double *)(bop  + i*rowstride3);
							
							for(j=0; j < width; j++) {
								dip1 = (double *)(bip1 + i*rowstride1 + rowstride1*height*(((long)(*cip2) + x->sync) % depth) + j*colstride1);
							
								for(k=0; k < planecount; k++) {
									*dop++ = *dip1++;
								}
								
								cip2 = cip2 + colstride2;							
							}
						}
					}
					else if(in2_minfo->type == _jit_sym_long) {
						for (i=0; i < height; i++)  {
							lip2 = (long *)(bip2 + i*rowstride2);
							dop  = (double *)(bop  + i*rowstride3);
							
							for(j=0; j < width; j++) {
								dip1 = (double *)(bip1 + i*rowstride1 + rowstride1*height*((*((long *)lip2) + x->sync) % depth) + j*colstride1);
							
								for(k=0; k < planecount; k++) {
									*dop++ = *dip1++;
								}
								
								lip2 = lip2 + colstride2;							
							}
						}
					}
					break;
				case 0:
				default:
					slHeight = (float)height/(float)depth;
					
					if(slHeight - jit_math_floor(slHeight) > 0.0) {
						sliceHeight = (long)slHeight+1;
					}
					else {
						sliceHeight = (long)slHeight;
					}
					
					slice = depth;
			
					for (i=0;i < height;i++) {
						if(i % sliceHeight == 0) {
							slice--;	
						}
											
						sliceMod = (slice + x->sync + depth) % depth;
						
						dip1 = (double *)(bip1 + i*in1_minfo->dimstride[1] + in1_minfo->dimstride[1]*height*sliceMod);
						dop  = (double *)(bop  + i*out_minfo->dimstride[1]);
						
						for (j=0; j < width; j++) {
							for(k=0; k < planecount; k++) {
								*dop++ = *dip1++;
							}
						}
					}
				break;
				}
			}
		}
	}
}

t_xray_jit_timecube *xray_jit_timecube_new(void)
{
	t_xray_jit_timecube *x;
		
	if (x=(t_xray_jit_timecube *)jit_object_alloc(_xray_jit_timecube_class)) {
		x->mode = 0;
		x->sync = 0;
		x->squish = 0;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_timecube_free(t_xray_jit_timecube *x)
{
	//nada
}
