#include "lua.jit.gl.h"
#include "lua.jit.h"

// TEMP
#include "../../jitlib/gl/jit.gl.ob3d.internal.h"


//utility function for getting drawinfo struct from t_jit_gl_lua
//struct that owns the active lua_State
t_jit_gl_drawinfo * get_drawinfo(lua_State* L)
{
	void *x;
	
	lua_getglobal(L, "this");
	x = toJitobj(L, -1);

	return jit_object_method(x, ps_drawinfo);
}


static int lua_jit_gl_active_textures(lua_State *L)
{
	t_jit_gl_drawinfo *drawinfo;
	
	drawinfo = get_drawinfo(L);
	lua_pushinteger(L, jit_gl_drawinfo_active_textures(drawinfo));
	
	return 1;
}

static int lua_jit_gl_texcoord(lua_State *L)
{
	t_jit_gl_drawinfo *drawinfo = get_drawinfo(L);
	float tcs[3];
	long n = 0;
	int i;
	
	if(!drawinfo) luaL_error(L, "jit.gl.texcoord invalid drawinfo: OpenGL context not avaialble");
	
	if(lua_istable(L, 1)) {
		n = lua_objlen(L, 1);
		for(i=1; i <= MIN(n, 3); i++) {
			lua_rawgeti(L, 1, i);
			tcs[i-1] = lua_tonumber(L, -1);
		}
		lua_pop(L, n);
	}
	else if(lua_isnumber(L, 1)) {
		n = lua_gettop(L);
		for(i=1; i <= MIN(n, 3); i++) {
			tcs[i-1] = lua_tonumber(L, i);
		}
	}
	else {
		luaL_error(L, "argument 1 to jit.gl.texcoord must be a table or number");
	}
	
	{
		// TEMP HACK
		long lastcount = ((t_jit_ob3d *)drawinfo->ob3d)->texturecount;
		((t_jit_ob3d *)drawinfo->ob3d)->texturecount = 8;
		switch(n) {
			case 1:  jit_gl_texcoord1f(drawinfo, tcs[0]);	break;
			case 2:  jit_gl_texcoord2f(drawinfo, tcs[0], tcs[1]);	break;
			case 3:
			default: jit_gl_texcoord3f(drawinfo, tcs[0], tcs[1], tcs[2]);	break;
		}
		((t_jit_ob3d *)drawinfo->ob3d)->texturecount = lastcount;
	}
	
	return 0;
}

static int lua_jit_gl_bindtexture(lua_State *L)
{
	t_jit_gl_drawinfo *drawinfo;
	t_symbol *tex_name;
	
	drawinfo = get_drawinfo(L);
	
	/* Type check arguments */
	if(! lua_isstring(L, 1) )
		luaL_error(L, "argument 1 to jit.gl.bindtexture must be a string");
		
	if(! lua_isnumber(L, 2) )
		luaL_error(L, "argument 2 to jit.gl.bindtexture must be an number");
	
	tex_name = GENSYM(lua_tostring(L, 1));

	if(drawinfo->ob3d)
		jit_gl_bindtexture(drawinfo, tex_name, lua_tointeger(L, 2));
	
	return 0;
}

static int lua_jit_gl_unbindtexture(lua_State *L)
{
	t_jit_gl_drawinfo *drawinfo;
	t_symbol *tex_name;
	
	drawinfo = get_drawinfo(L);
	
	/* Type check arguments */
	if(! lua_isstring(L, 1) )
		luaL_error(L, "argument 1 to jit.gl.unbindtexture must be a string");
		
	if(! lua_isnumber(L, 2) )
		luaL_error(L, "argument 2 to jit.gl.bindtexture must be an number");
	
	tex_name = GENSYM(lua_tostring(L, 1));

	if(drawinfo->ob3d)
		jit_gl_unbindtexture(drawinfo, tex_name, lua_tointeger(L, 2));
	
	return 0;
}

static int lua_jit_gl_begincapture(lua_State *L)
{
	t_jit_gl_drawinfo *drawinfo;
	t_symbol *tex_name;
	
	drawinfo = get_drawinfo(L);
	
	/* Type check arguments */
	if(! lua_isstring(L, 1) )
		luaL_error(L, "argument 1 to jit.gl.begincapture must be a string");
	
	tex_name = GENSYM(lua_tostring(L, 1));

	if(drawinfo->ob3d)
		jit_gl_begincapture(drawinfo, tex_name, 0);
	
	return 0;
}

static int lua_jit_gl_endcapture(lua_State *L)
{
	t_jit_gl_drawinfo *drawinfo;
	t_symbol *tex_name;
	
	drawinfo = get_drawinfo(L);
	
	/* Type check arguments */
	if(! lua_isstring(L, 1) )
		luaL_error(L, "argument 1 to jit.gl.endcapture must be a string");
	
	tex_name = GENSYM(lua_tostring(L, 1));

	if(drawinfo->ob3d)
		jit_gl_endcapture(drawinfo, tex_name, 0);
	
	return 0;
}

static int lua_jit_gl_worldtoscreen(lua_State *L)
{
	t_point_3d p_world;
	t_point_3d p_screen;
	t_object *x;
	unsigned int i;
	
	/* Type check arguments */
	if(! lua_istable(L, 1) )
		luaL_error(L, "argument 1 to jit.gl.worldtoscreen must be a table");
	
	for(i=0; i < MIN(3, lua_objlen(L, 1)); i++) {
		lua_rawgeti(L, 1, i+1);
		p_world[i] = lua_tonumber(L, -1);
		lua_pop(L, 1);
	}
	
	lua_getglobal(L, "self");
	x = lua_touserdata(L, -1);
	
	jit_gl_worldtoscreen(x, p_world, p_screen);
	
	//return vector
	lua_newtable(L);
	
	for(i=0; i < 3; i++) {
		lua_pushnumber(L, p_screen[i]);
		lua_rawseti(L, -2, i+1);
	}
	
	return 1;
}

static int lua_jit_gl_screentoworld(lua_State *L)
{
	t_point_3d p_world;
	t_point_3d p_screen;
	t_object *x;
	unsigned int i;
	
	/* Type check arguments */
	if(! lua_istable(L, 1) )
		luaL_error(L, "argument 1 to jit.gl.worldtoscreen must be a table");
	
	for(i=0; i < MIN(3, lua_objlen(L, 1)); i++) {
		lua_rawgeti(L, 1, i+1);
		p_screen[i] = lua_tonumber(L, -1);
		lua_pop(L, 1);
	}
	
	lua_getglobal(L, "self");
	x = lua_touserdata(L, -1);
	
	jit_gl_screentoworld(x, p_screen, p_world);
	
	//return vector
	lua_newtable(L);
	
	for(i=0; i < 3; i++) {
		lua_pushnumber(L, p_world[i]);
		lua_rawseti(L, -2, i+1);
	}
	
	return 1;
}

extern void *jit_ob3d_get(void *x);
extern long ob3d_draw_begin(void *v, long setup);
extern long ob3d_draw_end(void *v, long setup);

static int lua_jit_gl_draw_begin(lua_State *L)
{
	Jitobj jitobj;
	int setup = 0;
	void *ob3d;
	
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 3, " argument 1 to jit.gl.draw_begin must be userdata", NULL);
	}
	
	if(lua_isnumber(L, 2) ) {
		setup = lua_tointeger(L, 2);
	}
	
	jitobj = toJitobj(L, 1);
	ob3d = jit_ob3d_get(jitobj);
	
	if(ob3d) {
		ob3d_draw_begin(ob3d, setup);
	}
	
	return 0;
}

static int lua_jit_gl_draw_end(lua_State *L)
{
	Jitobj jitobj;
	int setup = 0;
	void *ob3d;
	
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 3, " argument 1 to jit.gl.draw_end must be userdata", NULL);
	}
	
	if(lua_isnumber(L, 2) ) {
		setup = lua_tointeger(L, 2);
	}
	
	jitobj = toJitobj(L, 1);
	ob3d = jit_ob3d_get(jitobj);
	
	if(ob3d) {
		ob3d_draw_end(ob3d, setup);
	}

	return 0;
}

#define GET_SUPPORT_FIELD(support, offset)		*((long *)(((long)support)+offset))

static int support___index(lua_State *L)
{
	/* Type check arguments */
	if(! lua_istable(L, 1) )
		luaL_error(L, "argument 1 to support__index must be a table");
		
	if(! lua_isstring(L, 2) )
		luaL_error(L, "argument 2 to support.__index must be a string");
		
	lua_getmetatable(L, 1);
	lua_pushstring(L, "fields");
	lua_rawget(L,  -2);					//get fields table from metatable
	
	lua_pushvalue(L, 2);				//put support string at top of stack
	lua_rawget(L, -2);					//get the value of the string
	
	//clean up stack
	lua_insert(L, -3);
	lua_pop(L, 2);
	
	if(! lua_isnil(L, -1)) {
		t_jit_gl_support *support = jit_gl_get_support();
		long offset;
		
		lua_pushstring(L, "offset");
		lua_rawget(L, -2);
		offset = lua_tointeger(L, -1);
		lua_pop(L,  2);					//clean up stack
		
		lua_pushinteger(L, GET_SUPPORT_FIELD(support, offset));
	}
	
	return 1;
}

typedef struct support_field_table {
	const char		*name;
	const char		*description;
	long			offset;
} t_support_field_table;

#define SUPPORT_ENTRY(name, description)		{#name, description, calcoffset(t_jit_gl_support, name)}

static const t_support_field_table support_fields[] = 
{
	SUPPORT_ENTRY(initialized,				"flag for support initialization"),
	SUPPORT_ENTRY(color_buffer_float,		"flag if float pixels are supported for creating a color buffer pixelformat"),
	SUPPORT_ENTRY(color_float_pixels,		"flag if float pixels are enabled in current context"),
	SUPPORT_ENTRY(color_red_bits,			"number of color red bit planes in current context"),
	SUPPORT_ENTRY(color_green_bits,			"number of color green bit planes in current context"),
	SUPPORT_ENTRY(color_blue_bits,			"number of color blue bit planes in current context"),
	SUPPORT_ENTRY(color_alpha_bits,			"number of color alpha bit planes in current context"),
	SUPPORT_ENTRY(color_index_bits,			"number of color index bit planes in current context"),
	SUPPORT_ENTRY(accum_red_bits,			"number of accum red bit planes in current context"),
	SUPPORT_ENTRY(accum_green_bits,			"number of accum green bit planes in current context"),
	SUPPORT_ENTRY(accum_blue_bits,			"number of accum blue bit planes in current context"),
	SUPPORT_ENTRY(accum_alpha_bits,			"number of accum alpha bit planes in current context"),
	SUPPORT_ENTRY(stencil_bits,				"number of stencil bit planes in current context"),
	SUPPORT_ENTRY(depth_bits,				"number of depth bit planes in current context"),
	SUPPORT_ENTRY(aux_buffers,				"number of auxiliary buffers in current context"),
	SUPPORT_ENTRY(multitexture,				"flag for multi-texturing support"),
	SUPPORT_ENTRY(multisample,				"flag for multi-sample support"),
	SUPPORT_ENTRY(multisample_buffers,		"number of available multisample buffers"),
	SUPPORT_ENTRY(multisample_samples,		"number of samples available in multisampling mode"),
	SUPPORT_ENTRY(light_count,				"number of lights available"),
	SUPPORT_ENTRY(texture_units,			"number of texture units available"),
	SUPPORT_ENTRY(texture_max_size,			"maximum texture width or height"),
	SUPPORT_ENTRY(texture_3d,				"flag for 3d texture support"),
	SUPPORT_ENTRY(texture_cubemap,			"flag for cubemap support"),
	SUPPORT_ENTRY(texture_depth,			"flag for depth texture support"),
	SUPPORT_ENTRY(texture_shadow,			"flag for shadow texture support"),
	SUPPORT_ENTRY(texture_float,			"flag for floating point texture support"),
	SUPPORT_ENTRY(texture_env,				"flag for env support"),
	SUPPORT_ENTRY(texture_env_add,			"flag for env add support"),
	SUPPORT_ENTRY(texture_env_combine,		"flag for env combine support"),
	SUPPORT_ENTRY(texture_env_crossbar,		"flag for env crossbar support"),
	SUPPORT_ENTRY(texture_env_dot3,			"flag for env dot3 support"),
	SUPPORT_ENTRY(texture_env_target,		"target for all env features"),
	SUPPORT_ENTRY(texture_border_clamp,		"flag for clamp to border support"),
	SUPPORT_ENTRY(texture_mirrored_repeat,	"flag for mirrored repeat support"),
	SUPPORT_ENTRY(texture_anisotropic,		"flag for anisotropic support"),
	SUPPORT_ENTRY(texture_max_anisotropy,	"max anisotropic filter size"),
	SUPPORT_ENTRY(texture_rect,				"flag for rectangular textures support"),
	SUPPORT_ENTRY(texture_rect_target,		"backend for rect support (ARB, EXT)"),
	SUPPORT_ENTRY(texture_rect_uniform,		"flag for uniform texture coords"),
	SUPPORT_ENTRY(texture_compression,		"flag for texture compression support"),
	SUPPORT_ENTRY(texture_compression_s3tc,	"flag for s3tc compression"),
	SUPPORT_ENTRY(texture_compression_vtc,	"flag for vtc compression"),
	SUPPORT_ENTRY(texture_range,			"flag for texture range support (APPLE only)"),
	SUPPORT_ENTRY(client_storage,			"flag for client storage support (APPLE only)"),
	SUPPORT_ENTRY(pixel_float16,			"flag for 16bit float pixel support"),
	SUPPORT_ENTRY(pixel_float32,			"flag for 32bit float pixel support"),
	SUPPORT_ENTRY(pixel_float_target,		"backend for float support (APPLE, ATI, NV)"),
	SUPPORT_ENTRY(pbo,						"flag for pixel buffer objects support"),
	SUPPORT_ENTRY(fbo,						"flag for frame buffer object support"),
	SUPPORT_ENTRY(pbuffer,					"flag for hardware assisted pbuffer support"),
	SUPPORT_ENTRY(pbuffer_float,			"flag for float pbuffer support"),
	SUPPORT_ENTRY(pbuffer_float_target,		"backend for float support (APPLE, ATI, NV)"),
	SUPPORT_ENTRY(pbuffer_rtt,				"flag for render to texture support"),
	SUPPORT_ENTRY(pbuffer_rtt_rect,			"flag for rectangular render to texture support"),
	SUPPORT_ENTRY(pbuffer_rtt_rect_target,	"target for rectangular render to texture support"),
	SUPPORT_ENTRY(pbuffer_rtt_depth,		"flag for render to depth texture support"),
	SUPPORT_ENTRY(shader_objects_glsl_arb,	"flag for glsl shader objects"),
	SUPPORT_ENTRY(vertex_shader_glsl_arb,	"flag for glsl vertex shader programs"),
	SUPPORT_ENTRY(fragment_shader_glsl_arb,	"flag for glsl fragment shader programs"),
	SUPPORT_ENTRY(shading_language_support_glsl_arb,	"flag for native glsl compiler support"),
	SUPPORT_ENTRY(vertex_program_arb,		"flag for arb vertex program support"),
	SUPPORT_ENTRY(fragment_program_arb,		"flag for arb fragment program support"),
	SUPPORT_ENTRY(vertex_program_nv,		"flag for nv vertex program support"),
	SUPPORT_ENTRY(vertex_program_nv_version,	"version for nv vertex program support"),
	SUPPORT_ENTRY(fragment_program_nv,		"flag for nv fragment program support"),
	SUPPORT_ENTRY(fragment_program_nv_version,	"version for nv fragment program support"),
//	SUPPORT_ENTRY(fragment_program_shadow,	"flag for frament shader depth comparison capability"),
	SUPPORT_ENTRY(version_major,			"major version number"),
	SUPPORT_ENTRY(version_minor,			"minor version number"),
	SUPPORT_ENTRY(version_release,			"release version number"),
	{NULL, NULL, 0},
};

static const luaL_reg support_meta[] = 
{
	TABLE_ENTRY(support, __index),
	{NULL, NULL}
};

static const luaL_reg lua_jit_gl_lib[] = 
{
	TABLE_ENTRY(lua_jit_gl, active_textures),
	TABLE_ENTRY(lua_jit_gl, texcoord),
	TABLE_ENTRY(lua_jit_gl, bindtexture),
	TABLE_ENTRY(lua_jit_gl, unbindtexture),
	TABLE_ENTRY(lua_jit_gl, begincapture),
	TABLE_ENTRY(lua_jit_gl, endcapture),
	TABLE_ENTRY(lua_jit_gl, worldtoscreen),
	TABLE_ENTRY(lua_jit_gl, screentoworld),
	TABLE_ENTRY(lua_jit_gl, draw_begin),
	TABLE_ENTRY(lua_jit_gl, draw_end),
	{NULL, NULL}
};

LJITGL_API int luaopen_jit_gl(lua_State* L)
{
	//create jit.gl table
	lua_getglobal(L, "jit");
	
	lua_pushstring(L, "gl");
	lua_newtable(L);
	
	//set jit.gl functions
	{
		int i=0;
		
		while(lua_jit_gl_lib[i].name) {
			lua_pushstring(L, lua_jit_gl_lib[i].name);
			lua_pushcfunction(L, lua_jit_gl_lib[i].func);
			lua_settable(L, -3);
			i++;
		}
	}
	
	//set jit.gl.support field to a blank table and give it a metatable
	lua_pushstring(L, "support");
	lua_newtable(L);
	luaL_newmetatable(L, SUPPORT_META);
	
	lua_pushstring(L, "fields");
	lua_newtable(L);
	
	
	//fill suppoort metatable["fields"] with support fields
	{
		int i=0;
		
		while(support_fields[i].name) {
			lua_pushstring(L, support_fields[i].name);
			lua_newtable(L);
			
			lua_pushstring(L, "description");
			lua_pushstring(L, support_fields[i].description);
			lua_rawset(L, -3);
			
			lua_pushstring(L, "offset");
			lua_pushinteger(L, support_fields[i].offset);
			lua_rawset(L, -3);
			
			lua_rawset(L, -3);
			i++;
		}
	}
	
	lua_settable(L, -3);
	
	//set support metamethods
	{
		int i=0;

		while(support_meta[i].name) {
			lua_pushstring(L, support_meta[i].name);
			lua_pushcfunction(L, support_meta[i].func);
			lua_settable(L, -3);
			i++;
		}
	}
	
	lua_setmetatable(L, -2);
	lua_settable(L, -3);
	
	lua_settable(L, -3);

	return 1;
}
