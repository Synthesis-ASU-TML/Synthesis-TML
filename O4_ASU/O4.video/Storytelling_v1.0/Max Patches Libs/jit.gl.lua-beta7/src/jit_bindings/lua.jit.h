#ifndef __LJIT_H__
#define __LJIT_H__

#ifdef __cplusplus
extern "C" {
#endif


#define LJIT_API extern

//#include <MaxLua/lualib.h>
#include "lualib.h"
#include "jit.gl.lua.h"

#define MATRIX_META	"C74_matrix_jit"
#define JITOBJ_META	"jit"
#define JITOBJ		"jit"
typedef void*		Jitobj_ptr;
typedef Jitobj_ptr	Jitobj;

LJIT_API int luaopen_jit(lua_State* L);

extern Jitobj toJitobj(lua_State *L, int index);
extern Jitobj checkJitobj(lua_State *L, int index);
extern Jitobj * Jitobj_push(lua_State *L, Jitobj obj, long lua_owns);

#ifdef __cplusplus
}
#endif

#endif