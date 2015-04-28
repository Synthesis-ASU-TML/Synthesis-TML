//
//  FXTaskSequence.m
//  CocoaGame
//

#import "FXTaskSequence.h"


@implementation FXTaskSequence
///////////////////////////////////////////////////////////////////////////////
//
//	Private/Hidden/Implicit Methods
//
- init
{
	[NSException raise:@"bad" format:@"call initWithNumThreads instead!"];
	return nil;
}


- (void)dealloc
{
	pthread_mutex_destroy(&mutex);
	pthread_cond_destroy(&condition);
	
	free(threads);
	
	[super dealloc];
}


///////////////////////////////////////////////////////////////////////////////
//
//	Public Methods
//

//Create a new task sequence, specifying the number of threads that we want...
- (FXTaskSequence*)initWithNumThreads:(int)in_numThreads dispatchedTo:(id<FXTaskDispatcher>)in_disp
{
	if ([super init] != nil)
	{
		dispatcher = in_disp;
		numThreads = in_numThreads;
		numBlocked = 0;
		curTask = 0;
		
		pthread_mutex_init(&mutex, NULL);
		pthread_cond_init(&condition, NULL);
		
		threads = malloc(sizeof(pthread_t)*numThreads);
		
		return self;
	}
	
	[NSException raise:@"bad" format:@"super-init failed!"];
	return nil;
}

- (void)setDispatchTo:(id<FXTaskDispatcher>)in_disp
{
	dispatcher = in_disp;
}


- (void)setNumberOfThreads:(int)in_numThreads
{
	if (numThreads == in_numThreads)
		return;

	free(threads);
	numThreads = in_numThreads;
	threads = malloc(sizeof(pthread_t)*numThreads);
}

//Call this to jump to the next task... (all threads will come together)
- (void)waitForTask
{
	pthread_mutex_lock(&mutex);
	
	int task = curTask+1;
	numBlocked++;
	
	if (numBlocked == numThreads)
	{
		curTask++;
		numBlocked = 0;
		[dispatcher onTaskCompleted];
		pthread_cond_broadcast(&condition);
	}
	else
	{
		while (task != curTask)
			pthread_cond_wait(&condition, &mutex);
	}
	
	pthread_mutex_unlock(&mutex);
}


// This allows me to do a few little hacks to get things working....
void *FXTaskSequence_Thread(void *arg)
{
	FXTaskSequence* obj = (FXTaskSequence*)arg;
	
	[obj->dispatcher runTaskAsSequence:obj];
	
	return NULL;
}


//Launches the threads!!!!
- (void)launch
{
	int x;
	
	[dispatcher onTaskCompleted];
	for (x=0; x<numThreads; x++)
	{
		pthread_create(&threads[x], NULL, FXTaskSequence_Thread, (void*)self);
	}
	
	for (x=0; x<numThreads; x++)
	{
		pthread_join(threads[x], NULL);
	}
}

@end
