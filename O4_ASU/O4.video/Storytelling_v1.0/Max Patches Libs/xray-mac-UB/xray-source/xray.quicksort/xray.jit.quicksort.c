/* 
	xray.jit.quicksort
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_quicksort 
{
	t_object				ob;
	long					planemode;
	long					summode;
	long					recursions;
	long					splitpoint;
	long					iterations;
	long					dimmode;
} t_xray_jit_quicksort;

void *_xray_jit_quicksort_class;

//jitter object/MOP methods
t_jit_err xray_jit_quicksort_init(void);
t_xray_jit_quicksort *xray_jit_quicksort_new(void);
void xray_jit_quicksort_free(t_xray_jit_quicksort *x);
t_jit_err xray_jit_quicksort_matrix_calc(t_xray_jit_quicksort *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_quicksort_calculate_ndim(t_xray_jit_quicksort *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *out_minfo, char *bop);
long xray_jit_quicksort_sort_char(t_xray_jit_quicksort *x, 
		t_jit_matrix_info *out_minfo, char *cop, 
		long lo, long hi, long midpoint, long planecount, long recur, long iter);
long xray_jit_quicksort_sort_long(t_xray_jit_quicksort *x, 
		t_jit_matrix_info *out_minfo, char *fop, 
		long lo, long hi, long midpoint, long planecount, long recur, long iter, long bytes);
long xray_jit_quicksort_sort_float(t_xray_jit_quicksort *x, 
		t_jit_matrix_info *out_minfo, char *fop, 
		long lo, long hi, long midpoint, long planecount, long recur, long iter, long bytes);

t_jit_err xray_jit_quicksort_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop;
	
	_xray_jit_quicksort_class = jit_class_new("xray_jit_quicksort",(method)xray_jit_quicksort_new,(method)xray_jit_quicksort_free,
		sizeof(t_xray_jit_quicksort),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	jit_class_addadornment(_xray_jit_quicksort_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_quicksort_class, (method)xray_jit_quicksort_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;

	//planemode
	attr = jit_object_new(_jit_sym_jit_attr_offset,"planemode",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_quicksort,planemode));
	jit_class_addattr(_xray_jit_quicksort_class,attr);

	//summode
	attr = jit_object_new(_jit_sym_jit_attr_offset,"summode",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_quicksort,summode));	
	jit_class_addattr(_xray_jit_quicksort_class,attr);
	
	//recursions
	attr = jit_object_new(_jit_sym_jit_attr_offset,"recursions",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_quicksort,recursions));	
	jit_class_addattr(_xray_jit_quicksort_class,attr);
	
	//splitpoint
	attr = jit_object_new(_jit_sym_jit_attr_offset,"splitpoint",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_quicksort,splitpoint));	
	jit_class_addattr(_xray_jit_quicksort_class,attr);
	
	//iterations
	attr = jit_object_new(_jit_sym_jit_attr_offset,"iterations",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_quicksort,iterations));	
	jit_class_addattr(_xray_jit_quicksort_class,attr);
	
	//dimmode
	attr = jit_object_new(_jit_sym_jit_attr_offset,"dimmode",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_quicksort,dimmode));	
	jit_class_addattr(_xray_jit_quicksort_class,attr);

	jit_class_register(_xray_jit_quicksort_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_quicksort_matrix_calc(t_xray_jit_quicksort *x, void *inputs, void *outputs)
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
		dimcount   = out_minfo.dimcount;
		planecount = out_minfo.planecount;			
		
		for (i=0;i<dimcount;i++) {
			dim[i] = MIN(in_minfo.dim[i],out_minfo.dim[i]);
		}
		
		x->planemode = CLIP(x->planemode, 0, planecount-1);
		x->dimmode = CLIP(x->dimmode, 0, 1);
		x->summode = CLIP(x->summode, 0, 1);		
				
		//calculate
		xray_jit_quicksort_calculate_ndim(x, dimcount, dim, planecount, &in_minfo, in_bp, &out_minfo, out_bp);

	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in_matrix,gensym("lock"),in_savelock);
	return err;
}

//recursive function to handle higher dimension matrices, by processing 2D sections at a time 
void xray_jit_quicksort_calculate_ndim(t_xray_jit_quicksort *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i,j, k, midpoint, hi;
	uchar *cip,*cop, *cop_start;
	char *fip, *fop, *fop_start;
	long colstride;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount)
	{
	case 1:
		dim[1]=1;
	case 2:
		colstride = out_minfo->dimstride[0];
		hi = (out_minfo->dim[x->dimmode])-1;
		
		if(x->splitpoint < 0) {
			midpoint = (long)jit_math_round(hi/2);
		}
		else if(x->splitpoint > hi) {
			midpoint = hi;
		}
		else {
			midpoint = x->splitpoint;
		}
		
		if(in_minfo->type == _jit_sym_char) {
			if(x->dimmode) {
				for (i=0; i < dim[0]; i++) {
					cip = (uchar *)(bip + i*in_minfo->dimstride[0]);
					cop = (uchar *)(bop + i*out_minfo->dimstride[0]);
					cop_start = cop;
					
					for(j=0; j < dim[1]; j++) {
						for(k=0; k < planecount; k++) {
							*cop++ = *cip++;
						}
						
						cip += in_minfo->dimstride[1] - planecount;
						cop += out_minfo->dimstride[1] - planecount;
					}
					
					xray_jit_quicksort_sort_char(x, out_minfo, (char *)cop_start, 0, hi, midpoint, planecount, -1, 0);
				}
			}
			else {
				for (i=0; i < dim[1]; i++) {
					cip = (uchar *)(bip + i*in_minfo->dimstride[1]);
					cop = (uchar *)(bop + i*out_minfo->dimstride[1]);
					cop_start = cop;
				
					for(j=0; j < dim[0]; j++) {
						for(k=0; k < planecount; k++) {
							*cop++ = *cip++;
						}
					}
								
					xray_jit_quicksort_sort_char(x, out_minfo, (char *)cop_start, 0, hi, midpoint, planecount, -1, 0);
				}
			}
		}
		if(in_minfo->type == _jit_sym_long) {
			if(x->dimmode) {
				for (i=0; i < dim[0]; i++) {
					fip = bip + i*in_minfo->dimstride[0];
					fop = bop + i*out_minfo->dimstride[0];
					fop_start = fop;
					
					for(j=0; j < dim[1]; j++) {
						for(k=0; k < planecount; k++) {
							*(long *)fop = *(long *)fip;
							fip += 4;
							fop += 4;
						}
						
						fip += in_minfo->dimstride[1] - planecount*4;
						fop += out_minfo->dimstride[1] - planecount*4;
					}
					
					xray_jit_quicksort_sort_long(x, out_minfo, fop_start, 0, hi, midpoint, planecount, -1, 0, 4);
				}
			}
			else {
				for (i=0; i < dim[1]; i++) {
					fip = bip + i*in_minfo->dimstride[1];
					fop = bop + i*out_minfo->dimstride[1];
					fop_start = fop;
				
					for(j=0; j < dim[0]; j++) {
						for(k=0; k < planecount; k++) {
							*(float *)fop = *(float *)fip;
							fip += 4;
							fop += 4;
						}
					}
								
					xray_jit_quicksort_sort_long(x, out_minfo, fop_start, 0, hi, midpoint, planecount, -1, 0, 4);
				}
			}
		}
		else if(in_minfo->type == _jit_sym_float32) {
			if(x->dimmode) {
				for (i=0; i < dim[0]; i++) {
					fip = bip + i*in_minfo->dimstride[0];
					fop = bop + i*out_minfo->dimstride[0];
					fop_start = fop;
					
					for(j=0; j < dim[1]; j++) {
						for(k=0; k < planecount; k++) {
							*(float *)fop = *(float *)fip;
							fip += 4;
							fop += 4;
						}
						
						fip += in_minfo->dimstride[1] - planecount*4;
						fop += out_minfo->dimstride[1] - planecount*4;
					}
					
					xray_jit_quicksort_sort_float(x, out_minfo, fop_start, 0, hi, midpoint, planecount, -1, 0, 4);
				}
			}
			else {
				for (i=0; i < dim[1]; i++) {
					fip = bip + i*in_minfo->dimstride[1];
					fop = bop + i*out_minfo->dimstride[1];
					fop_start = fop;
				
					for(j=0; j < dim[0]; j++) {
						for(k=0; k < planecount; k++) {
							*(float *)fop = *(float *)fip;
							fip += 4;
							fop += 4;
						}
					}
								
					xray_jit_quicksort_sort_float(x, out_minfo, fop_start, 0, hi, midpoint, planecount, -1, 0, 4);
				}
			}
		}
		else if(in_minfo->type == _jit_sym_float64) {
			if(x->dimmode) {
				for (i=0; i < dim[0]; i++) {
					fip = bip + i*in_minfo->dimstride[0];
					fop = bop + i*out_minfo->dimstride[0];
					fop_start = fop;
					
					for(j=0; j < dim[1]; j++) {
						for(k=0; k < planecount; k++) {
							*(float *)fop = *(float *)fip;
							fip += 8;
							fop += 8;
						}
						
						fip += in_minfo->dimstride[1] - planecount*8;
						fop += out_minfo->dimstride[1] - planecount*8;
					}
					
					xray_jit_quicksort_sort_float(x, out_minfo, fop_start, 0, hi, midpoint, planecount, -1, 0, 8);
				}
			}
			else {
				for (i=0; i < dim[1]; i++) {
					fip = bip + i*in_minfo->dimstride[1];
					fop = bop + i*out_minfo->dimstride[1];
					fop_start = fop;
				
					for(j=0; j < dim[0]; j++) {
						for(k=0; k < planecount; k++) {
							*(float *)fop = *(float *)fip;
							fip += 8;
							fop += 8;
						}
					}
								
					xray_jit_quicksort_sort_float(x, out_minfo, fop_start, 0, hi, midpoint, planecount, -1, 0, 8);
				}
			}
		}
		break;
	default:
		for	(i=0;i<dim[dimcount-1];i++) {
			cip = (uchar *)(bip + i*in_minfo->dimstride[dimcount-1]);
			cop = (uchar *)(bop + i*out_minfo->dimstride[dimcount-1]);
			xray_jit_quicksort_calculate_ndim(x,dimcount-1,dim,planecount,in_minfo,(char *)cip,out_minfo,(char *)cop);
		}
	}
}

long xray_jit_quicksort_sort_char(t_xray_jit_quicksort *x, 
		t_jit_matrix_info *out_minfo, char *cop, 
		long lo, long hi, long midpoint, long planecount, long recur, long iter)
{
	uchar *cop_start;
	uchar h, *lodata, *hidata;
	long i=lo, j=hi, k, newMidpoint;
	long mid=0, losum=0, hisum=0;
	
	//increment recursion and iteration values
	recur += 1;
	iter += 1;
	
	//check number of iterations
	if(iter <= x->iterations || x->iterations <= -1) {
		cop_start = (uchar *)cop;
		
		//check summode
		if(x->summode) {
			for(k=0; k < planecount; k++) {
				mid += (long)*(cop_start + midpoint*out_minfo->dimstride[x->dimmode] + k);
			}
		}
		else {
			mid = (long)*(cop_start + midpoint*out_minfo->dimstride[x->dimmode] + x->planemode);
		}
		
		do {
			//check summode
			if(x->summode) {
				losum = 0;
				
				for(k=0; k < planecount; k++) {
					losum += (long)*(cop_start + i*out_minfo->dimstride[x->dimmode] + k);
				}
			}
			else {
				losum = (long)*(cop_start + i*out_minfo->dimstride[x->dimmode] + x->planemode);
			}
			
			//get low value from left-hand side
			while(losum < mid) {
				i++;	
				
				if(x->summode) {
					losum = 0;
					
					for(k=0; k < planecount; k++) {
						losum += (long)*(cop_start + i*out_minfo->dimstride[x->dimmode] + k);
					}
				}
				else {
					losum = (long)*(cop_start + i*out_minfo->dimstride[x->dimmode] + x->planemode);
				}
			}
			
			//check summode
			if(x->summode) {
				hisum = 0;
				
				for(k=0; k < planecount; k++) {
					hisum += (long)*(cop_start + j*out_minfo->dimstride[x->dimmode] + k);
				}
			}
			else {
				hisum = (long)*(cop_start + j*out_minfo->dimstride[x->dimmode] + x->planemode);
			}
			
			//get high value from right-hand side		
			while(hisum > mid) {
				j--;
				
				if(x->summode) {
					hisum = 0;
					
					for(k=0; k < planecount; k++) {
						hisum += (long)*(cop_start + j*out_minfo->dimstride[x->dimmode] + k);
					}
				}
				else {
					hisum = (long)*(cop_start + j*out_minfo->dimstride[x->dimmode] + x->planemode);
				}
			}
			
			//if the low value is to the left of the high vlaue, swap and increment/decrement low and high positions
			if(i <= j) {
				for(k=0; k < planecount; k++) {	
					lodata = cop_start + i*out_minfo->dimstride[x->dimmode] + k;
					hidata = cop_start + j*out_minfo->dimstride[x->dimmode] + k;
			
					h = *lodata;
					*lodata = *hidata;
					*hidata = h;
				}
				
				i++;
				j--;
			}		
		} while(i <= j);
		
		//if the high position is greater than the lowest position, process the lower block recusively
		if(lo < j) {
			newMidpoint = (long)jit_math_round((j+lo)/2);

			if(recur < x->recursions || x->recursions <= -1) {
				iter = xray_jit_quicksort_sort_char(x, out_minfo, (char *)cop_start, lo, j, newMidpoint, planecount, recur, iter);
			}
		}
		
		//if the low position is lower than the highest position, process the upper block recursively
		if(i < hi) {
			newMidpoint = (long)jit_math_round((hi+i)/2);
			
			if(recur < x->recursions || x->recursions <= -1) {
				iter = xray_jit_quicksort_sort_char(x, out_minfo, (char *)cop_start, i, hi, newMidpoint, planecount, recur, iter);
			}
		}
	}
	
	return iter;
}

long xray_jit_quicksort_sort_long(t_xray_jit_quicksort *x, 
		t_jit_matrix_info *out_minfo, char *fop, 
		long lo, long hi, long midpoint, long planecount, long recur, long iter, long bytes)
{
	char *lop_start, cLong[4];
	char *lodata, *hidata, *h;
	long i=lo, j=hi, k, newMidpoint;
	long mid=0, losum=0, hisum=0;
	
	h = cLong;
	
	//increment recursion and iteration values
	recur += 1;
	iter += 1;
	
	//check number of iterations
	if(iter <= x->iterations || x->iterations <= -1) {	
		lop_start = fop;
		
		//check summode
		if(x->summode) {
			for(k=0; k < planecount; k++) {
				mid += *(long *)(lop_start + midpoint*out_minfo->dimstride[x->dimmode] + k*bytes);
			}
		}
		else {
			mid = *(long *)(lop_start + midpoint*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
		}
		
		do {
			//check summode
			if(x->summode) {
				losum = 0;
				
				for(k=0; k < planecount; k++) {
					losum += *(long *)(lop_start + i*out_minfo->dimstride[x->dimmode] + k*bytes);
				}
			}
			else {
				losum = *(long *)(lop_start + i*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
			}
			
			//get low value from left-hand side
			while(losum < mid) {
				i++;	
				
				if(x->summode) {
					losum = 0;
					
					for(k=0; k < planecount; k++) {
						losum += *(long *)(lop_start + i*out_minfo->dimstride[x->dimmode] + k*bytes);
					}
				}
				else {
					losum = *(long *)(lop_start + i*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
				}
			}
			
			//check summode
			if(x->summode) {
				hisum = 0;
				
				for(k=0; k < planecount; k++) {
					hisum += *(long *)(lop_start + j*out_minfo->dimstride[x->dimmode] + k*bytes);
				}
			}
			else {
				hisum = *(long *)(lop_start + j*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
			}
			
			//get high value from right-hand side		
			while(hisum > mid) {
				j--;
				
				if(x->summode) {
					hisum = 0;
					
					for(k=0; k < planecount; k++) {
						hisum += *(long *)(lop_start + j*out_minfo->dimstride[x->dimmode] + k*bytes);
					}
				}
				else {
					hisum = *(long *)(lop_start + j*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
				}
			}
			
			//if the low value is to the left of the high vlaue, swap and increment/decrement low and high positions
			if(i <= j) {
				for(k=0; k < planecount; k++) {	
					lodata = lop_start + i*out_minfo->dimstride[x->dimmode] + k*bytes;
					hidata = lop_start + j*out_minfo->dimstride[x->dimmode] + k*bytes;
			
					*(long *)h = *(long *)lodata;
					*(long *)lodata = *(long *)hidata;
					*(long *)hidata = *(long *)h;
				}
				
				i++;
				j--;
			}		
		} while(i <= j);
		
		//if the high position is greater than the lowest position, process the lower block recusively
		if(lo < j) {
			newMidpoint = (long)jit_math_round((j+lo)/2);

			if(recur < x->recursions || x->recursions <= -1) {
				iter = xray_jit_quicksort_sort_float(x, out_minfo, lop_start, lo, j, newMidpoint, planecount, recur, iter, bytes);
			}
		}
		
		//if the low position is lower than the highest position, process the upper block recursively
		if(i < hi) {
			newMidpoint = (long)jit_math_round((hi+i)/2);
			
			if(recur < x->recursions || x->recursions <= -1) {
				iter = xray_jit_quicksort_sort_float(x, out_minfo, lop_start, i, hi, newMidpoint, planecount, recur, iter, bytes);
			}
		}
	}
	
	return iter;
}

long xray_jit_quicksort_sort_float(t_xray_jit_quicksort *x, 
		t_jit_matrix_info *out_minfo, char *fop, 
		long lo, long hi, long midpoint, long planecount, long recur, long iter, long bytes)
{
	char *fop_start, *cDouble[6], *cFloat[4];
	char *lodata, *hidata, *h;
	long i=lo, j=hi, k, newMidpoint;
	double mid=0, losum=0, hisum=0;
	
	if(bytes == 6) {
		h = cDouble;
	}
	else {
		h = cFloat;
	}
	
	//increment recursion and iteration values
	recur += 1;
	iter += 1;
	
	//check number of iterations
	if(iter <= x->iterations || x->iterations <= -1) {	
		fop_start = fop;
		
		//check summode
		if(x->summode) {
			for(k=0; k < planecount; k++) {
				mid += (double)*(float *)(fop_start + midpoint*out_minfo->dimstride[x->dimmode] + k*bytes);
			}
		}
		else {
			mid = (double)*(float *)(fop_start + midpoint*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
		}
		
		do {
			//check summode
			if(x->summode) {
				losum = 0;
				
				for(k=0; k < planecount; k++) {
					losum += (double)*(float *)(fop_start + i*out_minfo->dimstride[x->dimmode] + k*bytes);
				}
			}
			else {
				losum = (double)*(float *)(fop_start + i*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
			}
			
			//get low value from left-hand side
			while(losum < mid) {
				i++;	
				
				if(x->summode) {
					losum = 0;
					
					for(k=0; k < planecount; k++) {
						losum += (double)*(float *)(fop_start + i*out_minfo->dimstride[x->dimmode] + k*bytes);
					}
				}
				else {
					losum = (double)*(float *)(fop_start + i*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
				}
			}
			
			//check summode
			if(x->summode)
			{
				hisum = 0;
				
				for(k=0; k < planecount; k++) {
					hisum += (double)*(float *)(fop_start + j*out_minfo->dimstride[x->dimmode] + k*bytes);
				}
			}
			else {
				hisum = (double)*(float *)(fop_start + j*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
			}
			
			//get high value from right-hand side		
			while(hisum > mid) {
				j--;
				
				if(x->summode) {
					hisum = 0;
					
					for(k=0; k < planecount; k++) {
						hisum += (double)*(float *)(fop_start + j*out_minfo->dimstride[x->dimmode] + k*bytes);
					}
				}
				else {
					hisum = (double)*(float *)(fop_start + j*out_minfo->dimstride[x->dimmode] + x->planemode*bytes);
				}
			}
			
			//if the low value is to the left of the high vlaue, swap and increment/decrement low and high positions
			if(i <= j) {
				for(k=0; k < planecount; k++) {
					lodata = fop_start + i*out_minfo->dimstride[x->dimmode] + k*bytes;
					hidata = fop_start + j*out_minfo->dimstride[x->dimmode] + k*bytes;
			
					*(float *)h = *(float *)lodata;
					*(float *)lodata = *(float *)hidata;
					*(float *)hidata = *(float *)h;
				}
				
				i++;
				j--;
			}		
		} while(i <= j);
		
		//if the high position is greater than the lowest position, process the lower block recusively
		if(lo < j) {
			newMidpoint = (long)jit_math_round((j+lo)/2);

			if(recur < x->recursions || x->recursions <= -1) {
				iter = xray_jit_quicksort_sort_float(x, out_minfo, fop_start, lo, j, newMidpoint, planecount, recur, iter, bytes);
			}
		}
		
		//if the low position is lower than the highest position, process the upper block recursively
		if(i < hi) {
			newMidpoint = (long)jit_math_round((hi+i)/2);
			
			if(recur < x->recursions || x->recursions <= -1) {
				iter = xray_jit_quicksort_sort_float(x, out_minfo, fop_start, i, hi, newMidpoint, planecount, recur, iter, bytes);
			}
		}
	}
	
	return iter;
}

t_xray_jit_quicksort *xray_jit_quicksort_new(void)
{
	t_xray_jit_quicksort *x;
		
	if (x=(t_xray_jit_quicksort *)jit_object_alloc(_xray_jit_quicksort_class)) {
		x->planemode 	= 1;
		x->summode 		= 0;
		x->recursions	= -1;
		x->splitpoint	= -1;
		x->iterations	= -1;
		x->dimmode		= 0;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_quicksort_free(t_xray_jit_quicksort *x)
{
	//nada
}