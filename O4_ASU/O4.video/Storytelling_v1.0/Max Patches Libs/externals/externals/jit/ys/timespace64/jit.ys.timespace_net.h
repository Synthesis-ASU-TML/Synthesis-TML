/*
 *  jit.ys.timespace_net.h
 *  ys.jit.timespace
 *
 *  Created by Mikevil on 22/01/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

//Connects to a remote computation unit
void timespace_connect();

//Disconnects from a remote computation unit.
void timespace_disconnect();

//Sends a quit message to the remote unit.
void timespace_quitmessage();
