//
//	jit.ys.pixelweightmat.c
//						06.06.03	by Yoichiro Serita

#include "jit.common.h"

typedef struct _jit_ys_pixelweightmat 
{
    t_object				ob;
	
	float param[6];		// parameter
	long paramcount;
	
} t_jit_ys_pixelweightmat;


void *_jit_ys_pixelweightmat_class;

t_jit_ys_pixelweightmat *jit_ys_pixelweightmat_new(void);
void jit_ys_pixelweightmat_free(t_jit_ys_pixelweightmat *x);
t_jit_err jit_ys_pixelweightmat_matrix_calc(t_jit_ys_pixelweightmat *x, void *inputs, void *outputs);
t_jit_err jit_ys_pixelweightmat_calculate_ndim(t_jit_ys_pixelweightmat *x, long dimcount, long *dim, long planecount, 
					       t_jit_matrix_info *in_minfo, unsigned char *bip, t_jit_matrix_info *out_minfo,
						   unsigned char *bop);

t_jit_err jit_ys_pixelweightmat_init(void);

void Evaluate(unsigned char *bip, unsigned char *bop, long dimstride, long width, long height, float param[])
{
	long i, j;
	long val;
        
   
	// apply equation
	for(j=0; j<height; j++)
	{
		uchar *ip = bip + j*dimstride;	// dimstride[1] == width (bytes)
		uchar  *op = bop  + j*dimstride;
	
		for( i=0; i<width; i++)
		{
			
			int a1 = (i != width-1) ? ip[(i+1)*2]  : 0;
			int a2 = (i != 0) ? ip[(i-1)*2]  : 0;
			int a3 = (j != height-1) ? ip[i*2+dimstride]  : 0;
			int a4 = (j != 0) ? ip[i*2-dimstride] : 0;
					
			val =	param[0]*ip[i*2] + param[1]*ip[i*2+1] + param[2]*a1 +
					param[3]*a2 + param[4]*a3 + param[5]*a4;
			
			if(val < 0)
				val = 0;
			else if(val > 255)
				val = 255;
	    
			op[i*2] = val;
			op[i*2+1] = ip[i*2];
		}
	}
}


t_jit_err jit_ys_pixelweightmat_init(void) 
{
    long attrflags=0;
    t_jit_object *attr;
    t_jit_object *mop, *o;
	
	
    _jit_ys_pixelweightmat_class = jit_class_new("jit_ys_pixelweightmat",(method)jit_ys_pixelweightmat_new,(method)jit_ys_pixelweightmat_free,
						 sizeof(t_jit_ys_pixelweightmat),A_CANT,0L); //A_CANT = untyped

    // add mop
    mop = jit_object_new(_jit_sym_jit_mop,2,1);	// 1 matrix input / 1 matrix output

    // need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
    jit_mop_input_nolink(mop,2);
    o= jit_object_method(mop,_jit_sym_getinput,2);
    jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
    jit_class_addadornment(_jit_ys_pixelweightmat_class,mop);
	
    // add methods
    jit_class_addmethod(_jit_ys_pixelweightmat_class, (method)jit_ys_pixelweightmat_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	//Add attributes
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;	
	attr = jit_object_new(	_jit_sym_jit_attr_offset_array,"param",_jit_sym_float32,
							JIT_MATRIX_MAX_PLANECOUNT, attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_ys_pixelweightmat,paramcount),calcoffset(t_jit_ys_pixelweightmat,param));
	jit_class_addattr(_jit_ys_pixelweightmat_class,attr);

		
    jit_class_register(_jit_ys_pixelweightmat_class);

    return JIT_ERR_NONE;
}


t_jit_err jit_ys_pixelweightmat_matrix_calc(t_jit_ys_pixelweightmat *x, void *inputs, void *outputs)
{
    t_jit_err err=JIT_ERR_NONE;
    long in_savelock,out_savelock,param_savelock;
    t_jit_matrix_info in_minfo,out_minfo, param_minfo;
    unsigned char *in_bp,*out_bp, *param_bp;
    long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
    void *in_matrix,*out_matrix, *param_matrix;
	
    in_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);				// 1st matrix
    param_matrix 	= jit_object_method(inputs,_jit_sym_getindex,1);			// 2nd matrix (parameter)
    out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);				// 1st matrix
	

    if (x&&in_matrix&&out_matrix)
	{
		in_savelock = (long) jit_object_method(in_matrix,_jit_sym_lock,1); 
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		
		//Handle matrix or array
		if (param_matrix)
		{
			param_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
			jit_object_method(param_matrix,_jit_sym_getinfo,&param_minfo);
			jit_object_method(param_matrix,_jit_sym_getdata,&param_bp);
			if (!param_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
			
			if(param_minfo.planecount == 6)
			{
			
				if (param_minfo.type != _jit_sym_float32)
				{
					error("Input matrix should be made of 32bit floats...");
					err=JIT_ERR_GENERIC;
					goto out;
				}
				
				//Matrix over-rides the array... so put it in!
				memcpy(x->param,param_bp,sizeof(float)*6);
				x->paramcount = 6;
			}
		}
			
			
		jit_object_method(in_matrix,_jit_sym_getinfo,&in_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
			
			
		jit_object_method(in_matrix,_jit_sym_getdata,&in_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
			
			
		if (!in_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
			
		//compatible types?
		if ((in_minfo.type!=out_minfo.type)) { 
			err=JIT_ERR_MISMATCH_TYPE; 
			goto out;
		}		

		//compatible planes?
		if (in_minfo.planecount!=out_minfo.planecount) {
			err=JIT_ERR_MISMATCH_PLANE; 
			goto out;
		}
			
		//get dimensions/planecount
		dimcount   = out_minfo.dimcount;
		planecount = out_minfo.planecount;			
		for (i=0;i<dimcount;i++) {
			dim[i] = MIN(in_minfo.dim[i],out_minfo.dim[i]);
		}

		//calculate
		jit_ys_pixelweightmat_calculate_ndim(x, dimcount, dim, planecount, &in_minfo, in_bp, &out_minfo, out_bp);
			
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
    }
	
 out:
    jit_object_method(out_matrix,_jit_sym_lock,out_savelock);
    jit_object_method(in_matrix,_jit_sym_lock,in_savelock);
    if (param_matrix) jit_object_method(param_matrix,_jit_sym_lock,param_savelock);
    return err;
}


//recursive function to handle higher dimension matrices, by processing 2D sections at a time 
t_jit_err jit_ys_pixelweightmat_calculate_ndim(t_jit_ys_pixelweightmat *x, long dimcount, long *dim, long planecount, 
					       t_jit_matrix_info *in_minfo, unsigned char *bip, t_jit_matrix_info *out_minfo, 
						   unsigned char *bop) 
{
    long /*i, j,*/ width, height;
    //uchar *ip, *op;
		
    if (dimcount<1) return 0; //safety

    switch(dimcount) {
      case 1:
	dim[1] = 1;
      case 2:
	width = dim[0];
	height = dim[1];
		
	if (in_minfo->type==_jit_sym_char) {
	    switch (planecount) {
	      case 1:	// Grayscale


		post("warning: plane count .. 1");
		return 1;
		break;
				
	      case 2:
	      case 6:
		Evaluate(bip, bop, in_minfo->dimstride[1], width, height, x->param);
				
				
		return 1;
		break;
				
	      case 4:	// 4 plane (ARGB)

		post("warning: plane count .. 4");
		return 1;
				
		break;
	      default:/*
			for (i=0; i<height; i++){
			ip = bip + i*in_minfo->dimstride[1];
			op = bop  + i*out_minfo->dimstride[1];					
			}*/
		post("warning: plane count .. default");
		return 1;
		break;
	    }
	}
	break;
		
      default:
	break;
	//for(i=0; i<dim[dimcount-1]; i++) {
	//	ip = bip + i*in_minfo->dimstride[dimcount-1];
	//		op = bop + i*out_minfo->dimstride[dimcount-1];
	//	}
    }
    return 0;
}

t_jit_ys_pixelweightmat *jit_ys_pixelweightmat_new(void)
{
    t_jit_ys_pixelweightmat *x;
    //long i;
		
    if (x=(t_jit_ys_pixelweightmat *)jit_object_alloc(_jit_ys_pixelweightmat_class)) {
	// attributes initialization	
	//x->param[0] = 1.0f;
	//for(i=1; i<6; i++) x->param[i] = 0.0f;
    } else {
	x = NULL;
    }	
    return x;
}

void jit_ys_pixelweightmat_free(t_jit_ys_pixelweightmat *x)
{
    //nada
}
