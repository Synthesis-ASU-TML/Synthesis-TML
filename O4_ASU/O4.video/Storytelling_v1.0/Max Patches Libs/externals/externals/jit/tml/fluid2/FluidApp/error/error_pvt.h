/*
 *  error_pvt.h
 *  FluidApp
 */

#ifndef ERROR_PVT_H
#define ERROR_PVT_H

#include "error.h"

struct error
{
	error *m_next;
	
	int m_code;
	
	char *m_string;
	
	// Extra useful information for debugging:
	int m_line;					//Constant auto-generated via compiler
	const char *sz_file;		//Constant auto-generated via compiler
	
	//For list...
	error *m_list;
};

#endif
