//
//  FSNavierStokes.h
//  CocoaGame
//
//		An implementation of the NavierStokes solver.  This is much better
//		than the previous version in that it will allow me to swap out
//		parts of the solver (namely the pressure solver) with ease.
//
//		Still not enough forward thinking to actually work on the GPU and CPU.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>
#import "FXField.h"
#import "FSNSGeneric.h"
#import "FXTaskSequence.h"

@interface FSNavierStokes : FSNSGeneric <FSNavierStokes, FXTaskDispatcher>
{
	//Determines if we use #1 or #2
	int curField;

	//The fluid
	FXPixmap *fluid[3];

	//The velocity
	FXField *velocity[3];
	
	//The pressures
	FXField *pressure[2];
	
	//The temperature
	FXPixmap *temperature[3];
	
	//The Walls/Collisions
	FXPixmap *collisions;
	
	//Constants describing how fluid works
	float viscocity;
	
	//Global velocity (added each frame - like gravity, and so on)
	float velX;
	float velY;
	
	//Maximum velocity...
	float maxVelocity;
	
	//Constant velocities (like a fan)
	FXField *external;
	
	//The timestep used in the simulation (RO during simulation)
	float timestep;
	
	//Atomic value - used for loops...
	int32_t atomicY;
}


// Creates a new Navier Stokes Fluid Solver object
- (FSNavierStokes*)initWithWidth:(int)in_width height:(int)in_height;

// Does a time-step in the simulation.
- (FSNavierStokes*)stepSimulation:(float)in_timestep;

//Return the current fluid...
- (FXPixmap*)fluid;
- (id<FXTexture>)fluidTexture;

//Return the temperature
- (FXPixmap*)temperature;

//Add more to the global velocity
- (FSNavierStokes*)addVelocityX:(float)in_x Y:(float)in_y;

- (FXPixmap*)collisions;

//Local forces...


// Change the viscocity a bit...
- (void)setViscocity:(float)newValue;
- (void)setMaxVelocity:(float)newValue;

@end
