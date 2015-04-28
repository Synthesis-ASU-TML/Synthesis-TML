/*
Copyright (c) 1996-1997 Nicholas Yue

This software is copyrighted by Nicholas Yue. This code is base on the work of
Paul D. Bourke CONREC.F routine

The authors hereby grant permission to use, copy, and distribute this
software and its documentation for any purpose, provided that existing
copyright notices are retained in all copies and that this notice is included
verbatim in any distributions. Additionally, the authors grant permission to
modify this software and its documentation for any purpose, provided that
such modifications are not distributed without the explicit consent of the
authors and that existing copyright notices are retained in all copies. Some
of the algorithms implemented by this software are patented, observe all
applicable patent law.

IN NO EVENT SHALL THE AUTHORS OR DISTRIBUTORS BE LIABLE TO ANY PARTY FOR
DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING OUT
OF THE USE OF THIS SOFTWARE, ITS DOCUMENTATION, OR ANY DERIVATIVES THEREOF,
EVEN IF THE AUTHORS HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

THE AUTHORS AND DISTRIBUTORS SPECIFICALLY DISCLAIM ANY WARRANTIES, INCLUDING,
BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE, AND NON-INFRINGEMENT.  THIS SOFTWARE IS PROVIDED ON AN
"AS IS" BASIS, AND THE AUTHORS AND DISTRIBUTORS HAVE NO OBLIGATION TO PROVIDE
MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
*/

//=============================================================================
//
//     CONREC is a contouring subroutine for rectangularily spaced data.
//
//     It emits calls to a line drawing subroutine supplied by the user
//     which draws a contour map corresponding to real*4data on a randomly
//     spaced rectangular grid. The coordinates emitted are in the same
//     units given in the x() and y() arrays.
//
//     Any number of contour levels may be specified but they must be
//     in order of increasing value.
//
//     As this code is ported from FORTRAN-77, please be very careful of the
//     various indices like ilb,iub,jlb and jub, remeber that C/C++ indices
//     starts from zero (0)
//
//=============================================================================

/* 
	xray.jit.contourmap
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"
#define MAX_LEVELS 10


#define xsect(p1,p2) (h[p2]*xh[p1]-h[p1]*xh[p2])/(h[p2]-h[p1])
#define ysect(p1,p2) (h[p2]*yh[p1]-h[p1]*yh[p2])/(h[p2]-h[p1])

int im[4] = {0,1,1,0},jm[4]={0,0,1,1};

int castab[3][3][3] =
{
	{
		{0,0,8},{0,2,5},{7,6,9}
	},
	{
		{0,3,4},{1,3,1},{4,3,0}
	},
	{
		{9,6,7},{5,2,0},{8,0,0}
	}
};

float intervalLevels[MAX_LEVELS];


typedef struct _xray_jit_contourmap 
{
	t_object	ob;
	long		mode;
	long		levels;
	float		isolevel[MAX_LEVELS];
	long 		isolevelcount;
		
	t_symbol 	*Uname; //Name of the internal matrix
	void 		*U;
	
	t_symbol 	*Xname; //Name of the internal matrix
	void 		*X;
	t_symbol 	*Yname; //Name of the internal matrix
	void 		*Y;
	
} t_xray_jit_contourmap;

void *_xray_jit_contourmap_class;

//jitter object/MOP methods
t_jit_err xray_jit_contourmap_init(void);
t_xray_jit_contourmap *xray_jit_contourmap_new(void);
void xray_jit_contourmap_free(t_xray_jit_contourmap *x);
t_jit_err xray_jit_contourmap_matrix_calc(t_xray_jit_contourmap *x, void *inputs, void *outputs);

//data processing methods
long xray_jit_contourmap_calculate_ndim(t_xray_jit_contourmap *obj, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		float *isolevels, long isolevelcount, 
		t_jit_matrix_info *in2_minfo, char *bip2, 
		t_jit_matrix_info *in3_minfo, char *bip3, 
		t_jit_matrix_info *out_minfo, char *bop);
void xray_jit_contourmap_calc_levels(t_xray_jit_contourmap *obj, 
		t_jit_matrix_info *in1_minfo, char *bip1);
void xray_jit_contourmap_fillcoordinates(t_jit_matrix_info *in1_minfo, 
		char *bip1, t_jit_matrix_info *X_minfo, char *bxp, 
		t_jit_matrix_info *Y_minfo, char *byp);

//attribute methods
t_jit_err xray_jit_contourmap_isolevel(t_xray_jit_contourmap *x, void *attr, long argc, t_atom *argv);
	
t_jit_err xray_jit_contourmap_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	t_atom a[1];
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_contourmap_class = jit_class_new("xray_jit_contourmap",(method)xray_jit_contourmap_new,(method)xray_jit_contourmap_free,
		sizeof(t_xray_jit_contourmap),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	jit_mop_single_planecount(mop,1);
	jit_atom_setsym(a,_jit_sym_float32);
	
	o = jit_object_method(mop,_jit_sym_getinput,1);
	jit_object_method(o,_jit_sym_types,1,a);
	
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_object_method(o,_jit_sym_types,1,a);
	jit_attr_setlong(o,_jit_sym_dimlink,0);
	
	jit_class_addadornment(_xray_jit_contourmap_class,mop);

	//add methods
	jit_class_addmethod(_xray_jit_contourmap_class, (method)xray_jit_contourmap_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//mode
	attr = jit_object_new(atsym,"mode",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_contourmap,mode));
	jit_class_addattr(_xray_jit_contourmap_class,attr);
	
	//levels
	attr = jit_object_new(atsym,"levels",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_contourmap,levels));
	jit_class_addattr(_xray_jit_contourmap_class,attr);
	
	//isolevel
	attr = jit_object_new(_jit_sym_jit_attr_offset_array,"isolevel",_jit_sym_float32,10,attrflags,
		(method)0L,(method)xray_jit_contourmap_isolevel,calcoffset(t_xray_jit_contourmap,isolevelcount),calcoffset(t_xray_jit_contourmap,isolevel));
	jit_class_addattr(_xray_jit_contourmap_class,attr);
	
	jit_class_register(_xray_jit_contourmap_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_contourmap_isolevel(t_xray_jit_contourmap *x, void *attr, long argc, t_atom *argv)
{
	float temp;
	long i,j;
	
	for (i=0; i< MIN(argc, 10); i++) {
		x->isolevel[i] = jit_atom_getfloat(argv+i);
	}
	
	//sort isolevels into ascending order
	for (i=0; i < MIN(argc, 10); i++) {
		for (j=0; j < MIN(argc, 10)-i;  j++) {
			if (x->isolevel[j] > x->isolevel[j+1]) {
				temp = x->isolevel[j];
				x->isolevel[j] = x->isolevel[j+1];
				x->isolevel[j+1] = temp;
			}
		}
	}

	if (argc < 1) {
		argc = 1;
		x->isolevel[0] = 0.5;
	}
	
	x->isolevelcount = MIN(argc, 10);
	
	return JIT_ERR_NONE;
}

t_jit_err xray_jit_contourmap_matrix_calc(t_xray_jit_contourmap *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, out_savelock;
	t_jit_matrix_info in1_minfo, out_minfo;
	char *in1_bp, *out_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *out_matrix;
	long count;
	
	char *U_bp, *X_bp, *Y_bp;
	t_jit_matrix_info U_minfo, X_minfo, Y_minfo;
	long U_savelock, X_savelock, Y_savelock;
	float *fop, *fup;
	
	in1_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out_matrix = jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&out_matrix) {
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		
		//setup internal scratch matrices
		U_savelock = (long) jit_object_method(x->U,_jit_sym_lock,1);		
		jit_object_method(x->U,_jit_sym_getinfo,&U_minfo);
		
		if(x->mode == 0) {
			U_minfo.dim[0] = in1_minfo.dim[0] * in1_minfo.dim[1] * 4 * x->levels;
		}
		else {
			U_minfo.dim[0] = in1_minfo.dim[0] * in1_minfo.dim[1] * 4 * x->isolevelcount;
		}
		
		U_minfo.dim[1] = 1;
		U_minfo.planecount = 3;
		jit_object_method(x->U,_jit_sym_setinfo,&U_minfo);
		jit_object_method(x->U,_jit_sym_getinfo,&U_minfo);
		
		jit_object_method(x->U,_jit_sym_getdata,&U_bp);
		
		if (!x->U) { err=JIT_ERR_INVALID_PTR; goto out;}
		
		//setup coordinate vectors X and Y based on x->x[] and x->y[] endpoints	
		X_savelock = (long) jit_object_method(x->X,_jit_sym_lock,1);
		Y_savelock = (long) jit_object_method(x->Y,_jit_sym_lock,1);
		jit_object_method(x->X,_jit_sym_getinfo,&X_minfo);
		jit_object_method(x->Y,_jit_sym_getinfo,&Y_minfo);
		
		if(X_minfo.dim[0] != in1_minfo.dim[0] || X_minfo.dim[1] != 1)
		{
			X_minfo.dim[0] = in1_minfo.dim[0];
			X_minfo.dim[1] = 1;
		}
		
		if(Y_minfo.dim[0] != in1_minfo.dim[1] || Y_minfo.dim[1] != 1)
		{
			Y_minfo.dim[0] = in1_minfo.dim[1];
			Y_minfo.dim[1] = 1;
		}		
		
		jit_object_method(x->X,_jit_sym_setinfo,&X_minfo);
		jit_object_method(x->Y,_jit_sym_setinfo,&Y_minfo);
		
		jit_object_method(x->X,_jit_sym_getinfo,&X_minfo);
		jit_object_method(x->Y,_jit_sym_getinfo,&Y_minfo);
		
		jit_object_method(x->X,_jit_sym_getdata,&X_bp);
		jit_object_method(x->Y,_jit_sym_getdata,&Y_bp);
		
		if (!x->X) { err=JIT_ERR_INVALID_PTR; goto out;}
		if (!x->Y) { err=JIT_ERR_INVALID_PTR; goto out;}
		
		//compatible planes?
		if (in1_minfo.planecount!=3) { 
			err=JIT_ERR_MISMATCH_PLANE; 
			error("three plane matrices only");
			goto out;
		}		
			
		//get dimensions/planecount
		dimcount   = in1_minfo.dimcount;
		planecount = in1_minfo.planecount;			
		
		for (i=0;i<dimcount;i++) {
			dim[i] = in1_minfo.dim[i];
			if ((in1_minfo.dim[i]<dim[i])) dim[i] = in1_minfo.dim[i];
		}
		
		xray_jit_contourmap_fillcoordinates(&in1_minfo, in1_bp, &X_minfo, X_bp, &Y_minfo, Y_bp);
		
		if(x->mode == 0) {
			xray_jit_contourmap_calc_levels(x, &in1_minfo, in1_bp);
			count = xray_jit_contourmap_calculate_ndim(x, dimcount, dim, planecount, 
					&in1_minfo, in1_bp, 
					intervalLevels, x->levels, 
					&X_minfo, X_bp, 
					&Y_minfo, Y_bp, 
					&U_minfo, U_bp);
		}
		else {
			count = xray_jit_contourmap_calculate_ndim(x, dimcount, dim, planecount, 
					&in1_minfo, in1_bp, 
					x->isolevel, x->isolevelcount, 
					&X_minfo, X_bp, 
					&Y_minfo, Y_bp, 
					&U_minfo, U_bp);
		}
		
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		out_minfo.dim[0] = count;
		out_minfo.dim[1] = 1;
		out_minfo.planecount = 3;
		
		jit_object_method(out_matrix, _jit_sym_setinfo, &out_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);

		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		fop = (float *)out_bp;
		fup = (float *)U_bp;
		
		for(i=0; i < count*out_minfo.planecount; i++)
			fop[i] = fup[i];
		
	}
	else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	jit_object_method(x->U,gensym("lock"),U_savelock);
	jit_object_method(x->X,gensym("lock"),X_savelock);
	jit_object_method(x->Y,gensym("lock"),Y_savelock);
	return err;
}

void xray_jit_contourmap_calc_levels(t_xray_jit_contourmap *obj, t_jit_matrix_info *in1_minfo, char *bip1)
{
	long i, j;
	float zmin, zmax;
	float *fip;
	long in_rowstride, planecount, index;
	float step;
	
	planecount = in1_minfo->planecount;
	index = planecount-1;
	in_rowstride = in1_minfo->dimstride[1];
	
	fip = (float *)(bip1);
	zmin = fip[index];
	zmax = zmin;
	
	for(i=0; i < in1_minfo->dim[1]; i++) {
		fip = (float *)(bip1 + i*in_rowstride);
		
		for(j=0; j < in1_minfo->dim[0]; j++) {
			if(fip[index] > zmax) {
				zmax = fip[index];
			}
			else if(fip[index] < zmin) {
				zmin = fip[index];
			}
			
			fip += planecount;
		}
	}
	
	step = (zmax-zmin)/(obj->levels + 1);
	intervalLevels[0] = zmin + step;
	
	for(i=1; i < obj->levels; i++) {
		intervalLevels[i] = intervalLevels[i-1] + step;
	}
}

void xray_jit_contourmap_fillcoordinates(t_jit_matrix_info *in1_minfo, char *bip1, t_jit_matrix_info *X_minfo, char *bxp, t_jit_matrix_info *Y_minfo, char *byp)
{
	float *fxp, *fyp, *fip1;
	long i, planecount, in1_rowspan;
	
	planecount = in1_minfo->planecount;
	in1_rowspan = in1_minfo->dimstride[1];
	
	fxp = (float *)bxp;
	fip1 = (float *)(bip1);
	
	for(i=0; i < X_minfo->dim[0]; i++) {
		fxp[i] = fip1[0];
		fip1 += planecount;
	}
	
	fyp = (float *)byp;
	
	for(i=0; i < Y_minfo->dim[0]; i++) {
		fyp[i] = *((float *)(bip1 + i*in1_rowspan) + 1);
	}
}

long xray_jit_contourmap_calculate_ndim(t_xray_jit_contourmap *obj, long dimcount, long *dim, long planecount, t_jit_matrix_info *in1_minfo, char *bip1, 
	float *isolevels, long isolevelcount, t_jit_matrix_info *in2_minfo, char *bip2, t_jit_matrix_info *in3_minfo, char *bip3, t_jit_matrix_info *out_minfo, char *bop)
{
	long height, width, in1colspan, in1rowspan, outcolspan, outrowspan;
	float *x;
	float *y;
	int m1,m2,m3,case_value;
	double dmin,dmax,x1,x2,y1,y2;
	int i,j,k,m;
	double h[5];
	int sh[5];
	double xh[5],yh[5];
	long ilb, iub, jlb, jub;
	long nc;
	long counter = 0;
	
	ilb = 0;
	iub = in1_minfo->dim[0]-1;
	jlb = 0;
	jub = in1_minfo->dim[1]-1;
	nc = isolevelcount;
		
	x = (float *)bip2;
	y = (float *)bip3;
	
	if (dimcount<1) return 0; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
		width  = dim[0];
		height = dim[1];
		
		in1colspan = in1_minfo->dimstride[0];
		in1rowspan = in1_minfo->dimstride[1];
		outcolspan = out_minfo->dimstride[0];
		outrowspan = out_minfo->dimstride[1];
		
		if (out_minfo->type==_jit_sym_float32) {			
			for (j=(jub-1); j >= jlb; j--) {
				for (i=ilb; i <= iub-1; i++) {
					double temp1,temp2;
					
					temp1 = (double)MIN(*((float *)(bip1 + i*in1colspan + j*in1rowspan)+2), *((float *)(bip1 + i*in1colspan + (j+1)*in1rowspan)+2));
					temp2 = (double)MIN(*((float *)(bip1 + (i+1)*in1colspan + j*in1rowspan)+2), *((float *)(bip1 + (i+1)*in1colspan + (j+1)*in1rowspan)+2));
					dmin = (double)MIN(temp1,temp2);
					
					temp1 = (double)MAX(*((float *)(bip1 + i*in1colspan + j*in1rowspan)+2), *((float *)(bip1 + i*in1colspan + (j+1)*in1rowspan)+2));
					temp2 = (double)MAX(*((float *)(bip1 + (i+1)*in1colspan + j*in1rowspan)+2), *((float *)(bip1 + (i+1)*in1colspan + (j+1)*in1rowspan)+2));
					dmax = (double)MAX(temp1,temp2);					
					
					if (dmax >= isolevels[0] && dmin <= isolevels[nc-1]) {
						for (k=0;  k < nc; k++) {
							if ((double)isolevels[k] >= dmin && (double)isolevels[k] <= dmax) {
								for (m=4; m >= 0; m--) {
									if (m > 0) {
										h[m] = *((float *)(bip1 + (i+im[m-1])*in1colspan + (j+jm[m-1])*in1rowspan)+2) - isolevels[k];
										xh[m] = (double)x[i+im[m-1]];
										yh[m] = (double)y[j+jm[m-1]];
									}
									else {
										h[0] = 0.25*(h[1]+h[2]+h[3]+h[4]);
										xh[0]=(double)(0.5*(x[i]+x[i+1]));
										yh[0]=(double)(0.5*(y[j]+y[j+1]));
									}
						
									if (h[m]>0.0) {
										sh[m] = 1;
									}
									else if (h[m]<0.0) {
										sh[m] = -1;
									}
									else
										sh[m] = 0;
								}
						
								//=================================================================
								//
								// Note: at this stage the relative heights of the corners and the
								// centre are in the h array, and the corresponding coordinates are
								// in the xh and yh arrays. The centre of the box is indexed by 0
								// and the 4 corners by 1 to 4 as shown below.
								// Each triangle is then indexed by the parameter m, and the 3
								// vertices of each triangle are indexed by parameters m1,m2,and
								// m3.
								// It is assumed that the centre of the box is always vertex 2
								// though this isimportant only when all 3 vertices lie exactly on
								// the same contour level, in which case only the side of the box
								// is drawn.
								//
								//
								//      vertex 4 +-------------------+ vertex 3
								//               | \               / |
								//               |   \    m-3    /   |
								//               |     \       /     |
								//               |       \   /       |
								//               |  m=2    X   m=2   |       the centre is vertex 0
								//               |       /   \       |
								//               |     /       \     |
								//               |   /    m=1    \   |
								//               | /               \ |
								//      vertex 1 +-------------------+ vertex 2
								//
								//
								//
								//               Scan each triangle in the box
								//
								//=================================================================
								

								for (m=1; m <= 4; m++) {
									m1 = m;
									m2 = 0;

									if (m != 4)
										m3 = m+1;
									else
										m3 = 1;
									
									case_value = castab[sh[m1]+1][sh[m2]+1][sh[m3]+1];
															
									if (case_value != 0) {
										switch (case_value) {
										//===========================================================
										//     Case 1 - Line between vertices 1 and 2
										//===========================================================
										case 1:
											x1=xh[m1];
											y1=yh[m1];
											x2=xh[m2];
											y2=yh[m2];
											break;
										//===========================================================
										//     Case 2 - Line between vertices 2 and 3
										//===========================================================
										case 2:
											x1=xh[m2];
											y1=yh[m2];
											x2=xh[m3];
											y2=yh[m3];
											break;
										//===========================================================
										//     Case 3 - Line between vertices 3 and 1
										//===========================================================
										case 3:
											x1=xh[m3];
											y1=yh[m3];
											x2=xh[m1];
											y2=yh[m1];
											break;
										//===========================================================
										//     Case 4 - Line between vertex 1 and side 2-3
										//===========================================================
										case 4:
											x1=xh[m1];
											y1=yh[m1];
											x2=xsect(m2,m3);
											y2=ysect(m2,m3);
											break;
										//===========================================================
										//     Case 5 - Line between vertex 2 and side 3-1
										//===========================================================
										case 5:
											x1=xh[m2];
											y1=yh[m2];
											x2=xsect(m3,m1);
											y2=ysect(m3,m1);
											break;
										//===========================================================
										//     Case 6 - Line between vertex 3 and side 1-2
										//===========================================================
										case 6:
											x1=xh[m3];
											y1=yh[m3];
											x2=xsect(m1,m2);
											y2=ysect(m1,m2);
											break;
										//===========================================================
										//     Case 7 - Line between sides 1-2 and 2-3
										//===========================================================
										case 7:
											x1=xsect(m1,m2);
											y1=ysect(m1,m2);
											x2=xsect(m2,m3);
											y2=ysect(m2,m3);
											break;
										//===========================================================
										//     Case 8 - Line between sides 2-3 and 3-1
										//===========================================================
										case 8:
											x1=xsect(m2,m3);
											y1=ysect(m2,m3);
											x2=xsect(m3,m1);
											y2=ysect(m3,m1);
											break;
										//===========================================================
										//     Case 9 - Line between sides 3-1 and 1-2
										//===========================================================
										case 9:
											x1=xsect(m3,m1);
											y1=ysect(m3,m1);
											x2=xsect(m1,m2);
											y2=ysect(m1,m2);
											break;
										default:
											break;
										}
										
										if(counter < out_minfo->dim[0]) {
											*((float *)(bop + counter*outcolspan) + 0) = (float)x1;
											*((float *)(bop + counter*outcolspan) + 1) = (float)y1;
											*((float *)(bop + counter*outcolspan) + 2) = isolevels[k];
											
											counter++;
											
											*((float *)(bop + counter*outcolspan) + 0) = (float)x2;
											*((float *)(bop + counter*outcolspan) + 1) = (float)y2;
											*((float *)(bop + counter*outcolspan) + 2) = isolevels[k];

											counter++;
										}
									}
								}
							}
						}
					}
				}
			}
		}
		break;
	default:
		;
	}

	return counter;
}

t_xray_jit_contourmap *xray_jit_contourmap_new(void)
{
	t_xray_jit_contourmap *x;
	void *m;
	t_jit_matrix_info info;
		
	if (x=(t_xray_jit_contourmap *)jit_object_alloc(_xray_jit_contourmap_class))
	{
		x->mode = 0;
		x->levels = 2;
		x->isolevelcount = 2;
	
		jit_matrix_info_default(&info);
		info.type = _jit_sym_float32;
		info.planecount = 1;
		x->Uname = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->Uname);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->Uname, x);
		x->U = m;
		
		//coordinate matrices (X, Y)
		jit_matrix_info_default(&info);
		info.type = _jit_sym_float32;
		info.planecount = 1;
		x->Xname = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->Xname);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->Xname, x);
		x->X = m;
		
		jit_matrix_info_default(&info);
		info.type = _jit_sym_float32;
		info.planecount = 1;
		x->Yname = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->Yname);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->Yname, x);
		x->Y = m;
	}
	else
	{
		x = NULL;
	}	
	return x;
}

void xray_jit_contourmap_free(t_xray_jit_contourmap *x)
{
	jit_object_detach(x->Uname, x); //Detach matrix from object
	jit_object_free(x->U); //Free matrix memory
	
	jit_object_detach(x->Xname, x); //Detach matrix from object
	jit_object_free(x->X); //Free matrix memory
	
	jit_object_detach(x->Yname, x); //Detach matrix from object
	jit_object_free(x->Y); //Free matrix memory
}