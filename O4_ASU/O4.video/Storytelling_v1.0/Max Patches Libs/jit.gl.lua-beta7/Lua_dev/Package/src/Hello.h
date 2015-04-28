/*
 *  Hello.h
 *  lua_package
 *
 *  Created by Wesley Smith on 2/7/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

class Hello
{
	public:
			Hello();
			~Hello() {};
			
			const char * say_hello() {return message;}
			
	protected:
			char		message[32];
};