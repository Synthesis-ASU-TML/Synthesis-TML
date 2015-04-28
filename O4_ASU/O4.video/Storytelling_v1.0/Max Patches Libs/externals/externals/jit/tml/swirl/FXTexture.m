//
//  FXTexture.m
//  CocoaGame
//

#import "FXTexture.h"


@implementation FXTexture


- (FXTexture*)init
{
	glGenTextures(1, &texRef);
	glBindTexture(GL_TEXTURE_2D, texRef);
	
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	
	return self;
}

- (FXTexture*)initWithImage:(NSImage*)img
{
	return [[self init] loadImage:img];
}

- (FXTexture*)loadImage:(NSImage*)img
{
	[self apply];
	NSSize s = [img size];
	
	NSBitmapImageRep *imgRep = [NSBitmapImageRep alloc];
	[img lockFocus];
	[imgRep initWithFocusedViewRect:NSMakeRect(0.0,0.0,s.width,s.height)];
	[img unlockFocus];
	
	if ([imgRep samplesPerPixel] == 4)
	{
		glTexImage2D(GL_TEXTURE_2D, 0, 
			GL_RGBA8,
			[imgRep pixelsWide], 
			[imgRep pixelsHigh], 
			0, 
			GL_RGBA,
			GL_UNSIGNED_BYTE, 
			[imgRep bitmapData]);
	}
	else if ([imgRep samplesPerPixel] == 3)
	{
		glTexImage2D(GL_TEXTURE_2D, 0, 
			GL_RGBA8,
			[imgRep pixelsWide], 
			[imgRep pixelsHigh], 
			0, 
			GL_RGB,
			GL_UNSIGNED_BYTE, 
			[imgRep bitmapData]);
	}
	
	[imgRep release];
	
	return self;
}


- (FXTexture*)loadField:(FXField*)field
{
	[self apply];
	
	int planes = [field planeCount];
	
	//Cast to 
	if (planes == 1)
	{
		glTexImage2D(GL_TEXTURE_2D, 0,
			GL_RGBA8,
			[field width], [field height],
			0,
			GL_LUMINANCE,
			GL_FLOAT,
			[field dataPointer]);
	}
	else
	{
		[NSException raise:@"Unsupported"
					format:@"%i planes are unsupported", planes];
	}
	
	return self;
}


- (FXTexture*)loadPixmap:(FXPixmap*)pixmap
{
	[self apply];
	
	int planes = [pixmap planes];
	
	switch(planes)
	{
	case 1:
		glTexImage2D(GL_TEXTURE_2D, 0,
			GL_RGBA8,
			[pixmap width], [pixmap height],
			0,
			GL_LUMINANCE,
			GL_UNSIGNED_BYTE,
			[pixmap dataPointer]);
		break;
		
	case 4:
		glTexImage2D(GL_TEXTURE_2D, 0,
			GL_RGBA8,
			[pixmap width], [pixmap height],
			0,
			GL_RGBA,
			GL_UNSIGNED_BYTE,
			[pixmap dataPointer]);
		break;
	
	default:
		[NSException	raise:@"Unsupported"
						format:@"%i planes are unsupported", planes];
	}
	
	return self;
}


- (FXTexture*)apply
{
	glBindTexture(GL_TEXTURE_2D, texRef);
	
	return self;
}


- (FXTexture*)applyAt:(int)unit
{
	glActiveTexture(GL_TEXTURE0 + unit);
	glBindTexture(GL_TEXTURE_2D, texRef);
	glActiveTexture(GL_TEXTURE0);
	
	return self;
}


- dealloc
{
	[super dealloc];
	
	glDeleteTextures(1, &texRef);
	
	return self;
}

@end
