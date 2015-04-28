/*
 *  sz.h
 *  max.jit.tml.gl.videoplane
 *
 *  Created by Michael Fortin on 5/7/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#ifndef SZ_H
#define SZ_H

typedef struct SZ SZ;

SZ *SZnew(int maxSize);
int SZappend(SZ *src, char *sz);
void SZclear(SZ *src);
char *SZcstr(SZ *src);
void SZdelete(SZ **obj);

#endif
