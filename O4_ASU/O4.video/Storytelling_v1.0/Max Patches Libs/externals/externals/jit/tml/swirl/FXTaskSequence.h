//
//  FXTaskSequence.h
//  CocoaGame
//
//		This is, in my opinion, a best-case interface for objects that want
//		to be threaded but follow a very linear style of progreamming.
//
//		Main inspiration includes for-loops where each iteration is a thread.
//
//		This object assumes the for-loops (mega-time-wasters) will be using
//		atomic instructions for speed (PPC & barriers might not see a difference).
//
//		This object creates the threads, joins them, and pauses them at key
//		points for synchronization purposes...
//
//		Obviously, thread-safe, and one instance per-thread.

#import <Cocoa/Cocoa.h>
#import <pthread.h>


//Forward declaration so things don't break.........
@protocol FXTaskDispatcher;

@interface FXTaskSequence : NSObject
{
	//The current task.  We start at 0, each thread will block
	//when they finish a given task.
	int curTask;
	
	//The number of threads that are blocked.  Once this equals the number
	//of threads, it's reset, and everyone gets back to work...
	int numBlocked;
	
	//The number of threads.
	int numThreads;
	
	//The threads...
	pthread_t *threads;
	
	//The mutex
	pthread_mutex_t mutex;
	
	//The condition
	pthread_cond_t condition;
	
	//The dispatched
	id<FXTaskDispatcher> dispatcher;
}

//Create a new task sequence, specifying the number of threads that we want...
- (FXTaskSequence*)initWithNumThreads:(int)in_numThreads
						dispatchedTo:(id<FXTaskDispatcher>)in_disp;

//Changes the object to which we dispatch.
// NOT thread-safe.  Call before launch!
- (void)setDispatchTo:(id<FXTaskDispatcher>)in_disp;

//Changes the number of threads allowed in dispatch...
//	NOT thread-safe.  Call before launch!
- (void)setNumberOfThreads:(int)in_numThreads;

//Call this to jump to the next task... (all threads will come together)
//	Only valid within spawned threads.
- (void)waitForTask;

//Launches the threads!!!!
// NOT thread-safe.
- (void)launch;

@end


//The protocol describes the methods that the object (that wishes to
//parallelize a task) must implement.
@protocol FXTaskDispatcher

//Runs the given task.  in_seq's methods are called to keep everything
//ok.
- (void)runTaskAsSequence:(FXTaskSequence*)in_seq;

//Hmm, a task has been completed.  Please clean-up for the next!!!
- (void)onTaskCompleted;

@end
