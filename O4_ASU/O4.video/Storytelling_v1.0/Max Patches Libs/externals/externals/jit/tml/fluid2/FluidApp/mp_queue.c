/*
 *  mp_queue.c
 *  FluidApp
 */

#include "mpx.h"
#include "memory.h"

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

struct mpQueue
{
	int m_writerPos;				//Index of writing.  (one writes, one reads)
	int m_readerPos;				//The current position in the stack of the queue
	int m_queueSize;				//Size (must be dynamic or else deadlocks may occur)
	
	int m_readers;					//Number of threads stalled on read condition
	int m_writers;					//Number of threads stalled on write condition
	
	void **r_queueData;				//Pointer to queue data (appended after)
	
	pthread_mutex_t		m_mutex;	//Simple mutex that we use
	pthread_cond_t		m_readCond;	//Condition (starved for instructions)
	pthread_cond_t		m_writeCond;//Condition (waiting for worker(s) to catch up)
};


void mpQueueFree(void *in_o)
{
	mpQueue *in_q = (mpQueue*)in_o;
	free(in_q->r_queueData);
	
	pthread_mutex_destroy(&in_q->m_mutex);
	pthread_cond_destroy(&in_q->m_readCond);
	pthread_cond_destroy(&in_q->m_writeCond);
}


mpQueue *mpQueueCreate(int maxSize)
{
	maxSize++;		//As one entry never gets used...
	
	mpQueue *toRet = x_malloc(sizeof(mpQueue), mpQueueFree);
	
	toRet->r_queueData = malloc128(sizeof(void*) * maxSize);
	toRet->m_queueSize = maxSize;
	
	toRet->m_readerPos = 0;
	toRet->m_writerPos = 0;
	
	toRet->m_readers = 0;
	toRet->m_writers = 0;
	
	x_pthread_mutex_init(&toRet->m_mutex, NULL);
	x_pthread_cond_init(&toRet->m_readCond, NULL);
	x_pthread_cond_init(&toRet->m_writeCond, NULL);
	
	return toRet;
}


void mpQueueClear(mpQueue *in_q)
{
	x_pthread_mutex_lock(&in_q->m_mutex);
//	assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//	assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
	
	//Clear the list
	in_q->m_readerPos = 0;
	in_q->m_writerPos = 0;
	
	//Notify all the pending writers
	while (in_q->m_writers > 0)
	{
//		assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//		assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
		in_q->m_writers--;
		x_pthread_cond_signal(&in_q->m_writeCond);
	}
//	assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//	assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
	
	x_pthread_mutex_unlock(&in_q->m_mutex);
}


void mpQueuePush(mpQueue *in_q, void *in_dat)
{
	x_pthread_mutex_lock(&in_q->m_mutex);
//	assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//	assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
	
	while ((in_q->m_writerPos+1)%in_q->m_queueSize == in_q->m_readerPos)
	{
		in_q->m_writers++;
//		assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//		assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
//		printf("mpQueuePush: Blocked %i!\n", in_q->m_writers);
		x_pthread_cond_wait(&in_q->m_writeCond, &in_q->m_mutex);
//		assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//		assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
	}
	
	in_q->r_queueData[in_q->m_writerPos] = in_dat;
	in_q->m_writerPos = (in_q->m_writerPos+1)%in_q->m_queueSize;
	
	if (in_q->m_readers > 0)
	{
//		assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//		assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
		in_q->m_readers--;
		x_pthread_cond_signal(&in_q->m_readCond);
	}
//	assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//	assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
	
	x_pthread_mutex_unlock(&in_q->m_mutex);
}


void *mpQueuePop(mpQueue *in_q)
{
	x_pthread_mutex_lock(&in_q->m_mutex);
//	assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//	assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
	
	while (in_q->m_readerPos == in_q->m_writerPos)
	{
		in_q->m_readers++;
//		assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//		assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
//		printf("mpQueuePop: Blocked %i!\n", in_q->m_readers);
		x_pthread_cond_wait(&in_q->m_readCond, &in_q->m_mutex);
//		assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//		assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
	}
	
	void *toRet = in_q->r_queueData[in_q->m_readerPos];
	in_q->m_readerPos = (in_q->m_readerPos+1)%in_q->m_queueSize;
	
	if (in_q->m_writers > 0)
	{
		in_q->m_writers--;
		x_pthread_cond_signal(&in_q->m_writeCond);
	}
//	assert(in_q->m_writers >= 0 && in_q->m_writers < 16);
//	assert(in_q->m_readers >= 0 && in_q->m_readers < 16);
	
	x_pthread_mutex_unlock(&in_q->m_mutex);
	
	return toRet;
}


typedef union {
	void *v;
	int i;
} mpQueueConv;


void mpQueuePushInt(mpQueue *in_q, int in_dat)
{
	mpQueueConv a;
	a.i = in_dat;
	
	mpQueuePush(in_q, a.v);
}


int mpQueuePopInt(mpQueue *in_q)
{
	mpQueueConv a;
	a.v = mpQueuePop(in_q);
	
	return a.i;
}

