/*
 *  memory.c
 *  FluidApp
 */

#include "memory.h"

#include <stdio.h>
#include <stdlib.h>

#ifndef CELL
#include <libkern/OSAtomic.h>
#endif
#include <sys/time.h>

#include <pthread.h>

typedef struct memory_pvt memory_pvt;
struct memory_pvt
{
	x_dealloc kill;						//Your guess is as good as mine...
	int32_t rc;							//The retain count...
} __attribute__ ((aligned(16)));

//Replacement allocator
void *x_malloc(int size, x_dealloc in_d)
{
	memory_pvt *toRet = malloc128(size + sizeof(memory_pvt));
	
	if (toRet == NULL)
		x_raise(errorCreate(NULL, error_memory, "Out of memory!"));
	
	toRet->rc = 1;
	toRet->kill = in_d;
	return toRet + 1;
}

//Replacment free function
void x_free(void *in_o)
{
	memory_pvt *r = (memory_pvt*)in_o;

#ifdef CELL
	int nVal = __sync_fetch_and_add(&r[-1].rc, -1) -1;
#else
	int nVal = OSAtomicAdd32Barrier(-1, &r[-1].rc);
#endif

	if (nVal == 0)
	{
		r[-1].kill(in_o);
		free(r-1);
	}
}

//Retain (extension)
void x_retain(void *in_o)
{
	memory_pvt *r = (memory_pvt*)in_o;
#ifdef CELL
	__sync_fetch_and_add(&r[-1].rc, 1);
#else
	OSAtomicAdd32Barrier(1, &r[-1].rc);
#endif
}


//Handle the key used for per-thread exceptions...
pthread_key_t g_except_key;
pthread_key_t g_error_key;
void x_init()
{
	pthread_key_create(&g_except_key, NULL);
	pthread_key_create(&g_error_key, NULL);
}


sigjmp_buf *x_setupBuff(sigjmp_buf *in_newBuff)
{
	sigjmp_buf *toRet = pthread_getspecific(g_except_key);
	
	if (pthread_setspecific(g_except_key, in_newBuff) != 0)
	{
		x_raise(errorCreate(NULL, error_create, "Failed setting thread specific data"));
	}
	
	return toRet;
}


void x_raise(error *e)
{
	sigjmp_buf *jmp = pthread_getspecific(g_except_key);
	
	//No handler, simply abort
	if (jmp == NULL)
	{
		printf("%s\n",errorMsg(e));
		abort();
	}
	
	errorAssert(pthread_setspecific(g_error_key, e) == 0, error_create,
				"Failed setting key to error");
	
	_longjmp(*jmp, 1);
}

error *x_raisedError()
{
	return pthread_getspecific(g_error_key);
}

double x_time()
{
	struct timeval t;
	gettimeofday(&t, NULL);
	
	return (double)t.tv_sec + ((double)t.tv_usec) / 1000000.0;
}

#ifdef CELL
FILE *x_fopen(const char *in_szFile, const char *in_mode)
{
	return fopen(in_szFile, in_mode);
}
#endif
