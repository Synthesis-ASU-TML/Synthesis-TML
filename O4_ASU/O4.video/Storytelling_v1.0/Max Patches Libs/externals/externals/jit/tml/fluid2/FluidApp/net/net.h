/*
 *  net.h
 *  FluidApp
 */

#ifndef NET_H
#define NET_H

#include "error.h"

//The used protocol
#define NETS_UDP	0x00000001
#define NETS_TCP	0x00000002

//Should a single client be used?
#define NETS_SINGLE_CLIENT	0x00000010

////////////////////////////////////////////////////////////////////////////////
//Creation of clients (connection to another machine)
typedef struct netClient netClient;

netClient *netClientCreate(const char *address, char *port, int flags);

//Sends binary data - (no hints, very simple)
//	Network issues raise exceptions (we assume perfect net conditions)
void netClientSendBinary(netClient *client, const void *base, int cnt);

//cnt is in/out.  in is the max size of buffer, out is the amount of data...
void netClientReadBinary(netClient *client, void *dest, int *cnt, int timeout);

//We read (and wait) until the entire buffer is filled.  A nice abstraction
//to simplify things.
int netClientGetBinary(netClient *client, void *dest, int cnt, int timeout);



////////////////////////////////////////////////////////////////////////////////
//Basic functions to set up a server... (we handle callbacks, that's it!)
typedef struct netServer netServer;

////////////////////////////////////////////////////////////////////////////////
//A simple netServer delegate...
typedef struct netServerDelegate netServerDelegate;
struct netServerDelegate
{
	void *obj;			//Some sordid reference to object
	
	void(*onConnect)(void *obj, netServer *ns);
	void(*onDisconnect)(void *obj, netServer *ns);
};

//Net does bare minimum...  The rest is for specialized code.
typedef int(*netServerFn_onConnect)(void *d, netServer *in_svr,
										netClient *in_remote);

//Creates a server listening on port, with flags.  With a connection, calls
//fn_oConn on a new thread...	The server is on a new thread...
netServer *netServerCreate(char *port, int flags, void *in_d,
												netServerFn_onConnect fn_oConn);

//Query the quit status of the server.  Sometimes the server is being shut-down,
//but still handling requests.  This ensures that the server shuts down
//properly.
int netServerTryingToQuit(netServer *in_server);

//Copies data from delegate...
void netServerSetDelegate(netServer *s, netServerDelegate *d);


////////////////////////////////////////////////////////////////////////////////
//Creates 'stream' out of a client.  Creates a second thread that indefinitely
//waits on data.  Then the client can query what data has been streamed in
//and update when a complete set of data is available.
//
//	netStreams are not supposed to do any blocking.  An operation that would
//	normally result in blocking will throw an exception.  EG. Poll for data,
//	and make sure enough of the data is already loaded up and ready!
//
//	NOTE: netInStream & netOutStream may use multiple threads internally,
//	the exported API is not thread safe.  (Only use these functions on a single
//	thread, or put in guards to make sure that they work as expected)
typedef struct netInStream netInStream;
typedef struct netOutStream netOutStream;

//Input streams and output streams are very similar.  Main difference is
//that one sends while looping over a buffer, the other receives.
netInStream *netInStreamCreate(netClient *in_client, int in_buffSize);
netOutStream *netOutStreamCreate(netClient *in_client, int in_buffSize);

//Obtain a pointer to a buffer	(Reads data from the stream / closes stream)
void *netInStreamRead(netInStream *in_stream, int *out_datSize);
void netInStreamDoneRead(netInStream *in_stream);

//Obtain a pointer to a send buffer (potentially blocking if not done sending)
void *netOutStreamBuffer(netOutStream *in_oStream, int in_buffSize);
void netOutStreamSend(netOutStream *in_oStream);

#endif
