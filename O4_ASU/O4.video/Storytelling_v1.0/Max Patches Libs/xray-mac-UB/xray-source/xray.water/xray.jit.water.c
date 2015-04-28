/* 
	xray.jit.water
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_water 
{
	t_object	ob;
	float		timestep;
	float		spacestep;
	float		wavespeed;
	float		damping;
	char		calced;
	long		dim[2];
	
	t_symbol 	*previousName; //Name of the internal matrix
	void 		*previous;	
} t_xray_jit_water;

void *_xray_jit_water_class;

//jitter object/MOP methods
t_jit_err xray_jit_water_init(void);
t_xray_jit_water *xray_jit_water_new(void);
void xray_jit_water_free(t_xray_jit_water *x);
t_jit_err xray_jit_water_matrix_calc(t_xray_jit_water *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_water_calculate_ndim(t_xray_jit_water *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *in2_minfo, char *bip2, 
		t_jit_matrix_info *out_minfo, char *bop, 
		t_jit_matrix_info *prev_minfo, char *prev_bp);
	
//utility methods
void xray_jit_water_save_to_previous(t_xray_jit_water *x, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *prev_minfo, char *prev_bp);

t_jit_err xray_jit_water_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	t_atom a[1];
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_water_class = jit_class_new("xray_jit_water",(method)xray_jit_water_new,(method)xray_jit_water_free,
		sizeof(t_xray_jit_water),0L); //A_CANT = untyped

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,2,1);
	jit_mop_single_planecount(mop,1);	
	jit_atom_setsym(a,_jit_sym_float32);
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_object_method(o,_jit_sym_types,1,a);
	
	jit_class_addadornment(_xray_jit_water_class,mop);

	//add methods
	jit_class_addmethod(_xray_jit_water_class, (method)xray_jit_water_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);

	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//timestep
	attr = jit_object_new(atsym,"timestep",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_water,timestep));
	jit_class_addattr(_xray_jit_water_class,attr);

	//spacestep
	attr = jit_object_new(atsym,"spacestep",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_water,spacestep));
	jit_class_addattr(_xray_jit_water_class,attr);

	//wavespeed
	attr = jit_object_new(atsym,"wavespeed",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_water,wavespeed));
	jit_class_addattr(_xray_jit_water_class,attr);

	//damping
	attr = jit_object_new(atsym,"damping",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_water,damping));
	jit_class_addattr(_xray_jit_water_class,attr);
	
	jit_class_register(_xray_jit_water_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_water_matrix_calc(t_xray_jit_water *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, in2_savelock, out_savelock;
	t_jit_matrix_info in1_minfo, in2_minfo, out_minfo;
	char *in1_bp, *in2_bp, *out_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *in2_matrix, *out_matrix;
	
	long previous_savelock;
	t_jit_matrix_info previous_minfo;
	char *previous_bp;
	
	in1_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	in2_matrix 	= jit_object_method(inputs,_jit_sym_getindex,1);
	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&out_matrix) {
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		in2_savelock = (long) jit_object_method(in2_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(in2_matrix,_jit_sym_getinfo,&in2_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(in2_matrix,_jit_sym_getdata,&in2_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		if(x->dim[0] != in1_minfo.dim[0] && x->dim[1] != in1_minfo.dim[1]) {
			x->calced = 0;
			x->dim[0] = in1_minfo.dim[0];
			x->dim[1] = in1_minfo.dim[1];
		}
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!in2_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
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
		
		previous_savelock = (long) jit_object_method(x->previous, _jit_sym_lock, 1);
		jit_object_method(x->previous,_jit_sym_getinfo,&previous_minfo);
		
		if(x->calced == 0) {
			previous_minfo.dim[0] = in1_minfo.dim[0];
			previous_minfo.dim[1] = in1_minfo.dim[1];
			previous_minfo.planecount = in1_minfo.planecount;
			
			jit_object_method(x->previous,_jit_sym_setinfo,&previous_minfo);
			jit_object_method(x->previous,_jit_sym_getinfo,&previous_minfo);
		}
		
		jit_object_method(x->previous,_jit_sym_getdata,&previous_bp);
		
		// next = wave equation
		if(x->calced == 1)
			xray_jit_water_calculate_ndim(x, dimcount, dim, planecount, 
					&in1_minfo, in1_bp,
					&in2_minfo, in2_bp, 
					&out_minfo, out_bp, 
					&previous_minfo, previous_bp);
		
		// hlast = h
		xray_jit_water_save_to_previous(x, 
				&in1_minfo, in1_bp, 
				&previous_minfo, previous_bp);
		
		//calculated at least one iteration
		x->calced = 1;	
		
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(x->previous,gensym("lock"),previous_savelock);
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	jit_object_method(in2_matrix,gensym("lock"),in2_savelock);
	return err;
}


void xray_jit_water_calculate_ndim(t_xray_jit_water *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *in2_minfo, char *bip2, 
		t_jit_matrix_info *out_minfo, char *bop, 
		t_jit_matrix_info *prev_minfo, char *prev_bp)
{
	long i,j;
	float *fip1, *fop, *prev_fp;
	float *fip1_up, *fip1_down;
	float *fip2;
	long height,width;
	long incolspan, inrowspan;
	long outcolspan, outrowspan;
	long prevcolspan, prevrowspan;
	float timestep, damping;
	float timeSpaceFactor;
	float dampFactor;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
		width  = prev_minfo->dim[0];
		height = prev_minfo->dim[1];
		
		incolspan = in1_minfo->dimstride[0];
		inrowspan = in1_minfo->dimstride[1];
		outcolspan = out_minfo->dimstride[0];
		outrowspan = out_minfo->dimstride[1];
		prevcolspan = prev_minfo->dimstride[0];
		prevrowspan = prev_minfo->dimstride[1];
		
		if (in1_minfo->type==_jit_sym_float32) {
			timestep = x->timestep;
			damping = x->damping;
			timeSpaceFactor = (timestep*timestep)/(x->spacestep*x->spacestep);
			dampFactor = 1 - damping*timestep;
		
			for(i=1; i < height-1; i++) {
				fip1_up = (float *)(bip1 + (i-1)*inrowspan);
				fip1 = (float *)(bip1 + i*inrowspan);
				fip1_down = (float *)(bip1 + (i+1)*inrowspan);
				fip2 = (float *)(bip2 + i*inrowspan);

				prev_fp = (float *)(prev_bp + i*prevrowspan);
				fop = (float *)(bop + i*outrowspan);
			
				for(j=1; j < width-1; j++) {
					fop[j] = fip1[j] + dampFactor*(fip1[j] - prev_fp[j] ) 
						- timeSpaceFactor*fip2[j]*(4*fip1[j] - fip1[j-1] - fip1[j+1] - fip1_up[j] - fip1_down[j]
						+ 0.5*(4*fip1[j] - fip1_up[j-1] - fip1_up[j+1] - fip1_down[j-1] - fip1_down[j+1] ));
					
					CLIP(fop[j], -1, 1);
				}
			}
		}
		break;
	default:
		;
	}
}

void xray_jit_water_save_to_previous(t_xray_jit_water *x, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *prev_minfo, char *prev_bp)
{
	long i;
	long inrowspan, prevrowspan;
	long bytesPerRow;
	
	inrowspan = in1_minfo->dimstride[1];
	prevrowspan = prev_minfo->dimstride[1];
	bytesPerRow = in1_minfo->dim[0] * in1_minfo->planecount *sizeof(float);
	
	for(i=0; i < in1_minfo->dim[1]; i++) {
		jit_copy_bytes((void *)(prev_bp + i*prevrowspan), (void *)(bip1 + i*inrowspan), bytesPerRow);
	}
}

t_xray_jit_water *xray_jit_water_new(void)
{
	t_xray_jit_water *x;
	void *m;
	t_jit_matrix_info info;
		
	if (x=(t_xray_jit_water *)jit_object_alloc(_xray_jit_water_class)) {
		x->timestep = 0.25;
		x->spacestep = 1.0;
		x->damping = 0.03;
		x->calced = 0;
		x->dim[0] = 1;
		x->dim[1] = 1;
		
		//setup internal matrix
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

void xray_jit_water_free(t_xray_jit_water *x)
{
	jit_object_detach(x->previous, x); //Detach matrix from object
	jit_object_free(x->previous); //Free matrix memory
}