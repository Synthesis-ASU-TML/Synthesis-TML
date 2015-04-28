/*
 *  fluid_server.c
 *  FluidApp
 *
 *	Abstracts away the server components of the fluid simulation
 */

#include "fluid_pvt.h"
#include "mpx.h"
#include <string.h>
#include <stdio.h>

struct fluidServer
{
	fluid *r_f;

	fieldServer *r_densityServer;
	fieldServer *r_velocityServer;
	fieldClient *r_densityClient;
	fieldClient *r_velocityClient;
	
	void *o;
	fluidServerDelegate d;
	
	pthread_mutex_t r_mtx;
	
	float m_densBlend, m_velBlend;
	
	char m_densServ, m_densClient, m_velServ, m_velClient;
	
	double pTime;
	
};


void fluidServerOnFree(void *o)
{
	fluidServer *s = (fluidServer*)o;
	
	if (s->r_densityServer)		x_free(s->r_densityServer);
	if (s->r_velocityServer)	x_free(s->r_velocityServer);
	if (s->r_densityClient)		x_free(s->r_densityClient);
	if (s->r_velocityClient)	x_free(s->r_velocityClient);
	
	x_free(s->r_f);
	
	pthread_mutex_destroy(&s->r_mtx);
}


void fluidServerSendMessage(fluidServer *s, int msg)
{
	x_pthread_mutex_lock(&s->r_mtx);
	
	if (s->d)	s->d(s->o, s, msg);
	
	switch(msg & FLUIDSERVER_SRC_MASK)
	{
	case FLUIDSERVER_VEL_SERVER:
		s->m_velServ = msg & FLUIDSERVER_STAT_MASK;
		break;
		
	case FLUIDSERVER_DENS_SERVER:
		s->m_densServ = msg & FLUIDSERVER_STAT_MASK;
		break;
		
	case FLUIDSERVER_VEL_CLIENT:
		s->m_velClient = msg & FLUIDSERVER_STAT_MASK;
		break;
		
	case FLUIDSERVER_DENS_CLIENT:
		s->m_densClient = msg & FLUIDSERVER_STAT_MASK;
		break;
	}
	
	x_pthread_mutex_unlock(&s->r_mtx);
}


void fluidServerOnServerConnectDens(void *o, netServer *ns)
{
	fluidServer *s = (fluidServer*)o;
	fluidServerSendMessage(s, FLUIDSERVER_DENS_SERVER | FLUIDSERVER_SUCCESS);
}


void fluidServerOnServerDisconnectDens(void *o, netServer *ns)
{
	fluidServer *s = (fluidServer*)o;
	fluidServerSendMessage(s, FLUIDSERVER_DENS_SERVER | FLUIDSERVER_PENDING);
}

void fluidServerOnServerConnectVel(void *o, netServer *ns)
{
	fluidServer *s = (fluidServer*)o;
	fluidServerSendMessage(s, FLUIDSERVER_VEL_SERVER | FLUIDSERVER_SUCCESS);
}


void fluidServerOnServerDisconnectVel(void *o, netServer *ns)
{
	fluidServer *s = (fluidServer*)o;
	fluidServerSendMessage(s, FLUIDSERVER_VEL_SERVER | FLUIDSERVER_PENDING);
}


void fluidServerOnClientConnect(void *o, fieldClient *nc)
{
	fluidServer *s = (fluidServer*)o;
	
	if (nc == s->r_densityClient)
		fluidServerSendMessage(s, FLUIDSERVER_DENS_CLIENT | FLUIDSERVER_SUCCESS);
	else
		fluidServerSendMessage(s, FLUIDSERVER_VEL_CLIENT | FLUIDSERVER_SUCCESS);
}


void fluidServerOnClientDisconnect(void *o, fieldClient *nc)
{
	fluidServer *s = (fluidServer*)o;
	
	if (nc == s->r_densityClient)
		fluidServerSendMessage(s, FLUIDSERVER_DENS_CLIENT | FLUIDSERVER_PENDING);
	else
		fluidServerSendMessage(s, FLUIDSERVER_VEL_CLIENT | FLUIDSERVER_PENDING);
}


void fluidServerDensityServer(fluidServer *s, int in_port)
{
	x_try {
		if (s->r_densityServer)
			x_free(s->r_densityServer);
		
		s->r_densityServer = fieldServerCreateChar(
								fluidWidth(s->r_f),
								fluidHeight(s->r_f),
								4, in_port);
		
		netServerDelegate d = {s,	fluidServerOnServerConnectDens,
									fluidServerOnServerDisconnectDens};
		fieldServerSetDelegate(s->r_densityServer, &d);
	} x_catch(e) {
		fluidServerSendMessage(s, FLUIDSERVER_DENS_SERVER | FLUIDSERVER_FAIL);
		errorListAdd(e);
	} x_finally {}
}


void fluidServerVelocityServer(fluidServer *s, int in_port)
{
	x_try {
		if (s->r_velocityServer)
			x_free(s->r_velocityServer);
		
		s->r_velocityServer = fieldServerCreateFloat(
									fluidWidth(s->r_f), 
									fluidHeight(s->r_f),
									2, in_port);
		
		netServerDelegate d = {s,	fluidServerOnServerConnectVel,
									fluidServerOnServerDisconnectVel};
		fieldServerSetDelegate(s->r_velocityServer, &d);
	} x_catch(e) {
		fluidServerSendMessage(s, FLUIDSERVER_VEL_SERVER | FLUIDSERVER_FAIL);
		errorListAdd(e);
	} x_finally {}
}


void fluidServerDensityClient(fluidServer *s, const char *szHost, int in_port)
{
	if (s->r_densityClient)
		x_free(s->r_densityClient);

	s->r_densityClient = fieldClientCreateChar(
								fluidWidth(s->r_f),
								fluidHeight(s->r_f),
								4, szHost, in_port);
	
	fieldClientDelegate d = {s, fluidServerOnClientConnect,
								fluidServerOnClientDisconnect};
	fieldClientSetDelegate(s->r_densityClient, &d);
}


void fluidServerVelocityClient(fluidServer *s, const char *szHost, int in_port)
{
	if (s->r_velocityClient)
		x_free(s->r_velocityClient);

	s->r_velocityClient = fieldClientCreateFloat(
								fluidWidth(s->r_f),
								fluidHeight(s->r_f),
								2, szHost, in_port);
	
	fieldClientDelegate d = {s, fluidServerOnClientConnect,
								fluidServerOnClientDisconnect};
	fieldClientSetDelegate(s->r_velocityClient, &d);
}


fluidServer *fluidServerCreate(fluid *in_f)
{
	fluidServer *r = x_malloc(sizeof(fluidServer), fluidServerOnFree);
	memset(r, 0, sizeof(fluidServer));
	r->r_f = in_f;
	r->pTime = x_time();
	x_retain(in_f);
	
	r->m_densServ = FLUIDSERVER_PENDING;
	r->m_densClient = FLUIDSERVER_PENDING;
	r->m_velServ = FLUIDSERVER_PENDING;
	r->m_velClient = FLUIDSERVER_PENDING;
	
	x_pthread_mutex_init(&r->r_mtx, NULL);
	
	fluidServerVelocityServer(r, 2525);
	fluidServerDensityServer(r, 2626);
	
	fluidServerVelocityClient(r, "127.0.0.1", 3535);
	fluidServerDensityClient(r, "127.0.0.1", 3636);
	
	return r;
}

void fluidServerSetDelegate(fluidServer *s, void *o, fluidServerDelegate d)
{
	x_pthread_mutex_lock(&s->r_mtx);
	s->o = o;
	s->d = d;
	x_pthread_mutex_unlock(&s->r_mtx);
	
	//Spam...
	fluidServerSendMessage(s, FLUIDSERVER_VEL_SERVER | s->m_velServ);
	fluidServerSendMessage(s, FLUIDSERVER_VEL_CLIENT | s->m_velClient);
	fluidServerSendMessage(s, FLUIDSERVER_DENS_SERVER | s->m_densServ);
	fluidServerSendMessage(s, FLUIDSERVER_DENS_CLIENT | s->m_densClient);
}

void fluidServerOnFrame(fluidServer *s)
{
	fieldClientSend(s->r_densityClient, fluidVideoOut(s->r_f));

	field *tmp = fieldServerLock(s->r_densityServer);
	field *velTmp = fieldServerLock(s->r_velocityServer);
	field *outVel = fieldClientLock(s->r_velocityClient);
	
	double t = x_time();
	float dt =  (float)(t - s->pTime);
	s->pTime = t;
	
	if (dt < 0.0001f)
		dt = 0.0001f;
	else if (dt > 1.0f)
		dt = 1.0f;
	
	fluidSetTimestep(s->r_f, dt);
	
	x_pthread_mutex_lock(&s->r_mtx);
	int inVel = ((s->m_velServ & FLUIDSERVER_STAT_MASK) == FLUIDSERVER_SUCCESS);
	int inDens = ((s->m_densServ & FLUIDSERVER_STAT_MASK) == FLUIDSERVER_SUCCESS);
	x_pthread_mutex_unlock(&s->r_mtx);
	
	if (outVel)
		fluidVideoVelocityOut(s->r_f, outVel);
	
	if (inVel && velTmp)
	{
		fluidVelocityBlendIn(s->r_f, velTmp, s->m_velBlend);
	}
		
	if (inDens && tmp)
		fluidVideoBlendIn(s->r_f, tmp, s->m_densBlend);
	
	fluidAdvance(s->r_f);
	
	if (outVel)
		fieldClientUnlock(s->r_velocityClient);
	fieldServerUnlock(s->r_velocityServer);
	fieldServerUnlock(s->r_densityServer);
}

void fluidServerDensityBlend(fluidServer *s, float in_blend)
{
	s->m_densBlend = in_blend;
}


void fluidServerVelocityBlend(fluidServer *s, float in_blend)
{
	s->m_velBlend = in_blend;
}


fieldMsg *fluidServerNextMessage(fluidServer *s)
{
	fieldMsg *m = NULL;
	
	if (s->r_densityServer)
	{
		m = fieldServerNextMessage(s->r_densityServer);
		if (m)	return m;
	}
	
	if (s->r_velocityServer)
	{
		m = fieldServerNextMessage(s->r_velocityServer);
	}
	
	return m;
}
