//
//	jit.tml.fluid2.c
//						06.06.03	by Yoichiro Serita	(pixelWeight)
//						2007-04-04	Michael Fortin		(same code base)

#include "jit.common.h"
#include "jit.fluid.h"

typedef struct _jit_tml_fluid2 
{
    t_object				ob;
	
	jitFluid *of;
	
	// 1 = first-time run background fetch
	// 0 = normal run
	long backgroundInit;
	
	unsigned char *pBackground;
	
	long paramcount;
	
	//Width/height of allocated bitmap
	long width;
	long height;
	
	//Allocated size
	long allocated;
	
	float velocityBlend;
	float densityBlend;
	
	float viscosity;
	float vorticity;
	float timestep;
	float densityFade;
	float velocityFade;
	float gravityAngle;
	float gravityMagnitude;
	float temperatureMagnitude;
	
	long pressureCount, densityCount, pressureMCount, velocityCount, velocityMCount;
	float pressureScale[4], pressureMult[4];
	float densityScale[4];
	float velocityScale[4], velocityMult[4];
	
	long pressureICount, pressureIMCount, velocityICount, velocityIMCount;
	float pressureIScale[4], pressureIMult[4];
	float velocityIScale[4], velocityIMult[4];
	
	//Velocity output (set to less than 8 width/height to disable...)
	long vOutWidth;
	long vOutHeight;
	
	
} t_jit_tml_fluid2;


void x_init();
void mpInit(int in_workers);		//# of worker threads
void mpTerminate();


void *_jit_tml_fluid2_class;
void jit_tml_fluid2_allocate(t_jit_tml_fluid2 *x, int in_width, int in_height);
t_jit_tml_fluid2 *jit_tml_fluid2_new(void);
void jit_tml_fluid2_free(t_jit_tml_fluid2 *x);
t_jit_err jit_tml_fluid2_matrix_calc(t_jit_tml_fluid2 *x, void *inputs, void *outputs);

t_jit_err jit_tml_fluid2_init(void);


t_jit_err jit_tml_fluid2_set(t_jit_tml_fluid2 *x, void *attr, long argc, t_atom *argv);


t_jit_err jit_tml_fluid2_init(void) 
{
    long attrflags=0;
    t_jit_object *attr;
    t_jit_object *mop, *o;
	
	
    _jit_tml_fluid2_class = jit_class_new("jit_tml_fluid2",(method)jit_tml_fluid2_new,(method)jit_tml_fluid2_free,
						 sizeof(t_jit_tml_fluid2),A_CANT,0L); //A_CANT = untyped

    // add mop
    mop = jit_object_new(_jit_sym_jit_mop,2,2);	// 1 matrix input / 1 matrix output

    // need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
    jit_mop_input_nolink(mop,2);
    o= jit_object_method(mop,_jit_sym_getinput,2);
    jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
    jit_class_addadornment(_jit_tml_fluid2_class,mop);
	
    // add methods
    jit_class_addmethod(_jit_tml_fluid2_class, (method)jit_tml_fluid2_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	//Add attributes
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "velocityIMultiply",
						  _jit_sym_float32, 4, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fluid2, velocityIMCount),
						  calcoffset(t_jit_tml_fluid2,velocityIMult));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "velocityIScale",
						  _jit_sym_float32, 4, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fluid2, velocityICount),
						  calcoffset(t_jit_tml_fluid2,velocityIScale));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "pressureIMultiply",
						  _jit_sym_float32, 4, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fluid2, pressureIMCount),
						  calcoffset(t_jit_tml_fluid2,pressureIMult));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "pressureIScale",
						  _jit_sym_float32, 4, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fluid2, pressureICount),
						  calcoffset(t_jit_tml_fluid2,pressureIScale));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "velocityMultiply",
						  _jit_sym_float32, 4, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fluid2, velocityMCount),
						  calcoffset(t_jit_tml_fluid2,velocityMult));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "velocityScale",
						  _jit_sym_float32, 4, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fluid2, velocityCount),
						  calcoffset(t_jit_tml_fluid2,velocityScale));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "pressureMultiply",
						  _jit_sym_float32, 4, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fluid2, pressureMCount),
						  calcoffset(t_jit_tml_fluid2,pressureMult));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "densityScale",
						  _jit_sym_float32, 4, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fluid2, densityCount),
						  calcoffset(t_jit_tml_fluid2,densityScale));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "pressureScale",
							_jit_sym_float32, 4, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_fluid2, pressureCount),
						  calcoffset(t_jit_tml_fluid2,pressureScale));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"velocityBlend",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,velocityBlend));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"densityBlend",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,densityBlend));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"viscosity",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,viscosity));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"vorticity",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,vorticity));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"timestep",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,timestep));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"densityFade",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,densityFade));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"velocityFade",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,velocityFade));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"gravityAngle",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,gravityAngle));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"gravityMagnitude",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,gravityMagnitude));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"temperatureMagnitude",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_fluid2,temperatureMagnitude));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"velocityOutWidth",_jit_sym_long,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_fluid2,vOutWidth));
	jit_class_addattr(_jit_tml_fluid2_class,attr);
	
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"velocityOutHeight",_jit_sym_long,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_fluid2,vOutHeight));
	jit_class_addattr(_jit_tml_fluid2_class,attr);

		
    jit_class_register(_jit_tml_fluid2_class);

    return JIT_ERR_NONE;
}


t_jit_err jit_tml_fluid2_matrix_calc(t_jit_tml_fluid2 *x, void *inputs, void *outputs)
{
	fluidFrameEnd(x->of);
    t_jit_err err=JIT_ERR_NONE;
    long in_savelock,out_savelock,vel_savelock,ov_savelock;
    t_jit_matrix_info in_minfo,out_minfo, vel_minfo, ov_minfo;
    void *in_matrix,*out_matrix, *vel_matrix, *ov_matrix;
	unsigned char *in_bp, *out_bp;
	float *vel_bp = NULL, *ov_bp;
	
    in_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);				// 1st matrix
    vel_matrix 	= jit_object_method(inputs,_jit_sym_getindex,1);			// 2nd matrix (parameter)
    out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);				// 1st matrix
	ov_matrix	= jit_object_method(outputs,_jit_sym_getindex,1);

    if (x&&in_matrix&&out_matrix)
	{
		in_savelock = (long) jit_object_method(in_matrix,_jit_sym_lock,1); 
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		vel_savelock = (long) jit_object_method(vel_matrix,_jit_sym_lock,1);
		ov_savelock = (long)jit_object_method(ov_matrix, _jit_sym_lock,1);
			
		jit_object_method(in_matrix,_jit_sym_getinfo,&in_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		jit_object_method(vel_matrix,_jit_sym_getinfo,&vel_minfo);
		jit_object_method(ov_matrix, _jit_sym_getinfo, &ov_minfo);
			
			
		jit_object_method(in_matrix,_jit_sym_getdata,&in_bp);
		//jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		jit_object_method(vel_matrix,_jit_sym_getdata,&vel_bp);
			
			
		if (!in_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		//if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		if (!vel_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//2d, with 1-4 planes only!
		if (in_minfo.dimcount != 2 || in_minfo.planecount != 4 || in_minfo.type != _jit_sym_char
			|| vel_minfo.dimcount != 2 || vel_minfo.planecount != 2 || vel_minfo.type != _jit_sym_float32)
		{
			error("2D with 4 planes only + float32!");
			error(" For Density: dim=%i(2), planes=%i(4), type=%i(char)",
				  in_minfo.dimcount, in_minfo.planecount, in_minfo.type);
			error(" For Velocity: dim=%i(2), planes=%i(2), type=%i(float)",
				  vel_minfo.dimcount, vel_minfo.planecount, vel_minfo.type);
			err = JIT_ERR_MISMATCH_PLANE;
			goto out;
		}
		
		if (in_minfo.dim[0]%32 != 0
			|| vel_minfo.dim[0] > in_minfo.dim[0] || vel_minfo.dim[1] > in_minfo.dim[1])
		{
			error("Width needs to be the same and multiples of 32.");
			error("We got: %i %i / %i %i", in_minfo.dim[0], in_minfo.dim[1],
											vel_minfo.dim[0], vel_minfo.dim[1]);
			err = JIT_ERR_MISMATCH_PLANE;
			goto out;
		}
		
		if (in_minfo.dim[0] != x->width || in_minfo.dim[1] != x->height)
		{
			fluidStop(x->of);
			x->width = in_minfo.dim[0];
			x->height = in_minfo.dim[1];
			x->of = fluidInit(x->width, x->height);
			post("Fluid initialized: %i %i\n",x->width, x->height);
		}
		
		
		//Update params + matrices...
		addData(x->of, in_bp, vel_bp,vel_minfo.dim[0],vel_minfo.dim[1],
						x->velocityBlend, x->densityBlend);
		
		//Coerce matrix...
		if (out_minfo.type != _jit_sym_char
			|| out_minfo.dim[0] != in_minfo.dim[0]
			|| out_minfo.dim[1] != in_minfo.dim[1]
			|| out_minfo.dimcount != in_minfo.dimcount
			|| out_minfo.planecount != 4)
		{
			out_minfo.type = _jit_sym_char;
			out_minfo.dim[0] = in_minfo.dim[0];
			out_minfo.dim[1] = in_minfo.dim[1];
			out_minfo.dimcount = in_minfo.dimcount;
			out_minfo.planecount = 4;
			if (jit_object_method(out_matrix, _jit_sym_setinfo, &out_minfo))
			{
				error("Unable to resize output matrix %i to match input!", 0);
				err = JIT_ERR_GENERIC;
				goto out;
			}
			jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		}
		if (fluidVelData(x->of) != NULL)
		{
			if (ov_minfo.type != _jit_sym_float32
				|| ov_minfo.dim[0] != fluidVelWidth(x->of)
				|| ov_minfo.dim[1] != fluidVelHeight(x->of)
				|| ov_minfo.dimcount != 2
				|| ov_minfo.planecount != 2)
			{
				ov_minfo.type = _jit_sym_float32;
				ov_minfo.dim[0] = fluidVelWidth(x->of);
				ov_minfo.dim[1] = fluidVelHeight(x->of);
				ov_minfo.dimcount = 2;
				ov_minfo.planecount = 2;
				if (jit_object_method(ov_matrix, _jit_sym_setinfo, &ov_minfo))
				{
					error("Unable to resize output matrix %i to match input!", 1);
					err = JIT_ERR_GENERIC;
					goto out;
				}
				jit_object_method(ov_matrix,_jit_sym_getinfo,&ov_minfo);
			}
			
			jit_object_method(ov_matrix, _jit_sym_getdata, &ov_bp);
			memcpy(ov_bp, fluidVelData(x->of), fluidVelWidth(x->of) * fluidVelHeight(x->of)*sizeof(float)*2);
		}
		
		//post("Strides-out: %i %i\n", ov_minfo.dimstride[0], ov_minfo.dimstride[1]);
		//post("Strides-out: %i %i\n", in_minfo.dimstride[0], in_minfo.dimstride[1]);
		//post("Strides-in: %i %i\n", out_minfo.dimstride[0], out_minfo.dimstride[1]);
		//post("Strides-in-vel: %i %i\n", vel_minfo.dimstride[0], vel_minfo.dimstride[1]);
		
		
		if (x->viscosity < 0.01f)	x->viscosity = 0.01f;
		if (x->timestep < 0.01f)	x->timestep = 0.01f;
		
		paramMess(x->of, x->viscosity, x->vorticity, x->timestep, x->densityFade, x->velocityFade,
				x->gravityAngle, x->gravityMagnitude, x->temperatureMagnitude,
				x->vOutWidth, x->vOutHeight,ov_minfo.dimstride[1], x->pressureScale,
				x->densityScale, x->pressureMult, x->velocityMult, x->velocityScale,
				x->velocityIMult, x->velocityIScale, x->pressureIMult, x->pressureIScale);
		
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		getData(x->of, out_bp);
		
		
		//Run simulation ASYNC!
		fluidFrameStart(x->of);
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
    }
	
 out:
    jit_object_method(out_matrix,_jit_sym_lock,out_savelock);
    jit_object_method(in_matrix,_jit_sym_lock,in_savelock);
    if (vel_matrix) jit_object_method(vel_matrix,_jit_sym_lock,vel_savelock);
    jit_object_method(ov_matrix,_jit_sym_lock,ov_savelock);
    return err;
}



t_jit_tml_fluid2 *jit_tml_fluid2_new(void)
{
    t_jit_tml_fluid2 *x;
    //long i;
	
	x_init();
	mpInit(3);
	
    if (x=(t_jit_tml_fluid2 *)jit_object_alloc(_jit_tml_fluid2_class)) {
		x->pBackground = NULL;
		x->width = 0;
		x->height = 0;
		x->allocated = 0;
		x->of = NULL;
		
		x->densityBlend = 0.5f;
		x->velocityBlend = 0.5f;
		
		x->densityFade = 1.0;
		x->velocityFade = 1.0;
		
		x->timestep = 1.0f;
		x->viscosity = 1.0f;
		x->vorticity = 1.0f;
		
		x->pressureScale[0] = 0;
		x->pressureScale[1] = 0;
		x->pressureScale[2] = 0;
		x->pressureScale[3] = 0;
		
		x->pressureMult[0] = 0;
		x->pressureMult[1] = 0;
		x->pressureMult[2] = 0;
		x->pressureMult[3] = 0;
		
		x->velocityScale[0] = 0;
		x->velocityScale[1] = 0;
		x->velocityScale[2] = 0;
		x->velocityScale[3] = 0;
		
		x->velocityMult[0] = 0;
		x->velocityMult[1] = 0;
		x->velocityMult[2] = 0;
		x->velocityMult[3] = 0;
		
		x->pressureIScale[0] = 0;
		x->pressureIScale[1] = 0;
		x->pressureIScale[2] = 0;
		x->pressureIScale[3] = 0;
		
		x->pressureIMult[0] = 0;
		x->pressureIMult[1] = 0;
		x->pressureIMult[2] = 0;
		x->pressureIMult[3] = 0;
		
		x->velocityIScale[0] = 0;
		x->velocityIScale[1] = 0;
		x->velocityIScale[2] = 0;
		x->velocityIScale[3] = 0;
		
		x->velocityIMult[0] = 0;
		x->velocityIMult[1] = 0;
		x->velocityIMult[2] = 0;
		x->velocityIMult[3] = 0;
		
		x->densityScale[0] = 1;
		x->densityScale[1] = 1;
		x->densityScale[2] = 1;
		x->densityScale[3] = 1;
		
    } else {
	x = NULL;
    }	
    return x;
}

void jit_tml_fluid2_free(t_jit_tml_fluid2 *x)
{
	fluidStop(x->of);
	mpTerminate();
}
