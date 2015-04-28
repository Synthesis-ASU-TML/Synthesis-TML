//
//  FSNSGeneric.m
//  CocoaGame
//

#import "FSNSGeneric.h"


@implementation FSNSGeneric

	- init
	{
		[super init];
		
		advect_velocity = FS_Backward;
		advect_fluid = FS_Backward;
		advect_temperature = FS_Backward;
		advect_pressure = FS_Disabled;
		
		return self;
	}

	- (void)setVelocityAdvection:(int)in_vel
	{
		advect_velocity = in_vel;
	}
	
	- (void)setFluidAdvection:(int)in_fluid
	{
		advect_fluid = in_fluid;
	}
	
	- (void)setTemperatureAdvection:(int)in_temp
	{
		advect_temperature = in_temp;
	}
	
	- (void)setPressureAdvection:(int)in_pressure
	{
		advect_pressure = in_pressure;
	}


	- (float)pressureAccuracy
	{
		return -1;
	}

	- (float)viscocityAccuracy
	{
		return -1;
	}
	
	
	- (void)defineWaterConstant:(float)newValue
	{
		fWaterConstant = newValue;
	}

@end
