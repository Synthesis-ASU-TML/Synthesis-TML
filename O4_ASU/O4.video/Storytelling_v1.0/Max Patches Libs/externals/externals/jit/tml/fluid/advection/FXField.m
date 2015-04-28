//
//  FXField.m
//  CocoaGame
//

#import "FXField.h"


@implementation FXField

- (FXField*)initWithWidth:(int)in_width height:(int)in_height planes:(int)in_planes
{
	if (in_width <= 0 || in_height <= 0 || in_planes <= 0)
	{
		[NSException	raise:@"badInput"
						format:@"All parameters must be greater than 0!"];
	}

	width = in_width;
	height = in_height;
	planes = in_planes;

	data = malloc(in_width*in_height*in_planes*sizeof(float));
	
	if (data == NULL)
	{
		[NSException	raise:@"noMemory"
						format:@"Ran out of memory to allocate FXField"];
	}
	
	return self;
}


+ (FXField*)allocWithWidth:(int)in_width height:(int)in_height planes:(int)in_planes
{
	FXField *toRet = [FXField alloc];
	[toRet initWithWidth:in_width height:in_height planes:in_planes];
	
	return toRet;
}

- dealloc
{
	if (data != NULL)
		free(data);
	
	[super dealloc];
	
	return self;
}

- (int)width
{
	return width;
}

- (int)height
{
	return height;
}

- (int)planeCount
{
	return planes;
}

- (float*)dataPointer
{
	return data;
}

- (int)strideX
{
	return planes;
}

- (int)strideY
{
	return planes*width;
}

- (id<FXField>)clear
{
	memset(data, 0, sizeof(float)*width*height);
	
	return self;
}

@end
