/*
 *  tml.cpp
 *  ODE2
 *
 *  Created by mikevil on 07/04/06.
 *  Copyright 2006 __MyCompanyName__. All rights reserved.
 *
 */

#include <tml.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

char *helloTML()
{
	return "Hello World!";
}


void *allocTML()
{
	char *toRet = (char *)malloc(sizeof(char)*20);
	strcpy(toRet, "Hello TML");
	return (void*)toRet;
}

char *readTML(void *d)
{
	return (char *)d;
}


void releaseTML(void *d)
{
	free(d);
}
