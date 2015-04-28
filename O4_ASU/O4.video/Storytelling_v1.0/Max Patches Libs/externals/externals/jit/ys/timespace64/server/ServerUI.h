/*
 *  ServerUI.h
 *  ys.jit.timespace
 *
 *  Created by Mikevil on 23/01/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
 
#include <pthread.h>
#include <stdio.h>


//Manages the UI for the server
class ServerUI
{
public:
	ServerUI()
	{
	printf("TESTING!!!!\n\n");
	fflush(stdout);
	}
	virtual ~ServerUI();

protected:
	void displayPrompt();
	void readCommand();
	void processCommand();
	void trimWhitespace();
	
	void command_quit();
	
	char szCommand[512];
	char *ptCommand;
	int nBuffLength;

private:
	static void* uiThread(void *inData);
	
	//Handle to the thread
	pthread_t threadID;
	
	//Handle to the network socket
	int netSock;
	
	//Did we quit?
	bool bQuit;
};
