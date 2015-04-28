/* 
	xray.jit.svd
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

#define SIGN(x, y) (x*((y)<0?-(1):(1)))

typedef struct _xray_jit_svd 
{
	t_object	ob;
		
	t_symbol *Uname; //Name of the internal matrix
	void 		*U;
	
	t_symbol *Vname; //Name of the internal matrix
	void 		*V;	
	
} t_xray_jit_svd;

void *_xray_jit_svd_class;

//jitter object/MOP methods
t_jit_err xray_jit_svd_init(void);
t_xray_jit_svd *xray_jit_svd_new(void);
void xray_jit_svd_free(t_xray_jit_svd *x);
t_jit_err xray_jit_svd_matrix_calc(t_xray_jit_svd *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_svd_calculate_ndim(t_xray_jit_svd *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *out1_minfo, char *bop1, 
		t_jit_matrix_info *out2_minfo, char *bop2, 
		t_jit_matrix_info *out3_minfo, char *bop3);
void xray_jit_svd_sort(t_xray_jit_svd *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *out1_minfo, char *bop1, 
		t_jit_matrix_info *out2_minfo, char *bop2, 
		t_jit_matrix_info *out3_minfo, char *bop3, 
		t_jit_matrix_info *U_minfo, char *U, 
		t_jit_matrix_info *V_minfo, char* V);

t_jit_err xray_jit_svd_init(void) 
{
	t_jit_object *mop;
	
	_xray_jit_svd_class = jit_class_new("xray_jit_svd",(method)xray_jit_svd_new,(method)xray_jit_svd_free,
		sizeof(t_xray_jit_svd),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,3);
	jit_mop_single_planecount(mop,1);
	
	jit_class_addadornment(_xray_jit_svd_class,mop);

	//add methods
	jit_class_addmethod(_xray_jit_svd_class, (method)xray_jit_svd_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	jit_class_register(_xray_jit_svd_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_svd_matrix_calc(t_xray_jit_svd *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in_savelock, out1_savelock, out2_savelock, out3_savelock;
	t_jit_matrix_info in_minfo, out1_minfo, out2_minfo, out3_minfo;
	char *in_bp,*out1_bp, *out2_bp, *out3_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in_matrix,*out1_matrix, *out2_matrix, *out3_matrix;
	
	char *U_bp, *V_bp;
	t_jit_matrix_info U_minfo, V_minfo;
	long U_savelock, V_savelock;
	t_symbol *type;
	
	in_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out1_matrix = jit_object_method(outputs,_jit_sym_getindex,0);
	out2_matrix = jit_object_method(outputs,_jit_sym_getindex,1);
	out3_matrix = jit_object_method(outputs,_jit_sym_getindex,2);

	if (x&&in_matrix&&out1_matrix&&out2_matrix&&out3_matrix) {
		in_savelock = (long) jit_object_method(in_matrix,_jit_sym_lock,1);
		out1_savelock = (long) jit_object_method(out1_matrix,_jit_sym_lock,1);
		out2_savelock = (long) jit_object_method(out2_matrix,_jit_sym_lock,1);
		out3_savelock = (long) jit_object_method(out3_matrix,_jit_sym_lock,1);
		
		jit_object_method(in_matrix,_jit_sym_getinfo,&in_minfo);
		jit_object_method(out1_matrix,_jit_sym_getinfo,&out1_minfo);
		jit_object_method(out2_matrix,_jit_sym_getinfo,&out2_minfo);
		jit_object_method(out3_matrix,_jit_sym_getinfo,&out3_minfo);
		
		if(in_minfo.type == _jit_sym_float64)
		{
			type = _jit_sym_float64;
		}
		else
		{
			type = _jit_sym_float32;
		}
		
		//set out1 matrix to correct type
		out1_minfo.type = type;
		jit_object_method(out1_matrix, _jit_sym_setinfo, &out1_minfo);
		jit_object_method(out1_matrix,_jit_sym_getinfo,&out1_minfo);
		
		//set sigma matrix to be a vector nx1 where n is width of input
		out2_minfo.dim[0] = in_minfo.dim[0];
		out2_minfo.dim[1] = 1;
		out2_minfo.type = type;
		jit_object_method(out2_matrix, _jit_sym_setinfo, &out2_minfo);
		jit_object_method(out2_matrix,_jit_sym_getinfo,&out2_minfo);
		
		//set out3 matrix to be nxn where n is width of input
		out3_minfo.dim[0] = in_minfo.dim[0];
		out3_minfo.dim[1] = in_minfo.dim[0];
		out3_minfo.type = type;
		jit_object_method(out3_matrix, _jit_sym_setinfo, &out3_minfo);
		jit_object_method(out3_matrix,_jit_sym_getinfo,&out3_minfo);
		
		jit_object_method(in_matrix,_jit_sym_getdata,&in_bp);
		jit_object_method(out1_matrix,_jit_sym_getdata,&out1_bp);
		jit_object_method(out2_matrix,_jit_sym_getdata,&out2_bp);
		jit_object_method(out3_matrix,_jit_sym_getdata,&out3_bp);
		
		if (!in_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out1_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		if (!out2_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		if (!out3_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}

		//setup internal scratch matrices
		U_savelock = (long) jit_object_method(x->U,_jit_sym_lock,1);
		V_savelock = (long) jit_object_method(x->V,_jit_sym_lock,1);
		
		jit_object_method(x->U,_jit_sym_getinfo,&U_minfo);
		jit_object_method(x->V,_jit_sym_getinfo,&V_minfo);
		
		U_minfo.dim[0] = out1_minfo.dim[0];
		U_minfo.dim[1] = out1_minfo.dim[1];
		U_minfo.type = _jit_sym_float32;
		jit_object_method(x->U,_jit_sym_setinfo,&U_minfo);
		jit_object_method(x->U,_jit_sym_getinfo,&U_minfo);
		
		V_minfo.dim[0] = out3_minfo.dim[0];
		V_minfo.dim[1] = out3_minfo.dim[1];
		V_minfo.type = _jit_sym_float32;
		jit_object_method(x->V,_jit_sym_setinfo,&V_minfo);
		jit_object_method(x->V,_jit_sym_getinfo,&V_minfo);
		
		jit_object_method(x->U,_jit_sym_getdata,&U_bp);
		jit_object_method(x->V,_jit_sym_getdata,&V_bp);
		
		if (!x->U) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		if (!x->V) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//compatible types?
		/*if (in_minfo.type!=out1_minfo.type)
		{ 
			err=JIT_ERR_MISMATCH_TYPE; 
			goto out;
		}*/	
		//compatible planes?
		if (in_minfo.planecount!=out1_minfo.planecount&&in_minfo.planecount!=1)
		{ 
			err=JIT_ERR_MISMATCH_PLANE; 
			error("single plane matrices only");
			goto out;
		}		
			
		//get dimensions/planecount
		dimcount   = out1_minfo.dimcount;
		planecount = out1_minfo.planecount;			
		
		for (i=0;i<dimcount;i++) {
			dim[i] = out1_minfo.dim[i];
			if ((in_minfo.dim[i]<dim[i])) dim[i] = in_minfo.dim[i];
		}
		
				
		xray_jit_svd_calculate_ndim(x, dimcount, dim, planecount, 
				&in_minfo, in_bp, 
				&U_minfo, U_bp, 
				&out2_minfo, out2_bp, 
				&V_minfo, V_bp);
				
		xray_jit_svd_sort(x, dimcount, dim, planecount, 
				&out1_minfo, out1_bp, 
				&out2_minfo, out2_bp, 
				&out3_minfo, out3_bp, 
				&U_minfo, U_bp, 
				&V_minfo, V_bp);	
		
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out2_matrix,gensym("lock"),out2_savelock);
	jit_object_method(out1_matrix,gensym("lock"),out1_savelock);
	jit_object_method(in_matrix,gensym("lock"),in_savelock);
	jit_object_method(x->U,gensym("lock"),U_savelock);
	jit_object_method(x->V,gensym("lock"),V_savelock);
	return err;
}


void xray_jit_svd_calculate_ndim(t_xray_jit_svd *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in_minfo, char *bip, 
		t_jit_matrix_info *out1_minfo, char *bop1, 
		t_jit_matrix_info *out2_minfo, char *bop2, 
		t_jit_matrix_info *out3_minfo, char *bop3)
{
	//long i,j,k,n;
	long ii;
	uchar *ip;
	long *lip;
	float *fip, *fop1;
	double *dip;
	long height,width, incolspan, inrowspan;
	long outcolspan1, outrowspan1;
	long outcolspan2, outrowspan2;
	long outcolspan3, outrowspan3;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
		width  = dim[0];
		height = dim[1];
		
		incolspan = in_minfo->dimstride[0];
		inrowspan = in_minfo->dimstride[1];
		outcolspan1 = out1_minfo->dimstride[0];
		outrowspan1 = out1_minfo->dimstride[1];
		outcolspan2 = out2_minfo->dimstride[0];
		outrowspan2 = out2_minfo->dimstride[1];
		outcolspan3 = out3_minfo->dimstride[0];
		outrowspan3 = out3_minfo->dimstride[1];
		
		if(in_minfo->type == _jit_sym_char)
		{
			long i, j;
			
			//copy input to left output
			for(i=0; i < height; i++)
			{
				ip  = (uchar *)(bip + i*inrowspan);
				fop1  = (float *)(bop1 + i*outrowspan1);
				
				for(j=0; j < width; j++)
				{
					*(fop1++) = (float)*(ip++);
				}
			}
		}
		else if(in_minfo->type == _jit_sym_long)
		{
			long i, j;
			
			//copy input to left output
			for(i=0; i < height; i++)
			{
				lip  = (long *)(bip + i*inrowspan);
				fop1  = (float *)(bop1 + i*outrowspan1);
				
				for(j=0; j < width; j++)
				{
					*(fop1++) = (float)*(lip++);
				}
			}
		}
		else if(in_minfo->type == _jit_sym_float32)
		{
			long i, j;
			
			//copy input to left output
			for(i=0; i < height; i++)
			{
				fip  = (float *)(bip + i*inrowspan);
				fop1  = (float *)(bop1 + i*outrowspan1);
				
				for(j=0; j < width; j++)
				{
					*(fop1++) = *(fip++);
				}
			}
		}
		else if(in_minfo->type == _jit_sym_float64)
		{
			long i, j;
			
			//copy input to left output
			for(i=0; i < height; i++)
			{
				dip  = (double *)(bip + i*inrowspan);
				fop1 = (float *)(bop1 + i*outrowspan1);
				
				for(j=0; j < width; j++)
				{
					*(fop1++) = *(dip++);
				}
			}
		}
		
		if (out1_minfo->type==_jit_sym_float32)
		{		
			int flag, i, its, j, jj, k, l, nm;
			float anorm, c, f, g, h, s, scale, x, y, z;
			float *rv1 = (float *)jit_getbytes(width*outcolspan2);
			float *w = (float *)jit_getbytes(width*outcolspan2);
			
			

			g = 0;
			scale = 0;
			anorm = 0;
			
			
			//Householder reduction to bidiagonalform
			for(i=0; i < width; i++)
			{
				l = i+1;
				rv1[i] = scale*g;
				g = 0;
				s = 0;
				scale = 0;
				
				if( i < height)
				{
					//sum lower triangle of matrix column
					for(k=i; k < height; k++)
					{
						scale += ABS(*(float *)(bop1 + k*outrowspan1 + i*outcolspan1));
					}

					if(scale)
					{
						//scale lower triangle of matrix by the sum of lower triangle column
						for(k=i; k < height; k++)
						{
							*(float *)(bop1 + k*outrowspan1 + i*outcolspan1) /= scale;
							s += (*(float *)(bop1 + k*outrowspan1 + i*outcolspan1)) * (*(float *)(bop1 + k*outrowspan1 + i*outcolspan1));
						}
						
						//get scaled diagonal value
						f = *(float *)(bop1 + i*outrowspan1 + i*outcolspan1);
						g = -SIGN(jit_math_sqrt(s), f);
						h = f*g - s;
						*(float *)(bop1 + i*outrowspan1 + i*outcolspan1) = f-g;
						
						for(j=l; j < width; j++)
						{
							s = 0;
							
							//sum squared of lower triangle of matrix column
							for(k=i; k < height; k++)
							{
								s += (*(float *)(bop1 + k*outrowspan1 + i*outcolspan1)) * (*(float *)(bop1 + k*outrowspan1 + j*outcolspan1));
							}
							
							f = s/h;
							
							for(k=i; k < height; k++)
							{
								*(float *)(bop1 + k*outrowspan1 + j*outcolspan1) += f * (*(float *)(bop1 + k*outrowspan1 + i*outcolspan1));
							}
						}
						
						for(k=i; k < height; k++)
						{
							*(float *)(bop1 + k*outrowspan1 + i*outcolspan1) *= scale;
						}
					}
				}
				
				w[i] = scale*g;				
				g = 0;
				s = 0;
				scale = 0;
				
				if(i < height && i != width-1)
				{
					for(k=l; k < width; k++)
					{
						scale += ABS(*(float *)(bop1 + i*outrowspan1 + k*outcolspan1));
					}
					
					if(scale)
					{
						for(k=l; k < width; k++)
						{
							*(float *)(bop1 + i*outrowspan1 + k*outcolspan1) /= scale;
							s += (*(float *)(bop1 + i*outrowspan1 + k*outcolspan1)) * (*(float *)(bop1 + i*outrowspan1 + k*outcolspan1));
						}
						
						f = *(float *)(bop1 + i*outrowspan1 + l*outcolspan1);
						g = -SIGN(jit_math_sqrt(s), f);
						h = f*g - s;
						*(float *)(bop1 + i*outrowspan1 + l*outcolspan1) = f-g;
						
						for(k=l; k < width; k++)
						{
							rv1[k] = *(float *)(bop1 + i*outrowspan1 + k*outcolspan1)/h;
						}
						
						for(j=l; j < height; j++)
						{
							s = 0;
							
							for(k=l; k < width; k++)
							{	
								s += (*(float *)(bop1 + j*outrowspan1 + k*outcolspan1)) * (*(float *)(bop1 + i*outrowspan1 + k*outcolspan1));
							}
							
							for(k=l; k < width; k++)
							{								
								*(float *)(bop1 + j*outrowspan1 + k*outcolspan1) += s*rv1[k];
							}
						}
						
						for(k=l; k < width; k++)
						{
							*(float *)(bop1 + i*outrowspan1 + k*outcolspan1) *= scale;
						}
					}
				}
				
				anorm = MAX(anorm, ABS(w[i]) + ABS(rv1[i]));
			}			
			
			//Accumulation of right-hand transformations
			for(i=width-1; i >= 0; i--)
			{				
				if(i < width-1)
				{
					if(g)
					{
						for(j=l; j < width; j++)
						{
							*(float *)(bop3 + j*outrowspan3 + i*outcolspan3) = ((*(float *)(bop1 + i*outrowspan1 + j*outcolspan1)) / (*(float *)(bop1 + i*outrowspan1 + l*outcolspan1))) / g;
						}
						
						for(j=l; j < width; j++)
						{
							s = 0;
							
							for(k=l; k < width; k++)
							{
								s += *(float *)(bop1 + i*outrowspan1 + k*outcolspan1) * (*(float *)(bop3 + k*outrowspan3 + j*outcolspan3));
							}
							
							for(k=l; k < width; k++)
							{
								(*(float *)(bop3 + k*outrowspan3 + j*outcolspan3)) += s * (*(float *)(bop3 + k*outrowspan3 + i*outcolspan3));
							}
						}
					}
					
					for(j=l; j < width; j++)
					{
						*(float *)(bop3 + i*outrowspan3 + j*outcolspan3) = 0;
						*(float *)(bop3 + j*outrowspan3 + i*outcolspan3) = 0;
					}
				}
				
				*(float *)(bop3 + i*outrowspan3 + i*outcolspan3) = 1;
				g = rv1[i];
				l = i;
			}
			
			for(i=MIN(width, height)-1; i >= 0; i--)
			{
				l = i+1;
				g = w[i];
				
				for(j=l; j < width; j++)
				{
					*(float *)(bop1 + i*outrowspan1 + j*outcolspan1) = 0;
				}
				
				if(g)
				{
					g = 1.0/g;
					
					for(j=l; j < width; j++)
					{
						s = 0;
						
						for(k=l; k < height; k++)
						{
							s += (*(float *)(bop1 + k*outrowspan1 + i*outcolspan1)) * (*(float *)(bop1 + k*outrowspan1 + j*outcolspan1));
						}

						f = (s/(*(float *)(bop1 + i*outrowspan1 + i*outcolspan1))) * g;

						for(k=i; k < height; k++)
						{
							*(float *)(bop1 + k*outrowspan1 + j*outcolspan1) +=  f * (*(float *)(bop1 + k*outrowspan1 + i*outcolspan1));
						}
					}
					
					for(j=i; j < height; j++)
					{						
						*(float *)(bop1 + j*outrowspan1 + i*outcolspan1) *= g;
					}
				}
				else
				{
					for(j=i; j < height; j++)
					{
						*(float *)(bop1 + j*outrowspan1 + i*outcolspan1) = 0;
					}
				}
				
				++(*(float *)(bop1 + i*outrowspan1 + i*outcolspan1));
			}
				
			for(k=width-1; k >= 0; k--)
			{
				for(its=1; its <= 30; its++)
				{
					flag = 1;
					
					for(l=k; l >= 0; l--)
					{
						nm = l-1;
						
						if((float)(ABS(rv1[l]) + anorm) == anorm)
						{
							flag = 0;
							break;
						}
						
						if((float)(ABS(w[nm]) + anorm) == anorm)
						{
							break;
						}
					}
					
					if(flag)
					{
						c = 0;
						s = 1;

						for(i=l; i <= k; i++)
						{	
							f = s*rv1[i];
							rv1[i] = c*rv1[i];

							if((float)(ABS(f) + anorm) == anorm)
							{
								break;
							}
							
							g = w[i];
							h = jit_math_hypot(f, g);
							w[i] = h;							
							h = 1.0/h;
							c = g*h;
							s = -f*h;

							for(j=0; j < height; j++)
							{
								y = *(float *)(bop1 + j*outrowspan1 + nm*outcolspan1);
								z = *(float *)(bop1 + j*outrowspan1 + i*outcolspan1);

								*(float *)(bop1 + j*outrowspan1 + nm*outcolspan1) = y*c + z*s;
								*(float *)(bop1 + j*outrowspan1 + i*outcolspan1) = z*c - y*s;
							}
						}
					}
					
					z = w[k];
					
					if(l == k)
					{
						if(z < 0)
						{
							w[k] = -z;
							
							for(j=0; j < width; j++)
							{
								*(float *)(bop3 + j*outrowspan3 + k*outcolspan3) = -(*(float *)(bop3 + j*outrowspan3 + k*outcolspan3));
							}
						}

						break;
					}
					
					if(its == 30)
					{
						error("no convergence in 30 svdcmp iterations");
					}
					
					x = w[l];
					nm = k-1;
					y = w[nm];
					g = rv1[nm];
					h = rv1[k];
					f = ((y-z) * (y+z) + (g-h) * (g+h)) / (2.0*h*y);
					g = jit_math_hypot(f, 1.0);
					f = ((x-z) * (x+z) + h*((y/(f + SIGN(g, f))) - h)) / x;
					c = 1.0;
					s = 1.0;
					
					for(j=l; j <= nm; j++)
					{
						i = j+1;
						g = rv1[i];
						y = w[i];
						h = s*g;
						g = c*g;
						z = jit_math_hypot(f, h);
						rv1[j] = z;
						c = f/z;
						s = h/z;
						f = x*c + g*s;
						g = g*c - x*s;
						h = y*s;
						y *= c;

						for(jj=0; jj < width; jj++)
						{
							x = *(float *)(bop3 + jj*outrowspan3 + j*outcolspan3);
							z = *(float *)(bop3 + jj*outrowspan3 + i*outcolspan3);		
							*(float *)(bop3 + jj*outrowspan3 + j*outcolspan3) = x*c + z*s;
							*(float *)(bop3 + jj*outrowspan3 + i*outcolspan3) = z*c - x*s;
						}
						
						z = jit_math_hypot(f, h);
						w[j] = z;
						
						if(z)
						{
							z = 1.0/z;							
							c = f*z;
							s = h*z;
						}
						
						f = c*g + s*y;
						x = c*y - s*g;
						
						for(jj=0; jj < height; jj++)
						{
							y = *(float *)(bop1 + jj*outrowspan1 + j*outcolspan1);
							z = *(float *)(bop1 + jj*outrowspan1 + i*outcolspan1);

							*(float *)(bop1 + jj*outrowspan1 + j*outcolspan1) = y*c + z*s;
							*(float *)(bop1 + jj*outrowspan1 + i*outcolspan1) = z*c - y*s;
						}
					}
					
					rv1[l] = 0.0;
					rv1[k] = f;
					w[k] = x;
				}
			}
			
			if(out2_minfo->type == _jit_sym_float32)
			{
				for(ii=0; ii < width; ii++)
				{
					*(float *)(bop2 + ii*outcolspan2) = w[ii];
				}
			}
			else if(out2_minfo->type == _jit_sym_float64)
			{
				for(ii=0; ii < width; ii++)
				{
					*(double *)(bop2 + ii*outcolspan2) = (double)w[ii];
				}
			}
			
			jit_freebytes((void *)rv1, width*incolspan);
			jit_freebytes((void *)w, width*incolspan);
		}
		break;
	default:
		;
	}
}

void xray_jit_svd_sort(t_xray_jit_svd *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *out1_minfo, char *bop1, 
		t_jit_matrix_info *out2_minfo, char *bop2, 
		t_jit_matrix_info *out3_minfo, char *bop3, 
		t_jit_matrix_info *U_minfo, char *U, 
		t_jit_matrix_info *V_minfo, char* V)
{
	long i, j, ltmp, out_Hoffset, in_Hoffset;
	long *indices = (long *)jit_getbytes(out2_minfo->dim[0]*out2_minfo->dimstride[0]);
	float *fop2, ftmp;
	double *dop2, dtmp;

	if(out2_minfo->type == _jit_sym_float32)
	{
		fop2 = (float *)bop2;
	
		//intialize with index values
		for(i=0; i < out2_minfo->dim[0]; i++)
		{
			indices[i] = i;
		}
		
		for(i=0; i < out2_minfo->dim[0]; i++)
		{
			for(j=0; j < out2_minfo->dim[0]-i; j++)	
			{
				if(fop2[j] < fop2[j+1])
				{
					ftmp = fop2[j];
					fop2[j] = fop2[j+1];
					fop2[j+1] = ftmp;
					
					ltmp =indices[j];
					indices[j] = indices[j+1];
					indices[j+1] = ltmp;
				}
			}
		}
		
		for(i=0; i < out1_minfo->dim[0]; i++)
		{
			in_Hoffset = indices[i]*U_minfo->dimstride[0];
			out_Hoffset = i*out1_minfo->dimstride[0];
			
			for(j=0; j < out1_minfo->dim[1]; j++)
			{
				*(float *)(bop1 + out_Hoffset + j*out1_minfo->dimstride[1]) = *(float *)(U + in_Hoffset + j*U_minfo->dimstride[1]);
			}
		}
		
		for(i=0; i < out3_minfo->dim[0]; i++)
		{
			in_Hoffset = indices[i]*V_minfo->dimstride[0];
			out_Hoffset = i*out3_minfo->dimstride[0];
			
			for(j=0; j < out3_minfo->dim[1]; j++)
			{
				*(float *)(bop3 + out_Hoffset + j*out3_minfo->dimstride[1]) = *(float *)(V + in_Hoffset + j*V_minfo->dimstride[1]);
			}
		}
	}
	else if(out2_minfo->type == _jit_sym_float64)
	{
		dop2 = (double *)bop2;
	
		//intialize with index values
		for(i=0; i < out2_minfo->dim[0]; i++)
		{
			indices[i] = i;
		}
		
		for(i=0; i < out2_minfo->dim[0]; i++)
		{
			for(j=0; j < out2_minfo->dim[0]-i; j++)	
			{
				if(dop2[j] < dop2[j+1])
				{
					dtmp = dop2[j];
					dop2[j] = dop2[j+1];
					dop2[j+1] = dtmp;
					
					ltmp =indices[j];
					indices[j] = indices[j+1];
					indices[j+1] = ltmp;
				}
			}
		}
		
		for(i=0; i < out1_minfo->dim[0]; i++)
		{
			in_Hoffset = indices[i]*U_minfo->dimstride[0];
			out_Hoffset = i*out1_minfo->dimstride[0];
			
			for(j=0; j < out1_minfo->dim[1]; j++)
			{
				*(double *)(bop1 + out_Hoffset + j*out1_minfo->dimstride[1]) = (double)*(float *)(U + in_Hoffset + j*U_minfo->dimstride[1]);
			}
		}
		
		for(i=0; i < out3_minfo->dim[0]; i++)
		{
			in_Hoffset = indices[i]*V_minfo->dimstride[0];
			out_Hoffset = i*out3_minfo->dimstride[0];
			
			for(j=0; j < out3_minfo->dim[1]; j++)
			{
				*(double *)(bop3 + out_Hoffset + j*out3_minfo->dimstride[1]) = (double)*(float *)(V + in_Hoffset + j*V_minfo->dimstride[1]);
			}
		}
	}
	
	jit_freebytes((void *)indices, out2_minfo->dim[0]*out2_minfo->dimstride[0]);
}

t_xray_jit_svd *xray_jit_svd_new(void)
{
	t_xray_jit_svd *x;
	void *m;
	t_jit_matrix_info info;
		
	if (x=(t_xray_jit_svd *)jit_object_alloc(_xray_jit_svd_class))
	{
		//create internal matrix
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
		
		//create internal matrix
		jit_matrix_info_default(&info);
		info.type = _jit_sym_float32;
		info.planecount = 1;
		x->Vname = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->Vname);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->Vname, x);
		x->V = m;
	}
	else
	{
		x = NULL;
	}	
	return x;
}

void xray_jit_svd_free(t_xray_jit_svd *x)
{
	jit_object_detach(x->U, x); //Detach matrix from object
	jit_object_free(x->U); //Free matrix memory
	
	jit_object_detach(x->V, x); //Detach matrix from object
	jit_object_free(x->V); //Free matrix memory
}
