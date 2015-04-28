/*
 *  field_pvt.h
 *  FluidApp
 */

#ifndef FIELD_PVT_H
#define FIELD_PVT_H

#include "field.h"
#include <pthread.h>
#include <stdio.h>
#include "net.h"
#include "memory.h"

#define Field_NoRelease		0x00000001		/* Do not release data
												(someone else will) */
#define Field_TypeChar		0x00000010		/* Character data within */

struct field
{
	union {
		float *f;
		int *i;
		unsigned char *c;
	} r_data;
	
	//Note - assume that everything is tightly packed.
	//	(we have the assumption that everything's in order)
	int m_width, m_height;
	int m_components;
	
	//In bytes  - forward looking - that's it!
	int m_strideX, m_strideY;
	
	//Number (of bytes) we have allocated to store data
	//	(allow for resize)
	int m_allocatedBytes;
	
	//Flags
	int m_flags;
};


#define FIELDMSG_DATA	256
#define FIELDMSG_LINKS	32

struct fieldMsgLink
{
	uint8_t type;								//Type of data that we have
	union {
		int iData;								//Integer data
		float fData;							//Float data
		char szData[FIELDMSG_DATA];				//NULL-terminated string
	} data;
}__attribute((packed));


struct fieldServerJitMessage
{
	uint32_t	sizeInBytes;
	uint32_t	numAtoms;
}__attribute((packed));

struct fieldMsg								//WARNING: LOTS OF UNALIGNED DATA!
{
	struct fieldServerJitMessage header;		//Size + num links
	char data[FIELDMSG_DATA];					//Data within the message
	struct fieldMsgLink *links[FIELDMSG_LINKS];	//Links to the data (in data)
};


struct fieldServer
{
	field *fld_net;			//Copy from the network
	field *fld_local;		//Local copy that's checked-out here
	
	netServer *server;		//Server that receives the field using MAX/Jitter
							//protocol
	
	fieldMsg *msg_loop[8];	//Loops over messages from MAX/Jitter
	
	pthread_mutex_t	mtx;	//Simple mutex
	pthread_cond_t cnd;		//Simple condition
	pthread_cond_t cndMsg;	//Simple condition (for messages)
	
	int needSwap;		//Set to 1 when needed...
	
	int curReadMsg;		//Message being read
	int curWriteMsg;	//Message being written
	
	int dataType;		//Type of data from Jitter that we can accept.
};


struct fieldClient
{
	field *fld_sending;		//Data that we're sending (copy of)
	
	netClient *client;		//Client that we're connected to.
	
	pthread_mutex_t mtx;	//Simple mutex
	pthread_cond_t cnd;		//Simple condition
	pthread_t thr;			//Thread (spawned to send the data)
	
	int allSent;			//OS has all the data, we can send another field?
	
	int dataType;			//Type of data... (to Jitter)
	
	fieldClientDelegate d;	//Delegate to send info to
	
	int port;				//Port to connect to...
	char szHost[256];		//Host to connect to...
};



struct fieldServerJitHeader
{
	uint32_t	id;
	uint32_t	size;
}__attribute((packed));

#define FIELD_JIT_CHAR		0
#define FIELD_JIT_LONG		1
#define FIELD_JIT_FLOAT32	2
#define FIELD_JIT_FLOAT64	3

struct fieldServerJitMatrix
{
	uint32_t	id;
	uint32_t	size;
	uint32_t	planeCount;
	uint32_t	type;
	uint32_t	dimCount;
	uint32_t	dim[32];
	uint32_t	dimStride[32];
	uint32_t	dataSize;
	double		time;
}__attribute((packed));


struct fieldServerJitLatency
{
	uint32_t	id;
	double client_time;
	double parsed_header;
	double parsed_done;
}__attribute((packed));


#endif
