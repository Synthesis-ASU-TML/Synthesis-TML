/*
 *  lua_hello.c
 *  lua_package
 *
 *  Created by Wesley Smith on 1/20/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#include "lua.h"
#include "lauxlib.h"

#define LUA_HELLOLIBNAME	"hello"

static int hello_say_hello(lua_State *L)
{
	lua_pushstring(L, "say_hello");
	return 1;
}

static const luaL_Reg hellolib[] =
{
	{"say_hello",   hello_say_hello},
	{NULL, NULL}
};


extern int luaopen_hello (lua_State *L)
{
	luaL_register(L, LUA_HELLOLIBNAME, hellolib);
	return 1;
}