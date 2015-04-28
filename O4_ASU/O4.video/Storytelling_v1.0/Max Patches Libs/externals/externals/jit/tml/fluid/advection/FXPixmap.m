//
//  FXPixmap.m
//  CocoaGame
//

#import "FXPixmap.h"


@implementation FXPixmap

- (FXPixmap*)initWithWidth:(int)in_width height:(int)in_height planes:(int)in_planes
{
	[super init];

	if (in_width <= 0 || in_height <= 0 || in_planes <=0)
	{
		[NSException	raise:@"badParameters"
						format:@"Cannot create a pixmap with negative dimensions!"];
	}
	
	pch = malloc(sizeof(unsigned char)*in_width*in_height*in_planes);

	if (pch == nil)
	{
		[NSException	raise:@"outOfMemory"
						format:@"Unable to allocate pixmap data!"];
	}
	
	width = in_width;
	height = in_height;
	planes = in_planes;
	
	return self;
}


+ (FXPixmap*)allocWithWidth:(int)in_width height:(int)in_height planes:(int)in_planes
{
	FXPixmap *toRet = [FXPixmap alloc];
	[toRet initWithWidth:in_width height:in_height planes:in_planes];
	return toRet;
}


- (void)dealloc
{
	if (pch != nil) free(pch);

	[super dealloc];
}

- (int)width
{
	return width;
}

- (int)height
{
	return height;
}

- (int)planes
{
	return planes;
}

- (int)strideX
{
	return planes;
}

- (int)strideY
{
	return planes*width;
}

- (unsigned char *)dataPointer
{
	return pch;
}

- (id<FXPixmap>)clear
{
	memset(pch, 0, sizeof(unsigned char)*width*height*planes);
	return self;
}

@end
