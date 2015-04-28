/*
 *  jit.ys.timespace_net.cpp
 *  ys.jit.timespace
 *
 *  Created by Mikevil on 22/01/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#include "jit.ys.timespace_net.h"

#include <sys/socket.h>
#include <sys/types.h>
#include <sys/un.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int netSocket;

//Connects to a remote computation unit
void timespace_connect()
{
	//Create a unix socket...
	netSocket = socket(AF_INET, SOCK_STREAM, 0);
	if (netSocket == -1)
	{
		return;
	}
}

//Disconnects from a remote computation unit.
void timespace_disconnect()
{
	close(netSocket);
}

//Sends a quit message to the remote unit.
void timespace_quitmessage()
{
	sockaddr_in name;
	
	memset(&name, 0, sizeof(name));
	name.sin_family = AF_INET;
	name.sin_addr.s_addr = htons(INADDR_ANY);
	name.sin_port = htons(3000);
	
	if (connect(netSocket, (sockaddr*)&name, sizeof(name)) == -1)
	{
		return;
	}
	
	char buff = 'q';
	write(netSocket, &buff, 1);
}
