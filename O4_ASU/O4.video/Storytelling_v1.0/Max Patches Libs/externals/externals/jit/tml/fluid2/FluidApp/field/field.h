//
//	Field exports functionality for large matrices.  These matrices are
//		normally quite large, and are limited to powers of two.
//

#ifndef FIELD_H
#define FIELD_H

#include "net.h"
#include "error.h"
#include "mpx.h"

//Messages provide a means of moving information other than color data
//to and from the client/server.  We implement a fixed-memory model for
//messages. (256-byte messages TOTAL)
typedef struct fieldMsg fieldMsg;

fieldMsg *fieldMsgCreate();
void fieldMsgReceive(fieldMsg *in_fm, netClient *in_client);
int fieldMsgCount(fieldMsg *in_fm);
int isFieldCharPtr(fieldMsg *in_fm, int in_fld);
int isFieldInt(fieldMsg *in_fm, int in_fld);
int isFieldFloat(fieldMsg *in_fm, int in_fld);
const char *fieldCharPtr(fieldMsg *in_fm, int in_fld);
int fieldInt(fieldMsg *in_fm, int in_fld);
float fieldFloat(fieldMsg *in_fm, int in_fld);

void fieldMsgClear(fieldMsg *in_fm);
void fieldMsgAddInt(fieldMsg *in_fm, int in_data);
void fieldMsgAddFloat(fieldMsg *in_fm, float in_data);
void fieldMsgAddChar(fieldMsg *in_fm, const char *in_ch);
void fieldMsgSend(fieldMsg *in_fm, netClient *in_client);

//Dealing with a single field...
typedef struct field field;

//Create a new field with new data
field *fieldCreate(int in_width, int in_height, int in_components);

//Create a new field with char data
field *fieldCreateChar(int in_width, int in_height, int in_components);

//Create a field with existing data
//	A copy of the data is not made; rather we just store the pointer and
//	pass it along.  For compatibility with other API's and frameworks,
//	it is assumed that the data is not reference counted.
field *fieldFromFloatData(float *in_data, int in_width, int in_height,
						  int in_strideX, int in_strideY, int in_components);

int fieldWidth(field *in_f);
int fieldHeight(field *in_f);
int fieldComponents(field *in_f);

//Resize the field
void fieldResize(field *in_f, int newW, int newH);

//These two are in bytes.  (distance between each Y and each X)
int fieldStrideX(field *in_f);
int fieldStrideY(field *in_f);

int fieldIsCharData(field *in_f);

//Be careful with thread safety and type!!!
float *fieldData(field *in_f);
unsigned char *fieldCharData(field *in_f);


typedef struct fieldServer fieldServer;

//A field backed with a server (one buffer for recv)
fieldServer *fieldServerCreateFloat(int in_width, int in_height, int in_components,
									int in_port);
fieldServer *fieldServerCreateChar(int in_width, int in_height, int in_components,
									int in_port);

//Tell when we use/unuse a field-server
field *fieldServerLock(fieldServer *fs);
void fieldServerUnlock(fieldServer *fs);

void fieldServerSetDelegate(fieldServer *fs, netServerDelegate *d);

fieldMsg *fieldServerNextMessage(fieldServer *fs);


//A field backed with a client (one buffer for send)
typedef struct fieldClient fieldClient;
typedef struct fieldClientDelegate fieldClientDelegate;
struct fieldClientDelegate
{
	void *obj;				//Object we reference to
	
	//Invoked on connect
	void(*onClientConnect)(void *obj, fieldClient *client);
	void(*onClientDisconnect)(void *obj, fieldClient *client);
};

//Connect to a given host with port.
fieldClient *fieldClientCreateFloat(int in_width, int in_height, int in_components,
									const char *szHost, int in_port);
fieldClient *fieldClientCreateChar(int in_width, int in_height, int in_components,
									const char *szHost, int in_port);

//Send a field
void fieldClientSend(fieldClient *fc, field *f);

//Lock the field buffer so we can send it... (returns NULL if can't send)
field *fieldClientLock(fieldClient *fc);
void fieldClientUnlock(fieldClient *fc);	//ONLY call if returned a real buffer.

//Other utilities
void fieldClientSetDelegate(fieldClient *fc, fieldClientDelegate *d);

//Utility macro to calculate offsets given strides
#define fieldComputOffsetFromStride(x,y,sx,sy)	(x*sx+y*sy)

//Get a pointer to data given a byte offset
#define fieldPointerFromOffset(base,offset)		\
					((float*)(((char*)base) + (offset)))

//Get a pointer given a base, stride, and value
#define fieldPointer(base, x, y, sx, sy)	\
			fieldPointerFromOffset(base,fieldComputeOffsetFromStride(x,y,sx,sy))

#endif
