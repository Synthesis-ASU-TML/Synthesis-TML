/*
 *  tml.h
 *  ODE2
 *
 *  Created by mikevil on 07/04/06.
 *  Copyright 2006 __MyCompanyName__. All rights reserved.
 *
 */

#ifdef __cplusplus
extern "C" {
#endif

char *helloTML();


void *allocTML();
char *readTML(void *);
void releaseTML(void *);

#ifdef __cplusplus
}
#endif
