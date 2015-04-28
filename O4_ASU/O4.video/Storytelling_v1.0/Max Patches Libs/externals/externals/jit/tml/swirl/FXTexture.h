//
//  FXTexture.h
//  CocoaGame
//
//	A simple OpenGL texture object.
//

#import <Cocoa/Cocoa.h>
#import "FXField.h"
#import "FXPixmap.h"
#include <OpenGL/gl.h>

@protocol FXTexture
	//Apply a conforming texture
	- (id<FXTexture>)apply;
	
	- (id<FXTexture>)applyAt:(int)unit;
@end


@interface FXTexture : NSObject <FXTexture>
{
	GLuint texRef;
}

//Initializes an empty texture
- (FXTexture*)init;

//Takes in a texture and uploads it...
- (FXTexture*)initWithImage:(NSImage*)image;

//Take in an NSImage and upload it...
- (FXTexture*)loadImage:(NSImage*)image;

//Take in an FXField
- (FXTexture*)loadField:(FXField*)field;

//Take in an FXPixmap
- (FXTexture*)loadPixmap:(FXPixmap*)field;

//Set as the current texture
- (FXTexture*)apply;

//Set as the current texture for a given render unit
- (FXTexture*)applyAt:(int)unit;

//Objective-C destructor
- dealloc;

@end
