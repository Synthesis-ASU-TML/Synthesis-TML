#include "jit.common.h"
/*#include <MaxLua/lua.h>
#include <MaxLua/lualib.h>
#include <MaxLua/lauxlib.h>*/
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

typedef struct _jit_lua_listener
{
	t_object					ob;
	t_object					*listener;
	t_symbol					*callback_func;
	lua_State					*lua;
} t_jit_lua_listener;

t_jit_err jit_lua_listener_init(void);

