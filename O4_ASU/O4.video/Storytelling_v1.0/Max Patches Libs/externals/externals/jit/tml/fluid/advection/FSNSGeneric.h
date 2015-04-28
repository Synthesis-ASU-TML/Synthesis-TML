//
//  FSNSGeneric.h
//  CocoaGame
//
//  All the common stuff between the CPU/GPU version (usually setters/getters)
//

#import <Cocoa/Cocoa.h>
#import "FSInterface.h"

@interface FSNSGeneric : NSObject {
	int advect_velocity;
	int advect_pressure;
	int advect_temperature;
	int advect_fluid;
	
	float fWaterConstant;
}

@end
