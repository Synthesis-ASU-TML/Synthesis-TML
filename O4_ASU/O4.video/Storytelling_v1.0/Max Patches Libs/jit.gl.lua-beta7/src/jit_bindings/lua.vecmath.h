/*
 *  lua.vecmath.h
 *  max.jit.gl.lua
 *
 *  Created by Wesley Smith on 10/30/06.
 *  Copyright 2006 __MyCompanyName__. All rights reserved.
 *
 */

#ifndef __LVECMATH_H__
#define __LVECMATH_H__

#ifdef __cplusplus
extern "C" {
#endif

#define LVECMATH_API extern


//#include <MaxLua/lualib.h>
#include "lualib.h"
#include "jit.gl.lua.h"
#include "jit.vecmath.h"

LVECMATH_API int luaopen_vecmath(lua_State* L);

#ifdef __cplusplus
}
#endif

#endif