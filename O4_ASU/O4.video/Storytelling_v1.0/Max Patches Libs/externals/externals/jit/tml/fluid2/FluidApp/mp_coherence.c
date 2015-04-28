/*
 *  mp_coherence.c
 *  FluidApp
 */

#ifndef USE_GRANDCENTRAL

#include "mpx.h"
#include "memory.h"
#include "error.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

//Use mutexes and isolate the scheduler
//#define COHERENCE_MUTEX

//Use a standard task queue for all operations (should be simpler)
//#define COHERENCE_TQ

//Force sequential work with an underlying task queue (simplest)
//#define SEQUENTIAL

#ifdef COHERENCE_TQ
#ifndef COHERENCE_MUTEX
#define COHERENCE_MUTEX
#endif
#endif

#ifdef COHERENCE_MUTEX

#define CoAtomicExtract(x)					(x)
#define CoAtomicCompareAndSwapInt(d,o,n)	((d = n) || 1)
#define CoAtomicAdd32Barrier(d,v)			(d = d + v)

#define co_pthread_mutex_unlock(m)
#define co_pthread_mutex_lock(m)

#define co_pthread_mutex_unlock_all(m)		/*printf("UNLOCK %i\n",__LINE__);*/x_pthread_mutex_unlock(m)
#define co_pthread_mutex_lock_all(m)		x_pthread_mutex_lock(m)/*;printf("LOCK %i\n",__LINE__);*/

#else

#define CoAtomicAdd32Barrier(d,v)			AtomicAdd32Barrier(d,v)
#define CoAtomicExtract(x)					AtomicExtract(x)
#define CoAtomicCompareAndSwapInt(d,o,n)	AtomicCompareAndSwapInt(d,o,n)

#define co_pthread_mutex_unlock(m)			x_pthread_mutex_unlock(m)
#define co_pthread_mutex_lock(m)			x_pthread_mutex_lock(m)

#define co_pthread_mutex_unlock_all(m)
#define co_pthread_mutex_lock_all(m)

#endif

//Union defining how much progress has been made
typedef union mpCoProgress mpCoProgress;
union mpCoProgress
{
	atomic_int32	atom;			//Variable to manipulate atomically
	struct
	{
		uint16_t		completed;	//The number of completed items
		uint16_t		working;	//Currently working on item
	} data;
};

#define DEPEND_INORDER	0			//Dependency that is in order. (left->right)
#define DEPEND_ANY_0	1			//Index to list of completed dependencies

//Task to apply for start-middle-end.
typedef union mpCoDescription mpCoDescription;
union mpCoDescription
{
	atomic_int32	atom;
	struct
	{
		uint16_t		depend;		//Dependency flags
		uint8_t			function;	//Function we're working with (ref below)
		uint8_t			bottom;		//Number of tiles we need (at least 1)
	} data;
};

//Union to send status messages across...
typedef union mpCoMessage mpCoMessage;
union mpCoMessage
{
	int	msg;
	struct
	{
		uint16_t	tid;		//We can obtain fn from tid
		uint16_t	task;		//We need task
	} data;
};

//Task for memory-coherent operations.
typedef struct mpCoTask mpCoTask;
struct mpCoTask
{
	mpCoProgress	progress;
	mpCoDescription	description;
}
#ifdef SEQUENTIAL
__attribute__((aligned(4)));
#else
__attribute__((aligned(8)));
#endif

//Stores the progress of each of the tasks.  Tasks are organized on
//a grid.  Dependencies are organized based upon locations upon the grid.
struct mpCoherence
{	
	//-------------------------------------------------------- USED ALL THE TIME
	//A list of all the tasks.
	mpCoTask		*r_tasks;
	
	//Number of tasks
	atomic_int32	m_nTasks;
	
	//Amount of data each task must process
	int				m_nData;
	
	//Cache size + start  (cache is small "region")
	int				m_cacheSize;
	atomic_int32	m_nCacheStart;
	
#ifndef SEQUENTIAL
	//Min/max in task list (always incrementing)
	atomic_int32	m_min, m_max;
#else
	atomic_int32	m_min;
#endif
	
	//------------------------------------------------------ NOT USED AT RUNTIME
	
	//Max number of tasks
	int				m_nMaxTasks;
	
	//Number of blocking threads...
	atomic_int32	m_nBlocking;
	
	//Mutex and conditional
	pthread_mutex_t	m_mutex;
	mpQueue			*r_q;
	
#ifdef SEQUENTIAL
	mpStack			*r_stack;
#endif
};


//Frees the coherence engine
void mpCFree(void *in_o)
{
	mpCoherence *o = (mpCoherence*)in_o;
	if (o->r_tasks)		free(o->r_tasks);
	if (o->r_q)			x_free(o->r_q);
	
#ifdef SEQUENTIAL
	if (o->r_stack)		x_free(o->r_stack);
#endif
	
	pthread_mutex_destroy(&o->m_mutex);
}


//Creates a new coherence engine
mpCoherence *mpCCreate(int in_data, int in_tasks, int in_cache)
{
	errorAssert(in_data > 0, error_flags, "Need positive number of data sets");
	errorAssert(in_tasks > 0, error_flags, "Need positive number of tasks");
	errorAssert(in_cache > 0, error_flags, "Need positive number of caches");
	
	mpCoherence *o = x_malloc(sizeof(mpCoherence), mpCFree);
	memset(o, 0, sizeof(mpCoherence));
	
	x_pthread_mutex_init(&o->m_mutex, NULL);
	
	o->r_tasks = malloc(sizeof(mpCoTask) * in_tasks);
	memset(o->r_tasks, 0, sizeof(mpCoTask) * in_tasks);
	errorAssert(o->r_tasks != NULL, error_memory,
				"Failed allocating %i bytes for tasks",
				sizeof(mpCoTask) * in_tasks);
	
	o->m_nMaxTasks = in_tasks;
	o->m_nData = in_data;
	o->m_cacheSize = in_cache;
	
#ifdef SEQUENTIAL
	o->r_stack = mpStackCreate(in_tasks * 2);
#endif
	
#ifdef COHERENCE_TQ
	o->r_q = mpQueueCreate(2048);
#else
	o->r_q = mpQueueCreate(2);		//Nice temp value
#endif
	
	return o;
}


void mpCReset(mpCoherence *o)
{
	o->m_nTasks = 0;
	
	o->m_min = 0;
#ifndef SEQUENTIAL
	o->m_max = 0;
#endif
	o->m_nBlocking = 0;
	o->m_nCacheStart = 0;
	mpQueueClear(o->r_q);
}


//Adds a task to the coherence engine
void mpCTaskAdd(mpCoherence *o, int in_fn, int in_depStart, int in_depEnd,
				int in_depLeft)
{
	co_pthread_mutex_lock_all(&o->m_mutex);
	
	errorAssert(in_depStart <= in_depEnd, error_flags,
				"Start must be less than or equal to end");
	errorAssert(in_depLeft >= 0, error_flags,
				"DepLeft must be greater or equal to zero");
	
	int rowToAddAt = CoAtomicExtract(o->m_nTasks);
	errorAssert(rowToAddAt < o->m_nMaxTasks, error_memory, "Too many tasks!!");
	
	if (in_depLeft)
		o->r_tasks[rowToAddAt].description.data.depend = DEPEND_INORDER;
	else
		o->r_tasks[rowToAddAt].description.data.depend = DEPEND_ANY_0;
	
	o->r_tasks[rowToAddAt].description.data.function = in_fn;
	
	
	o->r_tasks[rowToAddAt].progress.data.completed = 0;
	o->r_tasks[rowToAddAt].progress.data.working = 0;
	
#ifdef SEQUENTIAL
	
	if (rowToAddAt == 0)
	{
		o->r_tasks[rowToAddAt].progress.data.working = 1;
		
		mpCoMessage m;
		errorAssert(!mpStackPop(o->r_stack, (void**)&m.msg), error_create,
					"Stack not empty!!");
		
		m.data.tid = 0;
		m.data.task = 0;
		errorAssert(mpStackPush(o->r_stack, (void*)m.msg), error_create,
					"Failed putting first item on stack!");
	}
#endif
	
	
	if (in_depEnd < 0)	in_depEnd = 0;
	o->r_tasks[rowToAddAt].description.data.bottom = in_depEnd;
	
	errorAssert(CoAtomicCompareAndSwapInt(o->m_nTasks, rowToAddAt, rowToAddAt+1),
				error_thread, "Failed to atomically increment/modify row");
	
	co_pthread_mutex_unlock_all(&o->m_mutex);
	
#ifdef COHERENCE_TQ
	if (rowToAddAt == 0)
	{
		mpCoMessage data;
		data.data.tid = 0;
		data.data.task = 0;
		mpQueuePushInt(o->r_q,data.msg);
		
		o->r_tasks[0].progress.data.working = 1;
		
		if (in_depLeft == 0)
		{
			o->r_tasks[0].progress.data.working = o->m_nData;
			int x;
			for (x=1; x<o->m_nData; x++)
			{
				data.data.task = x;
				mpQueuePushInt(o->r_q,data.msg);
			}
		}
	}
#endif
}

#ifndef SEQUENTIAL
int mpCTaskObtainPvt(mpCoherence *o, int *out_tid, int *out_fn, int *out_tsk,
					 int x)
{
	mpCoProgress tmp;
	tmp.atom = CoAtomicExtract(o->r_tasks[x].progress.atom);
	
	if ((tmp.data.completed == tmp.data.working
		 && tmp.data.completed != o->m_nData) ||
		(o->r_tasks[x].description.data.depend == DEPEND_ANY_0
		 && tmp.data.working != o->m_nData))
	{
		int cacheStart = CoAtomicExtract(o->m_nCacheStart);
		if (tmp.data.working+1 < cacheStart)
		{
			int cs2 = cacheStart - o->m_nData + o->m_cacheSize;
			
			if (tmp.data.working+1 >= cs2)
			{
				return 0;
			}
		}
		
		if (x != 0)
		{
			//Make sure that we are obeying any dependencies before
			//continuing!
			mpCoProgress tM1;
			tM1.atom = CoAtomicExtract(o->r_tasks[x-1].progress.atom);
			
			int prevLimit = tmp.data.working + o->r_tasks[x].description.data.bottom;
			if (prevLimit >= o->m_nData)
				prevLimit = o->m_nData-1;
			
			if (tM1.data.completed
				<= prevLimit)
			{
				return 0;
			}
		}
		
		mpCoProgress t2;
		t2.atom = tmp.atom;
		int work = t2.data.working;
		t2.data.working++;
		//printf("OBTAINING: %i %i %i\n", x, o->r_tasks[x].description.data.function, work);
		if (CoAtomicCompareAndSwapInt(o->r_tasks[x].progress.atom,
									  tmp.atom, t2.atom))
		{
			//printf("GIVEN: %i %i %i\n", x, o->r_tasks[x].description.data.function, work);
			if (t2.data.working > cacheStart + o->m_cacheSize)
				CoAtomicCompareAndSwapInt(o->m_nCacheStart, cacheStart, cacheStart+1);
			*out_tid = x;
			*out_fn = o->r_tasks[x].description.data.function;
			*out_tsk = work;
			
			//printf("ASSIGNED: %i %i %i\n", x, o->r_tasks[x].description.data.function, work);
			return 1;
		}
		else
		{
			return 0;
		}
	}
	
	return 0;
}
#endif


#ifdef COHERENCE_TQ
void mpCTasksPushPvt(mpCoherence *o, int in_tid)
{
	mpCoDescription cd = o->r_tasks[in_tid].description;
	mpCoProgress cp = o->r_tasks[in_tid].progress;
	
	mpCoProgress pp = o->r_tasks[in_tid-1].progress;
	
	if (pp.data.completed == o->m_nData)
		pp.data.completed = o->m_nData*2;
	
	if (cd.data.depend == DEPEND_ANY_0)
	{
		while (cp.data.working + cd.data.bottom < pp.data.completed
			   && cp.data.working < o->m_nData)
		{
			mpCoMessage data;
			data.data.tid = in_tid;
			data.data.task = cp.data.working;
			mpQueuePushInt(o->r_q,data.msg);
			o->r_tasks[in_tid].progress.data.working++;
			cp = o->r_tasks[in_tid].progress;
		}
	}
	else
	{
		if (cp.data.working == cp.data.completed)
		{
			if (cp.data.working + cd.data.bottom < pp.data.completed
				&& cp.data.working < o->m_nData)
			{
				mpCoMessage data;
				data.data.tid = in_tid;
				data.data.task = cp.data.working;
				mpQueuePushInt(o->r_q,data.msg);
				o->r_tasks[in_tid].progress.data.working++;
			}
		}
	}
}
#endif


void mpCTaskObtain(mpCoherence *o, int *out_tid, int *out_fn, int *out_tsk)
{
#ifdef SEQUENTIAL
	mpCoMessage nm;
	if (mpStackPop(o->r_stack, (void**)&nm))
	{
		*out_tid = nm.data.tid;
		*out_tsk = nm.data.task;
		*out_fn = o->r_tasks[nm.data.tid].description.data.function;
		
		//if (*out_tid < 0 || *out_tid >= o->m_nTasks ||
		//	*out_tsk < 0 || *out_tsk >= o->m_nData ||
		//	*out_fn < 0 || *out_fn > 20)
		//printf("STACK TASK: %i %i %i\n", *out_tid, *out_fn, *out_tsk);
		return;
	}
	
	//printf("HALT FOR TASK\n");
	co_pthread_mutex_lock(&o->m_mutex);
	CoAtomicAdd32Barrier(o->m_nBlocking, 1);
	co_pthread_mutex_unlock(&o->m_mutex);
	
#elif defined COHERENCE_TQ
#else
	co_pthread_mutex_lock_all(&o->m_mutex);
	
	//Scan from min->max for a task to obtain...  (loop a bit before blocking)
	int last = CoAtomicExtract(o->m_nTasks);
	
	int min = CoAtomicExtract(o->m_min);
	int max = CoAtomicExtract(o->m_max)+1;
	if (max >= last)
		max = last-1;
	int x;
	for (x=min; x<=max; x++)
	{
		if (mpCTaskObtainPvt(o, out_tid, out_fn, out_tsk, x))
		{
			//printf("OBTAINED: %i %i %i\n", *out_tid, *out_fn, *out_tsk);
			co_pthread_mutex_unlock_all(&o->m_mutex);
			return;
		}
	}
	
	//Done?
	mpCoProgress tmp;
	tmp.atom = CoAtomicExtract(o->r_tasks[last-1].progress.atom);
	if (tmp.data.completed == o->m_nData)
	{
		*out_tid = -1;
		int v;
		do {
			v = CoAtomicExtract(o->m_nBlocking);
		} while (!CoAtomicCompareAndSwapInt(o->m_nBlocking, v, -100));
		co_pthread_mutex_unlock_all(&o->m_mutex);
		if (v >= 0)
		{
			mpQueuePushInt(o->r_q, 0xFFFFFFFF);
		}
		return;
	}
	
	//BLOCK HERE (use pthread conditions to not waste CPU)!
	co_pthread_mutex_lock(&o->m_mutex);
	CoAtomicAdd32Barrier(o->m_nBlocking, 1);
	co_pthread_mutex_unlock(&o->m_mutex);
	co_pthread_mutex_unlock_all(&o->m_mutex);
#endif
	//printf("BLOCKED!\n");
	*out_tid = mpQueuePopInt(o->r_q);
	if (*out_tid != 0xFFFFFFFF)
	{
		mpCoMessage msg;
		msg.msg = *out_tid;
		
		*out_tid = msg.data.tid;
		*out_fn = o->r_tasks[msg.data.tid].description.data.function;
		*out_tsk = msg.data.task;
		//printf("QUEUE TASK: %i %i %i\n", *out_tid, *out_fn, *out_tsk);
		//printf("WAIT_FOR_TASK: %i %i %i\n", *out_tid, *out_fn, *out_tsk);
	}
	else
	{
		mpQueuePushInt(o->r_q, 0xFFFFFFFF);		//Unlock next thread...
		*out_tid = -1;
	}
	//printf("UNBLOCKED!\n");
}


#ifdef SEQUENTIAL

int mpCFetchMinTask(mpCoherence *o, int *out_tid, int *out_fn, int *out_tsk)
{
	mpCoProgress t;
	//Before fetching a task; see if there is one that has been forgotten...
	int m, origM;
	m = origM = CoAtomicExtract(o->m_min);
	t.atom = CoAtomicExtract(o->r_tasks[m].progress.atom);
	while (m < o->m_nTasks-1 && t.data.completed == o->m_nData)
	{
		m++;
		t.atom = CoAtomicExtract(o->r_tasks[m].progress.atom);
	}
	if (m != origM)
	{
		CoAtomicCompareAndSwapInt(o->m_min, origM, m);
	}
	
	if (t.data.completed == t.data.working)
	{
		mpCoProgress nP = t;
		nP.data.working++;
		if (CoAtomicCompareAndSwapInt(o->r_tasks[m].progress.atom,
									  t.atom, nP.atom))
		{
			*out_tid = m;
			*out_tsk = nP.data.completed;
			*out_fn = o->r_tasks[m].description.data.function;
		}
		else
			return 0;
	}
	else
		return 0;
	
	return 1;
}

void mpCTaskComplete(mpCoherence *o, int in_tid, int in_fn, int in_tsk,
					 int *out_tid, int *out_fn, int *out_tsk)
{
	//Quit condition...
	if (in_tid == o->m_nTasks-1 && in_tsk == o->m_nData - 1)
	{
		mpQueuePushInt(o->r_q, 0xFFFFFFFF);
		*out_tid = -1;
		return;
	}
	
	//Write out the task as completed...
	mpCoProgress pg, nPg;
	pg.atom = CoAtomicExtract(o->r_tasks[in_tid].progress.atom);
	//	errorAssert(pg.data.working-1 == in_tsk && in_tsk == pg.data.completed,
	//				error_specify,
	//				"Task not marked as currently dispatched (tid=%i tsk=%i w=%i c=%i)",
	//					in_tid, in_tsk, pg.data.working, pg.data.completed);
	nPg = pg;
	nPg.data.completed = nPg.data.working;
	
	//printf("COMPLETE: %i %i %i\n", in_tid, in_fn, in_tsk);
	//OK, mark item to the right...
	mpCoMessage msgA;
	msgA.data.tid = 0xFFFF;
	if ((in_tid == 0
		 || in_tsk >= o->m_nData - o->r_tasks[in_tid].description.data.bottom-1)
		&& in_tsk < o->m_nData - 1)
	{
		nPg.data.working++;
		errorAssert(CoAtomicCompareAndSwapInt(o->r_tasks[in_tid].progress.atom,
											  pg.atom, nPg.atom), error_specify, "Task should be on one thread");
		
		//printf("BOOT TASK: %i %i\n", in_tsk+1, in_tid);
		msgA.data.task = in_tsk + 1;
		msgA.data.tid = in_tid;
		
		//		int v = CoAtomicExtract(o->m_nBlocking);
		//		if (v > 0)
		//		{
		//			//printf("Recuperating from cache misses!\n");
		//			co_pthread_mutex_lock(&o->m_mutex);
		//			
		//			v = CoAtomicExtract(o->m_nBlocking);
		//			if (v > 0)
		//			{
		//				mpQueuePushInt(o->r_q,msgA.msg);
		//				//printf("FORWARDING: %i %i %i\n", *out_tid, *out_fn, *out_tsk);
		//				CoAtomicAdd32Barrier(o->m_nBlocking, -1);
		//				msgA.data.tid = 0xFFFF;
		//			}
		//			
		//			co_pthread_mutex_unlock(&o->m_mutex);
		//		}
	}
	else if (in_tsk < o->m_nData-1 && in_tid != 0)
	{
		mpCoProgress prevProg;
		prevProg.atom = CoAtomicExtract(o->r_tasks[in_tid-1].progress.atom);
		if (prevProg.data.completed == prevProg.data.working
			&& prevProg.data.completed-1 - o->r_tasks[in_tid].description.data.bottom
			>= in_tsk+1)
		{
			nPg.data.working++;
			errorAssert(CoAtomicCompareAndSwapInt(o->r_tasks[in_tid].progress.atom,
												  pg.atom, nPg.atom), error_specify, "Task should be on one thread");
			msgA.data.task = in_tsk + 1;
			msgA.data.tid = in_tid;
			
			//printf("Added task: %i %i\n", in_tid, in_tsk+1);
			
			//			int v = CoAtomicExtract(o->m_nBlocking);
			//			if (v > 0)
			//			{
			//				//printf("Recuperating from cache misses!\n");
			//				co_pthread_mutex_lock(&o->m_mutex);
			//				
			//				v = CoAtomicExtract(o->m_nBlocking);
			//				if (v > 0)
			//				{
			//					mpQueuePushInt(o->r_q,msgA.msg);
			//					//printf("FORWARDING: %i %i %i\n", *out_tid, *out_fn, *out_tsk);
			//					CoAtomicAdd32Barrier(o->m_nBlocking, -1);
			//					msgA.data.tid = 0xFFFF;
			//				}
			//				
			//				co_pthread_mutex_unlock(&o->m_mutex);
			//			}
		}
		else
		{
			errorAssert(CoAtomicCompareAndSwapInt(o->r_tasks[in_tid].progress.atom,
												  pg.atom, nPg.atom), error_specify, "Too many tasks accessing same data!");
		}
	}
	else
	{
		errorAssert(CoAtomicCompareAndSwapInt(o->r_tasks[in_tid].progress.atom,
											  pg.atom, nPg.atom), error_specify, "Too many tasks accessing same data!");
	}
	
	//Mark items above...
	mpCoMessage msgB;
	msgB.data.tid= 0xFFFF;
	if (in_tid < o->m_nTasks-1)
	{
		mpCoProgress nextProg;
	retry:
		nextProg.atom = CoAtomicExtract(o->r_tasks[in_tid+1].progress.atom);
		int ab = in_tsk - o->r_tasks[in_tid+1].description.data.bottom;
		if (ab >= 0 && nextProg.data.working == nextProg.data.completed
			&& ab >= nextProg.data.working+1-1)
		{
			mpCoProgress newNextProg = nextProg;
			newNextProg.data.working++;
			
			//printf("RESUME TASK: %i %i\n",ab, in_tid+1);
			if (AtomicCompareAndSwapInt(o->r_tasks[in_tid+1].progress.atom,
										nextProg.atom, newNextProg.atom))
			{
				msgB.data.task = nextProg.data.completed;
				msgB.data.tid = in_tid+1;
			}
			else
			{
				//printf("FAILED COMPARE AND SWAP!\n");
				goto retry;
			}
			/*printf("Add: ab=%i working=%i complete=%i tid=%i\n",
			 ab, nextProg.data.working, nextProg.data.completed, in_tid+1);*/
		}
		/*else
		 {
		 printf("No Add: ab=%i working=%i complete=%i tid=%i\n",
		 ab, nextProg.data.working, nextProg.data.completed, in_tid+1);
		 }/**/
	}
	
	if (msgA.data.tid == 0xFFFF)
	{
		msgA = msgB;
		msgB.data.tid = 0xFFFF;
	}
	
	if (msgA.data.tid == 0xFFFF)
	{
		if (!mpCFetchMinTask(o, out_tid, out_fn, out_tsk))
			mpCTaskObtain(o, out_tid, out_fn, out_tsk);
	}
	else
	{
		if (!mpCFetchMinTask(o, out_tid, out_fn, out_tsk))
		{
			*out_tid = msgA.data.tid;
			*out_tsk = msgA.data.task;
			*out_fn = o->r_tasks[msgA.data.tid].description.data.function;
		}
		else
		{
			int v = CoAtomicExtract(o->m_nBlocking);
			if (v > 0)
			{
				//printf("Recuperating from cache misses!\n");
				co_pthread_mutex_lock(&o->m_mutex);
				
				v = CoAtomicExtract(o->m_nBlocking);
				if (v == 0)
				{
					co_pthread_mutex_unlock(&o->m_mutex);
					errorAssert(mpStackPush(o->r_stack, (void*)msgA.msg), error_specify,
								"Unable to add task to run!");
					//printf("PUSH 1: %i %i\n", msgB.data.tid, msgB.data.task);
					return;
				}
				mpQueuePushInt(o->r_q,msgA.msg);
				//printf("FORWARDING: %i %i %i\n", *out_tid, *out_fn, *out_tsk);
				CoAtomicAdd32Barrier(o->m_nBlocking, -1);
				
				co_pthread_mutex_unlock(&o->m_mutex);
			}
			else
			{
				errorAssert(mpStackPush(o->r_stack, (void*)msgA.msg), error_specify,
							"Unable to add task to run!");
				//printf("PUSH 2: %i %i\n", msgB.data.tid, msgB.data.task);
			}
		}
		
		if (msgB.data.tid != 0xFFFF)
		{
			int v = CoAtomicExtract(o->m_nBlocking);
			if (v > 0)
			{
				//printf("Recuperating from cache misses!\n");
				co_pthread_mutex_lock(&o->m_mutex);
				
				v = CoAtomicExtract(o->m_nBlocking);
				if (v == 0)
				{
					co_pthread_mutex_unlock(&o->m_mutex);
					errorAssert(mpStackPush(o->r_stack, (void*)msgB.msg), error_specify,
								"Unable to add task to run!");
					//printf("PUSH 1: %i %i\n", msgB.data.tid, msgB.data.task);
					return;
				}
				mpQueuePushInt(o->r_q,msgB.msg);
				//printf("FORWARDING: %i %i %i\n", *out_tid, *out_fn, *out_tsk);
				CoAtomicAdd32Barrier(o->m_nBlocking, -1);
				
				co_pthread_mutex_unlock(&o->m_mutex);
			}
			else
			{
				errorAssert(mpStackPush(o->r_stack, (void*)msgB.msg), error_specify,
							"Unable to add task to run!");
				//printf("PUSH 2: %i %i\n", msgB.data.tid, msgB.data.task);
			}
		}
	}
	
}

#else

void mpCTaskComplete(mpCoherence *o, int in_tid, int in_fn, int in_tsk,
					 int *out_tid, int *out_fn, int *out_tsk)
{
	//printf("COMPLETED: %i %i %i\n", in_tid, in_fn, in_tsk);
	//Mark the task as completed
	co_pthread_mutex_lock_all(&o->m_mutex);
	
	mpCoProgress tmp;
	tmp.atom = CoAtomicExtract(o->r_tasks[in_tid].progress.atom);
	int min = CoAtomicExtract(o->m_min);
	int max = CoAtomicExtract(o->m_max);
	
	mpCoDescription desc;
	desc.atom = o->r_tasks[in_tid].description.atom;
	
	if (desc.data.depend == DEPEND_ANY_0)
	{
		while (tmp.data.completed != in_tsk)		//Spin until task completes
		{
			co_pthread_mutex_unlock_all(&o->m_mutex);
			co_pthread_mutex_lock_all(&o->m_mutex);
			tmp.atom = CoAtomicExtract(o->r_tasks[in_tid].progress.atom);
		}
	}
	
	mpCoProgress newVal;
	newVal.atom = tmp.atom;
	newVal.data.completed = newVal.data.completed+1;
	
	if (tmp.data.working == o->m_nData)
	{
		if (min == in_tid)
		{
			if (desc.data.depend == DEPEND_ANY_0)
			{
				if (CoAtomicCompareAndSwapInt(o->m_min, min, min+1))
				{
					while (!CoAtomicCompareAndSwapInt(o->m_nCacheStart,
													  CoAtomicExtract(o->m_nCacheStart), 0));
				}
			}
			else
			{
				errorAssert(CoAtomicCompareAndSwapInt(o->m_min, min, min+1),
							error_thread, "Failed incrementing min!");
				while (!CoAtomicCompareAndSwapInt(o->m_nCacheStart,
												  CoAtomicExtract(o->m_nCacheStart), 0));
			}
		}
		min++;
	}
	
	if (in_tid == max)
	{
		if (desc.data.depend == DEPEND_ANY_0)
		{
			CoAtomicCompareAndSwapInt(o->m_max, max, max+1);
		}
		else
		{
			errorAssert(CoAtomicCompareAndSwapInt(o->m_max, max, max+1),
						error_thread, "Failed incrementing max!");
		}
	}
	
	errorAssert(tmp.data.completed+1 == tmp.data.working
				|| desc.data.depend == DEPEND_ANY_0,
				error_thread, "Already marked as completed (%i %i)!",
				tmp.data.completed+1, tmp.data.working);
	
	if (desc.data.depend == DEPEND_ANY_0)
	{
		while (!CoAtomicCompareAndSwapInt(o->r_tasks[in_tid].progress.atom,
										  tmp.atom, newVal.atom))
		{
			tmp.atom = CoAtomicExtract(o->r_tasks[in_tid].progress.atom);
			newVal.atom = tmp.atom;
			
			newVal.data.completed = newVal.data.completed + 1;
		}
	}
	else
	{
		errorAssert(CoAtomicCompareAndSwapInt(o->r_tasks[in_tid].progress.atom,
											  tmp.atom, newVal.atom),
					error_thread, "Only 1 thread per task!!!");
	}
	
#ifdef COHERENCE_TQ
	//Write out all the tasks we can execute...
	if (in_tid == o->m_nTasks-1 && in_tsk == o->m_nData - 1)
	{
		mpQueuePushInt(o->r_q, 0xFFFFFFFF);
	}
	else
	{		
		//Unblock to the left?
		if (in_tsk != o->m_nData - 1)
		{
			if (in_tid == 0)
			{
				if (o->r_tasks[0].progress.data.working < o->m_nData)
				{
					mpCoMessage data;
					data.data.tid = 0;
					data.data.task = o->r_tasks[0].progress.data.working;
					mpQueuePushInt(o->r_q,data.msg);
					o->r_tasks[0].progress.data.working++;
				}
			}
			else
			{
				mpCTasksPushPvt(o, in_tid);
			}
		}
		
		if (in_tid+1 < o->m_nTasks)
			mpCTasksPushPvt(o, in_tid+1);
	}
	
	co_pthread_mutex_unlock_all(&o->m_mutex);
	
	
	mpCTaskObtain(o, out_tid, out_fn, out_tsk); 
#else
	
	int totalTasks = CoAtomicExtract(o->m_nTasks);
	max++;
	if (max >= totalTasks)
		max = totalTasks-1;
	
	int s = in_tid;
	if (s < min)	s = min;
	if (s > max)	s = max;
	int e = s+1;
	//if (e < min)	e = min;
	if (e > max)	e = max;
	
	int x;
	for (x=e; x>=s; x--)
	{
		if (mpCTaskObtainPvt(o, out_tid, out_fn, out_tsk, x))
			break;
	}
	if (x < s)
	{
		co_pthread_mutex_unlock_all(&o->m_mutex);
		mpCTaskObtain(o, out_tid, out_fn, out_tsk);
		co_pthread_mutex_lock_all(&o->m_mutex);
		//printf("BEST GUESS FAILED %i - %i ==> %i - %i\n", in_tid, in_tsk,
		//									*out_tid, *out_tsk);
	}
	
	//Signal another thread to awake
	int v = CoAtomicExtract(o->m_nBlocking);
	if (v > 0)
	{
		//printf("Recuperating from cache misses!\n");
		co_pthread_mutex_lock(&o->m_mutex);
		
		v = CoAtomicExtract(o->m_nBlocking);
		if (v == 0)
		{
			co_pthread_mutex_unlock(&o->m_mutex);
			co_pthread_mutex_unlock_all(&o->m_mutex);
			return;
		}
		mpCoMessage data;
		data.data.tid = *out_tid;
		data.data.task = *out_tsk;
		mpQueuePushInt(o->r_q,data.msg);
		//printf("FORWARDING: %i %i %i\n", *out_tid, *out_fn, *out_tsk);
		CoAtomicCompareAndSwapInt(o->m_nBlocking, v, v-1);
		
		
		for (x=max;x>=min;x--)
		{
			v = CoAtomicExtract(o->m_nBlocking);
			if (v == 0)
				break;
			
			int tmp_tid, tmp_fn, tmp_tsk;
			if (mpCTaskObtainPvt(o, &tmp_tid, &tmp_fn, &tmp_tsk, x))
			{
				//printf("FORWARDING: %i %i %i\n", tmp_tid, tmp_fn, tmp_tsk);
				CoAtomicCompareAndSwapInt(o->m_nBlocking, v, v-1);
				data.data.tid = tmp_tid;
				data.data.task = tmp_tsk;
				mpQueuePushInt(o->r_q,data.msg);
			}
		}
		
		
		co_pthread_mutex_unlock(&o->m_mutex);
		co_pthread_mutex_unlock_all(&o->m_mutex);
		
		//Finally worry about this thread...
		mpCTaskObtain(o, out_tid, out_fn, out_tsk);
	}
	else
	{
		co_pthread_mutex_unlock_all(&o->m_mutex);
	}
#endif
	//printf("RETURNING: (%i %i %i) %i %i %i\n",
	//	   in_tid, in_fn, in_tsk,
	//	   *out_tid, *out_fn, *out_tsk);
}

#endif

#endif
