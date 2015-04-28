/*
 *  sz.c
 *  max.jit.tml.gl.videoplane
 *
 *  Created by Michael Fortin on 5/7/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#include "sz.h"
#include <stdlib.h>

struct SZ
{
	char *str;
	unsigned int maxLen;
	unsigned int curLen;
};

SZ *SZnew(int maxSize)
{
	SZ *toRet = malloc(sizeof(SZ));
	
	toRet->str = malloc(sizeof(char)*(maxSize + 1));
	toRet->maxLen = maxSize;
	toRet->curLen = 0;
	toRet->str[0] = '\0';
}

int SZappend(SZ *src, char *sz)
{
	while(*sz != '\0' && src->maxLen > src->curLen)
	{
		src->str[src->curLen] = *sz;
		sz++;
		src->curLen++;
	}
	src->str[src->curLen] = '\0';
	
	return (*sz == '\0')?0:1;
}

void SZclear(SZ *src)
{
	src->str[0] = '\0';
	src->curLen = 0;
}

char *SZcstr(SZ *src)
{
	return src->str;
}

void SZdelete(SZ **obj)
{
	if (*obj)
	{
		free((*obj)->str);
		free(*obj);
	}
	*obj = NULL;
}
