#ifndef INC_USERDATA_H
#define INC_USERDATA_H

// some handy macros:
#define USERDATA_PUSHMETHOD(NAME)			lua_pushstring(L, #NAME); \
											lua_pushcfunction(L, NAME); \
											lua_settable(L, -3);

#ifdef __cplusplus
extern "C" {
#endif

	#include "lua.h"
	#include "lauxlib.h"

#ifdef __cplusplus
}
#endif



// Base class for Lua - C++ userdata:
template <class T, class T2>
class Udata 
{
	// the member variable that points to the wrapped instance of class T
	T * self;


	public:

		static int openlib(lua_State * L);


		static T * toUdata(lua_State * L, int idx);


		static void alloc(lua_State * L, T * instance);


		static int __index(lua_State * L);
		static int __newindex(lua_State * L);
		static int create(lua_State * L);
		static int __gc(lua_State * L);
		static int __tostring(lua_State * L);
		static int __type(lua_State * L);

};

template <class T, class T2>
int Udata<T, T2> :: openlib(lua_State * L)
{
	lua_settop( L, 0 );
	luaL_newmetatable(L, T2::name); // create a new class metatable

	lua_pushstring(L, "__index");
	lua_pushcfunction(L, __index);
	lua_settable(L, -3);

	lua_pushstring(L, "__newindex");
	lua_pushcfunction(L, __newindex);
	lua_settable(L, -3);

	// install default destructor:
	lua_pushstring(L, "__gc");
	lua_pushcfunction(L, __gc);
	lua_settable(L, -3);


	// install default tostring metamethod:
	lua_pushstring(L, "__tostring");
	lua_pushcfunction(L, __tostring);
	lua_settable(L, -3);

	// install default type identifier:
	lua_pushstring(L, "__type");
	lua_pushcfunction(L, __type);
	lua_settable(L, -3);


	// install default type identifier:
	lua_pushstring(L, "create");
	lua_pushcfunction(L, create);
	lua_settable(L, -3);


	// install class-specific methods:
	T2::init_metatable(L);


	// make metatable available globally:
	lua_pushvalue(L, -1);
	lua_setglobal(L, T2::name);


	return 1; // leaves the metatable on the stack
}

template <class T, class T2>
inline T * Udata<T, T2> :: toUdata(lua_State * L, int idx)
{
	void * o = luaL_checkudata(L, idx, T2::name);
	return o ? ((Udata<T, T2> *)o)->self : 0;
}

template<class T, class T2>
inline void Udata<T, T2> :: alloc(lua_State * L, T * instance)
{
	Udata<T, T2> * u = (Udata<T, T2> *)lua_newuserdata(L, sizeof(Udata<T, T2>));

	luaL_getmetatable(L, T2::name);		// mt
	lua_setmetatable(L, -2);			// setmetatable(udata, mt)

	u->self = instance;
}

template <class T, class T2>
inline int Udata<T, T2> :: __index(lua_State * L)
{
	lua_getfenv(L, 1);				//get userdata environment
	lua_pushvalue(L, 2);
	lua_gettable(L, -2);			//check environment table for field
	
	if(lua_isnil(L, -1)) {
		lua_pop(L, 1);
		lua_getmetatable(L, 1);		//get userdata metatable
		lua_pushvalue(L, 2);	
		lua_gettable(L, -2);		//check metatable for field
	}
	
	return 1;
}

template <class T, class T2>
inline int Udata<T, T2> :: __newindex(lua_State * L)
{
	if (lua_isnil(L, 2)) {
		luaL_typerror(L, 2, " can't set a table with a nil key");
	}
	
	//check if enough args to set table key-value pair
	if (lua_gettop(L) == 2)
		lua_pushnil(L);
		
	lua_getfenv(L, 1);		//get userdata environment
	
	lua_pushvalue(L, 2);
	lua_pushvalue(L, 3);
	lua_settable(L, -3);
	
	return 0;
}

template <class T, class T2>
inline int Udata<T, T2> :: create(lua_State * L)
{
	// this is a default constructor; overload this if you want class-specific constructors
	alloc(L, new T());
	return 1; // return the userdata
}

template <class T, class T2>
inline int Udata<T, T2> :: __gc(lua_State * L)
{
	T * t = toUdata(L, -1);

	if (t) { delete t; }
	return 0;
}

template <class T, class T2>
inline int Udata<T, T2> :: __type(lua_State * L)
{
	lua_pushstring(L, T2::name);
	return 1;
}

template <class T, class T2>
inline int Udata<T, T2> :: __tostring(lua_State * L)
{
	lua_pushfstring(L, "%s (%p)", ((char *)T2::name), toUdata(L, -1));
	return 1;
}

#endif	//INC_USERDATA_H