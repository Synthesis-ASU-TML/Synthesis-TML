

#import "jit.common.h"
#import "FXTaskSequence.h"
#import "FSCPUCore.h"
#import "JITTask.h"

#ifdef BUILD_PRESSURE
	#define EXTERNAL_NAME "jit_tml_fluid_pressure"
#elif defined BUILD_VISCOCITY
	#define EXTERNAL_NAME "jit_tml_fluid_viscocity"
#elif defined BUILD_GENREPOS
	#define EXTERNAL_NAME "jit_tml_fluid_genRepos"
#elif defined BUILD_BLEND
	#define EXTERNAL_NAME "jit_tml_fluid_blend"
#else
	#error "Bad build setting"
#endif

typedef struct _jit_tml_fluid_advection 
{
	t_object				ob;
	
	long cpuCount;
	float timeStep;

	long width;
	long height;
	
	//Style (Number of iterations)
	long style;
	
	#ifdef BUILD_BLEND
		//Blending attributes (add,scale)
		float addA;
		float scaleA;
		float addB;
		float scaleB;
	#endif
	
	//Multi-core code.
	JITTask *task;
	
	#ifdef BUILD_VISCOCITY
		float viscocity;
	#endif
	
} t_jit_tml_fluid_advection ;



void *_jit_tml_fluid_advection_class;

//Various methods
t_jit_tml_fluid_advection *jit_tml_fluid_advection_new(void);
void jit_tml_fluid_advection_allocate(t_jit_tml_fluid_advection *x, long width, long height);
void jit_tml_fluid_advection_free(t_jit_tml_fluid_advection *x);
t_jit_err jit_tml_fluid_advection_matrix_calc(t_jit_tml_fluid_advection *x, void *inputs, void *outputs);
t_jit_err jit_tml_fluid_advection_init(void);


unsigned char clampChar(float inVal)
{
	if (inVal > 255) return 255;
	if (inVal < 0) return 0;
	return (unsigned char) inVal;
}

t_jit_err jit_tml_fluid_advection_matrix_calc(t_jit_tml_fluid_advection *x, void *inputs, void *outputs)
{
	long inLocks[2];
	t_jit_matrix_info	info_input[2];
	FSStreamDesc sInputs[2];
	void *matrix_input[2];
	
	FSStreamDesc sOutputs[1];
	void *matrix_output[1];
	
	long outLocks[1];
	
	t_jit_matrix_info info_output[1];
	
	t_jit_err err = JIT_ERR_NONE;
	
	int i;
	
	float afZero[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	unsigned char achZero[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	
	long width = 0;
	long height = 0;
	
	#ifdef BUILD_BLEND
		long planes = 0;
	#endif

#ifdef BUILD_GENREPOS
	for (i=0; i<1; i++)
#else
	for (i=0; i<2; i++)
#endif
	{	
		matrix_input[i]	= jit_object_method(inputs, _jit_sym_getindex, i);
		if (matrix_input[i] == NULL)
		{
			error("%s: Missing input matrix! %i",
					EXTERNAL_NAME,i);
			err = JIT_ERR_GENERIC;
			i--;
			goto UnlockInputs;
		}
		
		inLocks[i] = (long)jit_object_method(matrix_input[i], _jit_sym_lock, 1);
		
		jit_object_method(matrix_input[i], _jit_sym_getinfo, &info_input[i]);
		
		//post("Input Matrix %i(%i) w:%i h:%i p:%i sx:%i sy:%i", i, matrix_input[i],
//				info_input[i].dim[0], info_input[i].dim[1],
//				info_input[i].planecount, info_input[i].dimstride[0],
//				info_input[i].dimstride[1]);
		
		//Plane-count...
		if (info_input[i].planecount > 24)
		{
			error("%s: Maximum of 24 planes possible %i",
				EXTERNAL_NAME, i);
			err = JIT_ERR_GENERIC;
			goto UnlockInputs;
		}
		
		//Check for size...
		if (i == 0)
		{
			width = info_input[0].dim[0];
			height = info_input[0].dim[1];
			#ifdef BUILD_BLEND
				planes = info_input[0].planecount;
			#endif
		}
		else
		{
			if (info_input[i].dim[0] != width || info_input[i].dim[1] != height)
			{
				error("%s: All input matrices must be of same size... %i",
					EXTERNAL_NAME, i);
				err = JIT_ERR_GENERIC;
				goto UnlockInputs;
			}
			#ifdef BUILD_BLEND
				if (info_input[i].planecount != planes)
				{
					error("%s: All input matrices must be of same plane-count... %i",
						EXTERNAL_NAME, i);
					err = JIT_ERR_GENERIC;
					goto UnlockInputs;
				}
			#endif
		}
		
		//Dim count...	
		if (info_input[i].dimcount != 2)
		{
			error("%s: We can only deal with 2 dimensions... %i",
					EXTERNAL_NAME, i);
			err = JIT_ERR_GENERIC;
			goto UnlockInputs;
		}
		
		//Check for plane count...
		if (i == 0)
		{
			#ifdef BUILD_BLEND
			if (info_input[0].type != _jit_sym_float32)
			#else
			if (info_input[0].planecount != 2 || info_input[0].type != _jit_sym_float32)
			#endif
			{
				error("%s: First input needs at least 2 planes(%i) and float32",
						EXTERNAL_NAME, info_input[0].planecount);
				err = JIT_ERR_GENERIC;
				goto UnlockInputs;
			}
			
			float *data;
			jit_object_method(matrix_input[i], _jit_sym_getdata, &data);
			sInputs[i] = FSStreamDescMakeFloat2D(data, afZero,
											info_input[0].dimstride[0],
											info_input[0].dimstride[1],
											width, height,
											info_input[0].planecount);
		}
		#ifdef BUILD_BLEND
			else if (i == 1)
			{
				if (info_input[1].type != _jit_sym_float32)
				{
					error("%s: Second input needs at least 1 plane (%i) and char",
							EXTERNAL_NAME, info_input[1].planecount);
					err = JIT_ERR_GENERIC;
					goto UnlockInputs;
				}
				
				unsigned char *data;
				jit_object_method(matrix_input[i], _jit_sym_getdata, &data);
				sInputs[i] = FSStreamDescMakeCharacter2D(data, achZero,
												info_input[1].dimstride[0],
												info_input[1].dimstride[1],
												width, height,
												info_input[1].planecount);
			}
		#else
			else if (i == 1)
			{
				if (info_input[1].planecount != 1 || info_input[1].type != _jit_sym_char)
				{
					error("%s: Second input needs at least 1 plane (%i) and char",
							EXTERNAL_NAME, info_input[1].planecount);
					err = JIT_ERR_GENERIC;
					goto UnlockInputs;
				}
				
				unsigned char *data;
				jit_object_method(matrix_input[i], _jit_sym_getdata, &data);
				sInputs[i] = FSStreamDescMakeCharacter2D(data, achZero,
												info_input[1].dimstride[0],
												info_input[1].dimstride[1],
												width, height,
												1);
			}
		#endif
	}
	
	//Deal with outputs, and coerce as needed...
	for (i=0; i<1; i++)
	{
		matrix_output[i] = jit_object_method(outputs, _jit_sym_getindex, i);
		if (matrix_output[i] == NULL)
		{
			error("Missing output matrix!");
				err = JIT_ERR_GENERIC;
				i--; goto UnlockOutputs;
		}
		
		outLocks[i] = (long)jit_object_method(matrix_output[i], _jit_sym_lock, 1);
		
		
		jit_object_method(matrix_output[i], _jit_sym_getinfo, &info_output[i]);
		
		if (info_input[i].dimcount != info_output[i].dimcount
			|| info_input[i].planecount != info_output[i].planecount
			|| info_input[i].dim[0] != info_output[i].dim[0]
			|| info_input[i].dim[1] != info_output[i].dim[1]
			|| info_input[i].type != info_output[i].type)
		{
			info_output[i].dimcount = info_input[i].dimcount;
			info_output[i].planecount = info_input[i].planecount;
			info_output[i].dim[0] = info_input[i].dim[0];
			info_output[i].dim[1] = info_input[i].dim[1];
			info_output[i].type = info_input[i].type;
		
			if (jit_object_method(matrix_output[i], _jit_sym_setinfo, &info_output[i]))
			{
				error("%s: Unable to resize output matrix %i to match input!", EXTERNAL_NAME, i);
				err = JIT_ERR_GENERIC;
				goto UnlockOutputs;
			}
			
			jit_object_method(matrix_output[i], _jit_sym_getinfo, &info_output[i]);
		}
		
		if (info_output[i].type == _jit_sym_char)
		{
			unsigned char *data;
			jit_object_method(matrix_output[i], _jit_sym_getdata, &data);
			sOutputs[i] = FSStreamDescMakeCharacter2D(data, achZero,
											info_output[i].dimstride[0],
											info_output[i].dimstride[1],
											width, height,
											info_output[i].planecount);
		}
		else if (info_output[i].type == _jit_sym_float32)
		{
			float *data;
			jit_object_method(matrix_output[i], _jit_sym_getdata, &data);
			sOutputs[i] = FSStreamDescMakeFloat2D(data, afZero,
											info_output[i].dimstride[0],
											info_output[i].dimstride[1],
											width, height,
											info_output[i].planecount);
		}
		else
		{
			error("%s: Unknown type for matrix %i to match input!", EXTERNAL_NAME, i);
			err = JIT_ERR_GENERIC;
			goto UnlockOutputs;
		}
	}
	
	//Call the advection function?
	[x->task setNumberOfThreads:x->cpuCount];
	#ifdef BUILD_VISCOCITY
		[x->task setViscocity:x->viscocity];
	#elif BUILD_BLEND
		[x->task setScaleA:x->scaleA addA:x->addA
					scaleB:x->scaleB addB:x->addB];
	#endif
	[x->task setInputs:sInputs outputs:&sOutputs[0] fluids:0 timestep:x->timeStep style:x->style];
	[x->task launch];
	
	int z;
	
UnlockAll:
UnlockOutputs:
	for (z=0; z<1; z++)
	{
		jit_object_method(matrix_output[z], _jit_sym_lock, outLocks[z]);
	}
	
UnlockInputs:
#ifdef BUILD_GENREPOS
	for (z=0; z<1; z++)
#else
	for (z=0; z<2; z++)
#endif
	{
		jit_object_method(matrix_input[z], _jit_sym_lock, inLocks[z]);
	}

	return err;
}


t_jit_err jit_tml_fluid_advection_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop;
	
	//Create class with given constructors & destructors
	_jit_tml_fluid_advection_class = jit_class_new(EXTERNAL_NAME,
		(method)jit_tml_fluid_advection_new,(method)jit_tml_fluid_advection_free,
		sizeof(t_jit_tml_fluid_advection),A_CANT,0L); //A_CANT = untyped

	// Dynamic number of inputs and outputs
#ifdef BUILD_GENREPOS
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,1,1);
#else
	t_jit_object *o;
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,2,1);
	jit_mop_input_nolink(mop,2);
	o= (t_jit_object*)jit_object_method(mop,_jit_sym_getinput,2);
	jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
#endif
	
	jit_class_addadornment(_jit_tml_fluid_advection_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_tml_fluid_advection_class, (method)jit_tml_fluid_advection_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	//JITTER-ONLY ATTRIBUTES
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "CPU", _jit_sym_long,
							attrflags, (method)0L,
							(method)0,
							calcoffset(t_jit_tml_fluid_advection, cpuCount));
	jit_attr_addfilterset_clip(attr,1,32,1,1);
	jit_class_addattr(_jit_tml_fluid_advection_class, attr);
	
	#ifdef BUILD_BLEND
		attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "addA", _jit_sym_float32,
								attrflags, (method)0L,
								(method)0,
								calcoffset(t_jit_tml_fluid_advection, addA));
		jit_class_addattr(_jit_tml_fluid_advection_class, attr);
		attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "scaleA", _jit_sym_float32,
								attrflags, (method)0L,
								(method)0,
								calcoffset(t_jit_tml_fluid_advection, scaleA));
		jit_class_addattr(_jit_tml_fluid_advection_class, attr);
		
		attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "addB", _jit_sym_float32,
								attrflags, (method)0L,
								(method)0,
								calcoffset(t_jit_tml_fluid_advection, addB));
		jit_class_addattr(_jit_tml_fluid_advection_class, attr);
		attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "scaleB", _jit_sym_float32,
								attrflags, (method)0L,
								(method)0,
								calcoffset(t_jit_tml_fluid_advection, scaleB));
		jit_class_addattr(_jit_tml_fluid_advection_class, attr);
	#endif
	
	#ifndef BUILD_BLEND
		attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
		attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "timestep", _jit_sym_float32,
								attrflags, (method)0L,
								(method)0,
								calcoffset(t_jit_tml_fluid_advection, timeStep));
		jit_class_addattr(_jit_tml_fluid_advection_class, attr);

		#ifndef BUILD_GENREPOS
			attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
			attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "iterations", _jit_sym_long,
									attrflags, (method)0L,
									(method)0,
									calcoffset(t_jit_tml_fluid_advection, style));
			jit_attr_addfilterset_clip(attr,1,120,1,1);
			jit_class_addattr(_jit_tml_fluid_advection_class, attr);
		#endif
	#endif
	
	#ifdef BUILD_VISCOCITY
		attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
		attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "viscocity", _jit_sym_float32,
								attrflags, (method)0L,
								(method)0,
								calcoffset(t_jit_tml_fluid_advection, viscocity));
		jit_attr_addfilterset_clip(attr,-100,100,1,1);
		jit_class_addattr(_jit_tml_fluid_advection_class, attr);
	#endif
	//Done!	
	jit_class_register(_jit_tml_fluid_advection_class);

	return JIT_ERR_NONE;
}


t_jit_tml_fluid_advection *jit_tml_fluid_advection_new(void)
{
	t_jit_tml_fluid_advection *x;
		
	if (x=(t_jit_tml_fluid_advection *)jit_object_alloc(_jit_tml_fluid_advection_class))
	{
		x->width = 0;
		x->height = 0;
		x->timeStep = 0.0001f;
		x->cpuCount = 1;
		x->style = 40;
		x->task = [[JITTask alloc] init];
		
		
	#ifdef BUILD_VISCOCITY
		x->viscocity = 1;
	#endif
	} else {
		x = NULL;
	}	
	return x;
}

void jit_tml_fluid_advection_free(t_jit_tml_fluid_advection *x)
{
	if (x->task)			[x->task release];
}


