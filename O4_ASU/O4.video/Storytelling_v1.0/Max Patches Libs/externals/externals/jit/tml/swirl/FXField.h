//
//  FXField.h
//  CocoaGame
//
//		A 2D field.
//

#import <Cocoa/Cocoa.h>


@protocol FXField <NSObject>

//Query the field...
- (int)width;
- (int)height;
- (int)planeCount;

//Data
- (float*)dataPointer;

//Interpretation of data
//	The X-stride is multiplied by the x-coordinate in the grid,
//	and the Y-stride is multiplied by the y-coordinate in the grid.
//
//	This is in number of floats, not number of bytes (no useless divides/
//	odd casting).
//
//	This allows for the data to change - be irregular.
//
//	Normally, it's safe to assume that the widths (x) have a smaller stride.
- (int)strideX;
- (int)strideY;

//Useful operations...
- (id<FXField>)clear;			//Clears the data (to 0)

@end



@interface FXField : NSObject <FXField>
{
	//The width, height, and number of planes.
	int width;
	int height;
	int planes;
	
	//The data
	float *data;
}

//Allocates
- (FXField*)initWithWidth:(int)in_width height:(int)in_height planes:(int)in_planes;
+ (FXField*)allocWithWidth:(int)in_width height:(int)in_height planes:(int)in_planes;

@end
