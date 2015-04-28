/*
 *  netServer.h
 *  FluidApp
 */

#ifndef NETSERVER_H
#define NETSERVER_H

#include <pthread.h>
#include "netClient.h"
#include "net.h"
#include "mpx.h"
#include "memory.h"

struct netServer {
	//The socket that the server listens to....
	int m_socket;
	
	//The creation flags....
	int m_flags;
	
	//The data...
	void *m_userData;
	netServerFn_onConnect m_userFunction;
	
	//The thread, and the mutex...
	mpMutex *r_mutex;
	pthread_t m_serverThread;
	
	//Temp work item...
	netClient *m_client;
	
	//Number of threads currently running
	int m_runningThreads;
	
	//Is the server dead?  (set to 1 if it's dead)
	int32_t m_isDead;
	
	//Delegate (send messages to here)
	netServerDelegate m_delegate;
};

#endif
