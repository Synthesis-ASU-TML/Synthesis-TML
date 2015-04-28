/*
 *  main.cpp
 *  ys.jit.timespace
 *
 *  Created by Mikevil on 22/01/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#include "ServerUI.h"

int main(int argc, char **argv)
{
	//Create a socket...
	int netSock = socket(AF_INET, SOCK_STREAM, 0);
	if (netSock == -1)
	{
		printf("Failed creating socket!\n");
		return 1;
	}
	
	//Bind it to port "7854"
	sockaddr_in netAddress;
	memset(&netAddress, 0, sizeof(netAddress));
	netAddress.sin_family = AF_INET;
	netAddress.sin_port = htons(3000);
	netAddress.sin_addr.s_addr = htons(INADDR_ANY);
	
	if (bind(netSock, (sockaddr*)&netAddress, sizeof(netAddress)) == -1)
	{
		close(netSock);
		printf("Failed binding socket!\n");
		return 1;
	}
	
	//Listen on the port
	if (listen(netSock, 100) == -1)
	{
		close(netSock);
		printf("Failed listening on socket!\n");
	}
	
	//Create the UI for the server...
	ServerUI sui_myUI();
	
	//Loop until termination...
	sockaddr_un clientName;
	socklen_t clientNameLen;
	while (1)
	{
		int clientSocket = accept(netSock,
									(sockaddr*)&clientName, &clientNameLen);
		
		char buff;
		if (read(clientSocket, &buff, 1) == 1)
		{
			//Termination signal?
			if (buff == 'q')
			{
				close(clientSocket);
				close(netSock);
				exit(0);
			}
			
			close(clientSocket);
		}
		
	};

}
