/*
 *  field_server.c
 *  FluidApp
 */

#include "field_pvt.h"
#include "memory.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void fieldServerFree(void *i)
{
	fieldServer *r = (fieldServer*)i;
	netServer *ns = r->server;
	
	pthread_mutex_lock(&r->mtx);
	r->server = NULL;
	x_pthread_cond_signal(&r->cnd);
	x_pthread_cond_signal(&r->cndMsg);
	pthread_mutex_unlock(&r->mtx);
	
	if (ns)		x_free(ns);
	
	if (r->fld_net)		x_free(r->fld_net);
	if (r->fld_local)	x_free(r->fld_local);
	
	pthread_cond_destroy(&r->cnd);
	pthread_cond_destroy(&r->cndMsg);
	pthread_mutex_destroy(&r->mtx);
	
	if (r->msg_loop[0])		x_free(r->msg_loop[0]);
	if (r->msg_loop[1])		x_free(r->msg_loop[1]);
	if (r->msg_loop[2])		x_free(r->msg_loop[2]);
	if (r->msg_loop[3])		x_free(r->msg_loop[3]);
	if (r->msg_loop[4])		x_free(r->msg_loop[4]);
	if (r->msg_loop[5])		x_free(r->msg_loop[5]);
	if (r->msg_loop[6])		x_free(r->msg_loop[6]);
	if (r->msg_loop[7])		x_free(r->msg_loop[7]);
}


int fieldServerOnConnect(void *i, netServer *s, netClient *c)
{
	fieldServer *r = (fieldServer*)i;
	struct fieldServerJitHeader header;
	
	double prevTime;		//Store times (no manipulation == easier!)
	int hasLatency = 0;		//Set to 1 after first matrix arrives.
	
nextPacket:
	netClientGetBinary(c, &header, sizeof(header), 10);
	header.id = ntohl(header.id);
	
	if (header.id == 'JMTX')
	{
		struct fieldServerJitLatency latency;
		latency.id = htonl('JMLP');
		
		//printf("FieldServer: Jitter Matrix!\n");
		struct fieldServerJitMatrix matrixInfo;
//		int invByteOrder = 0;
//		if (sizeof(matrixInfo) != header.size)
//		{
//			header.size = ntohl(header.size);
//			if (header.size != sizeof(matrixInfo))
//			{
//				printf("FieldServer: ERROR: More data sent than expected! (sent %i expected %u)\n",
//							header.size, (unsigned int)sizeof(matrixInfo));
//				return 0;
//			}
//			else
//				invByteOrder = 1;
//		}
		
		netClientGetBinary(c, &matrixInfo, sizeof(matrixInfo), 10);
		matrixInfo.planeCount = ntohl(matrixInfo.planeCount);
		matrixInfo.type = ntohl(matrixInfo.type);
		matrixInfo.dimCount = ntohl(matrixInfo.dimCount);
		
		if (matrixInfo.dimCount < 2 || matrixInfo.dimCount > 32)
		{
			printf("FieldServer: ERROR: Insane dim count! (sent %i)\n", matrixInfo.dimCount);
			return 0;
		}
		
		int x;
		for (x=0; x<matrixInfo.dimCount; x++)
			matrixInfo.dim[x] = ntohl(matrixInfo.dim[x]);
		
		for (x=0; x<matrixInfo.dimCount; x++)
			matrixInfo.dimStride[x] = ntohl(matrixInfo.dimStride[x]);
		
		matrixInfo.dataSize = ntohl(matrixInfo.dataSize);
		
		//printf(" - planeCount: %u\n", matrixInfo.planeCount);
		//printf(" - dimCount: %u\n", matrixInfo.dimCount);
		//printf(" - time: %f\n", matrixInfo.time);
		
		int sizeOfData;
		if (r->dataType == FIELD_JIT_FLOAT32)
			sizeOfData = 4;
		else
			sizeOfData = 1;

		//Attempt to resize the field
		fieldResize(r->fld_net, matrixInfo.dim[0], matrixInfo.dim[1]);
		
		//Loop over and receive!!!
		if (matrixInfo.dimCount == 2
			&& matrixInfo.type == r->dataType
			&& matrixInfo.planeCount == fieldComponents(r->fld_net)
			&& matrixInfo.dim[0] == fieldWidth(r->fld_net)
			&& matrixInfo.dim[1] == fieldHeight(r->fld_net)
			&& matrixInfo.dimStride[0] == fieldStrideX(r->fld_net)
			&& matrixInfo.dimStride[1] == fieldStrideY(r->fld_net)
			&& matrixInfo.dataSize ==
						matrixInfo.dim[0]*matrixInfo.dim[1]*
						matrixInfo.planeCount*sizeOfData)
		{
			
			pthread_mutex_lock(&r->mtx);
			while (r->needSwap == 1)
			{
				x_pthread_cond_wait(&r->cnd, &r->mtx);
				
				if (r->server == NULL)
				{
					pthread_mutex_unlock(&r->mtx);
					return 0;
				}
			}
			pthread_mutex_unlock(&r->mtx);
		
			//printf(" - OPTIMAL!\n");
			float *d = fieldData(r->fld_net);
			
			netClientGetBinary(c, d, matrixInfo.dataSize, 10);
			
			pthread_mutex_lock(&r->mtx);
			r->needSwap = 1;
			if (r->server == NULL)
			{
				pthread_mutex_unlock(&r->mtx);
				return 0;
			}
			//printf("AWAKE!!\n");
			pthread_mutex_unlock(&r->mtx);
			
			if (hasLatency == 0)
			{
				hasLatency = 1;
				prevTime = matrixInfo.time;
			}
			else
			{
				latency.client_time = prevTime;
				latency.parsed_header = matrixInfo.time;
				latency.parsed_done = matrixInfo.time;
				
				/*double diff = latency.parsed_header - matrixInfo.time;
				
				latency.parsed_header -= diff;
				latency.parsed_done -= diff;
				
				diff = (latency.parsed_done-latency.parsed_header)/2;
				latency.parsed_header += diff;
				latency.parsed_done += diff;*/
				
				//printf("LATENCY (%f,%f,%f)\n",latency.client_time,
				//							latency.parsed_done,
				//							latency.parsed_header);
				netClientSendBinary(c, &latency, sizeof(latency));
				prevTime = matrixInfo.time;
			}
			
			goto nextPacket;
		}
		else
		{
			printf(" - Backup data fetcher = discard...\n");
			printf(" --> Type: %u (%u)\n", matrixInfo.type, r->dataType);
			printf(" --> Dims: %u\n", matrixInfo.dimCount);
			printf(" --> Planes: %u\n", matrixInfo.planeCount);
			printf(" --> Width: %u\n", matrixInfo.dim[0]);
			printf(" --> Height: %u\n", matrixInfo.dim[1]);
			printf(" --> StrideX: %u\n", matrixInfo.dimStride[0]);
			printf(" --> StrideY: %u\n", matrixInfo.dimStride[1]);
			printf(" --> dataSize: %u\n", matrixInfo.dataSize);
		}
		
	}
	else if (header.id == 'JMLP')
	{
		printf("FieldServer: Jitter Latency!\n");
	}
	else if (header.id == 'JMMP')
	{
		int rdMsg = 0;
		pthread_mutex_lock(&r->mtx);
		
		while ((r->curWriteMsg + 2) % 8 == r->curReadMsg)
		{
			printf("FieldServer: MSG Stall\n");
			x_pthread_cond_wait(&r->cndMsg, &r->mtx);
			
			if (r->server == NULL)
			{
				pthread_mutex_unlock(&r->mtx);
				return 0;
			}
		}
		//printf("FieldServer: MSG Pass\n");
		
		rdMsg = r->curWriteMsg;
		
		pthread_mutex_unlock(&r->mtx);
		
		fieldMsgReceive(r->msg_loop[rdMsg], c);
		
		pthread_mutex_lock(&r->mtx);
		r->curWriteMsg = (r->curWriteMsg+1)%8;
		pthread_mutex_unlock(&r->mtx);
		
		goto nextPacket;
	}
	else
	{
		char *cda = (char*)&header.id;
		printf("FieldServer: ERROR: Unknown Packet '%c%c%c%c'!\n",cda[0],cda[1],
				cda[2], cda[3]);
		return 0;
	}
	
	printf("FieldServer: Completed Processing!\n");
	return 0;
}


void fieldServerFinishInit(fieldServer *r, int in_port)
{
	
	pthread_mutex_init(&r->mtx, NULL);
	x_pthread_cond_init(&r->cnd, NULL);
	x_pthread_cond_init(&r->cndMsg, NULL);
	
	char szPort[64];
	snprintf(szPort, 64, "%i", in_port);
	
	r->msg_loop[0] = fieldMsgCreate();
	r->msg_loop[1] = fieldMsgCreate();
	r->msg_loop[2] = fieldMsgCreate();
	r->msg_loop[3] = fieldMsgCreate();
	r->msg_loop[4] = fieldMsgCreate();
	r->msg_loop[5] = fieldMsgCreate();
	r->msg_loop[6] = fieldMsgCreate();
	r->msg_loop[7] = fieldMsgCreate();
	
	r->server = netServerCreate(szPort, NETS_TCP | NETS_SINGLE_CLIENT, r, fieldServerOnConnect);
}


fieldServer *fieldServerCreateFloat(int in_width, int in_height,
									int in_components,
							   		int in_port)
{
	fieldServer *r = x_malloc(sizeof(fieldServer), fieldServerFree);
	
	memset(r, 0, sizeof(fieldServer));
	
	r->fld_net = fieldCreate(in_width, in_height, in_components);
	r->fld_local = fieldCreate(in_width, in_height, in_components);
	
	r->dataType = FIELD_JIT_FLOAT32;
	
	fieldServerFinishInit(r, in_port);
	
	return r;
}


fieldServer *fieldServerCreateChar(int in_width, int in_height,
								   int in_components,
								   int in_port)
{
	fieldServer *r = x_malloc(sizeof(fieldServer), fieldServerFree);
	
	memset(r, 0, sizeof(fieldServer));
	
	r->fld_net = fieldCreateChar(in_width, in_height, in_components);
	r->fld_local = fieldCreateChar(in_width, in_height, in_components);
	
	r->dataType = FIELD_JIT_CHAR;
	
	fieldServerFinishInit(r, in_port);
	
	return r;
}


field *fieldServerLock(fieldServer *fs)
{
	if (fs == NULL)
		return NULL;
	
	return fs->fld_local;
}

void fieldServerUnlock(fieldServer *fs)
{
	if (fs == NULL)
		return;
	
	pthread_mutex_lock(&fs->mtx);
	if (fs->needSwap == 1)
	{
		field *tmp = fs->fld_net;
		fs->fld_net = fs->fld_local;
		fs->fld_local = tmp;
		fs->needSwap = 0;
		pthread_cond_signal(&fs->cnd);
	}
	pthread_mutex_unlock(&fs->mtx);
}


fieldMsg *fieldServerNextMessage(fieldServer *fs)
{
	if (fs == NULL)		return NULL;
	
	fieldMsg *toRet = NULL;
	pthread_mutex_lock(&fs->mtx);
	if (fs->curReadMsg != fs->curWriteMsg)
	{
		toRet = fs->msg_loop[fs->curReadMsg];
		fs->curReadMsg = (fs->curReadMsg + 1)%8;
		pthread_cond_signal(&fs->cndMsg);
	}
	pthread_mutex_unlock(&fs->mtx);
	
	return toRet;
}


void fieldServerSetDelegate(fieldServer *fs, netServerDelegate *d)
{
	netServerSetDelegate(fs->server, d);
}
