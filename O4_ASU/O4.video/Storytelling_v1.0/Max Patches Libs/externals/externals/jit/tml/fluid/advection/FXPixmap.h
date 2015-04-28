//
//  FXPixmap.h
//  CocoaGame
//

#import <Cocoa/Cocoa.h>


//Defines what a pixmap should do (in case we wish to avoid the standard
//pixmap)
@protocol FXPixmap <NSObject>

- (int)width;
- (int)height;
- (int)planes;

- (int)strideX;
- (int)strideY;

- (unsigned char *)dataPointer;

- (id<FXPixmap>)clear;

@end



//Does a pixmap!
//	This is, a field with 8-bit values.  This is good
//	for 24/32bit bitmaps.
@interface FXPixmap : NSObject <FXPixmap>
{
	//Width/height/planes
	int width;
	int height;
	int planes;
	
	//Pointer to characters
	unsigned char *pch;
}

- (FXPixmap*)initWithWidth:(int)in_width height:(int)in_height planes:(int)in_planes;
+ (FXPixmap*)allocWithWidth:(int)in_width height:(int)in_height planes:(int)in_planes;

@end
