#ifndef JIT_GL_LUA_H
#define JIT_GL_LUA_H
 
#include "jit.common.h"
#include "jit.gl.h"
/*#include <MaxLua/lua.h>
#include <MaxLua/lualib.h>
#include <MaxLua/lauxlib.h>*/
#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"
#include "jit.gl.lua.sym.h"

#include "jit.gl.drawinfo.h"

typedef struct _jit_gl_lua 
{
	t_object					ob;
	void						*ob3d;
	void						*max_wrapper;		// if a patcher object, the max wrapper
	
	//Lua
	lua_State					*lua;				// instance of Lua
	
	//lua file
	t_symbol					*file;				// name of the lua file
	short						file_volume;		// file system volume where file is
	char						**texthandle;		// handle to lua script string
	void						*file_watcher;		// watches if script is updated (autowatch)
	long						textsize;			// size of the script in bytes
	long						autowatch;			// flag for reloading script if updated
	char						file_path[1024];	// fully qualified file path for autowatch fallback
	
	// add @path for script path
	t_symbol					*path;				// path to script
	
	long						context;			// mirror of drawinfo.ctx for attribute getting
	t_jit_gl_drawinfo			drawinfo;			// context info cache for access to jit.drawinfo.c functions
	t_symbol *					lua_unique_name;	// a unique name that gets put in the LUA_REGISTRY_INDEX
	long						gc;					// on/off switch for the Lua garbage collector
	long						memsize;			// amount of memory Lua is using
	
	long						inlets;				// number of inlets for the object
	long						outlets;			// number of outlets for the object
	
	long						last_inlet;			// last inlet used [0, x->inlets)
} t_jit_gl_lua;


//Lua Methods
int	lua_post(lua_State *L);

void jit_gl_lua_load_script(t_jit_gl_lua *x);

/********************************************************************
* File handling methods
*/
//attr methods
extern void lua_autowatch(t_jit_gl_lua *x, void *attr, long ac, t_atom *av);

//file and external load methods
extern void lua_doread(t_jit_gl_lua *x, t_symbol *s, short argc, t_atom *argv);
extern short lua_readfile(t_jit_gl_lua *x, char *filename, short vol);

extern void lua_updatefilewatch(t_jit_gl_lua *x, char *filename, short path);
extern void lua_filechanged(t_jit_gl_lua *x, char *filename, short path);
extern int get_module_path(char *path);
/********************************************************************/

/********************************************************************
* Util methods
*/
//Lua Methods
extern void lua_setup_lua(t_jit_gl_lua *x);
extern void load_bundle(t_symbol *realname, t_symbol *diskname);
extern int stackDump(lua_State *L);
extern int lua_importfile(lua_State *L);

//message passing beteween Max and Lua
extern void lua_call_function(t_jit_gl_lua *x, const char *func, const char *sig, ...);
extern void lua_call_function_atom(t_jit_gl_lua *x, const char *func, const char *sig, long argc, t_atom *argv);
extern void lua_call_function_list(t_jit_gl_lua *x, const char *func, long argc, t_atom *argv);
extern int lua_post(lua_State *L);			// print
extern int lua_outlet(lua_State *L);		// outlet
extern void lua_getattributes(t_jit_gl_lua *x);

extern int atoms_from_args(lua_State *L, int index_start, t_atom **args);
extern void atoms_to_lua(lua_State *L, int argc, t_atom *argv);
/********************************************************************/


/********************************************************************
* Macros
*/
//# quotes a define argument
//## concatentates strings
#ifndef	TABLE_ENTRY
	#define TABLE_ENTRY(PREFIX, NAME)		{ #NAME, PREFIX##_##NAME }
#endif

#define GENSYM(x)						gensym((char *)(x))


extern void SCRIPT_ERROR(lua_State *L, int level, const char *string, ...);
/********************************************************************/

#endif //JIT_GL_LUA_H