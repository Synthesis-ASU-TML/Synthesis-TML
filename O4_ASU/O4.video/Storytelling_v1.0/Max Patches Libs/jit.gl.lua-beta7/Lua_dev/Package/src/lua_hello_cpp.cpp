/*
 *  lua_hello_cpp.cpp
 *  lua_package
 *
 *  Created by Wesley Smith on 2/7/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#include "lua_hello_cpp.h"

#ifdef __cplusplus
extern "C" {
#endif

	#include "lua.h"
	#include "lauxlib.h"

#ifdef __cplusplus
}
#endif

#include "Userdata.h"

const char * Lua_Hello :: name = "hello_cpp";

int Lua_Hello :: init_metatable(lua_State * L)
{
	// install Example's special destructor: 
	USERDATA_PUSHMETHOD(__gc)
	
	// add metatable methods
	USERDATA_PUSHMETHOD(create)
	USERDATA_PUSHMETHOD(say_hello)

	return 0;
}

// overloaded constructor:
inline int Lua_Hello :: create(lua_State * L)
{
	alloc( L, new Hello());

	return 1; // return the userdata
}

int Lua_Hello :: say_hello(lua_State *L)
{
	 Hello * h = toUdata(L, 1);
	 	
	if(h)
		lua_pushstring(L, h->say_hello());
	else
		lua_pushnil(L);
	
	return 1;
}

#ifdef __cplusplus
extern "C" {
#endif
extern int luaopen_hello_cpp (lua_State *L)
{
	Lua_Hello::openlib(L);
	return 1;
}
#ifdef __cplusplus
}
#endif