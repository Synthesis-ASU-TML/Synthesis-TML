/*
 *  tmlMatrix.h
 *  jit.tml.TimeWarp
 *
 */

#ifndef TML_MATRIX
#define TML_MATRIX

#include "jit.common.h"
#include "math.h"
#include "limits.h"

namespace TML
{

class Math
{
public:
static float sqrt(float in_f)	{	return ::sqrtf(in_f);	}
static double sqrt(double in_f)	{	return ::sqrt(in_f);	}
static long sqrt(long in_f)	{	return ::sqrtl(in_f);	}
static int sqrt(int in_f)	{	return ::sqrtl(in_f);	}

static float abs(float in_f)	{	return ::fabs(in_f);	}
static double abs(double in_f)	{	return ::abs(in_f);	}
static long abs(long in_f)	{	return ::labs(in_f);	}
static int abs(int in_f)	{	return ::labs(in_f);	}

static int maxValue(int in_f)	{	return INT_MAX;		}
};

class Matrix
{
private:
	void *m_matrix;
	long m_lock;
	
	char *m_dat;
	
	t_jit_matrix_info m_info;
	
public:
	Matrix(void *jit_list, int in_index);
	~Matrix();
	
	long dims()			{	return m_info.dimcount;		}
	long dim(int in_ind)	{	assert(in_ind < dims());
								return m_info.dim[in_ind];	}
	long stride(int in_ind)	{	assert(in_ind < dims());
								return m_info.dimstride[in_ind];	}
	
	long planes()		{	return m_info.planecount;	}
	
	t_symbol* type()	{	return m_info.type;			}
	
	bool isChar()		{	return type() == _jit_sym_char;	}
	bool isFloat32()	{	return type() == _jit_sym_float32;	}
	bool isFloat64()	{	return type() == _jit_sym_float64;	}
	
	void resizeTo(_jit_matrix_info *t);
	void resizeTo(Matrix *m)	{	resizeTo(&m->m_info); }
	
	void *data();
};

}

#endif
