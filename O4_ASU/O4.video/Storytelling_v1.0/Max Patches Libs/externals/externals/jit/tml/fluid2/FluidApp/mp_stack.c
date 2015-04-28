/*
 *  mpq2.c
 *  FluidApp
 */

#include "memory.h"
#include "mpx.h"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

typedef struct mpStackNode
{
	void			*data;
	atomic32Split	next;		//Integer reference into array...
}mpStackNode;

struct mpStack
{
	mpStackNode		*data;		//All the data!
	
	atomic32Split	start;		//Used nodes
	atomic32Split	empty;		//Unused nodes
};


void mpStackFree(void *o)
{
	mpStack *q = (mpStack*)o;
	
	free(q->data);
}


mpStack *mpStackCreate(int in_maxSize)
{
	mpStack *tr = x_malloc(sizeof(mpStack), mpStackFree);
	tr->start.data.data = -1;
	
	tr->data = malloc128(sizeof(mpStackNode)*in_maxSize);
	
	int i;
	for (i=0; i<in_maxSize-1; i++)
	{
		tr->data[i].next.data.data = i+1;
	}
	tr->data[i].next.data.data = -1;
	
	tr->empty.data.data = 0;
	
	return tr;
}


int mpStackPush(mpStack *q, void *dat)
{
	//Extract an empty node...
	atomic32Split en;
	atomic32Split myNodeNext;
	retry:
		en.atom = AtomicExtract(q->empty.atom);
		if (en.data.data == -1)
			return 0;
		
		myNodeNext.atom = AtomicExtract(q->data[en.data.data].next.atom);
		myNodeNext.data.value++;
		if (!AtomicCompareAndSwapInt(q->empty.atom, en.atom, myNodeNext.atom))
			goto retry;
		
		//Ensure that the key to this node remains unique...
		//printf("PUSHED: %i\n", en.data.data);
		
		//Work on the data
		q->data[en.data.data].data = dat;
		en.data.value++;
		
		//Link it in!
	relink:
		myNodeNext.atom = AtomicExtract(q->start.atom);
		q->data[en.data.data].next = myNodeNext;
		q->data[en.data.data].next.data.value++;
		
		if (!AtomicCompareAndSwapInt(q->start.atom, myNodeNext.atom, en.atom))
			goto relink;
		
	return 1;
}

int mpStackPop(mpStack *q, void **out_dat)
{
//Extract an empty node...
	atomic32Split en;
	atomic32Split myNodeNext;
	retry:
		en.atom = AtomicExtract(q->start.atom);
		if (en.data.data == -1)
			return 0;
		
		myNodeNext.atom = AtomicExtract(q->data[en.data.data].next.atom);
		myNodeNext.data.value++;
		if (!AtomicCompareAndSwapInt(q->start.atom, en.atom, myNodeNext.atom))
			goto retry;
		
		//Ensure that the key to this node remains unique...
		//printf("POPPED %i\n", en.data.data);
		
		//Work on the data
		*out_dat = q->data[en.data.data].data;
		en.data.value++;
		
		//Link it in!
	relink:
		myNodeNext.atom = AtomicExtract(q->empty.atom);
		q->data[en.data.data].next = myNodeNext;
		q->data[en.data.data].next.data.value++;
		
		if (!AtomicCompareAndSwapInt(q->empty.atom, myNodeNext.atom, en.atom))
			goto relink;
		
	return 1;
}
