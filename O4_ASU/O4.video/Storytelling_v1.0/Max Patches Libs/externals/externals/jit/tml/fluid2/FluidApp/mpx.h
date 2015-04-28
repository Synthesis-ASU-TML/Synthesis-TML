/*
 *  mp.h
 *  FluidApp
 */

#ifndef MP_H
#define MP_H

#include "error.h"
#include "memory.h"
#include <pthread.h>

////////////////////////////////////////////////////////////////////////////////
//File dealing with the general multiprocessing issues.  Namely, a wrapper
//to protect pthread_mutexes at the moment.  Later on, multi-machine
//abstractions may be dumped here...
//
//	Note the error-processing overhead.  This assumes locks are used for
//	substantial amounts of work.  For the rest, there are atomic instructions.

typedef struct mpMutex mpMutex;

mpMutex *mpMutexCreate();

void mpMutexLock(mpMutex *in_m);
void mpMutexUnlock(mpMutex *in_m);


////////////////////////////////////////////////////////////////////////////////
//	The Queue - a way for threads to communicate by queing up messages.
//		Essentially the core of a basic message-passing API.
//
//		Each worker thread as a queue, as well as the main thread.  This allows
//		for easy communication.
//
//		Note - stalls may occur if these queues get filled to the brim.
//				At the moment, everything is done using pthreads, however
//				spinlocks might do a better job...
typedef struct mpQueue mpQueue;

mpQueue *mpQueueCreate(int in_maxSize);

void mpQueuePush(mpQueue *in_q, void *in_dat);
void *mpQueuePop(mpQueue *in_q);

void mpQueuePushInt(mpQueue *in_q, int in_dat);
int mpQueuePopInt(mpQueue *in_q);

void mpQueueClear(mpQueue *in_q);



////////////////////////////////////////////////////////////////////////////////
//	Atomic utility / wrappers
#ifndef CELL

//Mac OS specific atomics
#include <libkern/OSAtomic.h>

#define atomic_int32	int32_t

#define AtomicAdd32Barrier(x,y)				OSAtomicAdd32Barrier((y), &(x))
#define AtomicCompareAndSwapInt(d, o, n)	OSAtomicCompareAndSwap32Barrier((o), (n), &(d))
#define AtomicCompareAndSwapPtr(d, o, n)	OSAtomicCompareAndSwapPtrBarrier((o), (n), &(d))
#define AtomicCompareInt(d, o)				OSAtomicCompareAndSwap32Barrier((o), (o), &(d))
#define AtomicExtract(d)					OSAtomicAdd32Barrier(0, &(d))

#else

#define atomic_int32	int32_t

//Other atomics  (GCC 4.2+)
#define AtomicAdd32Barrier(x,y)				__sync_add_and_fetch(&(x), (y))
#define AtomicCompareAndSwapInt(d, o, n)	__sync_bool_compare_and_swap(&(d), (o), (n))
#define AtomicCompareAndSwapPtr(d, o, n)	__sync_bool_compare_and_swap(&(d), (o), (n))
#define AtomicCompareInt(d, o)				__sync_bool_compare_and_swap(&(d), (o), (o))
#define AtomicExtract(d)					__sync_add_and_fetch(&(d), 0)

#endif


typedef union atomic32Split
{
	atomic_int32 atom;
	struct
	{
		int16_t		data;
		int16_t		value;
	} data;
	
} atomic32Split;


////////////////////////////////////////////////////////////////////////////////
//	The second queue - a queue based on atomic instructions
typedef struct mpStack mpStack;

mpStack *mpStackCreate(int in_maxSize);

int mpStackPush(mpStack *q, void *dat);		//1 for success, else FAIL!
int mpStackPop(mpStack *q, void **out_dat);


////////////////////////////////////////////////////////////////////////////////
//	Data forms the basis of optimizations for data-bound software.  As the
//	number of cores increases, the more "data-bound" the software becomes.
//
//	This is essentially a way to "organize" data.  Data is a container of
//	tasks.  Tasks depend upon other tasks.
//
//	There is a "fixed" amount of "data".  A "datum" is defined as a
//	set of memory that is worked upon by a task.  "datum" can be complex
//	and include multiple records.
//
//	Each "datum" also resides on seperate cache lines.
//
//	For a fluid simulation, there is at least 8*row "datum"
//
//	These datum are mapped to 8*row*(40+40+10) = 8*row*(90) tasks
//	(19 is an approximation for non-iterative tasks).
//
//	For each task, we have at least 2 "ready" tasks, 4 max.  Each ready task
//	gets it's counters reduced.  The one whose most memory is in cache and
//	all dependencies met gets executed.
//
typedef struct mpCoherence mpCoherence;


//Creates a new coherence object.  This is seperate from the threading
//engine for simplicity.
//	data is the number of data sets to work with
//	tasks is the number of tasks that will be run (usually about 90-100)
//	cache is the amount of data that can be loaded into the proc's cache,
//	NOTE: values will need tuning...
mpCoherence *mpCCreate(int in_data, int in_tasks, int in_cache);


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
#ifdef USE_GRANDCENTRAL
void mpCTaskAdd(mpCoherence *o, void*x,int in_fn, int in_depStart,
				void(*onExecuteTask)(void*x,int tid, int fn));
void mpCTaskLaunch(mpCoherence *o);
void mpCTaskWait(mpCoherence *o);		//For async work...
#else
void mpCTaskAdd(mpCoherence *o, int in_fn, int in_depStart, int in_depEnd,
				int in_depLeft);
//This is so that the CBE task manager can snoop and commence DMA transfers
//within the proc to get data ready for the next round.  On regular PCs,
//these are run within a flooded task world.
//	The function and task are output in the first, and input in the second.
//	out_tid is -1 if there are no more tasks.  The function will block if
//	pending tasks are waiting on dependencies.
//	out_tid is a handle to the task	- for internal maintenance
void mpCTaskObtain(mpCoherence *o, int *out_tid, int *out_fn, int *out_tsk);
//	Tells of our completed task and gets the next one!
void mpCTaskComplete(mpCoherence *o, int in_tid, int in_fn, int in_tsk,
					 int *out_tid, int *out_fn, int *out_tsk);
#endif


//Resets the task scheduler (so we can re-add tasks and execute them happily!)
//	Not thread safe - all tasks must be completed before calling
void mpCReset(mpCoherence *o);

////////////////////////////////////////////////////////////////////////////////
//	An updated version of the used threading paradigm to better suit the cell
//	processor.  What we have are 'n' worker threads.  Each of these threads
//	has some work to do.  The number is determined at initialization of the
//	system.
//
//	Exception handling is safe across an arbitrary number of threads since
//	data used for exceptions is stored within the stack.

//Initialize core MP - essentially the task world as an opaque global...
//	Call mpTerminate to join all threads...
void mpInit(int in_workers);		//# of worker threads
void mpTerminate();

int mpSupportsGPU();				//Returns # of supported GPU cores (if any)

//Function for a task... (obj points to something passed in on launch that
//can be retained)
typedef void(*mpTaskFn)(void *in_obj);

//Will the target task run on the CPU or the GPU?	Depending, we'll launch
//on a separate thread.  This does not take into account multiple GPUs yet...
#define MP_TASK_CPU		0x00000001
#define MP_TASK_GPU		0x00000002

//Start a new task.  Note - the main thread is the controller, and these are
//the workers.  A set number of workers exist from the start of the app
//	("optimal" number based on number of cores).
void mpTaskLaunch(mpTaskFn in_task, void *in_obj, int target);


//Start a task parallelized over the number of cores.  Differs from mpTaskLaunch
//by setting up a queue entry for each core.  Useful when simple sync methods
//can be used (eg. atomic instructions and the like)
//	Returns number of created tasks
int mpTaskFlood(mpTaskFn in_task, void *in_obj, int target);




////////////////////////////////////////////////////////////////////////////////
//	PThread utilities / wrappers...
void x_pthread_create(pthread_t *thread, const pthread_attr_t *attr, void *(*start_routine)(void*arg), void *arg);
void *x_pthread_join(pthread_t thread);

void x_pthread_mutex_init(pthread_mutex_t *mutex, const pthread_mutexattr_t *attr);
void x_pthread_raise(int errValue, char *context);
#define x_pthread_mutex_lock(X) { int __pvt_e = pthread_mutex_lock(X); if (__pvt_e) x_pthread_raise(__pvt_e,"Mutex Lock");}

#define x_pthread_mutex_unlock(X) { int __pvt_e = pthread_mutex_unlock(X); if (__pvt_e) x_pthread_raise(__pvt_e,"Mutex Unlock");}

void x_pthread_cond_init(pthread_cond_t *cond, const pthread_condattr_t *attr);
void x_pthread_cond_wait(pthread_cond_t *cond, pthread_mutex_t *mutex);
void x_pthread_cond_signal(pthread_cond_t *cond);

#endif
