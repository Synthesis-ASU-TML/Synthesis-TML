/*
 *  mp_x.c
 *  FluidApp
 *
 */

#include "mpx.h"
#include "memory.h"

#include <errno.h>

void x_pthread_raise(int errValue, char *context)
{
	switch (errValue)
	{
		case 0: break;
		
		case EDEADLK:
			errorRaise(error_thread, "%s: A dead-lock has occured", context);
			
		case EINVAL:
			errorRaise(error_thread, "%s: Invalid attribute specified", context);
			
		case ENOMEM:
			errorRaise(error_thread, "%s: Not enough memory", context);
			
		case EAGAIN:
			errorRaise(error_thread, "%s: Can't create now... try later?", context);
			
		case EPERM:
			errorRaise(error_thread, "%s: Attempt to unlock unlocked mutex", context);
			
		case ESRCH:
			errorRaise(error_thread, "%s: Not Found", context);
			
		default:
			errorRaise(error_thread, "%s: Unknown error", context);
	}
}


void x_pthread_mutex_init(pthread_mutex_t *mutex, const pthread_mutexattr_t *attr)
{
	x_pthread_raise(pthread_mutex_init(mutex, attr), "Mutex Create");
}


void x_pthread_cond_init(pthread_cond_t *cond, const pthread_condattr_t *attr)
{
	x_pthread_raise(pthread_cond_init(cond, attr), "Condition");
}


void x_pthread_cond_wait(pthread_cond_t *cond, pthread_mutex_t *mutex)
{
	x_pthread_raise(pthread_cond_wait(cond, mutex), "Condition Wait");
}


void x_pthread_cond_signal(pthread_cond_t *cond)
{
	x_pthread_raise(pthread_cond_signal(cond), "Condition Signal");
}

void x_pthread_create(pthread_t *thread, const pthread_attr_t *attr, void *(*start_routine)(void*arg), void *arg)
{
	x_pthread_raise(pthread_create(thread, attr, start_routine, arg), "Thread Create");
}

void *x_pthread_join(pthread_t thread)
{
	void *toRet;
	x_pthread_raise(pthread_join(thread, &toRet), "Thread Join");
	return toRet;
}
