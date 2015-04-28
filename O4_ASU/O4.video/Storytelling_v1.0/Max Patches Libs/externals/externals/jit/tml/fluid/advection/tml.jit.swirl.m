

#import "jit.common.h"
#import "FXTaskSequence.h"
#import "FSCPUCore.h"
#import "JITTask.h"

#ifdef BUILD_ADVECTION
	#define EXTERNAL_NAME "jit_tml_fluid_advection"
#elif defined BUILD_MCCORMACK
	#define EXTERNAL_NAME "jit_tml_fluid_mccormack"
#elif defined BUILD_PRESSURE
	#define EXTERNAL_NAME "jit_tml_fluid_pressure"
#elif defined BUILD_REPOS
	#define EXTERNAL_NAME "jit_tml_fluid_repos"
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
	
	//Number of fluids in simulation
	int fluids;
	
	//Style (type of advection)
	long style;
	
	//Multi-core code.
	JITTask *task;
	
	
} t_jit_tml_fluid_advection ;



void *_jit_tml_fluid_advection_class;

//Various methods
t_jit_tml_fluid_advection *jit_tml_fluid_advection_new(void);
void jit_tml_fluid_advection_allocate(t_jit_tml_fluid_advection *x, long width, long height);
void jit_tml_fluid_advection_free(t_jit_tml_fluid_advection *x);
t_jit_err jit_tml_fluid_advection_matrix_calc(t_jit_tml_fluid_advection *x, void *inputs[], void *outputs);
t_jit_err jit_tml_fluid_advection_init(void);


unsigned char clampChar(float inVal)
{
	if (inVal > 255) return 255;
	if (inVal < 0) return 0;
	return (unsigned char) inVal;
}

t_jit_err jit_tml_fluid_advection_matrix_calc(t_jit_tml_fluid_advection *x, void *matrix_input[], void *outputs)
{
#ifdef BUILD_ADVECTION
	long inLocks[34];
	t_jit_matrix_info	info_input[34];
	FSStreamDesc sInputs[34];
#elif defined BUILD_REPOS
	long inLocks[34];
	t_jit_matrix_info	info_input[34];
	FSStreamDesc sInputs[34];
#elif defined BUILD_MCCORMACK
	long inLocks[67];
	t_jit_matrix_info	info_input[67];
	FSStreamDesc sInputs[67];
#endif
	
	FSStreamDesc sOutputs[32];
	void *matrix_output[32];
	
	long outLocks[32];
	
	t_jit_matrix_info info_output[32];
	
	t_jit_err err = JIT_ERR_NONE;
	
	int i;
	
	float afZero[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	unsigned char achZero[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	
	long width = 0;
	long height = 0;

#ifdef BUILD_ADVECTION
	for (i=0; i<x->fluids + 2; i++)
#elif defined BUILD_REPOS
	for (i=0; i<x->fluids + 2; i++)
#elif defined BUILD_MCCORMACK
	for (i=0; i<x->fluids*2+3; i++)
#endif
	{	
		//matrix_input[i]	= jit_object_method(inputs, _jit_sym_getindex, i);
		if (matrix_input[i] == NULL)
		{
			error("%s: Missing input matrix! %i",
					EXTERNAL_NAME,i);
			err = JIT_ERR_GENERIC;
			i--; goto UnlockInputs;
		}
		
		inLocks[i] = (long)jit_object_method(matrix_input[i], _jit_sym_lock, 1);
		
		jit_object_method(matrix_input[i], _jit_sym_getinfo, &info_input[i]);
		
//		post("Input Matrix %i(%i) w:%i h:%i p:%i sx:%i sy:%i", i, matrix_input[i],
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
			if (info_input[0].planecount < 2 || info_input[0].type != _jit_sym_float32)
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
											2);
		}
		
		else if (i == 1)
		{
			if (info_input[1].planecount < 1 || info_input[1].type != _jit_sym_char)
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
	
	#ifdef BUILD_ADVECTION
	#elif defined BUILD_REPOS
		//Nada...
	#elif defined BUILD_MCCORMACK
		else if (i == x->fluids+2)		//Equal to fluid+2...
		{
			if (info_input[i].planecount < 2 || info_input[i].type != _jit_sym_float32)
			{
				error("%s: Advected velocity @ %i needs at least 2 planes(%i) and float32",
						EXTERNAL_NAME, i+1, info_input[i].planecount);
				err = JIT_ERR_GENERIC;
				goto UnlockInputs;
			}
			
			float *data;
			jit_object_method(matrix_input[i], _jit_sym_getdata, &data);
			sInputs[i] = FSStreamDescMakeFloat2D(data, afZero,
											info_input[i].dimstride[0],
											info_input[i].dimstride[1],
											width, height,
											2);
		}
	#endif
		else
		{
		#ifndef BUILD_REPOS
			if (info_input[i].type == _jit_sym_char)
			{
				unsigned char *data;
				jit_object_method(matrix_input[i], _jit_sym_getdata, &data);
				sInputs[i] = FSStreamDescMakeCharacter2D(data, achZero,
												info_input[i].dimstride[0],
												info_input[i].dimstride[1],
												width, height,
												info_input[i].planecount);
			}
			else 
		#endif
			if (info_input[i].type == _jit_sym_float32)
			{
				float *data;
				jit_object_method(matrix_input[i], _jit_sym_getdata, &data);
				sInputs[i] = FSStreamDescMakeFloat2D(data, afZero,
												info_input[i].dimstride[0],
												info_input[i].dimstride[1],
												width, height,
												info_input[i].planecount);
			}
			else
			{
				error("%s: We can only deal with float32 and char matrices as input for now %i",
							EXTERNAL_NAME, i);
				err = JIT_ERR_GENERIC;
				goto UnlockInputs;
			}
		}
	}
	
	//Deal with outputs, and coerce as needed...
	for (i=0; i<x->fluids; i++)
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
		
		if (info_input[i+2].dimcount != info_output[i].dimcount
			|| info_input[i+2].planecount != info_output[i].planecount
			|| info_input[i+2].dim[0] != info_output[i].dim[0]
			|| info_input[i+2].dim[1] != info_output[i].dim[1]
			|| info_input[i+2].type != info_output[i].type)
		{
			info_output[i].dimcount = info_input[i+2].dimcount;
			info_output[i].planecount = info_input[i+2].planecount;
			info_output[i].dim[0] = info_input[i+2].dim[0];
			info_output[i].dim[1] = info_input[i+2].dim[1];
			info_output[i].type = info_input[i+2].type;
		
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
	}	
	
	//Call the advection function?
	[x->task setNumberOfThreads:x->cpuCount];
	[x->task setInputs:sInputs outputs:sOutputs fluids:x->fluids timestep:x->timeStep style:x->style];
	//post("Set style %i threads %i", x->style, x->cpuCount);
	[x->task launch];
	
	int z;
	
UnlockAll:
	i = x->fluids;
UnlockOutputs:
	for (z=0; z<i; z++)
	{
		jit_object_method(matrix_output[z], _jit_sym_lock, outLocks[z]);
	}
	#ifdef BUILD_ADVECTION
		i=x->fluids + 2;
	#elif defined BUILD_MCCORMACK
		i=x->fluids*1 + 3;
	#elif defined BUILD_REPOS
		i=x->fluids + 2;
	#endif
UnlockInputs:
	for (z=0; z<i; z++)
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
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,-1,-1);
	
	jit_class_addadornment(_jit_tml_fluid_advection_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_tml_fluid_advection_class, (method)jit_tml_fluid_advection_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	//ATTRIBUTES: (Max/Jitter shared...)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	attr = jit_object_new(_jit_sym_jit_attr_offset, "fluids", _jit_sym_long, attrflags,
						(method)0, (method)0, calcoffset(t_jit_tml_fluid_advection, fluids));
	jit_attr_addfilterset_clip(attr,1,32,1,1);
	jit_class_addattr(_jit_tml_fluid_advection_class, attr);
	
	//JITTER-ONLY ATTRIBUTES
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "CPU", _jit_sym_long,
							attrflags, (method)0L,
							(method)0,
							calcoffset(t_jit_tml_fluid_advection, cpuCount));
	jit_attr_addfilterset_clip(attr,1,32,1,1);
	jit_class_addattr(_jit_tml_fluid_advection_class, attr);
	
#ifndef BUILD_REPOS
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "timestep", _jit_sym_float32,
							attrflags, (method)0L,
							(method)0,
							calcoffset(t_jit_tml_fluid_advection, timeStep));
	jit_class_addattr(_jit_tml_fluid_advection_class, attr);
	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "style", _jit_sym_long,
							attrflags, (method)0L,
							(method)0,
							calcoffset(t_jit_tml_fluid_advection, style));
	jit_attr_addfilterset_clip(attr,1,4,1,1);
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
		x->style = 1;
		x->task = [[JITTask alloc] init];
		
	} else {
		x = NULL;
	}	
	return x;
}

void jit_tml_fluid_advection_free(t_jit_tml_fluid_advection *x)
{
	if (x->task)			[x->task release];
}


