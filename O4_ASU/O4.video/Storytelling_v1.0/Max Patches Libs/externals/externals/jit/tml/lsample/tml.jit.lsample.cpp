

extern "C" {
	#include "jit.common.h"
}

#include <math.h>


class Vector4
{
public:
	long x,y,z,w;
	
	Vector4() : x(0), y(0), z(0), w(0) {}
	
	Vector4(long a, long b, long c, long d) : x(a), y(b), z(c), w(d) {}
	
	t_jit_err jitSet(void *attr, long argc, t_atom *argv)
	{
		x=0; y=0; z=0; w=0;
		if (argv && argc)
		{
			if (argc > 0)	jit_atom_arg_getlong(&x, 0, 1, argv);
			if (argc > 1)	jit_atom_arg_getlong(&y, 0, 1, argv+1);
			if (argc > 2)	jit_atom_arg_getlong(&z, 0, 1, argv+2);
			if (argc > 3)	jit_atom_arg_getlong(&w, 0, 1, argv+3);
			
			//if (x < 0)
			//	post("(%i %i %i %i) %i", x,y,z,w, x+y);
		}
		
		return JIT_ERR_NONE;
	}
	
	t_jit_err jitGet(void *attr, long *argc, t_atom **argv)
	{
		if (*argc && *argv) {}
		else
		{
			*argv = (t_atom*)jit_getbytes(sizeof(float)*4);
			if (argv == NULL)
				return JIT_ERR_OUT_OF_MEM;
		}
		
		*argc = 4;
		jit_atom_setlong(argv[0], x);
		jit_atom_setlong(argv[1], y);
		jit_atom_setlong(argv[2], z);
		jit_atom_setlong(argv[3], w);
		
		return JIT_ERR_NONE;
	}
};

void maxDim(const Vector4 &a, const Vector4 &b, long &component, long &distance)
{
	distance = -1;
	component = -1;
	
	long d = labs(a.x - b.x);
	if ( d > distance) { component = 0; distance = d; }
	
	d = labs(a.y - b.y);
	if ( d > distance) { component = 1; distance = d; }
	
	d = labs(a.z - b.z);
	if ( d > distance) { component = 2; distance = d; }
	
	d = labs(a.w - b.w);
	if ( d > distance) { component = 3; distance = d; }
}


inline Vector4 midPoint(const Vector4 &a, const Vector4 &b, long s, long t)
{
	return Vector4(	a.x + (b.x-a.x)*s/t,
					a.y + (b.y-a.y)*s/t,
					a.z + (b.z-a.z)*s/t,
					a.w + (b.w-a.w)*s/t);
}


typedef struct _jit_tml_lsample 
{
	t_object				ob;
	
	Vector4 p1;
	Vector4 p2;
	
} t_jit_tml_lsample ;



void *_jit_tml_lsample_class;

//Various methods
t_jit_tml_lsample *jit_tml_lsample_new(void);
void jit_tml_lsample_allocate(t_jit_tml_lsample *x, long width, long height);
void jit_tml_lsample_free(t_jit_tml_lsample *x);
t_jit_err jit_tml_lsample_matrix_calc(t_jit_tml_lsample *x, void *inputs, void *outputs);
t_jit_err jit_tml_lsample_init(void);

//Getters/setters for members
t_jit_err jit_tml_lsample_setPoint1(t_jit_tml_lsample *x, void *attr, long argc, t_atom *argv)
{
	return x->p1.jitSet(attr, argc, argv);
}

t_jit_err jit_tml_lsample_setPoint2(t_jit_tml_lsample *x, void *attr, long argc, t_atom *argv)
{
	return x->p2.jitSet(attr, argc, argv);
}

t_jit_err jit_tml_lsample_getPoint1(t_jit_tml_lsample *x, void *attr, long *argc, t_atom **argv)
{
	return x->p1.jitGet(attr, argc, argv);
}

t_jit_err jit_tml_lsample_getPoint2(t_jit_tml_lsample *x, void *attr, long *argc, t_atom **argv)
{
	return x->p2.jitGet(attr, argc, argv);
}


unsigned char clampChar(float inVal)
{
	if (inVal > 255) return 255;
	if (inVal < 0) return 0;
	return (unsigned char) inVal;
}

t_jit_err jit_tml_lsample_matrix_calc(t_jit_tml_lsample *x, void *inputs, void *outputs)
{
	void *matrix_input;
	void *matrix_output;
	
	unsigned char *data_image;
	unsigned char *data_output;
	
	t_jit_matrix_info	info_image, info_output;
	
	t_jit_err err = JIT_ERR_NONE;
	
	matrix_input	= jit_object_method(inputs, _jit_sym_getindex, 0);
	
	if (!matrix_input)
	{
		error("Missing input/output matrix!");
		return JIT_ERR_GENERIC;
	}
	
	//Get information on matrix.
	jit_object_method(matrix_input, _jit_sym_getinfo, &info_image);
	
	//Validate required matrices...
	if (info_image.dimcount > 4)
	{
		error("Maximum of 4 dimensions allowed on input matrix");
		return JIT_ERR_GENERIC;
	}
	
	//Fetch the input ptr
	jit_object_method(matrix_input, _jit_sym_getdata, &data_image);
	
	//Compute the dimensions of output matrix
	long component, distance;
	maxDim(x->p1, x->p2, component, distance);
	
	distance++;
	
	//Coerce output
	matrix_output	= jit_object_method(outputs, _jit_sym_getindex, 0);
	
	if (matrix_output == NULL)
	{
		data_output = NULL;
		return JIT_ERR_NONE;
	}
	else
	{
		jit_object_method(matrix_output, _jit_sym_getinfo, &info_output);
		
		if (1 != info_output.dimcount ||
			distance	!= info_output.dim[0] ||
			info_image.type		!= info_output.type ||
			info_image.planecount != info_output.planecount)
		{
			info_output.dimcount= 1;
			info_output.dim[0]	= distance;
			info_output.type	= info_image.type;
			info_output.planecount = info_image.planecount;
			
			if (jit_object_method(matrix_output, _jit_sym_setinfo, &info_output))
			{
				error("Unable to resize output matrix to match input!");
				return JIT_ERR_GENERIC;
			}
			
			jit_object_method(matrix_output, _jit_sym_getinfo, &info_output);
		}
		
		//Get data...
		jit_object_method(matrix_output, _jit_sym_getdata, &data_output);
	}
	
	//Start from point 1 and go to all points (estimating as we go along!)
	long i;
	
	long dx = info_image.dimstride[0];
	long dy = info_image.dimcount > 1 ? info_image.dimstride[1] : 0;
	long dz = info_image.dimcount > 2 ? info_image.dimstride[2] : 0;
	long dw = info_image.dimcount > 3 ? info_image.dimstride[3] : 0;
	
	long maxX = info_image.dim[0];
	long maxY = INT_MAX;
	long maxZ = INT_MAX;
	long maxW = INT_MAX;
	if (dy != 0) maxY = info_image.dim[1];
	if (dz != 0) maxZ = info_image.dim[2];
	if (dw != 0) maxW = info_image.dim[3];
	
	for (i=0; i<= distance; i++)
	{
		Vector4 t = midPoint(x->p1, x->p2, i, distance);
		
		long srcData = t.x*dx + t.y*dy + t.z*dz + t.w*dw;
		long dstData = i * info_output.dimstride[0];
		
		if (t.x >= 0 && t.y >=0 && t.z >=0 && t.w >= 0
			&& t.x < maxX && t.y < maxY && t.z < maxZ && t.w < maxW)
		{
			int k;
			for (k=0; k<info_output.dimstride[0]; k++)
				data_output[k+dstData] = data_image[k+srcData];
		}
		else
		{
			int k;
			for (k=0; k<info_output.dimstride[0]; k++)
				data_output[k+dstData] = 0;
		}
	}
	
	
	return err;
}


t_jit_err jit_tml_lsample_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop;
	
	//Create class with given constructors & destructors
	_jit_tml_lsample_class = jit_class_new("jit_tml_lsample",(method)jit_tml_lsample_new,(method)jit_tml_lsample_free,
		sizeof(t_jit_tml_lsample),A_CANT,0L); //A_CANT = untyped

	// 1 matrix input / 1 matrix output
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,1,1);

	// need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
	//jit_mop_input_nolink(mop,2);
	// o= (t_jit_object*)jit_object_method(mop,_jit_sym_getinput,2);
	//jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
	jit_class_addadornment(_jit_tml_lsample_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_tml_lsample_class, (method)jit_tml_lsample_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(	_jit_sym_jit_attr_offset_array, "pt1", _jit_sym_long,
											4, attrflags,
											(method)jit_tml_lsample_getPoint1,
											(method)jit_tml_lsample_setPoint1,
											0L, 0L);
	jit_class_addattr(_jit_tml_lsample_class, attr);
	
	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(	_jit_sym_jit_attr_offset_array, "pt2", _jit_sym_long,
											4, attrflags,
											(method)jit_tml_lsample_getPoint2,
											(method)jit_tml_lsample_setPoint2,
											0L, 0L);
	jit_class_addattr(_jit_tml_lsample_class, attr);
	
	//Done!	
	jit_class_register(_jit_tml_lsample_class);

	return JIT_ERR_NONE;
}


t_jit_tml_lsample *jit_tml_lsample_new(void)
{
	t_jit_tml_lsample *x;
		
	if (x=(t_jit_tml_lsample *)jit_object_alloc(_jit_tml_lsample_class))
	{
		x->p1 = Vector4();
		x->p2 = Vector4();
	} else {
		x = NULL;
	}	
	return x;
}

void jit_tml_lsample_free(t_jit_tml_lsample *x)
{
}


