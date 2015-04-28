/*
 *  mp_mutex.c
 *  FluidApp
 */

#include "mpx.h"
#include "memory.h"
#include <pthread.h>
#include <errno.h>

struct mpMutex
{
	pthread_mutex_t r_mutex;
};

void mpMutexDealloc(void *in_o)
{
	mpMutex *in_m = (mpMutex*)in_o;
	
	pthread_mutex_destroy(&in_m->r_mutex);
}


mpMutex *mpMutexCreate()
{
	mpMutex *toRet = x_malloc(sizeof(mpMutex), mpMutexDealloc);
	if (toRet == NULL)
	{
		x_raise(errorCreate(NULL, error_memory, "Failed allocating for mutex"));
		return NULL;
	}
	
	pthread_mutex_t init = PTHREAD_MUTEX_INITIALIZER;
	toRet->r_mutex = init;
	
	return toRet;
}


void mpMutexLock(mpMutex *in_m)
{
	x_pthread_mutex_lock(&in_m->r_mutex);
}


void mpMutexUnlock(mpMutex *in_m)
{
	x_pthread_mutex_unlock(&in_m->r_mutex);
}
