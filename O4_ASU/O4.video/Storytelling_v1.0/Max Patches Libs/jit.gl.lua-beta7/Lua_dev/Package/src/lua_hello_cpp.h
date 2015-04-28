/*
 *  lua_hello_cpp.h
 *  lua_package
 *
 *  Created by Wesley Smith on 2/7/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */
 
#ifndef INC_USERDATA_EXAMPLE_H
#define INC_USERDATA_EXAMPLE_H

#include "Userdata.h"
#include "Hello.h"

// open with Userdata :: luaopen<Example>(L);

class Lua_Hello : public Udata<Hello, Lua_Hello>
{
	public:
			Lua_Hello();
			~Lua_Hello();

			// Lua API:	
			static const char * 	name;
			static int				init_metatable(lua_State *L);
			
			static int				create(lua_State *L);
			
			static int				say_hello(lua_State *L);
			
	protected:
	
};

#endif