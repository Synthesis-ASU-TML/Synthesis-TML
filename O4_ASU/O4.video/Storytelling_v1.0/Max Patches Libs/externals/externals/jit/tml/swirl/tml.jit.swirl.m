

#import "jit.common.h"
#import "FXTaskSequence.h"
#import "FSNavierStokes.h"

typedef struct _jit_tml_swirl 
{
	t_object				ob;
	
	long cpuCount;
	long advection;
	long minWeight;
	float waterConstant;

	float timeStep;

	long width;
	long height;
	long smoothIn;
	long smoothOut;
	
	//Stokes and task sequence...
	FSNavierStokes *swirl;
	FXTaskSequence *mp;
	
} t_jit_tml_swirl ;



void *_jit_tml_swirl_class;

//Various methods
t_jit_tml_swirl *jit_tml_swirl_new(void);
void jit_tml_swirl_allocate(t_jit_tml_swirl *x, long width, long height);
void jit_tml_swirl_free(t_jit_tml_swirl *x);
t_jit_err jit_tml_swirl_matrix_calc(t_jit_tml_swirl *x, void *inputs, void *outputs);
t_jit_err jit_tml_swirl_init(void);

//Getters/setters for members
t_jit_err jit_tml_swirl_setNumCPUS(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_swirl_setTimeStep(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_swirl_setAdvection(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_swirl_setMinWeight(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_swirl_setWaterConstant(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_tml_swirl_setSmooth(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv);


unsigned char clampChar(float inVal)
{
	if (inVal > 255) return 255;
	if (inVal < 0) return 0;
	return (unsigned char) inVal;
}

t_jit_err jit_tml_swirl_matrix_calc(t_jit_tml_swirl *x, void *inputs, void *outputs)
{
	void *matrix_input[3];
	void *matrix_output[4];
	
	unsigned char *data_input[3] = {NULL,NULL,NULL};
	unsigned char *data_output[4];
	
	t_jit_matrix_info	info_input[3], info_output[4];
	
	t_jit_err err = JIT_ERR_NONE;
	
	matrix_input[0]	= jit_object_method(inputs, _jit_sym_getindex, 0);
	matrix_input[1]	= jit_object_method(inputs, _jit_sym_getindex, 1);
	matrix_input[2]	= jit_object_method(inputs, _jit_sym_getindex, 2);
	
	if (matrix_input[0] == NULL)
	{
		error("Missing input matrix!");
		return JIT_ERR_GENERIC;
	}
	
	//Get information on matrix.
	jit_object_method(matrix_input[0], _jit_sym_getinfo, &info_input[0]);							//Densities
	if (matrix_input[1])	jit_object_method(matrix_input[1], _jit_sym_getinfo, &info_input[1]);	//Temperature
	if (matrix_input[2])	jit_object_method(matrix_input[2], _jit_sym_getinfo, &info_input[2]);	//Velocity
	
	//Validate required matrices...
	if (info_input[0].dimcount != 2 || info_input[0].planecount != 4 || info_input[0].type != _jit_sym_char
		|| (matrix_input[1] != NULL &&
			(info_input[1].dimcount != 2 || info_input[1].planecount != 4 || info_input[1].type != _jit_sym_char)))
	{
		error("First two input matrices: dimcount=2, planecount=4, type=char");
		
		return JIT_ERR_GENERIC;
	}
	
	if (matrix_input[2] != NULL)
	{
		if (info_input[2].dimcount != 2 || info_input[2].planecount != 4 || info_input[2].type != _jit_sym_float32)
		{
			//error("Third matrix: dimcount=2, planecount=2, type=float32");
			matrix_input[2] = NULL;
			//return JIT_ERR_GENERIC;
		}
	}
	
	//Matrix width/height
	long width = info_input[0].dim[0];
	long height = info_input[0].dim[1];
	long strideX = info_input[0].dimstride[0];
	long strideY = info_input[0].dimstride[1];
	
	if (matrix_input[1] && (width != info_input[1].dim[0] || height != info_input[1].dim[1]))
	{
		//error("Dimensions of input matrices must match");
		matrix_input[1] = NULL;
		//return JIT_ERR_GENERIC;
	}
	
	if (matrix_input[2] && (width != info_input[2].dim[0] || height != info_input[2].dim[1]))
	{
		error("Dimensions of input matrices must match");
		return JIT_ERR_GENERIC;
	}
	
	if (width < 10 || height < 10)
	{
		error("Input matrices too small in size (min 10x10)");
		return JIT_ERR_GENERIC;
	}
	
	//Resize internal...
	if (width != x->width || height != x->height)
	{
		//Resize code goes here!
		if (x->swirl != nil) [x->swirl release];
		x->swirl = [[FSNavierStokes alloc] initWithWidth:width height:height];
		[x->mp setDispatchTo:x->swirl];
		
		[x->swirl setVelocityAdvection:FS_MacCormack];
		[x->swirl setFluidAdvection:FS_MacCormack];
		[x->swirl setTemperatureAdvection:FS_MacCormack];
		[x->swirl setPressureAdvection:FS_MacCormack];
		[x->swirl defineWaterConstant:x->waterConstant];
		
		post("Resizing Stokes: %i %i", width, height);
		
		x->width = width;
		x->height = height;
	}
	
	//Fetch the input ptr
	jit_object_method(matrix_input[0], _jit_sym_getdata, &data_input[0]);
	if (matrix_input[1]) jit_object_method(matrix_input[1], _jit_sym_getdata, &data_input[1]);
	if (matrix_input[2]) jit_object_method(matrix_input[2], _jit_sym_getdata, &data_input[2]);
	
	//Coerce output (all optional...)
	int k;
	for (k=0; k<3; k++)
	{
		matrix_output[k]	= jit_object_method(outputs, _jit_sym_getindex, k);
		
		if (matrix_output[k] == NULL)
			data_output[k] = NULL;
		else
		{
			jit_object_method(matrix_output[k], _jit_sym_getinfo, &info_output[k]);
			
			if (info_input[0].dimcount != info_output[k].dimcount ||
				info_input[0].dim[0]	!= info_output[k].dim[0] ||
				info_input[0].dim[1]	!= info_output[k].dim[1] ||
				info_input[0].type		!= info_output[k].type ||
				info_output[k].planecount != 4)
			{
				info_output[k].dimcount= info_input[0].dimcount;
				info_output[k].dim[0]	= info_input[0].dim[0];
				info_output[k].dim[1]	= info_input[0].dim[1];
				info_output[k].type	= info_input[0].type;
				info_output[k].planecount = 4;
				
				if (jit_object_method(matrix_output[k], _jit_sym_setinfo, &info_output[k]))
				{
					error("Unable to resize output matrix %i to match input!", k);
					return JIT_ERR_GENERIC;
				}
				
				jit_object_method(matrix_output[k], _jit_sym_getinfo, &info_output[k]);
			}
			
			//Get data...
			jit_object_method(matrix_output[k], _jit_sym_getdata, &data_output[k]);
		}
	}
	
	//Setup advection...
	switch(x->advection%10)
	{
		case 1:		[x->swirl setVelocityAdvection:FS_Forward];	break;
		case 2:		[x->swirl setVelocityAdvection:FS_Backward];	break;
		case 3:		[x->swirl setVelocityAdvection:FS_MacCormack];	break;
		default:	[x->swirl setVelocityAdvection:FS_Disabled];
	}
	
	
	switch((x->advection/10)%10)
	{
		case 1:		[x->swirl setFluidAdvection:FS_Forward];	break;
		case 2:		[x->swirl setFluidAdvection:FS_Backward];	break;
		case 3:		[x->swirl setFluidAdvection:FS_MacCormack];	break;
		default:	[x->swirl setFluidAdvection:FS_Disabled];
	}
	
	
	switch((x->advection/100)%10)
	{
		case 1:		[x->swirl setTemperatureAdvection:FS_Forward];	break;
		case 2:		[x->swirl setTemperatureAdvection:FS_Backward];	break;
		case 3:		[x->swirl setTemperatureAdvection:FS_MacCormack];	break;
		default:	[x->swirl setTemperatureAdvection:FS_Disabled];
	}
	
	
	switch((x->advection/1000)%10)
	{
		case 1:		[x->swirl setPressureAdvection:FS_Forward];	break;
		case 2:		[x->swirl setPressureAdvection:FS_Backward];	break;
		case 3:		[x->swirl setPressureAdvection:FS_MacCormack];	break;
		default:	[x->swirl setPressureAdvection:FS_Disabled];
	}
	
	//Copy data!
	long nx,ny;
	
	unsigned char *ref;
	unsigned char *out[4];
	
	//Copy...
	FXPixmap *fluid = [x->swirl fluid];
	int fluidSx = [fluid strideX];
	int fluidSy = [fluid strideY];
	unsigned char *fluidPtr = [fluid dataPointer];
	
	FXPixmap *temperature = [x->swirl temperature];
	int tempSx = [temperature strideX];
	int tempSy = [temperature strideY];
	unsigned char *tempPtr = [temperature dataPointer];
	
	for (ny=1; ny<height-1; ny++)
	{
		for (nx=1; nx<width-1; nx++)
		{
			//Get pointers...
			ref = data_input[0] + nx*strideX + ny*strideY;
			unsigned char *cur = fluidPtr + fluidSx*nx + fluidSy*ny;
			
			// valid=1,2,3 (note - alpha is last in stokes)
			//Use alpha as a mask...
			if (ref[0] == 255)
			{
				cur[0] = ref[1];
				cur[1] = ref[2];
				cur[2] = ref[3];
				cur[3] = 255;
			}
			
			if (data_input[1] != NULL)
			{
				ref = data_input[1] + nx*info_input[1].dimstride[0] + ny * info_input[1].dimstride[1];
				cur = tempPtr + tempSx*nx + tempSy*ny;
				
				//Use red/blue to adjust temperature.
				if (ref[3] > cur[0])		cur[0] = 0;			else	cur[0] -= ref[3];
				if (ref[1] > 255-cur[0])	cur[0] = 255;		else	cur[0] += ref[1];
			}
		}
	}
	
	//Compute...
	[x->swirl stepSimulation:x->timeStep];
	[x->mp launch];
	
	//Output
	fluid = [x->swirl fluid];
	fluidSx = [fluid strideX];
	fluidSy = [fluid strideY];
	fluidPtr = [fluid dataPointer];
	
	temperature = [x->swirl temperature];
	tempSx = [temperature strideX];
	tempSy = [temperature strideY];
	tempPtr = [temperature dataPointer];
	for (ny=0; ny<height; ny++)
	{
		for (nx=0; nx<width; nx++)
		{
			for (k=0; k<3; k++)
			{
				if (data_output[k] != NULL)
					out[k] = data_output[k] + nx*info_output[k].dimstride[0] + ny*info_output[k].dimstride[1];
				else
					out[k] = NULL;
			}
			
			if (out[0] != NULL)
			{
				unsigned char *cur = fluidPtr + fluidSx*nx + fluidSy*ny;
				
				out[0][0] = 255;
				out[0][1] = cur[0];
				out[0][2] = cur[1];
				out[0][3] = cur[2];
			}
			
			if (out[1] != NULL)
			{
				unsigned char *cur = tempPtr + tempSx*nx + tempSy*ny;
				out[1][0] = 255;
				out[1][1] = cur[0];
				out[1][2] = 0;
				out[1][3] = 255 - cur[0];
			}
		}
	}
	
	return err;
}


t_jit_err jit_tml_swirl_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop, *o;
	
	//Create class with given constructors & destructors
	_jit_tml_swirl_class = jit_class_new("jit_tml_swirl",(method)jit_tml_swirl_new,(method)jit_tml_swirl_free,
		sizeof(t_jit_tml_swirl),A_CANT,0L); //A_CANT = untyped

	// 2 matrix input / 1 matrix output
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,3,4);

	// need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
	jit_mop_input_nolink(mop,2);
	o= (t_jit_object*)jit_object_method(mop,_jit_sym_getinput,2);
	jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
	jit_class_addadornment(_jit_tml_swirl_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_tml_swirl_class, (method)jit_tml_swirl_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	
	// Add attribute -- threshold (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "CPU", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_swirl_setNumCPUS,
							calcoffset(t_jit_tml_swirl, cpuCount));
	jit_class_addattr(_jit_tml_swirl_class, attr);
	
	//This attribute controls how much the shadows play a part in this effect...
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "timestep", _jit_sym_float32,
							attrflags, (method)0L,
							(method)jit_tml_swirl_setTimeStep,
							calcoffset(t_jit_tml_swirl, timeStep));
	jit_class_addattr(_jit_tml_swirl_class, attr);
	
	//Moves stuff around
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "advection", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_swirl_setAdvection,
							calcoffset(t_jit_tml_swirl, advection));
	jit_class_addattr(_jit_tml_swirl_class, attr);
	
	
	//Minimum size of the blobs...
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "weight", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_swirl_setMinWeight,
							calcoffset(t_jit_tml_swirl, minWeight));
	jit_class_addattr(_jit_tml_swirl_class, attr);
	
	//How much the derivative will affect the final result
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "water", _jit_sym_float32,
							attrflags, (method)0L,
							(method)jit_tml_swirl_setWaterConstant,
							calcoffset(t_jit_tml_swirl, waterConstant));
	jit_class_addattr(_jit_tml_swirl_class, attr);
	
	
	//How smooth the motion data is
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "smooth", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_swirl_setSmooth,
							calcoffset(t_jit_tml_swirl, smoothIn));
	jit_class_addattr(_jit_tml_swirl_class, attr);
	
	
	//Done!	
	jit_class_register(_jit_tml_swirl_class);

	return JIT_ERR_NONE;
}


t_jit_tml_swirl *jit_tml_swirl_new(void)
{
	t_jit_tml_swirl *x;
		
	if (x=(t_jit_tml_swirl *)jit_object_alloc(_jit_tml_swirl_class))
	{
		x->width = 0;
		x->height = 0;
		x->timeStep = 0.0001f;
		x->advection = 3333;
		x->minWeight = 20;
		x->waterConstant = 0;
		x->smoothIn = 10;		//Wait 10 frames before popping
		x->smoothOut = 25600;	//Immediately lose focus
		x->swirl = nil;
		x->cpuCount = 2;
		x->mp = [[FXTaskSequence alloc] initWithNumThreads:2 dispatchedTo:nil];
	} else {
		x = NULL;
	}	
	return x;
}

void jit_tml_swirl_free(t_jit_tml_swirl *x)
{
	[x->mp release];
	if (x->swirl != nil) [x->swirl release];
}





t_jit_err jit_tml_swirl_setNumCPUS(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.swirl: CPUs is a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.swirl: # CPUs > 0!");
		return JIT_ERR_GENERIC;
	}
	
	x->cpuCount = ss;
	
	if (x->mp != nil)
	{
		[x->mp setNumberOfThreads:ss];
		post("jit.tml.swirl: # of CPUs set to %i", (int)ss);
	}
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_swirl_setTimeStep(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv)
{
	float ss;

	if (argc != 1)
	{
		error("jit.tml.swirl: Timestep requires one value!!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getfloat(&ss, 0, 1, argv);
	
	x->timeStep = ss;
	
	
	return JIT_ERR_NONE;
}



t_jit_err jit_tml_swirl_setAdvection(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.swirl: advection requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: advection must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	post ("Advection: %i", (int)ss);
	
	x->advection = ss;
	
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_swirl_setMinWeight(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.rockeby: weight requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: weight threshold must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	x->minWeight = ss;
	
	
	return JIT_ERR_NONE;
}

t_jit_err jit_tml_swirl_setWaterConstant(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv)
{
	float ss;

	if (argc != 1)
	{
		error("jit.tml.swirl: Water Constant is Scalar!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getfloat(&ss, 0, 1, argv);
	
	x->waterConstant = ss;
	if (x->swirl != nil)
	{
		[x->swirl defineWaterConstant:x->waterConstant];
	}
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_swirl_setSmooth(t_jit_tml_swirl *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 2)
	{
		error("jit.tml.rockeby: Smooth requires two values!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: Smooth must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	x->smoothIn = ss;
	
	jit_atom_arg_getlong(&ss, 0, 1, argv+1);
	
	if (ss < 0)
	{
		error("jit.tml.rockeby: Smooth must be positive!");
		return JIT_ERR_GENERIC;
	}
	x->smoothOut = ss;
	
	return JIT_ERR_NONE;
}
