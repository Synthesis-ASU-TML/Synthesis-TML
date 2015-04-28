/* 
	xray.jit.colormap
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_colormap 
{
	t_object	ob;
	char		mode;
	t_symbol 	*Colorname; //Name of the internal matrix
	void 		*Color;
	
	t_symbol 	*Countname; //Name of the internal matrix
	void 		*Count;
	
} t_xray_jit_colormap;

void *_xray_jit_colormap_class;

//jitter object and MOP methods
t_jit_err xray_jit_colormap_init(void);
t_xray_jit_colormap *xray_jit_colormap_new(void);
void xray_jit_colormap_free(t_xray_jit_colormap *x);
t_jit_err xray_jit_colormap_matrix_calc(t_xray_jit_colormap *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_colormap_calculate_ndim(t_xray_jit_colormap *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop, 
		t_jit_matrix_info *count_minfo, char *bcountp);
		
void xray_jit_colormap_postcalc(t_xray_jit_colormap *x, 
		t_jit_matrix_info *color_minfo, char *bcolorp, 
		t_jit_matrix_info *out_minfo, char *bop);
	
t_jit_err xray_jit_colormap_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	t_atom a[2];
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_colormap_class = jit_class_new("xray_jit_colormap",(method)xray_jit_colormap_new,(method)xray_jit_colormap_free,
		sizeof(t_xray_jit_colormap),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,1);
	jit_mop_single_planecount(mop,1);	
	jit_atom_setsym(a,_jit_sym_char);
	jit_atom_setsym(a+1,_jit_sym_long);
	
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_object_method(o,_jit_sym_types,2,a);
	
	jit_class_addadornment(_xray_jit_colormap_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_colormap_class, (method)xray_jit_colormap_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//mode
	attr = jit_object_new(atsym,"mode",_jit_sym_char,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_colormap,mode));
	jit_class_addattr(_xray_jit_colormap_class,attr);
	
	jit_class_register(_xray_jit_colormap_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_colormap_matrix_calc(t_xray_jit_colormap *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock,out_savelock;
	t_jit_matrix_info in1_minfo,out_minfo;
	char *in1_bp,*out_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix,*out_matrix;
	
	t_jit_matrix_info color_minfo, count_minfo;
	char *color_bp, *count_bp;
	long color_savelock, count_savelock;
	
	in1_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&out_matrix) {
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		color_savelock = (long) jit_object_method(x->Color,_jit_sym_lock,1);
		count_savelock = (long) jit_object_method(x->Count,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		out_minfo.dim[0] = 256;
		out_minfo.dimcount = 1;
		out_minfo.planecount = 4;
		out_minfo.type = in1_minfo.type;
		
		jit_object_method(out_matrix,_jit_sym_setinfo,&out_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//setup internal matrix for color accumulation
		jit_object_method(x->Color,_jit_sym_getinfo,&color_minfo);
		
		color_minfo.dim[0] = out_minfo.dim[0];
		color_minfo.planecount = 3;
		color_minfo.type = _jit_sym_float32;
		
		jit_object_method(x->Color,_jit_sym_setinfo,&color_minfo);
		jit_object_method(x->Color,_jit_sym_getinfo,&color_minfo);
		jit_object_method(x->Color, _jit_sym_clear);
		jit_object_method(x->Color,_jit_sym_getdata,&color_bp);
		
		if (!color_bp)
		{
			err=JIT_ERR_INVALID_PTR;
			post("couldn't allocate internal matrix");
			goto out;
		}
		
		jit_object_method(x->Count,_jit_sym_getinfo,&count_minfo);
		
		count_minfo.dim[0] = out_minfo.dim[0];
		count_minfo.planecount = 1;
		count_minfo.type = _jit_sym_float32;
		
		jit_object_method(x->Count,_jit_sym_setinfo,&count_minfo);
		jit_object_method(x->Count,_jit_sym_getinfo,&count_minfo);
		jit_object_method(x->Count, _jit_sym_clear);
		jit_object_method(x->Count,_jit_sym_getdata,&count_bp);
		
		if (!count_bp)
		{
			err=JIT_ERR_INVALID_PTR;
			post("couldn't allocate internal matrix");
			goto out;
		}
		
		//compatible types?
		if (in1_minfo.type!=out_minfo.type)
		{ 
			err=JIT_ERR_MISMATCH_TYPE; 
			goto out;
		}	
			
		//get dimensions/planecount
		dimcount   = in1_minfo.dimcount;
		planecount = in1_minfo.planecount;			
		
		for (i=0; i< dimcount;i++)
		{
			dim[i] = in1_minfo.dim[i];
		}
				
		xray_jit_colormap_calculate_ndim(x, dimcount, dim, planecount, 
				&in1_minfo, in1_bp, 
				&color_minfo, color_bp, 
				&count_minfo, count_bp);
				
		xray_jit_colormap_postcalc(x, 
				&color_minfo, color_bp, 
				&out_minfo, out_bp);
		
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	jit_object_method(x->Color,gensym("lock"),color_savelock);
	jit_object_method(x->Count,gensym("lock"),count_savelock);
	return err;
}


void xray_jit_colormap_calculate_ndim(t_xray_jit_colormap *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop, 
		t_jit_matrix_info *count_minfo, char *bcountp)
{
	long i,j;
	uchar *ip;
	long height, width, incolspan, outcolspan, inrowspan, outrowspan;
	long luma;
	float *fcp, *fcountp, currentColor[3];
	float colorSlope[3], colorPos;
	long lastColorIndex;
		
	if (dimcount<1) return; //safety
	
	switch(dimcount)
	{
	default:
	case 1:
		dim[1]=1;
	case 2:
		width  = dim[0];
		height = dim[1];
		
		incolspan = in1_minfo->dimstride[0];
		outcolspan = out_minfo->dimstride[0];
		inrowspan = in1_minfo->dimstride[1];
		outrowspan = out_minfo->dimstride[1];
		
		if (in1_minfo->type==_jit_sym_char)
		{
			fcp = (float *)(bop);
			fcountp = (float *)(bcountp);
		
			if(x->mode)
			{
				//accumulate color values according to their luminance
				//and increment counter for each color accumulated
				for(i=0; i < height; i++)
				{
					ip = (uchar *)(bip1 + i*inrowspan);
					
					for(j=0; j < width; j++)
					{
						currentColor[0] = (float)ip[4*j+1];
						currentColor[1] = (float)ip[4*j+2];
						currentColor[2] = (float)ip[4*j+3];
						
						luma = (long)jit_math_floor(0.299*currentColor[0] + 0.587*currentColor[1] + 0.114*currentColor[2]);
						
						if(!fcountp[luma])
						{
							fcp[luma*3] += currentColor[0];
							fcp[luma*3+1] += currentColor[1];
							fcp[luma*3+2] += currentColor[2];
						
							fcountp[luma]++;
						}
					}
				}
				
				//set white value
				fcp[3*255] = 255;
				fcp[3*255+1] = 255;
				fcp[3*255+2] = 255;
				fcountp[255]++;
				
				lastColorIndex = 0;
				
				//interpolate missing colorvalues
				for(i=0; i < out_minfo->dim[0]; i++)
				{
					if(fcountp[i])
					{
						if(i-lastColorIndex > 1)
						{
							colorSlope[0] = (fcp[3*i]-fcp[3*lastColorIndex])/((float)(i-lastColorIndex));
							colorSlope[1] = (fcp[3*i+1]-fcp[3*lastColorIndex+1])/((float)(i-lastColorIndex));
							colorSlope[2] = (fcp[3*i+2]-fcp[3*lastColorIndex+2])/((float)(i-lastColorIndex));
							
							for(j=lastColorIndex+1; j < i; j++)
							{
								colorPos = (float)(j-lastColorIndex);
								
								fcp[3*j] = colorPos*colorSlope[0]+fcp[3*lastColorIndex];
								fcp[3*j+1] = colorPos*colorSlope[1]+fcp[3*lastColorIndex+1];
								fcp[3*j+2] = colorPos*colorSlope[2]+fcp[3*lastColorIndex+2];
							}
						}
						
						lastColorIndex = i;
					}
				}
			}
			else
			{
				//set white value
				fcp[3*255] = 255;
				fcp[3*255+1] = 255;
				fcp[3*255+2] = 255;
				fcountp[255]++;
				
				//accumulate color values according to their luminance
				//and increment counter for each color accumulated
				for(i=0; i < height; i++)
				{
					ip = (uchar *)(bip1 + i*inrowspan);
					
					for(j=0; j < width; j++)
					{
						currentColor[0] = (float)(ip[4*j+1]);
						currentColor[1] = (float)(ip[4*j+2]);
						currentColor[2] = (float)(ip[4*j+3]);
						
						luma = (long)jit_math_floor(0.299*currentColor[0] + 0.587*currentColor[1] + 0.114*currentColor[2]);

						fcp[luma*3] += currentColor[0];
						fcp[luma*3+1] += currentColor[1];
						fcp[luma*3+2] += currentColor[2];
						
						fcountp[luma]++;
					}
				}
				
				lastColorIndex = 0;
				
				//average accumulated colorvalues, then interpolate missing values
				for(i=0; i < out_minfo->dim[0]; i++)
				{				
					if(fcountp[i])
					{
						fcp[3*i] /= fcountp[i];
						fcp[3*i+1] /= fcountp[i];
						fcp[3*i+2] /= fcountp[i];
						
						if(i-lastColorIndex > 1)
						{
							colorSlope[0] = (fcp[3*i]-fcp[3*lastColorIndex])/((float)(i-lastColorIndex));
							colorSlope[1] = (fcp[3*i+1]-fcp[3*lastColorIndex+1])/((float)(i-lastColorIndex));
							colorSlope[2] = (fcp[3*i+2]-fcp[3*lastColorIndex+2])/((float)(i-lastColorIndex));
							
							for(j=lastColorIndex+1; j < i; j++)
							{
								colorPos = (float)(j-lastColorIndex);
								
								fcp[3*j] = colorPos*colorSlope[0]+fcp[3*lastColorIndex];
								fcp[3*j+1] = colorPos*colorSlope[1]+fcp[3*lastColorIndex+1];
								fcp[3*j+2] = colorPos*colorSlope[2]+fcp[3*lastColorIndex+2];
							}
						}
						
						lastColorIndex = i;
					}
				}
			}
		}
		break;
	}
}

void xray_jit_colormap_postcalc(t_xray_jit_colormap *x, 
		t_jit_matrix_info *color_minfo, char *bcolorp, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i;
	uchar *op;
	float *fcolorp;
	
	op = (uchar *)bop;
	fcolorp = (float *)bcolorp;
	
	for(i=0; i < out_minfo->dim[0]; i++)
	{
		op[4*i] = 255;
		op[4*i+1] = (uchar)(fcolorp[3*i]);
		op[4*i+2] = (uchar)(fcolorp[3*i+1]);
		op[4*i+3] = (uchar)(fcolorp[3*i+2]);
	}
}

t_xray_jit_colormap *xray_jit_colormap_new(void)
{
	t_xray_jit_colormap *x;
	void *m;
	t_jit_matrix_info info;
		
	if (x=(t_xray_jit_colormap *)jit_object_alloc(_xray_jit_colormap_class))
	{
		x->mode = 0;
		
		jit_matrix_info_default(&info);
		info.dimcount = 1;
		info.type = _jit_sym_float32;
		info.planecount = 3;
		x->Colorname = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->Colorname);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->Colorname, x);
		x->Color = m;
		
		jit_matrix_info_default(&info);
		info.dimcount = 1;
		info.type = _jit_sym_float32;
		info.planecount = 1;
		x->Countname = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->Countname);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->Countname, x);
		x->Count = m;
	}
	else
	{
		x = NULL;
	}	
	return x;
}

void xray_jit_colormap_free(t_xray_jit_colormap *x)
{
	jit_object_detach(x->Colorname, x); //Detach matrix from object
	jit_object_free(x->Color); //Free matrix memory
	
	jit_object_detach(x->Countname, x); //Detach matrix from object
	jit_object_free(x->Count); //Free matrix memory
}
