/*
 *  tmlMatrix.cpp
 *  jit.tml.TimeWarp
 *
 */

#include "tmlMatrix.h"

using namespace TML;

Matrix::Matrix(void *jit_list, int in_index)
{
	m_matrix = jit_object_method(jit_list, _jit_sym_getindex, in_index);
	m_dat = NULL;
	if (m_matrix)
	{
		m_lock = (long)jit_object_method(m_matrix, _jit_sym_lock, 1);
		jit_object_method(m_matrix, _jit_sym_getinfo, &m_info);
	}
}


Matrix::~Matrix()
{
	if (m_matrix)
		jit_object_method(m_matrix, _jit_sym_unblock, m_lock);
}


void Matrix::resizeTo(_jit_matrix_info *t)
{
	m_info.type = t->type;
	m_info.dimcount = t->dimcount;
	m_info.planecount = t->planecount;
	memcpy(m_info.dim, t->dim, sizeof(m_info.dim));
	memcpy(m_info.dimstride, t->dimstride, sizeof(m_info.dimstride));
	
	if (jit_object_method(m_matrix, _jit_sym_setinfo, &(m_info) ))
	{
		throw "Failed Setting Matrix Info";
	}
	jit_object_method(m_matrix,_jit_sym_getinfo,&(m_info) );
}

void *Matrix::data()
{
	if (m_dat == NULL && m_matrix)
	{
		jit_object_method(m_matrix,_jit_sym_getdata,&m_dat);
	}
	
	return m_dat;
}
