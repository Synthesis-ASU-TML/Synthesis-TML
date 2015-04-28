/* 
	xray.jit.distance
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_distance 
{
	t_object				ob;
	long					mode;
} t_xray_jit_distance;

void *_xray_jit_distance_class;

//jitter object/MOP methods
t_jit_err xray_jit_distance_init(void);
t_xray_jit_distance *xray_jit_distance_new(void);
void xray_jit_distance_free(t_xray_jit_distance *x);
t_jit_err xray_jit_distance_matrix_calc(t_xray_jit_distance *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_distance_calculate_ndim(t_xray_jit_distance *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop);

t_jit_err xray_jit_distance_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	t_atom a[2];
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_distance_class = jit_class_new("xray_jit_distance",(method)xray_jit_distance_new,(method)xray_jit_distance_free,
		sizeof(t_xray_jit_distance),0L); //A_CANT = untyped

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	jit_mop_single_planecount(mop,1);	
	jit_atom_setsym(a,_jit_sym_char);
	jit_atom_setsym(a+1,_jit_sym_long);
	
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_object_method(o,_jit_sym_types,2,a);
	
	jit_class_addadornment(_xray_jit_distance_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_distance_class, (method)xray_jit_distance_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//mode
	attr = jit_object_new(atsym,"mode",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_distance,mode));
	jit_class_addattr(_xray_jit_distance_class,attr);
	
	jit_class_register(_xray_jit_distance_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_distance_matrix_calc(t_xray_jit_distance *x, void *inputs, void *outputs)
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
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//compatible types?
		if (in1_minfo.type!=out_minfo.type)
		{ 
			err=JIT_ERR_MISMATCH_TYPE; 
			goto out;
		}		
		//compatible planes?
		if (in1_minfo.planecount!=out_minfo.planecount&&in1_minfo.planecount!=1)
		{ 
			err=JIT_ERR_MISMATCH_PLANE; 
			error("single plane matrices only");
			goto out;
		}		
			
		//get dimensions/planecount
		dimcount   = out_minfo.dimcount;
		planecount = out_minfo.planecount;			
		
		for (i=0;i<dimcount;i++) {
			dim[i] = out_minfo.dim[i];
			if ((in1_minfo.dim[i]<dim[i])) dim[i] = in1_minfo.dim[i];
		}
		
		CLIP(x->mode, 0, 2);
				
		xray_jit_distance_calculate_ndim(x, dimcount, dim, planecount, 
				&in1_minfo, in1_bp, 
				&out_minfo, out_bp);
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	return err;
}


void xray_jit_distance_calculate_ndim(t_xray_jit_distance *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i,j;
	uchar *cip1,*cop;
	char *lip1, *lop;
	long height, width;
	long incolspan, outcolspan;
	long inrowspan, outrowspan;
	uchar cprev;
	long lprev;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
		width  = dim[0];
		height = dim[1];
		
		inrowspan = in1_minfo->dimstride[0];
		outrowspan = out_minfo->dimstride[0];
		incolspan = in1_minfo->dimstride[1];
		outcolspan = out_minfo->dimstride[1];
		
		if (in1_minfo->type==_jit_sym_char)
		{	
			if(x->mode != 0)
			{
				for(i=0; i < width; i++)
				{
					cip1 = (uchar *)(bip1 + i);
					cop  = (uchar *)(bop + i);
					*cop = *cip1;
					cprev = *cop;
					cprev = MIN(cprev, 254);
					cprev++;
					
					for(j=1; j < height; j++)
					{
						cip1 += incolspan;
						cop  += outcolspan;
						
						*cop = MIN(*cip1, cprev);
						cprev = *cop;						
						cprev = MIN(cprev, 254);
						cprev++;
					}
								
					cop  = (uchar *)(bop + i + (height-1)*outcolspan);
					cprev = *cop;
					cprev = MIN(cprev, 254);
					cprev++;

					for(j=height-2; j >= 0; j--)
					{
						cop -= outcolspan;
						*cop = MIN(*cop, cprev);
						cprev = *cop;
						cprev = MIN(cprev, 254);
						cprev++;
					}
				}
			}
			
			if(x->mode != 1)
			{
				for(j=0; j < height; j++)
				{
					 if(x->mode == 0)
					{
						cip1 = (uchar *)(bip1 + j*incolspan);
						cop  = (uchar *)(bop + j*outcolspan);
						*cop = *cip1;
						cprev = *cop;
						CLIP(cprev, 0, 254);
						cprev++;
					
						for(i=1; i < width; i++)
						{
							cip1++;
							cop++;
							cprev = MIN(cprev, 254);
							cprev = *cop;
							CLIP(cprev, 0, 254);
							cprev++;
						}
					}
					else
					{
						cop  = (uchar *)(bop + j*outcolspan);
						cprev = *cop;
						cprev = MIN(cprev, 254);
						cprev++;
					
						for(i=1; i < width; i++)
						{
							cop++;
							*cop = MIN(*cop, cprev);
							cprev = *cop;
							cprev = MIN(cprev, 254);
							cprev++;
						}						
					}
					
					cop  = (uchar *)(bop + (width-1) + j*outcolspan);
					cprev = *cop;
					cprev = MIN(cprev, 254);
					cprev++;
					
					for(i=width-2; i >= 0; i--)
					{
						cop--;
						*cop = MIN(*cop, cprev);
						cprev = *cop;
						cprev = MIN(cprev, 254);
						cprev++;
					}
				}
			}
		}
		if (in1_minfo->type==_jit_sym_long)
		{
			if(x->mode != 0)
			{
				for(i=0; i < width; i++)
				{
					lip1 = bip1 + i*inrowspan;
					lop  = bop + i*outrowspan;
					*(long *)lop = *(long *)lip1;
					lprev = *(long *)lop;
					lprev++;
					
					for(j=1; j < height; j++)
					{
						lip1 += incolspan;
						lop  += outcolspan;
						
						*(long *)lop = MIN(*(long *)lip1, lprev);
						lprev = *(long *)lop;
						lprev++;
					}
					
					lop  = bop + i*inrowspan + (height-1)*outcolspan;
					lprev = *(long *)lop;
					lprev++;

					for(j=height-2; j >= 0; j--)
					{
						lop -= outcolspan;
						*(long *)lop = MIN(*(long *)lop, lprev);
						lprev = *(long *)lop;
						lprev++;
					}
				}
			}
			
			if(x->mode != 1)
			{
				for(j=0; j < height; j++)
				{
					 if(x->mode == 0)
					{
						lip1 = bip1 + j*incolspan;
						lop  = bop + j*outcolspan;
						*lop = *(long *)lip1;
						lprev = *(long *)lop;
						lprev++;
					
						for(i=1; i < width; i++)
						{
							lip1 += inrowspan;
							lop += outrowspan;
							*(long *)lop = MIN(*(long *)lip1, lprev);
							lprev = *(long *)lop;
							lprev++;
						}
					}
					else
					{
						lop  = bop + j*outcolspan;
						lprev = *(long *)lop;
						lprev++;
					
						for(i=1; i < width; i++)
						{
							lop += outrowspan;
							*(long *)lop = MIN(*(long *)lop, lprev);
							lprev = *(long *)lop;
							lprev++;
						}
					}
						
					lop  = bop + (width-1)*inrowspan + j*outcolspan;
					lprev = *(long *)lop;
					lprev++;
					
					for(i=width-2; i >= 0; i--)
					{
						lop -= outrowspan;
						*(long *)lop = MIN(*(long *)lop, lprev);
						lprev = *(long *)lop;
						lprev++;
					}
				}
			}
		}
		break;
	default:
		for	(i=0;i<dim[dimcount-1];i++) {
			cip1 = (uchar *)(bip1 + i*in1_minfo->dimstride[dimcount-1]);
			cop  = (uchar *)(bop  + i*out_minfo->dimstride[dimcount-1]);
			xray_jit_distance_calculate_ndim(x,dimcount-1,dim,planecount,in1_minfo,(char *)cip1,out_minfo,(char *)cop);
		}
	}
}

t_xray_jit_distance *xray_jit_distance_new(void)
{
	t_xray_jit_distance *x;
		
	if (x=(t_xray_jit_distance *)jit_object_alloc(_xray_jit_distance_class)) {
		x->mode = 2;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_distance_free(t_xray_jit_distance *x)
{
	//nada
}
