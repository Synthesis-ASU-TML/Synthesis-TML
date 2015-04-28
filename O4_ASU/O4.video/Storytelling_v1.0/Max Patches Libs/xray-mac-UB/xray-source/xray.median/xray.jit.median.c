/* 
	xray.jit.median
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_median 
{
	t_object				ob;
	long					size;
	long					dimmode;
} t_xray_jit_median;

void *_xray_jit_median_class;

//jitter object/MOP methods
t_jit_err xray_jit_median_init(void);
t_xray_jit_median *xray_jit_median_new(void);
void xray_jit_median_free(t_xray_jit_median *x);
t_jit_err xray_jit_median_matrix_calc(t_xray_jit_median *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_median_calculate_ndim(t_xray_jit_median *obj, long dimcount, long *dim, long planecount, 
	t_jit_matrix_info *in_minfo, char *bip, t_jit_matrix_info *out_minfo, char *bop);

//utility methods
uchar GetMostFrequent(long *vals, uchar length);
char GetMedian(uchar *vals, int length);
void Quicksort(uchar *vals, long lo, long hi);

t_jit_err xray_jit_median_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop, *o;
	
	_xray_jit_median_class = jit_class_new("xray_jit_median",(method)xray_jit_median_new,(method)xray_jit_median_free,
		sizeof(t_xray_jit_median),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_attr_setlong(o,_jit_sym_dimlink,0);
	
	jit_class_addadornment(_xray_jit_median_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_median_class, (method)xray_jit_median_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//size
	attr = jit_object_new(_jit_sym_jit_attr_offset,"size",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_median,size));	
	jit_class_addattr(_xray_jit_median_class,attr);
	
	//dimmode
	attr = jit_object_new(_jit_sym_jit_attr_offset,"dimmode",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_median,dimmode));	
	jit_class_addattr(_xray_jit_median_class,attr);

	jit_class_register(_xray_jit_median_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_median_matrix_calc(t_xray_jit_median *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in_savelock,out_savelock;
	t_jit_matrix_info in_minfo,out_minfo;
	char *in_bp,*out_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in_matrix,*out_matrix;
	
	in_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in_matrix&&out_matrix) {
		
		in_savelock = (long) jit_object_method(in_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		
		jit_object_method(in_matrix,_jit_sym_getinfo,&in_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		out_minfo.dimcount = 2;
		out_minfo.dim[0] = in_minfo.dim[0];
		out_minfo.dim[1] = in_minfo.dim[1];
		
		jit_object_method(out_matrix,_jit_sym_setinfo,&out_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		jit_object_method(in_matrix,_jit_sym_getdata,&in_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		if (!in_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//compatible types?
		if (in_minfo.type != out_minfo.type) { 
			err=JIT_ERR_MISMATCH_TYPE; 
			goto out;
		}		

		//compatible planes?
		if (in_minfo.planecount != out_minfo.planecount) { 
			err=JIT_ERR_MISMATCH_PLANE; 
			goto out;
		}		

		//get dimensions/planecount
		dimcount   = in_minfo.dimcount;
		planecount = in_minfo.planecount;			
		
		for (i=0;i<dimcount;i++) {
			dim[i] = in_minfo.dim[i];
		}		
				
		//calculate
		xray_jit_median_calculate_ndim(x, dimcount, dim, planecount, 
				&in_minfo, in_bp, 
				&out_minfo, out_bp);

	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in_matrix,gensym("lock"),in_savelock);
	return err;
}

uchar GetMostFrequent(long *vals, uchar length)
{
	long mostFreq;
	uchar i, mostFreqIndex;
	
	mostFreq = vals[0];
	mostFreqIndex = 0;
	
	for(i=1; i < length; i++) {
		if( vals[i] > mostFreq) {
			mostFreq = vals[i];
			mostFreqIndex = i;
		}
	}
	
	return mostFreqIndex;
}

char GetMedian(uchar *vals, int length)
{
	Quicksort(vals, 0, length-1);	
	return vals[(length-1)/2];
}

void Quicksort(uchar *vals, long lo, long hi)
{
	long i = lo;
	long j = hi;
	long h;
	uchar x = vals[(lo + hi)/2];
	
	do {
		while(vals[i] < x) i++;
		while(vals[j] > x) j--;
		
		if( i <= j) {
			h = vals[i];
			vals[i] = vals[j];
			vals[j] = h;
			
			i++; j--;
		}
		
	} while(i <= j);
	
	if(lo < j) Quicksort(vals, lo, j);
	if(i < hi) Quicksort(vals, i, hi);
}

//figure out how to deal with boundary conditions
void xray_jit_median_calculate_ndim(t_xray_jit_median *obj, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long x, y, i, j;
	uchar *cip,*cop;
	long lo_kern, hi_kern;
	uchar *vals;
	long *valsLong;
	long inrowspan, inframespan;
	long count;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount)
	{
	case 1:
		dim[1]=1;
	case 2:
		inrowspan = in_minfo->dimstride[1];
	
		if(in_minfo->type == _jit_sym_char) {
			vals = (uchar *)jit_getbytes( (obj->size)*(obj->size)*sizeof(uchar) );
		
			lo_kern = (obj->size - 1)/2;
			hi_kern = obj->size - lo_kern;
		
			for(y=1; y < dim[1]-1; y++) {
				cop = (uchar *)(bop + y*out_minfo->dimstride[1]);
				
				for(x=1; x < dim[0]-1; x++) {
					count = 0;
					
					for(j=-lo_kern; j <= hi_kern; j++) {
						cip = (uchar *)(bip + (y+j)*inrowspan);
						
						for(i=-lo_kern; i <= hi_kern; i++) {
							vals[count++] = cip[x+i];
						}
					}
					
					cop[x] = GetMedian(vals, (obj->size)*(obj->size));
				}
			}
			
			jit_freebytes((void *)vals, (obj->size)*(obj->size)*sizeof(uchar) );
		}
		if(in_minfo->type == _jit_sym_long) {
			
		}
		else if(in_minfo->type == _jit_sym_float32) {
			
		}
		else if(in_minfo->type == _jit_sym_float64) {
			
		}
		break;
	case 3:	
		inrowspan = in_minfo->dimstride[1];
		inframespan = in_minfo->dimstride[2];
	
		if(in_minfo->type == _jit_sym_char) {
			//vals = (uchar *)jit_getbytes( dim[2]*sizeof(uchar) );
			valsLong = (long *)jit_getbytes( 255*sizeof(long) );
		
			for(y=0; y < dim[1]; y++) {
				cop = (uchar *)(bop + y*out_minfo->dimstride[1]);
				
				for(x=0; x < dim[0]; x++) {
					count = 0;
					
					cip = ((uchar *)(bip + y*inrowspan) + x);
					
					for(j=0; j < 255; j++) {
						valsLong[j] = 0;
					}
					
					//get every value (depth-wise) at one pixel location
					for(j=0; j < dim[2]; j++) {
						valsLong[ cip[0] ]++;
						
						cip += inframespan;
					}
					
					//cop[x] = GetMedian(vals, dim[2]);
					cop[x] = GetMostFrequent(valsLong, 255);
				}
			}
			
			jit_freebytes((void *)valsLong, dim[2]*sizeof(uchar) );
		}
		break;
	}
}

t_xray_jit_median *xray_jit_median_new(void)
{
	t_xray_jit_median *x;
		
	if (x=(t_xray_jit_median *)jit_object_alloc(_xray_jit_median_class)) {
		x->size 		= 3;
		x->dimmode		= 0;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_median_free(t_xray_jit_median *x)
{
	//nada
}