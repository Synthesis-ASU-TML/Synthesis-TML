/* 
	xray.jit.cellcoords
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_cellcoords 
{
	t_object				ob;
	char					plane;
	char					out_mode;
	
	t_symbol 				*temp_name; //Name of the internal matrix
	void 					*temp;
} t_xray_jit_cellcoords;

void *_xray_jit_cellcoords_class;

//jitter objet/MOP methods
t_jit_err xray_jit_cellcoords_init(void);
t_xray_jit_cellcoords *xray_jit_cellcoords_new(void);
void xray_jit_cellcoords_free(t_xray_jit_cellcoords *x);
t_jit_err xray_jit_cellcoords_matrix_calc(t_xray_jit_cellcoords *x, void *inputs, void *outputs);

//data processing methods
long xray_jit_cellcoords_calculate_ndim(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp);
long xray_jit_cellcoords_calculate_2d_char(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp);
long xray_jit_cellcoords_calculate_2d_long(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp);
long xray_jit_cellcoords_calculate_2d_float32(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp);
long xray_jit_cellcoords_calculate_2d_float64(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp);
void xray_jit_cellcoords_fill_output(t_xray_jit_cellcoords *x, 
		t_jit_matrix_info *temp_minfo, char *btp, 
		t_jit_matrix_info *out_minfo, char *bop);


t_jit_err xray_jit_cellcoords_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop, *o;
		
	_xray_jit_cellcoords_class = jit_class_new("xray_jit_cellcoords",(method)xray_jit_cellcoords_new,(method)xray_jit_cellcoords_free,
		sizeof(t_xray_jit_cellcoords),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_attr_setlong(o,_jit_sym_dimlink,0);
	
	jit_class_addadornment(_xray_jit_cellcoords_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_cellcoords_class, (method)xray_jit_cellcoords_matrix_calc, "matrix_calc", A_CANT, 0L);

	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//plane
	attr = jit_object_new(_jit_sym_jit_attr_offset,"plane",_jit_sym_char,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_cellcoords,plane));
	jit_class_addattr(_xray_jit_cellcoords_class,attr);
	
	//out_mode
	attr = jit_object_new(_jit_sym_jit_attr_offset,"out_mode",_jit_sym_char,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_cellcoords,out_mode));
	jit_class_addattr(_xray_jit_cellcoords_class,attr);
	
	jit_class_register(_xray_jit_cellcoords_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_cellcoords_matrix_calc(t_xray_jit_cellcoords *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in_savelock, out_savelock, temp_savelock;
	t_jit_matrix_info in_minfo, out_minfo, temp_minfo;
	char *in_bp, *out_bp, *temp_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in_matrix, *out_matrix;
	long numPoints;
	
	in_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in_matrix&&out_matrix) {
		in_savelock = (long) jit_object_method(in_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		
		jit_object_method(in_matrix,_jit_sym_getinfo,&in_minfo);
		jit_object_method(in_matrix,_jit_sym_getdata,&in_bp);
		
		if (!in_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		
		//setup internal scratch matrices
		temp_savelock = (long) jit_object_method(x->temp,_jit_sym_lock,1);		
		jit_object_method(x->temp,_jit_sym_getinfo,&temp_minfo);
		
		temp_minfo.dim[0] = in_minfo.dim[0] * in_minfo.dim[1];
		temp_minfo.dim[1] = 1;
		temp_minfo.planecount = 2;
		
		if(x->out_mode) {
			temp_minfo.type = _jit_sym_float32;
		}
		else {
			temp_minfo.type = _jit_sym_long;
		}
		
		jit_object_method(x->temp,_jit_sym_setinfo,&temp_minfo);
		jit_object_method(x->temp,_jit_sym_getinfo,&temp_minfo);
		
		jit_object_method(x->temp,_jit_sym_getdata,&temp_bp);
		
		if (!x->temp) { err=JIT_ERR_INVALID_PTR; goto out;}
		
		//get dimensions/planecount
		dimcount   = in_minfo.dimcount;
		planecount = in_minfo.planecount;
		for (i=0;i<dimcount;i++) {
			dim[i] = in_minfo.dim[i];
		}		
				
		//calculate
		numPoints = xray_jit_cellcoords_calculate_ndim(x, dimcount, dim, planecount, 
				&in_minfo, in_bp, 
				&temp_minfo, temp_bp);
		
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		out_minfo.dim[0] = numPoints;
		out_minfo.dim[1] = 1;
		out_minfo.planecount = 2;
		out_minfo.type = temp_minfo.type;
		
		jit_object_method(out_matrix,_jit_sym_setinfo,&out_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		xray_jit_cellcoords_fill_output(x, 
				&temp_minfo, temp_bp, 
				&out_minfo, out_bp);

	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(in_matrix,_jit_sym_lock,in_savelock);
	jit_object_method(out_matrix,_jit_sym_lock,out_savelock);
	jit_object_method(x->temp,_jit_sym_lock,temp_savelock);
	return err;
}

long xray_jit_cellcoords_calculate_ndim(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp)
{
	long numPoints = 0;
		
	if (dimcount<1) return 0; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
	default:
		if (in_minfo->type==_jit_sym_char) {
			numPoints = xray_jit_cellcoords_calculate_2d_char(x,dimcount,dim,planecount,
					in_minfo,bip, 
					temp_minfo, btp);
		}
		else if (in_minfo->type==_jit_sym_long) {
			numPoints = xray_jit_cellcoords_calculate_2d_long(x,dimcount,dim,planecount,
					in_minfo,bip, 
					temp_minfo, btp);
		}
		else if (in_minfo->type==_jit_sym_float32) {
			numPoints = xray_jit_cellcoords_calculate_2d_float32(x,dimcount,dim,planecount,
					in_minfo,bip, 
					temp_minfo, btp);
		}
		else if (in_minfo->type==_jit_sym_float64)
			numPoints = xray_jit_cellcoords_calculate_2d_float64(x,dimcount,dim,planecount,
					in_minfo,bip, 
					temp_minfo, btp);
		break;
	}
	
	return numPoints;
}

void xray_jit_cellcoords_fill_output(t_xray_jit_cellcoords *x, 
		t_jit_matrix_info *temp_minfo, char *btp, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i;
	long *ltp, *lop;
	float *ftp, *fop;

	if (out_minfo->type==_jit_sym_long) {
		ltp = (long *)btp;
		lop = (long *)bop;
		
		for(i=0; i < out_minfo->dim[0]; i++) {
			lop[2*i] = ltp[2*i];
			lop[2*i+1] = ltp[2*i+1];
		}
	}
	else if (out_minfo->type==_jit_sym_float32) {
		ftp = (float *)btp;
		fop = (float *)bop;
		
		for(i=0; i < out_minfo->dim[0]; i++) {
			fop[2*i] = ftp[2*i];
			fop[2*i+1] = ftp[2*i+1];
		}
	}
}

long xray_jit_cellcoords_calculate_2d_char(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp)
{
	long i,j,width,height;
	uchar *ip;
	long *tlp;
	float *tfp;
	char plane = CLAMP(x->plane, 0, planecount - 1);
	long counter = 0;
	
	width  = dim[0];
	height = dim[1];
	
	if(x->out_mode) {
		tfp = (float *)btp;
		
		for (i=0; i < height; i++) {
			ip = (uchar *)(bip + i*in_minfo->dimstride[1]);
			
			for (j=0; j < width; j++) {
				if(*(ip+plane) == 255) {
					//temp is a 2-plane, Nx1 matrix with x in plane 0 and y in plane 1
					tfp[2*counter] = (float)j;
					tfp[2*counter+1] = (float)i;
					counter++;
				}
				
				ip += planecount;
			}
		}
	}
	else {
		tlp = (long *)btp;
		
		for (i=0; i < height; i++) {
			ip = (uchar *)(bip + i*in_minfo->dimstride[1]);
			
			for (j=0; j < width; j++) {
				if(*(ip+plane) == 255) {
					//temp is a 2-plane, Nx1 matrix with x in plane 0 and y in plane 1
					tlp[2*counter] = j;
					tlp[2*counter+1] = i;
					counter++;
				}
				
				ip += planecount;
			}
		}
	}
	
	return counter;
}

long xray_jit_cellcoords_calculate_2d_long(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp)
{
	long i,j,width,height;
	long *ip;
	long *tlp;
	float *tfp;
	char plane = CLAMP(x->plane, 0, planecount - 1);
	long counter = 0;
	
	width  = dim[0];
	height = dim[1];
	
	if(x->out_mode) {
		tfp = (float *)btp;
		
		for (i=0; i < height; i++) {
			ip = (long *)(bip + i*in_minfo->dimstride[1]);
			
			for (j=0; j < width; j++) {
				if(*(ip+plane) == 1) {
					//temp is a 2-plane, Nx1 matrix with x in plane 0 and y in plane 1
					tfp[2*counter] = (float)j;
					tfp[2*counter+1] = (float)i;
					counter++;
				}
				
				ip += planecount;
			}
		}
	}
	else {
		tlp = (long *)btp;
		
		for (i=0; i < height; i++) {
			ip = (long *)(bip + i*in_minfo->dimstride[1]);
			
			for (j=0; j < width; j++) {
				if(*(ip+plane) == 1) {
					//temp is a 2-plane, Nx1 matrix with x in plane 0 and y in plane 1
					tlp[2*counter] = j;
					tlp[2*counter+1] = i;
					counter++;
				}
				
				ip += planecount;
			}
		}
	}
	
	return counter;
}
	
long xray_jit_cellcoords_calculate_2d_float32(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp)
{
	long i,j,width,height;
	float *ip;
	long *tlp;
	float *tfp;
	char plane = CLAMP(x->plane, 0, planecount - 1);
	long counter = 0;
	
	width  = dim[0];
	height = dim[1];
	
	if(x->out_mode) {
		tfp = (float *)btp;
		
		for (i=0; i < height; i++) {
			ip = (float *)(bip + i*in_minfo->dimstride[1]);
			
			for (j=0; j < width; j++) {
				if(*(ip+plane) == 1.0f) {
					//temp is a 2-plane, Nx1 matrix with x in plane 0 and y in plane 1
					tfp[2*counter] = (float)j;
					tfp[2*counter+1] = (float)i;
					counter++;
				}
				
				ip += planecount;
			}
		}
	}
	else {
		tlp = (long *)btp;
		
		for (i=0; i < height; i++) {
			ip = (float *)(bip + i*in_minfo->dimstride[1]);
			
			for (j=0; j < width; j++) {
				if(*(ip+plane) == 1.0f) {
					//temp is a 2-plane, Nx1 matrix with x in plane 0 and y in plane 1
					tlp[2*counter] = j;
					tlp[2*counter+1] = i;
					counter++;
				}
				
				ip += planecount;
			}
		}
	}
	
	return counter;
}

long xray_jit_cellcoords_calculate_2d_float64(t_xray_jit_cellcoords *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *temp_minfo, char *btp)
{
	long i,j,width,height;
	double *ip;
	long *tlp;
	float *tfp;
	char plane = CLAMP(x->plane, 0, planecount - 1);
	long counter = 0;
	
	width  = dim[0];
	height = dim[1];
	
	if(x->out_mode) {
		tfp = (float *)btp;
		
		for (i=0; i < height; i++) {
			ip = (double *)(bip + i*in_minfo->dimstride[1]);
			
			for (j=0; j < width; j++) {
				if(*(ip+plane) == 1.0) {
					//temp is a 2-plane, Nx1 matrix with x in plane 0 and y in plane 1
					tfp[2*counter] = (float)j;
					tfp[2*counter+1] = (float)i;
					counter++;
				}
				
				ip += planecount;
			}
		}
	}
	else {
		tlp = (long *)btp;
		
		for (i=0; i < height; i++) {
			ip = (double *)(bip + i*in_minfo->dimstride[1]);
			
			for (j=0; j < width; j++) {
				if(*(ip+plane) == 1.0) {
					//temp is a 2-plane, Nx1 matrix with x in plane 0 and y in plane 1
					tlp[2*counter] = j;
					tlp[2*counter+1] = i;
					counter++;
				}
				
				ip += planecount;
			}
		}
	}
	
	return counter;
}


t_xray_jit_cellcoords *xray_jit_cellcoords_new(void)
{
	t_xray_jit_cellcoords *x;
	t_jit_matrix_info info;
	void *m;
		
	if (x=(t_xray_jit_cellcoords *)jit_object_alloc(_xray_jit_cellcoords_class)) {
		x->plane = 0;
		x->out_mode = 0;
		
		//initialize internal matrix
		jit_matrix_info_default(&info);
		info.type = _jit_sym_char;
		info.planecount = 2;
		x->temp_name = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->temp_name);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->temp_name, x);
		x->temp = m;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_cellcoords_free(t_xray_jit_cellcoords *x)
{
	//free internal matrix
	jit_object_detach(x->temp, x);
	jit_object_free(x->temp);
}
