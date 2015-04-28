/*
 *  memory.m
 *  FluidApp
 */

#include "memory.h"

#ifndef CELL
#ifndef ITOUCH

#import <Cocoa/Cocoa.h>

FILE *x_fopen(const char *in_szFile, const char *in_mode)
{
	NSBundle *mb = [NSBundle mainBundle];
	
	NSString *path = [mb pathForResource:
							[NSString stringWithCString:in_szFile
									encoding:NSASCIIStringEncoding]
							ofType:nil];
	
	const char *szResolvedFile = [path cStringUsingEncoding:NSASCIIStringEncoding];
	
	FILE *ret = fopen(szResolvedFile, in_mode);
	
	errorAssert(ret != NULL, error_create, "Failed opening %s!", in_szFile);
	
	return ret;
}

#endif
#endif
