/* 
	xray.jit.fdm
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_fdm 
{
	t_object	ob;
	float		spacestep;
	char		calced;
	t_symbol	*direction;
	long		dim[2];
	
	t_symbol 	*previousName; //Name of the internal matrix
	void 		*previous;
} t_xray_jit_fdm;

void *_xray_jit_fdm_class;

//jitter object/MOP methods
t_jit_err xray_jit_fdm_init(void);
t_xray_jit_fdm *xray_jit_fdm_new(void);
void xray_jit_fdm_free(t_xray_jit_fdm *x);
t_jit_err xray_jit_fdm_matrix_calc(t_xray_jit_fdm *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_fdm_calculate_ndim(t_xray_jit_fdm *obj, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop);

t_symbol *ps_x,*ps_y,*ps_xx,*ps_xy,*ps_yx,*ps_yy;

t_jit_err xray_jit_fdm_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	t_atom a[1];
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_fdm_class = jit_class_new("xray_jit_fdm",(method)xray_jit_fdm_new,(method)xray_jit_fdm_free,
		sizeof(t_xray_jit_fdm),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	jit_mop_single_planecount(mop,1);	
	jit_atom_setsym(a,_jit_sym_float32);
	
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_object_method(o,_jit_sym_types,1,a);
	
	jit_class_addadornment(_xray_jit_fdm_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_fdm_class, (method)xray_jit_fdm_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//spacestep
	attr = jit_object_new(atsym,"spacestep",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_fdm,spacestep));
	jit_class_addattr(_xray_jit_fdm_class,attr);
	
	//direction
	attr = jit_object_new(_jit_sym_jit_attr_offset,"direction",_jit_sym_symbol,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_fdm, direction));	
	jit_class_addattr(_xray_jit_fdm_class,attr);
	
	//generate symbols
	ps_x 	= gensym("x");
	ps_y 	= gensym("y");
	ps_xx	= gensym("xx");
	ps_xy 	= gensym("xy");
	ps_yx 	= gensym("yx");
	ps_yy 	= gensym("yy");

	jit_class_register(_xray_jit_fdm_class);
	
	return JIT_ERR_NONE;
}

t_jit_err xray_jit_fdm_matrix_calc(t_xray_jit_fdm *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, out_savelock;
	t_jit_matrix_info in1_minfo, out_minfo;
	char *in1_bp, *out_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *out_matrix;
	
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
		
		
		//next = wave equation
		xray_jit_fdm_calculate_ndim(x, dimcount, dim, planecount, 
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


void xray_jit_fdm_calculate_ndim(t_xray_jit_fdm *obj, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long x, y;
	float *fip1, *fop;
	float *fip1_up, *fip1_down;
	long height,width;
	long incolspan, inrowspan;
	long outcolspan, outrowspan;
	float spacestep;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
		width  = in1_minfo->dim[0];
		height = in1_minfo->dim[1];
		
		incolspan = in1_minfo->dimstride[0];
		inrowspan = in1_minfo->dimstride[1];
		outcolspan = out_minfo->dimstride[0];
		outrowspan = out_minfo->dimstride[1];
		
		if (in1_minfo->type==_jit_sym_float32) {
			spacestep = obj->spacestep;
			
			if( obj->direction == ps_y) {
				for(x=0; x < width; x++) {
					for(y=height; y < 2*height; y++) {
						fip1_up = (float *)(bip1 + ( (y-1) % height )*inrowspan);
						fip1_down = (float *)(bip1 + ( (y+1) % height )*inrowspan);
						fop = (float *)(bop + ( y % height )*outrowspan);

						fop[x] = (fip1_down[x] - fip1_up[x])/(2*spacestep);
					}
				}
			}
			else if( obj->direction == ps_x) {
				for(y=0; y < height; y++) {
					fip1 = (float *)(bip1 + y*inrowspan);
					fop = (float *)(bop + y*outrowspan);
						
					for(x=width; x < 2*width; x++) {
						fop[ x % width ] = (fip1[ ( (x+1) % width ) ] - fip1[ ( (x-1) % width ) ])/(2*spacestep);
					}
				}
			}
			else if( obj->direction == ps_xx) {
				for(y=0; y < height; y++) {
					fip1 = (float *)(bip1 + y*inrowspan);
					fop = (float *)(bop + y*outrowspan);
						
					for(x=width; x < 2*width; x++) {
						fop[ x % width ] = (fip1[ ((x+1) % width) ] - 2*fip1[ ((x) % width) ] + fip1[ ((x-1) % width) ])/(spacestep*spacestep);
					}
				}
			}
			else if( obj->direction == ps_yy) {
				for(x=0; x < width; x++) {
					for(y=height; y < 2*height; y++) {
						fip1_up = (float *)(bip1 + ( (y-1) % height )*inrowspan);
						fip1 = (float *)(bip1 + ( (y) % height )*inrowspan);
						fip1_down = (float *)(bip1 + ( (y+1) % height )*inrowspan);
						fop = (float *)(bop + ( y % height )*outrowspan);

						fop[x] = (fip1_down[x] - 2*fip1[x] + fip1_up[x])/(spacestep*spacestep);
					}
				}
			}
			else if( obj->direction == ps_xy || obj->direction == ps_yx) {
				for(x=width; x < 2*width; x++) {
					for(y=height; y < 2*height; y++) {
						fip1_up = (float *)(bip1 + ( (y-1) % height )*inrowspan);
						fip1 = (float *)(bip1 + ( (y) % height )*inrowspan);
						fip1_down = (float *)(bip1 + ( (y+1) % height )*inrowspan);
						fop = (float *)(bop + ( y % height )*outrowspan);

						fop[x % width] = ( fip1_down[ (x+1) % width ] - fip1_down[ (x-1) % width ] 
										- fip1_up[ (x+1) % width ] + fip1_up[ (x-1) % width ] ) / (4*spacestep*spacestep);
					}
				}
			}
		}
		break;
	default:
		;
	}
}

t_xray_jit_fdm *xray_jit_fdm_new(void)
{
	t_xray_jit_fdm *x;
	void *m;
	t_jit_matrix_info info;
		
	if (x=(t_xray_jit_fdm *)jit_object_alloc(_xray_jit_fdm_class)) {
		x->spacestep = 1.0;
		x->direction = ps_x;
		x->calced = 0;
		x->dim[0] = 1;
		x->dim[1] = 1;
		
		//create internal matrix
		jit_matrix_info_default(&info);
		info.type = _jit_sym_float32;
		info.planecount = 1;
		x->previousName = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->previousName);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->previousName, x);
		x->previous = m;		
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_fdm_free(t_xray_jit_fdm *x)
{
	jit_object_detach(x->previous, x); //Detach matrix from object
	jit_object_free(x->previous); //Free matrix memory
}