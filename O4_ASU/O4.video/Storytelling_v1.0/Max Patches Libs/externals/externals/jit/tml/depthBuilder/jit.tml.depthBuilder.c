//
//	jit.tml.keystone.c
//						based on pixelweight "06.06.03"	by Yoichiro Serita

#include "jit.common.h"

#define MAX_KEYSTONE	256
#define ACCURACY		1024

typedef struct _jit_tml_keystone 
{
    t_object				ob;
	
	float param[MAX_KEYSTONE];		// parameter
	long paramcount;
	
} t_jit_tml_keystone;


void *_jit_tml_keystone_class;

t_jit_tml_keystone *jit_tml_keystone_new(void);
void jit_tml_keystone_free(t_jit_tml_keystone *x);
t_jit_err jit_tml_keystone_matrix_calc(t_jit_tml_keystone *x, void *inputs, void *outputs);
t_jit_err jit_tml_keystone_calculate_ndim(t_jit_tml_keystone *x, long dimcount, long *dim, long planecount, 
					       t_jit_matrix_info *in_minfo, unsigned char *bip, t_jit_matrix_info *out_minfo,
						   unsigned char *bop);

t_jit_err jit_tml_keystone_param_set(t_jit_tml_keystone *x, void *attr, long argc, t_atom *argv);

t_jit_err jit_tml_keystone_init(void);

void Evaluate(unsigned char *bip, unsigned char *bop, long dimstride, long width, long height, float param[], long paramCount, long planeCount)
{
	long i, j;
	//long val;
	
	//Start with first, last, then index/inbetween.
	float maxHeight[ACCURACY];		//Current width
	float curHeight[ACCURACY];		//Current height (for offsets)
	for (j=0; j<ACCURACY; j++)
	{
		curHeight[j] = -1;
		maxHeight[j] = -1;
	}
	
	//Fill in...
	if (paramCount >= 1)
		maxHeight[0] = param[0];
	else
		maxHeight[0] = 1.0f;
	
	if (paramCount >= 2)
		curHeight[0] = param[1];
	else
		curHeight[0] = 0.0f;
	
	if (paramCount >= 3)
		maxHeight[ACCURACY-1] = param[2];
	else
		maxHeight[ACCURACY-1] = 1.0f;
	
	if (paramCount >= 4)
		curHeight[ACCURACY-1] = param[3];
	else
		curHeight[ACCURACY-1] = 1.0f;
	
	for (i=4; i+2<paramCount; i+=3)
	{
		if (param[i] < 0) param[i] = 0;
		if (param[i] > 1) param[i] = 1;
	
		maxHeight[(int)(param[i] * (float)(ACCURACY))] = param[i+1];
		curHeight[(int)(param[i] * (float)(ACCURACY))] = param[i+2];
	}
	
	//Interpolate
	float prev = maxHeight[0];
	int pIndex = 0;
	
	int pNext = 0;
	float next = maxHeight[0];
	
	
	float cPrev = curHeight[0];
	float cpIndex = 0;
	
	float cNext = curHeight[0];
	float cpNext = 0;
	
	for (i=0; i<ACCURACY; i++)
	{
		float fRatio = (float)(i-pIndex)/(float)(pNext-pIndex);
		
		if (maxHeight[i] < 0)
		{
			if (i>pNext)
			{
				pIndex = pNext;
				prev = next;
				
				j=i+1;
				while (maxHeight[j] < 0)
					j++;
				
				next = maxHeight[j];
				pNext = j;
			}
			
			maxHeight[i] = fRatio *next + (1-fRatio)*prev;
		}
		
		if (curHeight[i] < 0)
		{
			if (i>cpNext)
			{
				cpIndex = cpNext;
				cPrev = cNext;
				
				j=i+1;
				while (curHeight[j] < 0)
					j++;
				
				cNext = curHeight[j];
				cpNext = j;
			}
			
			curHeight[i] = fRatio *cNext + (1-fRatio)*cPrev;
		}
	}
	
   
	// apply equation
	float halfWidth = (float)width/2;
	for(j=0; j<height; j++)
	{
		uchar  *op = bop  + j*dimstride;
	
		//Compute current height...
		float curPos = curHeight[(j*ACCURACY)/(height)];
		
		int nJ = (int)(curPos*(float)height);
	
		uchar *ip = bip + nJ*dimstride;	// dimstride[1] == width (bytes)
		
		if (nJ >= 0 && nJ < height)
		{
		
			for( i=0; i<width; i++)
			{
				//compute target.
				float target = i;
				target-=halfWidth;
				
				target*=maxHeight[(j*ACCURACY)/height];
				
				target+=halfWidth;
				
				//Compute color
				long pix = (long)target;
				
				if (pix >= 0 && pix < width)
				{
					memcpy(op+i*planeCount,ip+pix*planeCount,planeCount);
				}
				else
				{
					memset(op+i*planeCount,0,planeCount);
				}
			}
		}
		else
		{
			memset(op,0,planeCount*width);
		}
	}
}


t_jit_err jit_tml_keystone_init(void) 
{
    long attrflags=0;
    t_jit_object *attr;
    t_jit_object *mop, *o;
	
	
    _jit_tml_keystone_class = jit_class_new("jit_tml_keystone",(method)jit_tml_keystone_new,(method)jit_tml_keystone_free,
						 sizeof(t_jit_tml_keystone),A_CANT,0L); //A_CANT = untyped

    // add mop
    mop = jit_object_new(_jit_sym_jit_mop,2,1);	// 1 matrix input / 1 matrix output

    // need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
    jit_mop_input_nolink(mop,2);
    o= jit_object_method(mop,_jit_sym_getinput,2);
    jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
    jit_class_addadornment(_jit_tml_keystone_class,mop);
	
    // add methods
    jit_class_addmethod(_jit_tml_keystone_class, (method)jit_tml_keystone_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	//Add attributes
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;	
	attr = jit_object_new(	_jit_sym_jit_attr_offset_array,"param",_jit_sym_float32,
							JIT_MATRIX_MAX_PLANECOUNT, attrflags,(method)0L,(method)jit_tml_keystone_param_set,
							calcoffset(t_jit_tml_keystone,paramcount),calcoffset(t_jit_tml_keystone,param));
	jit_class_addattr(_jit_tml_keystone_class,attr);

		
    jit_class_register(_jit_tml_keystone_class);

    return JIT_ERR_NONE;
}


t_jit_err jit_tml_keystone_matrix_calc(t_jit_tml_keystone *x, void *inputs, void *outputs)
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
			
			if(param_minfo.planecount > 2 && param_minfo.type == _jit_sym_float32)
			{
				
				//Matrix over-rides the array... so put it in!
				if (param_minfo.planecount < MAX_KEYSTONE)
				{
					memcpy(x->param,param_bp,sizeof(float)*param_minfo.planecount);
					x->paramcount = param_minfo.planecount;
				}
				else
				{
					memcpy(x->param,param_bp,sizeof(float)*MAX_KEYSTONE);
					x->paramcount = MAX_KEYSTONE;
				}
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
		
		if ((in_minfo.type!=_jit_sym_char))
		{
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
		jit_tml_keystone_calculate_ndim(x, dimcount, dim, planecount, &in_minfo, in_bp, &out_minfo, out_bp);
			
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
t_jit_err jit_tml_keystone_calculate_ndim(t_jit_tml_keystone *x, long dimcount, long *dim, long planecount, 
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
		
	if (in_minfo->type==_jit_sym_char) 
	{
	    
		Evaluate(bip, bop, in_minfo->dimstride[1], width, height, x->param, x->paramcount, planecount);
				
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

t_jit_tml_keystone *jit_tml_keystone_new(void)
{
    t_jit_tml_keystone *x;
    //long i;
		
    if (x=(t_jit_tml_keystone *)jit_object_alloc(_jit_tml_keystone_class)) {
	// attributes initialization	
	//x->param[0] = 1.0f;
	//for(i=1; i<6; i++) x->param[i] = 0.0f;
    } else {
	x = NULL;
    }	
    return x;
}

void jit_tml_keystone_free(t_jit_tml_keystone *x)
{
    //nada
}

t_jit_err jit_tml_keystone_param_set(t_jit_tml_keystone *x, void *attr, long argc, t_atom *argv)
{
	long i;
	
	if (argc < 4 || ((argc-4)%3 && argc>4) != 0)
	{
		error("jit.tml.keystone: Need 4 inputs followed by triple pairs...");
		return JIT_ERR_GENERIC;
	}
	
	//This works, simply jit_atom_getfloat doesn't.... go figure.
	for (i=0;i<argc;i++)
		jit_atom_arg_getfloat(x->param+i, i, i+1, argv);
	
	x->paramcount = argc;
	
	return JIT_ERR_NONE;
}

