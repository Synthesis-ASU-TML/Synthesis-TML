/*
 *  netOutStream.c
 *  FluidApp
 */

#include "net.h"
#include "memory.h"
#include "mpx.h"
#include "error.h"
#include <stdio.h>
#include <stdlib.h>

//netOutStream is very similar to a netInStream, but the synchronization
//primitives are slightly different.
//
//	(consumer/sender is in different thread)
struct netOutStream
{
	netClient *r_client;		//Connection to network
	
	int nBuffSize;				//Total size of the buffer
	int nBuffStart;				//Start of the buffer (can loop back to start)
	int nBuffEnd;				//End of buffer (for reading)
	int nBuffWrite;				//End of buffer (for writing)
	
	void *r_buffer;				//Data
	
	pthread_mutex_t r_mutex;	//Mutex to protect the `region' vars
	pthread_cond_t r_cond;		//To unblock stream sending data over network
	pthread_cond_t r_writeCond;	//Write condtion - as we wait for sending data
								//over the network.
	pthread_t r_thread;			//Thread sending data over network
};


//Called once the retain count reaches zero
void netOutStreamOnFree(void *v)
{
	netOutStream *o = (netOutStream*)v;
	
	x_pthread_mutex_lock(&o->r_mutex);
		o->nBuffWrite = -1;
	x_pthread_mutex_unlock(&o->r_mutex);
	
	x_pthread_cond_signal(&o->r_cond);
	x_pthread_cond_signal(&o->r_writeCond);
	
	x_pthread_join(o->r_thread);
	
	x_free(o->r_client);
	
	if (o->r_buffer)	free(o->r_buffer);
	
	pthread_mutex_destroy(&o->r_mutex);
	pthread_cond_destroy(&o->r_cond);
	pthread_cond_destroy(&o->r_writeCond);
}


//Second thread that is practically continually blocked while writing
//stuff.  (If the buffer overflows, the writing stream can block as well)
void *netOutStreamWriter(void *v)
{
	x_try
		netOutStream *o = (netOutStream*)v;
		
		x_pthread_mutex_lock(&o->r_mutex);
		for (;;)
		{
			//Resuming lock from loop/outside loop.
				//Now, first thing is to block if we don't have any data...
				int writeStart;
				int writeLength;
			
				if (o->nBuffWrite == -1)
				{
					x_pthread_mutex_unlock(&o->r_mutex);
					return NULL;
				}
			
				while (o->nBuffStart == o->nBuffEnd)
				{
					x_pthread_cond_wait(&o->r_cond, &o->r_mutex);
					if (o->nBuffWrite == -1)
					{
						x_pthread_mutex_unlock(&o->r_mutex);
						return NULL;
					}
				}
				
				writeStart = o->nBuffStart;
			x_pthread_mutex_unlock(&o->r_mutex);
			writeLength = ntohl(*(int*)((char*)o->r_buffer + writeStart));
			writeLength += sizeof(int);
			
			//Ship the data across network
			netClientSendBinary(o->r_client, (char*)o->r_buffer + writeStart, writeLength);
			
			//Mark data as shipped and resume!
			x_pthread_mutex_lock(&o->r_mutex);
				o->nBuffStart = o->nBuffStart + writeLength;
				
				if (o->nBuffStart == o->nBuffEnd && o->nBuffWrite != o->nBuffStart)
				{
					o->nBuffStart = 0;
					o->nBuffEnd = o->nBuffWrite;
				}
				
				x_pthread_cond_signal(&o->r_writeCond);
			//Lock continues around loop
		}
		
	x_catch(e)
	x_finally
	
	return NULL;
}


//Creates a netOutStream for the given client using the given buffer size.
netOutStream *netOutStreamCreate(netClient *in_client, int in_buffSize)
{
	errorAssert(in_buffSize > sizeof(int), error_flags,
				"Buffer size must be greater than sizeof(int)");
	errorAssert(in_client != NULL, error_flags,
				"Need a valid netClient to bind to.");
	
	netOutStream *o = x_malloc(sizeof(netOutStream), netOutStreamOnFree);
	
	o->r_buffer = malloc128(in_buffSize);
	o->nBuffSize = in_buffSize;
	o->nBuffStart = 0;
	o->nBuffEnd = 0;
	o->nBuffWrite = 0;
	
	o->r_client = in_client;
	x_retain(in_client);
	
	x_pthread_mutex_init(&o->r_mutex, NULL);
	x_pthread_cond_init(&o->r_cond, NULL);
	x_pthread_cond_init(&o->r_writeCond, NULL);
	x_pthread_create(&o->r_thread, NULL, netOutStreamWriter, o);
	
	return o;
}


//This function will lincrease the buffEnd...
void *netOutStreamBuffer(netOutStream *in_oStream, int in_buffSize)
{
	//Assert that there will have enough space at some point
	errorAssert(in_buffSize + sizeof(int) < in_oStream->nBuffSize,
				error_flags, "Internal buffer not big enough for request.");

	//Note that this function can block.
	void *rot = NULL;
	
	x_pthread_mutex_lock(&in_oStream->r_mutex);
		//We must lock part of the buffer or block if no buffer is left.!
		if (in_oStream->nBuffWrite == in_oStream->nBuffEnd)
		{
			if (in_oStream->nBuffEnd + in_buffSize + sizeof(int) > in_oStream->nBuffSize)
				in_oStream->nBuffWrite = 0;
		}
		
		if (in_oStream->nBuffWrite != in_oStream->nBuffEnd)
		{
			//Run logic needed to avoid blocking	
			if (in_oStream->nBuffEnd == in_oStream->nBuffStart)
			{
				in_oStream->nBuffEnd = 0;
				in_oStream->nBuffStart = 0;
				in_oStream->nBuffWrite = 0;
			}
				
			//While we need to... block!
			while (in_oStream->nBuffWrite + in_buffSize + sizeof(int)
					>= in_oStream->nBuffStart
					&& (in_oStream->nBuffStart != 0 || in_oStream->nBuffEnd != 0))
			{
				x_pthread_cond_wait(&in_oStream->r_writeCond, &in_oStream->r_mutex);
				
				if (in_oStream->nBuffEnd == in_oStream->nBuffStart)
				{
					in_oStream->nBuffEnd = 0;
					in_oStream->nBuffStart = 0;
					in_oStream->nBuffWrite = 0;
				}
			}
		}
		
		rot = (char*)in_oStream->r_buffer + in_oStream->nBuffWrite;
		
	x_pthread_mutex_unlock(&in_oStream->r_mutex);
	
	*(int*)rot = htonl(in_buffSize);
	
	rot = (char*)rot + sizeof(int);
	
	return rot;
}


//This function just unblocks the writer so that it can do it's work.
void netOutStreamSend(netOutStream *in_oStream)
{
	//How, we must just update the buffer end to reflect what we've done
	//and the write buffer position.
	x_pthread_mutex_lock(&in_oStream->r_mutex);
		int size = *(int*)((char*)in_oStream->r_buffer + in_oStream->nBuffWrite);
		size = ntohl(size) + sizeof(int);
		if (in_oStream->nBuffEnd == in_oStream->nBuffWrite)
		{
			in_oStream->nBuffEnd += size;
		}
		
		in_oStream->nBuffWrite += size;
	x_pthread_mutex_unlock(&in_oStream->r_mutex);
	
	x_pthread_cond_signal(&in_oStream->r_cond);
}

