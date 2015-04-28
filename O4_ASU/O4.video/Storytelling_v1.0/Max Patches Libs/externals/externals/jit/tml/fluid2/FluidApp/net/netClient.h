/*
 *  netClient.h
 *  FluidApp
 */

#ifndef NETCLIENT_H
#define NETCLIENT_H

#include <pthread.h>

#include "net.h"

//Very simple, as should be...
struct netClient {
	int m_socket;
	
	//Set to a valid value when we're threaded...
	pthread_t m_clientThread;
};

//Hack for the server code...
netClient *netClientFromSocket(int socket);

#ifdef CELL
#define FD_COPY(a,b)	*b = *a
#endif

#endif
