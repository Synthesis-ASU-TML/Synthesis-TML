#ifndef __LJITGL_H__
#define __LJITGL_H__

#ifdef __cplusplus
extern "C" {
#endif

#define LJITGL_API extern

#include "jit.gl.lua.h"
#include "jit.gl.drawinfo.h"

#define SUPPORT_META	"C74_Support_meta"

LJITGL_API int luaopen_jit_gl(lua_State* L);

#ifdef __cplusplus
}
#endif

#endif