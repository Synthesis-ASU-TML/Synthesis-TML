//
//	Implementation of task scheduler on top of GrandCentralDispatch
//

#ifdef USE_GRANDCENTRAL
#include "memory.h"
#include "mpx.h"
#include "dispatch/dispatch.h"
#include <stdlib.h>
#include <string.h>

typedef struct dispatchData
{
	dispatch_queue_t m_queue;
	dispatch_group_t m_group;
	void(*onExecuteTask)(void *x,int tid, int fn);
	void *x;
	short dep;
	short fn;
	short cur;
	short rows;
} dispatchData;

struct mpCoherence
{
	dispatch_group_t m_group;
	int m_numQueues;
	dispatchData *m_data;
	
	int num_tasks;
	int rows;
};


//Simple release function
void mpCFree(void *o)
{
	mpCoherence *r = (mpCoherence*)o;
	int i;
	for (i=0; i<r->m_numQueues; i++)
	{
		dispatch_release(r->m_data[i].m_queue);
		dispatch_release(r->m_data[i].m_group);
	}
}


//Creates a new coherence object.  This is seperate from the threading
//engine for simplicity.
//	data is the number of data sets to work with
//	tasks is the number of tasks that will be run (usually about 90-100)
//	cache is the amount of data that can be loaded into the proc's cache,
//	NOTE: values will need tuning...
mpCoherence *mpCCreate(int in_data, int in_tasks, int in_cache)
{
	//In GCD - 	we ignore cache...
	//			each task is replaced with a dispatch queue
	//			each data becomes a task submitted to a dispatch queue
	mpCoherence *r = x_malloc(sizeof(mpCoherence), mpCFree);
	
	r->m_numQueues = in_tasks;
	r->m_data = malloc(sizeof(dispatchData)*(in_tasks+1));
	memset(r->m_data, 0, sizeof(dispatchData)*(in_tasks+1));
	int i;
	for (i=0; i<in_tasks; i++)
	{
		r->m_data[i].m_queue = dispatch_queue_create("com.topologi.ca", NULL);
		r->m_data[i].m_group = dispatch_group_create();
	}
	r->rows = in_data;
	mpCReset(r);
	
	return r;
}


//Coherence engine is essentially a very compact pseudo-tree representation
//of the data.  Out of coherence engine, we get references to the internal
//data.
//	in_fn		The function that will be called to execute the given task
//				once per data	(truncated to 8-bits!!!!)
//	depStart	From the previous task, how many tasks to the "left" must
//				be completed before another can start. (normally negative)
//	depEnd		From the previous task, how many tasks to the "right" must
//				be completed.  (0 means fall through)
//	depLeft		From tasks on the same row, how many must be completed to
//				continue?  (0 means none / fall through any order)
//
//		Note: This can be safely called while tasks are executing,
//				however calling this function at the same time on two
//				different threads is not safe.
void mpCTaskAdd(mpCoherence *o, void*x,int in_fn, int in_depStart,
				void(*onExecuteTask)(void*x,int tid, int fn))
{
	int t = o->num_tasks;
	o->num_tasks = o->num_tasks + 1;
	
	o->m_data[t].x = x;
	o->m_data[t].fn = in_fn;
	o->m_data[t].dep = in_depStart;
	o->m_data[t].cur = 0;
	o->m_data[t].onExecuteTask = onExecuteTask;
}


void mpCDispatchFn(void *o)
{
	dispatchData *d = (dispatchData*)o;
	
	//Run our task...
	d->onExecuteTask(d->x, d->cur, d->fn);
	
	if (d[1].fn != -1)
	{
		if (d->cur == d->rows-1)
		{
			//Add in last tasks...
			int i;
			int amt = abs(d[1].dep);
			//printf("%i\n",d[0].fn);
			for (i=0; i<=amt+1; i++)
			{
				dispatch_group_async_f(d[1].m_group, d[1].m_queue, &d[1], mpCDispatchFn);
			}
		}
		else if (d->cur > abs(d[1].dep))
		{
			//Add in task...
			dispatch_group_async_f(d[1].m_group, d[1].m_queue, &d[1], mpCDispatchFn);
		}
	}
	
	//On to the next task!!!
	d->cur = d->cur + 1;
}


//Where we launch all of our tasks...
void mpCTaskLaunch(mpCoherence *o)
{
	//Launch all of the first task...
	int x;
	for (x=0; x<o->rows; x++)
	{
		dispatch_group_async_f(o->m_data[0].m_group, o->m_data[0].m_queue, &o->m_data[0], mpCDispatchFn);
	}
}

void mpCTaskWait(mpCoherence *o)
{
	int x;
	for (x=0; x<o->num_tasks; x++)
		dispatch_group_wait(o->m_data[x].m_group, DISPATCH_TIME_FOREVER);
}


//Resets the task scheduler (so we can re-add tasks and execute them happily!)
//	Not thread safe - all tasks must be completed before calling
void mpCReset(mpCoherence *o)
{
	int i;
	for (i=0; i<o->m_numQueues+1; i++)
	{
		o->m_data[i].fn = -1;
		o->m_data[i].dep = -1;
		o->m_data[i].rows = o->rows;
	}
	o->num_tasks = 0;
}

#endif
