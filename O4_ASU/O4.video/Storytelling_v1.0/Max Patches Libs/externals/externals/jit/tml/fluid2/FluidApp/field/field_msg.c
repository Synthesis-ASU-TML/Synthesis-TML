/*
 *  field_msg.c
 *  FluidApp
 */

#include "field.h"
#include "field_pvt.h"
#include "memory.h"
#include <stdlib.h>
#include <string.h>

void fieldMsgFree(void *o)
{ /* NADA */ }


fieldMsg *fieldMsgCreate()
{
	fieldMsg *o = x_malloc(sizeof(fieldMsg), fieldMsgFree);
	memset(o, 0,  sizeof(fieldMsg));
	return o;
}

void fieldMsgReceive(fieldMsg *in_fm, netClient *in_client)
{
	netClientGetBinary(in_client, &(in_fm->header),
						sizeof(in_fm->header), 10);
	in_fm->header.numAtoms = ntohl(in_fm->header.numAtoms);
	in_fm->header.sizeInBytes = ntohl(in_fm->header.sizeInBytes);
	
	in_fm->header.sizeInBytes -= sizeof(in_fm->header);
	in_fm->header.numAtoms = in_fm->header.numAtoms+1;
	errorAssert(in_fm->header.sizeInBytes > 0
				&& in_fm->header.sizeInBytes < FIELDMSG_DATA
				, error_net
				, "Too much data for internal buffer!");
	
	errorAssert(in_fm->header.numAtoms > 0
				&& in_fm->header.numAtoms < FIELDMSG_LINKS
				, error_net
				, "Too many atoms for internal buffer!");
	
	netClientGetBinary(in_client, in_fm->data, in_fm->header.sizeInBytes, 10);
	
	//Resolve all of the atoms
	int i;
	int offset = 0;
	for (i=0; i<in_fm->header.numAtoms; i++)
	{
		in_fm->links[i] = (struct fieldMsgLink*)(in_fm->data + offset);
		
		if (in_fm->links[i]->type == 'l')
			offset += sizeof(char) + sizeof(int);
		else if (in_fm->links[i]->type == 'f')
			offset += sizeof(char) + sizeof(float);
		else if (in_fm->links[i]->type == 's')
		{
			do {
				//printf("-> %c\n", in_fm->data[offset]);
				offset++;
				errorAssert(offset < in_fm->header.sizeInBytes
							, error_net
							, "String overflow!");
			} while (in_fm->data[offset] != '\0');
			offset++;
		}
		else
		{
			errorAssert(0, error_net, "Unknown atom (%c)=%i found in Jitter packet!",
						in_fm->links[i]->type,in_fm->links[i]->type);
		}
		
		errorAssert(offset <= in_fm->header.sizeInBytes
					, error_net
					, "Data overflow in packet!");
					
		if (in_fm->links[i]->type == 'l')
			in_fm->links[i]->data.iData = ntohl(in_fm->links[i]->data.iData);
			
		if (in_fm->links[i]->type == 'f')
			in_fm->links[i]->data.iData = ntohl(in_fm->links[i]->data.iData);
	}
}

int fieldMsgCount(fieldMsg *in_fm)
{
	return in_fm->header.numAtoms;
}

int isFieldCharPtr(fieldMsg *in_fm, int in_fld)
{
	return in_fm->links[in_fld]->type == 's';
}

int isFieldInt(fieldMsg *in_fm, int in_fld)
{
	return in_fm->links[in_fld]->type == 'l';
}

int isFieldFloat(fieldMsg *in_fm, int in_fld)
{
	return in_fm->links[in_fld]->type == 'f';
}

const char *fieldCharPtr(fieldMsg *in_fm, int in_fld)
{
	return in_fm->links[in_fld]->data.szData;
}

int fieldInt(fieldMsg *in_fm, int in_fld)
{
	return in_fm->links[in_fld]->data.iData;
}

float fieldFloat(fieldMsg *in_fm, int in_fld)
{
	return in_fm->links[in_fld]->data.fData;
}

void fieldMsgClear(fieldMsg *in_fm)
{
	memset(in_fm, 0, sizeof(fieldMsg));
}

void fieldMsgAddInt(fieldMsg *in_fm, int in_data)
{
	errorAssert(in_fm->header.numAtoms < FIELDMSG_LINKS, error_specify,
				"Number of messages is hard-coded!");
	
	errorAssert(in_fm->header.sizeInBytes + 4 < FIELDMSG_DATA,
				error_specify, "Not enough space to store string!");
	
	in_fm->links[in_fm->header.numAtoms]
				= (struct fieldMsgLink*)(in_fm->data + in_fm->header.sizeInBytes);
	
	in_fm->data[in_fm->header.sizeInBytes] = 'i';
	in_fm->links[in_fm->header.numAtoms]->data.iData = in_data;
	
	in_fm->header.numAtoms = in_fm->header.numAtoms + 1;
	in_fm->header.sizeInBytes = in_fm->header.sizeInBytes + 5;
}

void fieldMsgAddFloat(fieldMsg *in_fm, float in_data)
{
	errorAssert(in_fm->header.numAtoms < FIELDMSG_LINKS, error_specify,
				"Number of messages is hard-coded!");
	
	errorAssert(in_fm->header.sizeInBytes + 4 < FIELDMSG_DATA,
				error_specify, "Not enough space to store string!");
	
	in_fm->links[in_fm->header.numAtoms]
				= (struct fieldMsgLink*)(in_fm->data + in_fm->header.sizeInBytes);
	
	in_fm->data[in_fm->header.sizeInBytes] = 'f';
	in_fm->links[in_fm->header.numAtoms]->data.fData = in_data;
	
	in_fm->header.numAtoms = in_fm->header.numAtoms + 1;
	in_fm->header.sizeInBytes = in_fm->header.sizeInBytes + 5;
}

void fieldMsgAddChar(fieldMsg *in_fm, const char *in_ch)
{
	errorAssert(in_fm->header.numAtoms < FIELDMSG_LINKS, error_specify,
				"Number of messages is hard-coded!");
	
	errorAssert(in_fm->header.sizeInBytes + strlen(in_ch) + 1 < FIELDMSG_DATA,
				error_specify, "Not enough space to store string!");
	
	in_fm->links[in_fm->header.numAtoms]
				= (struct fieldMsgLink*)(in_fm->data + in_fm->header.sizeInBytes);
	
	in_fm->data[in_fm->header.sizeInBytes] = 's';
	strcpy(in_fm->data + in_fm->header.sizeInBytes + 1, in_ch);
	
	in_fm->header.numAtoms = in_fm->header.numAtoms + 1;
	in_fm->header.sizeInBytes = in_fm->header.sizeInBytes + 2 + strlen(in_ch);
}

void fieldMsgSend(fieldMsg *in_fm, netClient *in_client)
{
}
