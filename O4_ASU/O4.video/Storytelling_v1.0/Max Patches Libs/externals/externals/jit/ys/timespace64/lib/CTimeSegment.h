/*
 *  CTimeSegment.h
 *  ys.jit.timespace
 *
 *  Created by Mikevil on 22/01/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

//CTimeSegement
//	Handles a single line within timespace.
//
//	This object is thread-safe, and socket-ready.
class CTimeSegment
{
public:
	//Sets up the time segment to use the appropriate length
	CTimeSegment(int nLength);
	virtual ~CTimeSegment();

protected:

private:
	//Amount of data to keep a back-copy of.
	//	(ints are 32bit on OS/X, even when in 64bit mode)
	int *m_backData;
	
	//Indices (for timespace)
	char *m_curIndex;
};
