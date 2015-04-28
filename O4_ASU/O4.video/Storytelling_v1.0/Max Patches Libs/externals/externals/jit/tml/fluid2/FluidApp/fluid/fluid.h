/*
 *  fluid.h
 *  FluidApp
 */

#ifndef FLUID_H
#define FLUID_H

#include "error.h"
#include "net.h"
#include "field.h"
#include "x_simd.h"

//Data organized in memory so that it's coherent for advection (all advection is
//based on floats)
typedef struct fluid fluid;

fluid *fluidCreate(int in_width, int in_height);

void fluidAdvance(fluid *in_f);

void fluidAdvanceASync(fluid *in_f);
void fluidAdvanceSync(fluid *in_f);

int fluidWidth(fluid *in_f);
int fluidHeight(fluid *in_f);

field *fluidDensity(fluid *in_f);
field *fluidMovedDensity(fluid *in_f);
field *fluidVelocityX(fluid *in_f);
field *fluidVelocityY(fluid *in_f);

//Allows the user of the system to set the viscosity...
void fluidSetViscosity(fluid *f, float in_v);
void fluidSetVorticity(fluid *f, float in_v);
void fluidSetTimestep(fluid *f, float in_v);

//Visuals X
void fluidVideoVelocityScale(fluid *f, x128f in_s);
void fluidVideoPressureScale(fluid *f, x128f in_s);
void fluidVideoVelocityMultiply(fluid *f, x128f in_s);
void fluidVideoPressureMultiply(fluid *f, x128f in_s);

void fluidVideoDensityScale(fluid *f, x128f in_s);

void fluidVideoIVelocityScale(fluid *f, x128f in_s);
void fluidVideoIPressureScale(fluid *f, x128f in_s);
void fluidVideoIVelocityMultiply(fluid *f, x128f in_s);
void fluidVideoIPressureMultiply(fluid *f, x128f in_s);

//Set up fading...
void fluidSetDensityFade(fluid *f, float in_v);
void fluidSetVelocityFade(fluid *f, float in_v);

//Buoyancy
void fluidSetGravityVector(fluid *f, float x, float y);
void fluidSetGravityMagnitude(fluid *f, float v);
void fluidSetTemperatureMagnitude(fluid *f, float v);

//Accuracy
void fluidSetPressureAccuracy(fluid *f, float v);
void fluidSetViscosityAccuracy(fluid *f, float v);

//Set up vorticity (2 modes of computation)
void fluidVorticityQuick(fluid *f);
void fluidVorticityAccurate(fluid *f);

//Set up free surfaces
void fluidFreeSurfaceNone(fluid *f);
void fluidFreeSurfaceSimple(fluid *f);

//Enables the timers for the next frame of
//simulation
void fluidEnableTimers(fluid *f);
void fluidDisableTimers(fluid *f);

float fluidAdvectionTime(fluid *f);
float fluidPressureTime(fluid *f);
float fluidViscosityTime(fluid *f);
float fluidVorticityTime(fluid *f);
float fluidThreadSchedulerTime(fluid *f);

//Video-output functions
field *fluidVideoOut(fluid *in_f);
void fluidVideoVelocityOut(fluid *in_f, field *in_dest);

void fluidVideoVelocityOutSize(fluid *f, int w, int h);

//Video-input functions
void fluidVideoBlendIn(fluid *in_f, field *in_ch, float in_s);
void fluidVelocityBlendIn(fluid *in_f, field *in_ch, float in_s);

//Select accelerator
void fluidEnableCPU(fluid *in_f);
void fluidEnableCL(fluid *in_f);

//Enable/Disable density code (we don't need it on slower platforms)
void fluidEnableDensity(fluid *in_f);
void fluidDisableDensity(fluid *in_f);

//Temperature modulator...
void fluidSetTemperatureGradient(fluid *in_f, u128f *gradient);

//Select video output style
#define FLUID_OUT_DENSITY		0
#define FLUID_OUT_TEMPERATURE	1
#define FLUID_OUT_VELOCITY		2
void fluidSetOutStyle(fluid *in_f, int vs);


//FluidServer creates the appropriate data-structures to send/receive data
//over the network.  Abstracting away Objective-C and moving towards are pure C
//environment.
typedef struct fluidServer fluidServer;
fluidServer *fluidServerCreate(fluid *in_f);

//Connect to various sources...
void fluidServerDensityServer(fluidServer *s, int in_port);
void fluidServerVelocityServer(fluidServer *s, int in_port);
void fluidServerDensityClient(fluidServer *s, const char *szHost, int in_port);
void fluidServerVelocityClient(fluidServer *s, const char *szHost, int in_port);

void fluidServerOnFrame(fluidServer *s);

fieldMsg *fluidServerNextMessage(fluidServer *s);

void fluidServerDensityBlend(fluidServer *s, float in_blend);
void fluidServerVelocityBlend(fluidServer *s, float in_blend);

//Simple delegate to specify what's happening...
#define FLUIDSERVER_VEL_SERVER		0x10
#define FLUIDSERVER_DENS_SERVER		0x20
#define FLUIDSERVER_VEL_CLIENT		0x30
#define FLUIDSERVER_DENS_CLIENT		0x40
#define FLUIDSERVER_SRC_MASK		0xF0

#define FLUIDSERVER_SUCCESS			0x01
#define FLUIDSERVER_PENDING			0x02
#define FLUIDSERVER_FAIL			0x03
#define FLUIDSERVER_STAT_MASK		0x0F

typedef void(*fluidServerDelegate)(void *o, fluidServer *s, int in_msg);

void fluidServerSetDelegate(fluidServer *s, void *o, fluidServerDelegate d);


//FluidMessenger is a seperate object that dispatches messages to the fluid,
//servers, and others to handle communication (either from command line or from
//remote applications)
typedef struct fluidMessenger fluidMessenger;
typedef void(*fluidMessengerHandler)(void *o, fieldMsg *msg);

fluidMessenger *fluidMessengerCreate(fluid *in_f, fluidServer *in_s);

// 1 is success!
int fluidMessengerHandleMessage(fluidMessenger *fm, fieldMsg *msg);

void fluidMessengerAddHandler(fluidMessenger *fm, fluidMessengerHandler h,
								void *ptr);

#endif

