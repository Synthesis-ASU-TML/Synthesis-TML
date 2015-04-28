/*
 *  error_pvt.c
 *  FluidApp
 */

#include "error_pvt.h"
#include "memory.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

struct error errorDefault = {NULL, error_memory, "Failed creating error", -1, NULL, NULL};


void errorFree(void *in_o)
{
	error *in_error = (error*)in_o;
	if (in_error)
	{
		if (in_error->m_next) x_free(in_error->m_next);
		
		if (in_error->m_string)
			free(in_error->m_string);
	}
}


error *errorCreatePvt(int in_line, const char *szFile, error *in_prev, int in_code, const char *in_text, va_list v)
{
	error *toRet = x_malloc(sizeof(error), errorFree);
	
	memset(toRet, 0, sizeof(error));
	toRet->m_code = in_code;
	toRet->m_next = in_prev;
	
	toRet->m_line = in_line;
	toRet->sz_file = szFile;
	
	vasprintf(&toRet->m_string, in_text, v);
	
	return toRet;
}


error *errorCreate_pvt(int in_line, const char *szFile, error *in_prev, int in_code, const char *in_text, ...)
{
	va_list v;
	va_start(v, in_text);
	error *toRet = errorCreatePvt(in_line, szFile, in_prev, in_code, in_text, v);
	va_end(v);
	
	return toRet;
}

error *errorReply(error *in_error, int in_reply_code, const char *in_text, ...)
{
	error *toRet = x_malloc(sizeof(error), errorFree);
	
	if (toRet)
	{
		memset(toRet, 0, sizeof(error));
		toRet->m_code = in_reply_code;
		
		if (in_error)
		{
			toRet->m_next = in_error->m_next;
			in_error->m_next = NULL;
		}
		
		va_list v;
		va_start(v, in_text);
		vasprintf(&toRet->m_string, in_text, v);
		va_end(v);
	}
	else
		return &errorDefault;
	
	return toRet;
}


void errorRaise_pvt(int in_line, const char *szFile, int in_code, const char *in_text, ...)
{
	va_list v;
	va_start(v, in_text);
	x_raise(errorCreatePvt(in_line, szFile, NULL, in_code, in_text, v));
	va_end(v);
}

error *errorNext(error *in_error)
{
	if (in_error)
		return in_error->m_next;
	else
		return NULL;
}

int errorCode(error *in_error)
{
	if (in_error)
		return in_error->m_code;
	else
		return error_none;
}

const char *errorMsg(error *in_error)
{
	if (in_error)
		return (in_error->m_string)?in_error->m_string:"";
	else
		return "";
}

int errorLine(error *in_error)
{
	if (in_error && in_error->sz_file)
		return in_error->m_line;
	else
		return -1;
}

const char *errorFile(error *in_error)
{
	
	if (in_error && in_error->sz_file)
		return in_error->sz_file;
	else
		return "";
}
