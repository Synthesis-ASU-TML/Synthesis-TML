#include "lua.listener.h"
#include "jit.gl.lua.h"
#include "lua.util.h"

#define JIT_LUA_LISTENER_FUNCTION_TABLE		"JIT_LUA_LISTENER_FUNCTION_TABLE"

void *_jit_lua_listener_class;

//jitter object methods
t_jit_lua_listener *jit_lua_listener_new(lua_State *L, long argc, t_atom *argv);
void jit_lua_listener_free(t_jit_lua_listener *x);

//Jitter Listener callback function
void jit_lua_listener_callback(t_jit_lua_listener *x, t_symbol *subject, t_symbol *s, long argc, t_atom *argv);

t_jit_err jit_lua_listener_init(void)
{
	long attrflags=0;
//	t_jit_object *attr;
	
	_jit_lua_listener_class = jit_class_new("jit_lua_listener",(method)jit_lua_listener_new,(method)jit_lua_listener_free,
		sizeof(t_jit_lua_listener),0L); //A_CANT = untyped
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	// autowatch
	/*attr = jit_object_new(_jit_sym_jit_attr_offset,"autowatch",_jit_sym_long,attrflags,
		(method)0L,(method)lua_autowatch,calcoffset(t_jit_gl_lua,autowatch));
	jit_class_addattr(_jit_lua_listener_class, attr);
	*/	
	
	jit_class_register(_jit_lua_listener_class);

	return JIT_ERR_NONE;
}

void jit_lua_listener_callback(t_jit_lua_listener *x, t_symbol *subject, t_symbol *s, long argc, t_atom *argv)
{
	int err;
	int i;
	
	//check if callback function in Lua exists
	if(x->callback_func == _jit_sym_nothing) {
		lua_getfield(x->lua, LUA_REGISTRYINDEX, JIT_LUA_LISTENER_FUNCTION_TABLE);
		lua_pushlightuserdata(x->lua, (void *)x);
		lua_rawget(x->lua, -2);
		
		lua_insert(x->lua, -2);
		lua_pop(x->lua, 1);	//pop fuction table
	}
	else {
		lua_getglobal(x->lua, x->callback_func->s_name);
	}
	
	if(lua_isfunction(x->lua, -1)) {
		//create Event table
		lua_newtable(x->lua);
		
		//add subjectname field to Event table
		lua_pushstring(x->lua, "subjectname");
		lua_pushstring(x->lua, subject->s_name);
		lua_rawset(x->lua, -3);
		
		//add eventname field to Event table
		lua_pushstring(x->lua, "eventname");
		lua_pushstring(x->lua, s->s_name);
		lua_rawset(x->lua, -3);
		
		//create args table
		lua_newtable(x->lua);
		
		for(i=0; i < argc; i++) {
			switch(argv[i].a_type)
			{
				case A_LONG:
					lua_pushinteger(x->lua, jit_atom_getlong(argv+i));
					break;
					
				case A_FLOAT:
					lua_pushnumber(x->lua, jit_atom_getfloat(argv+i));
					break;
					
				case A_SYM:
					lua_pushstring(x->lua, jit_atom_getsym(argv+i)->s_name);
					break;

				default:
					break;
			}
			
			lua_rawseti(x->lua, -2, i+1);
		}
		
		//set args stable to "args" field in Event table
		lua_pushstring(x->lua, "args");
		lua_insert(x->lua, -2);
		lua_rawset(x->lua, -3);

		err = lua_pcall(x->lua, 1, 0, 0);
		if (err) {
			post("lua.listener callback error %s", lua_tostring(x->lua, -1));
			lua_pop(x->lua, 1);
		}
	}
	else {
		//pop function name from stack
		lua_pop(x->lua, 1);
	}
}

t_jit_lua_listener *jit_lua_listener_new(lua_State *L, long argc, t_atom *argv)
{
	t_jit_lua_listener *x;
		
	if (x=(t_jit_lua_listener *)jit_object_alloc(_jit_lua_listener_class)) {
		x->listener = NULL;
		x->callback_func = _jit_sym_nothing;
		x->lua = L;
		
		x->listener = jit_object_new(gensym("jit_listener"), 0, NULL);
		jit_object_method(x->listener, gensym("setcbdata"), x);
		jit_object_method(x->listener, gensym("setcallback"), jit_lua_listener_callback);
		
		// first arg is subjectname
		if (argc) {
			jit_attr_setsym(x->listener, gensym("subjectname"), jit_atom_getsym(argv));
			argc--;
			argv++;
		}
		
		// second arg is function
		if (argc) {
			x->callback_func = jit_atom_getsym(argv);
			lua_getglobal(L, x->callback_func->s_name);
			
			if(LUA_TFUNCTION != lua_type(L, -1)) {
				error("%s is not a valid function", x->callback_func->s_name);
			}
			
			//pop function from stack
			lua_pop(L, -1);
			
			argc--;
			argv++;
		}
		else if(lua_isfunction(L, 2)) {
			lua_getfield(L, LUA_REGISTRYINDEX, JIT_LUA_LISTENER_FUNCTION_TABLE);
			if(lua_isnil(L, -1)) {
				lua_pop(L, 1);
				
				lua_newtable(L);
				lua_setfield(L, LUA_REGISTRYINDEX, JIT_LUA_LISTENER_FUNCTION_TABLE);
				lua_getfield(L, LUA_REGISTRYINDEX, JIT_LUA_LISTENER_FUNCTION_TABLE);
			}
			
			lua_pushlightuserdata(L, (void *)x);
			lua_pushvalue(L, 2);
			lua_rawset(L, -3);
			
			lua_pop(L, 1);
		}
	} else {
		x = NULL;
	}	
	return x;
}

void jit_lua_listener_free(t_jit_lua_listener *x)
{
	jit_object_free(x->listener);
}