/*
 *  netServer.c
 *  FluidApp
 *
 */

#include "netServer.h"

#include <stdlib.h>
#include <stdio.h>

#include <string.h>

#include <sys/select.h>
#include <sys/types.h>
#include <sys/time.h>
#include <sys/socket.h>
#include <netdb.h>
#include <errno.h>
#include <unistd.h>

#include "memory.h"
#include "mpx.h"

void *netServerConnection(void *eData)
{
	netServer *sData = (netServer*)eData;
	
	mpMutexLock(sData->r_mutex);
	
	if (sData->m_delegate.onConnect != NULL)
		sData->m_delegate.onConnect(sData->m_delegate.obj, sData);
	
	netClient *cur = sData->m_client;
	sData->m_client = NULL;
	
	mpMutexUnlock(sData->r_mutex);
	
	x_try
		sData->m_userFunction(sData->m_userData, sData, cur);
	x_catch(e)
		errorListAdd(e);
	x_finally
	
	x_free(cur);
	
	mpMutexLock(sData->r_mutex);
	sData->m_runningThreads--;
	
	if (sData->m_delegate.onDisconnect != NULL)
		sData->m_delegate.onDisconnect(sData->m_delegate.obj, sData);
	
	mpMutexUnlock(sData->r_mutex);
	
	return NULL;
}


void *netServerThread(void *eData)
{
	x_try
		netServer *sData = (netServer*)eData;
		
		fd_set selectSet;
		fd_set copySet;
		
		mpMutex *mtx = sData->r_mutex;
		
		mpMutexLock(mtx);
		
		FD_ZERO(&selectSet);
		FD_SET(sData->m_socket, &selectSet);
		
		mpMutexUnlock(mtx);
		
		for (;;)
		{
			FD_COPY(&selectSet, &copySet);
			
			//Wait for a bit of time, locking the mutex...
			mpMutexLock(mtx);
			
			if (sData->m_client == NULL)
			{
				if (sData->m_socket != -1)
				{
					struct timeval to;
					to.tv_sec = 5;
					to.tv_usec = 0;
					int sel = select(sData->m_socket+1, &copySet, NULL, NULL, &to);
					
					if (sel == -1)
					{
						mpMutexUnlock(mtx);
						goto done;
					}
					
					if (!((sData->m_flags) & NETS_SINGLE_CLIENT) ||
									sData->m_runningThreads == 0)
					{
						if (sel != 0)			//Not timed out
						{
							struct sockaddr remoteAddress;
							socklen_t remoteSize;
							remoteSize = sizeof(remoteAddress);
							int clientSock = accept(sData->m_socket,
													&remoteAddress,
													&remoteSize);
							if (clientSock != -1)
							{
								printf("Server got connection\n");
								netClient *client = netClientFromSocket(clientSock);
								if (client != NULL)
								{
									pthread_t tmp;
								
								
									sData->m_client = client;
									sData->m_runningThreads++;
									
									x_pthread_create(&tmp, NULL, netServerConnection,
													eData);
								}
							}
						}
					}
				}
				else
				{
					mpMutexUnlock(mtx);
					goto done;
				}
			}
			
			mpMutexUnlock(mtx);
		}
	x_catch(e)
		printf("%s",errorMsg(e));
	x_finally

done:
	printf("Killed Server!\n");
	return NULL;
}


int netServerTryingToQuit(netServer *in_server)
{
	return AtomicExtract(in_server->m_isDead);
}


void netServerFree(void *in_o)
{
	netServer *in_svr = (netServer*)in_o;
	mpMutex *mtx = in_svr->r_mutex;
	
	//Mark the server as dead (so that spawned threads can cut connections
	//as needed.
	while (AtomicCompareAndSwapInt(in_svr->m_isDead, 0, 1) != 1) {}
	
	
	mpMutexLock(mtx);
	if (in_svr->m_socket != -1)
		close(in_svr->m_socket);
	mpMutexUnlock(mtx);
	
	if (mtx != NULL)
	{
		pthread_t tmp = in_svr->m_serverThread;
		x_pthread_join(tmp);

		mpMutexLock(mtx);
		
		while (in_svr->m_runningThreads != 0)
		{
			mpMutexUnlock(mtx);
			
			mpMutexLock(mtx);
		}
		mpMutexUnlock(mtx);
	}
		
	memset(in_svr, 0, sizeof(netServer));
	
	if (mtx) x_free(mtx);
	x_free(in_svr);
}


netServer *netServerCreate(char *port, int flags, void *in_d,
									netServerFn_onConnect fn_oConn)
{
	errorAssert((flags&NETS_UDP) || (flags&NETS_TCP), error_flags, 
					"Need to specify either TCP or UDP when creating a server");
	
	struct addrinfo hints;
	struct addrinfo *servinfo;
	
	memset(&hints, 0, sizeof(hints));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = (flags&NETS_UDP)?SOCK_DGRAM:SOCK_STREAM;
	hints.ai_protocol = (flags&NETS_UDP)?IPPROTO_UDP:IPPROTO_TCP;
	hints.ai_flags = AI_PASSIVE;
	
	if (getaddrinfo(NULL, port, &hints, &servinfo) != 0)
		return NULL;
	
	int mySocket = socket(	servinfo->ai_family,
							servinfo->ai_socktype,
							servinfo->ai_protocol);
	if (mySocket == -1)
	{
		freeaddrinfo(servinfo);
		errorRaise(error_create, "Unable to create socket for server");
	}
	
	int one = 1;
	if (setsockopt(mySocket, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(int)) == -1)
	{
		close(mySocket);
		freeaddrinfo(servinfo);
		errorRaise(error_create, "Unable to set address reuse on server");
	}
	
	if (bind(mySocket, servinfo->ai_addr, servinfo->ai_addrlen) == -1)
	{
		close(mySocket);
		freeaddrinfo(servinfo);
		errorRaise(error_create, "Server failed binding socket");
	}
	
	freeaddrinfo(servinfo);
	
	if (listen(mySocket, 5) == -1)
	{
		close(mySocket);
		errorRaise(error_create, "Server failed listening on socket");
	}

	netServer *toRet = x_malloc(sizeof(netServer), netServerFree);
	
	memset(toRet, 0, sizeof(netServer));
	
	toRet->m_runningThreads = 0;
	toRet->m_flags = flags;
	toRet->m_socket = mySocket;
	toRet->m_userData = in_d;
	toRet->m_userFunction = fn_oConn;
	toRet->r_mutex = NULL;
	toRet->m_delegate.obj = NULL;
	toRet->m_delegate.onConnect = NULL;
	toRet->m_delegate.onDisconnect = NULL;
	
	toRet->r_mutex = mpMutexCreate();
	
	x_pthread_create(&toRet->m_serverThread, NULL, netServerThread, toRet);
	
	return toRet;
}

void netServerSetDelegate(netServer *s, netServerDelegate *d)
{
	mpMutex *mtx = s->r_mutex;
	
	mpMutexLock(mtx);
	s->m_delegate = *d;
	mpMutexUnlock(mtx);
}
