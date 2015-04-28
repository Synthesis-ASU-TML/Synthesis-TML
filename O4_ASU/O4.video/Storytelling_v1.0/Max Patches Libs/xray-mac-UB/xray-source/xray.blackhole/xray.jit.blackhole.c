/* 
	xray.jit.blackhole
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

#define PI				3.14159f
#define	NUM_PLANES		9
double x[5];

typedef struct _xray_jit_blackhole 
{
	t_object	ob;
	
	float		attractor[3];
	long		attractorcount;
	
	float		emitter[3];
	long		emittercount;
	
	float		gravity;
	float		weight;
	float		timestep;
	float		downline;
	float		angle;
	float		max_distance;
	float		min_distance;
	float		velocity;
	
	float		line[6];
	long		linecount;
} t_xray_jit_blackhole;

void *_xray_jit_blackhole_class;

//basic jitter/MOP functions
t_jit_err xray_jit_blackhole_init(void); 
t_xray_jit_blackhole *xray_jit_blackhole_new(void);
void xray_jit_blackhole_free(t_xray_jit_blackhole *x);
t_jit_err xray_jit_blackhole_matrix_calc(t_xray_jit_blackhole *x, void *inputs, void *outputs);

//processing function
void xray_jit_blackhole_calculate_ndim(t_xray_jit_blackhole *obj, long dimcount, long planecount, long *dim, 
	t_jit_matrix_info *in1_minfo, char *bip1,
	t_jit_matrix_info *out1_minfo, char *bop1);
	
//utility functions
double RandomFloat (void);
void GenerateParticle(t_xray_jit_blackhole *obj, float *particle);
void RandomInit(double val);

t_jit_err xray_jit_blackhole_init(void) 
{
	long attrflags = 0;
	t_jit_object *attr, *mop;
	t_symbol *atsym;
	t_atom a[1];
	void *o;
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_blackhole_class = jit_class_new("xray_jit_blackhole",(method)xray_jit_blackhole_new,(method)xray_jit_blackhole_free,
		sizeof(t_xray_jit_blackhole),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop, 1, 1);
	jit_mop_single_planecount(mop, NUM_PLANES);
	jit_atom_setsym(a, _jit_sym_float32);
	
	o = jit_object_method(mop,_jit_sym_getinput, 1);
	jit_object_method(o, _jit_sym_types, 1, a);
	
	o = jit_object_method(mop,_jit_sym_getoutput, 1);
	jit_object_method(o, _jit_sym_types, 1, a);
	
	jit_class_addadornment(_xray_jit_blackhole_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_blackhole_class, (method)xray_jit_blackhole_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array,"attractor",_jit_sym_float32,3,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,attractorcount),calcoffset(t_xray_jit_blackhole,attractor));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array,"emitter",_jit_sym_float32,3,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,emittercount),calcoffset(t_xray_jit_blackhole,emitter));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array,"line",_jit_sym_float32,6,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,linecount),calcoffset(t_xray_jit_blackhole,line));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
	
	//weight
	attr = jit_object_new(atsym,"weight",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,weight));
	jit_class_addattr(_xray_jit_blackhole_class,attr);	
	
	//timestep
	attr = jit_object_new(atsym,"timestep",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,timestep));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
	
	//downline
	attr = jit_object_new(atsym,"downline",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,downline));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
	
	//angle
	attr = jit_object_new(atsym,"angle",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,angle));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
	
	//max_distance
	attr = jit_object_new(atsym,"max_distance",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,max_distance));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
	
	//min_distance
	attr = jit_object_new(atsym,"min_distance",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,min_distance));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
	
	//gravity
	attr = jit_object_new(atsym,"gravity",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,gravity));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
	
	//velocity
	attr = jit_object_new(atsym,"velocity",_jit_sym_float32,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_blackhole,velocity));
	jit_class_addattr(_xray_jit_blackhole_class,attr);
		
	jit_class_register(_xray_jit_blackhole_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_blackhole_matrix_calc(t_xray_jit_blackhole *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, out1_savelock;
	t_jit_matrix_info in1_minfo, out1_minfo;
	char *in1_bp, *out1_bp;
	long i,planecount,dimcount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *out1_matrix;
	
	in1_matrix = jit_object_method(inputs,_jit_sym_getindex,0);
	out1_matrix = jit_object_method(outputs,_jit_sym_getindex,0);

	if (x&&in1_matrix&&out1_matrix)
	{
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		out1_savelock = (long) jit_object_method(out1_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(out1_matrix,_jit_sym_getinfo,&out1_minfo);
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(out1_matrix,_jit_sym_getdata,&out1_bp);
		
		if (!in1_bp)
		{
			err=JIT_ERR_INVALID_INPUT;
			goto out;
		}
		
		if (!out1_bp)
		{
			err=JIT_ERR_INVALID_OUTPUT;
			goto out;
		}
		
		//get dimensions/planecount
		dimcount   = out1_minfo.dimcount;
		planecount = out1_minfo.planecount;

		for (i=0; i < dimcount; i++) {
			dim[i] = out1_minfo.dim[i];
			if ((in1_minfo.dim[i]<dim[i])) dim[i] = in1_minfo.dim[i];
		}
		
		//calculate
		xray_jit_blackhole_calculate_ndim(x, dimcount, in1_minfo.planecount, dim, 
				&in1_minfo, in1_bp, 
				&out1_minfo, out1_bp);	
	}
	else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	jit_object_method(out1_matrix,gensym("lock"),out1_savelock);
	return err;
}

double RandomFloat (void) 
{
	double c;
	c = (double) 2111111111.0 * x[3] + 1492.0 * (x[3]=x[2]) + 1776.0*(x[2]=x[1]) + 5115.0*(x[1]=x[0]) + x[4];
	x[4] = jit_math_floor(c);
	x[0] = c - x[4];
	x[4] = x[4] * (1. / (65536. * 65536.));
	return x[0];
}

void GenerateParticle(t_xray_jit_blackhole *obj, float *particle)
{
	
	particle[0] = obj->emitter[0] + (RandomFloat() * 0.2f - 0.1f);
	particle[1] = obj->emitter[1] + (RandomFloat() * 0.2f - 0.1f);
	particle[2] = obj->emitter[2] + (RandomFloat() * 0.2f - 0.1f);
	
	particle[3] = RandomFloat()*obj->velocity - obj->velocity/2.0f;
	particle[4] = RandomFloat()*obj->velocity - obj->velocity/2.0f;
	particle[5] = RandomFloat()*obj->velocity - obj->velocity/2.0f;
}


//planes (0-2) Px, Py, Pz
//planes (3-5) Vx, Vy, Vz
//planes (6-8) Ax, Ay, Az
void xray_jit_blackhole_calculate_ndim(t_xray_jit_blackhole *obj, long dimcount, long planecount, long *dim, 
	t_jit_matrix_info *in1_minfo, char *bip1,
	t_jit_matrix_info *out1_minfo, char *bop1)
{
	long i, j;
	long width, height;
	float *fop, *fip;
	long incolspan, inrowspan;
	long outcolspan, outrowspan;
	float timestep;
	float minDistance, distanceSQ, maxDistance, distance, gravity;
	
	if (dimcount<1) return; //safety
	
	switch(dimcount)
	{
	case 1:
		dim[1] = 1;
	case 2:	
		width = dim[0];
		height = dim[1];
		
		timestep = obj->timestep;
		gravity = obj->gravity;
		
		maxDistance = obj->max_distance * obj->max_distance;
		minDistance = obj->min_distance * obj->min_distance;
		
		if (in1_minfo->type==_jit_sym_float32)
		{
			incolspan = in1_minfo->dimstride[0];
			inrowspan = in1_minfo->dimstride[1];
			outcolspan = out1_minfo->dimstride[0];
			outrowspan = out1_minfo->dimstride[1];
				
			for(i=0; i < height; i++) {
				fip = (float *)(bip1 + i*inrowspan);
				fop = (float *)(bop1 + i*outrowspan);
				
				for(j=0; j < width; j++) {					
					//Attractor - P = -Relative Pos
					fop[6] = (obj->attractor[0] - fip[0]);
					fop[7] = (obj->attractor[1] - fip[1]);
					fop[8] = (obj->attractor[2] - fip[2]);
					
					distanceSQ = fop[6]*fop[6] + fop[7]*fop[7] + fop[8]*fop[8];

					if(distanceSQ > maxDistance || distanceSQ < minDistance) {
						GenerateParticle(obj, fop);
					}
					else {
						distance = jit_math_sqrt(distanceSQ);
						
						//Ft = -Relative Pos/distance * G/distanceSQ
						fop[6] = fop[6]/distance * gravity/distanceSQ;
						fop[7] = fop[7]/distance * gravity/distanceSQ;
						fop[8] = fop[8]/distance * gravity/distanceSQ;
				
						//Vt = Vt-1 + Ft*dt
						fop[3] = (fip[3] + timestep * fop[6]);
						fop[4] = (fip[4] + timestep * fop[7]);
						fop[5] = (fip[5] + timestep * fop[8]);
						
						//Pt = Pt-1 + Vt*dt
						fop[0] = fip[0] + fop[3]*timestep;
						fop[1] = fip[1] + fop[4]*timestep;
						fop[2] = fip[2] + fop[5]*timestep;
					}

					
					fip += planecount;
					fop += planecount;
				}
			}
		}
		break;
	default:
		for	(i=0;i<dim[dimcount-1];i++) {
			fip = (float *)( bip1 + i*in1_minfo->dimstride[dimcount-1]);
			fop = (float *)( bop1 + i*out1_minfo->dimstride[dimcount-1]);
			xray_jit_blackhole_calculate_ndim(obj, dimcount-1, planecount, dim, 
					in1_minfo, (char *)fip,
					out1_minfo, (char *)fop);
		}
		break;
	}
}

void RandomInit(double val)
{
	long i;
	double s = val;
	
	for(i=0; i < 5; i++) {
		s = s * 29943829 - 1;
		x[i]  = s * (1./ (65536.*65536.));
	}
}

t_xray_jit_blackhole *xray_jit_blackhole_new(void)
{
	t_xray_jit_blackhole *x;
		
	if (x=(t_xray_jit_blackhole *)jit_object_alloc(_xray_jit_blackhole_class)) {
		x->attractor[0] = 0.0;
		x->attractor[1] = 0.0;
		x->attractor[2] = 0.0;
		x->attractorcount = 3;
		x->emitter[0] = 0.0;
		x->emitter[1] = 0.0;
		x->emitter[2] = 0.0;
		x->emittercount = 3;
		x->weight = 0.5;
		x->timestep = 1.0;
		x->downline = 0.0;
		x->max_distance = 100;
		x->max_distance = 0.01;
		x->gravity = 1.0;
		x->velocity = 1.0;
		
		x->line[0] = 0.0;
		x->line[1] = 0.0;
		x->line[2] = 0.0;
		x->line[3] = 0.0;
		x->line[4] = 1.0;
		x->line[5] = 0.0;
		
		x->linecount = 6;
		
		RandomInit(23.2343242);
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_blackhole_free(t_xray_jit_blackhole *x)
{
	//nada
}