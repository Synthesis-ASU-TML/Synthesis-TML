/*
 *  FSInterface.h
 *  CocoaGame
*/

#import "FXField.h"
#import "FXPixmap.h"
#import "FXTexture.h"

#define FS_Disabled		(0)
#define FS_Forward		(100)
#define FS_Backward		(200)
#define FS_MacCormack	(300)

//FSNavierStokes
//	This protocol defines what a solution to the NavierStokes
//	equation must do.  This will allow for the GPU and CPU versions
//	of the code to work easily...
@protocol FSNavierStokes <NSObject>
	// Does a time-step in the simulation.
	- (id<FSNavierStokes>)stepSimulation:(float)in_timestep;

	//Return the temperature
	- (id<FXPixmap>)temperature;
	
	//Return the fluid...
	- (id<FXPixmap>)fluid;
	
	//Return what we want to render (texture, else use fluid)
	- (id<FXTexture>)fluidTexture;

	//Add more to the global velocity
	- (id<FSNavierStokes>)addVelocityX:(float)in_x Y:(float)in_y;

	//The collision matrix...
	- (id<FXPixmap>)collisions;

	//Advection...
	- (void)setVelocityAdvection:(int)in_vel;
	- (void)setFluidAdvection:(int)in_fluid;
	- (void)setTemperatureAdvection:(int)in_temp;
	- (void)setPressureAdvection:(int)in_pressure;

	//Settings...
	- (void)setVelocityAdvectionStyle:(int)in_style;

	// Change the viscocity a bit...
	- (void)setViscocity:(float)newValue;
	- (void)setMaxVelocity:(float)newValue;

	- (void)defineWaterConstant:(float)newValue;

	//Get values for statistics (note, these functions are expected to have
	//quite a bit of overhead)
	// Values between 0-100
	- (float)pressureAccuracy;
	- (float)viscocityAccuracy;
@end
