/*
 *  ServerUI.cpp
 *  ys.jit.timespace
 *
 *  Created by Mikevil on 23/01/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#include "ServerUI.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>


/*ServerUI::ServerUI()
{
	if (pthread_create(&threadID, NULL, uiThread, this) != 0)
	{
		throw "Failed creating UI thread";
	}
}*/


ServerUI::~ServerUI()
{
	pthread_join(threadID, NULL);
}


void ServerUI::displayPrompt()
{
	printf("\nREADY> ");
}


void ServerUI::readCommand()
{
	nBuffLength = 0;
	
	while(1)
	{
		char ch;
		read(STDIN_FILENO, &ch, 1);
		
		if (ch == '\b')
		{
			if (nBuffLength > 0)
			{
				printf(" \b");
				nBuffLength--;
			}
		}
		
		else if (ch == '\n')
		{
			szCommand[nBuffLength] = '\0';
			return;
		}
		else
		{
			if (nBuffLength < 510)
			{
				szCommand[nBuffLength] = ch;
				nBuffLength++;
			}
		}
	}
}


void ServerUI::trimWhitespace()
{
	while (*ptCommand == ' ' || *ptCommand == '\t')
		ptCommand++;
}


void ServerUI::command_quit()
{
	trimWhitespace();
	
	if (strlen(ptCommand) == 0)
	{
		char buff = 'q';
		write(netSock, &buff, 1);
	}
	else
	{
		printf("quit: invalid parameters\n");
	}
}


void ServerUI::processCommand()
{
	ptCommand = szCommand;
	
	//trim whitespace
	trimWhitespace();
	
	int nLen = strlen(ptCommand);
	
	if (nLen > 4 && strncmp(ptCommand, "quit", 4))
	{
		ptCommand+=4;
		command_quit();
	}
	else
	{
		printf("unknown command\n");
	}
}


void *ServerUI::uiThread(void *inData)
{
	ServerUI* pInst = (ServerUI*)inData;

	pInst->netSock = socket(AF_INET, SOCK_STREAM, 0);
	if (pInst->netSock != 0)
	{
		printf("Unable to connect to server; UI disabled\n");
		return NULL;
	}
	
	sockaddr_in name;
	memset(&name, 0, sizeof(name));
	name.sin_family = AF_INET;
	name.sin_addr.s_addr = htons(INADDR_ANY);
	name.sin_port = htons(3000);
	if (connect(pInst->netSock, (sockaddr*)&name, sizeof(name)) != 0)
	{
		printf("Unable to connect to server; UI disabled\n");
		return NULL;
	}
	
	printf("TimeSpace Server UI\n");
	
	pInst->bQuit = false;
	
	//Loop...
	while(!pInst->bQuit)
	{
		pInst->displayPrompt();
		pInst->readCommand();
		pInst->processCommand();
	}
	
	close(pInst->netSock);

	return NULL;
}

