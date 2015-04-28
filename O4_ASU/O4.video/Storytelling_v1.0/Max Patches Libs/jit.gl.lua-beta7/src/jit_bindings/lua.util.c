#include "lua.util.h"
#include "lua.jit.h"
#include "lua.jit.gl.h"
#include "lua.vecmath.h"
#include "lua.listener.h"

#define JIT_GL_LUA_TRACEBACK	"JIT_GL_LUA_TRACEBACK"

void lua_post_error(t_jit_gl_lua *x, const char *msg);

//should report error if no Lua and kill object creation
void lua_setup_lua(t_jit_gl_lua *x)
{
	//load lua_listener class
	jit_lua_listener_init();

	x->lua = lua_open();
	luaL_openlibs(x->lua);			//standard Lua libs
	
	// get traceback function
	lua_getglobal(x->lua, "debug");
		lua_pushliteral(x->lua, "traceback");
		lua_gettable(x->lua, -2);

		lua_setfield(x->lua, LUA_REGISTRYINDEX, JIT_GL_LUA_TRACEBACK);
	lua_pop(x->lua, 1);
	
	//append package search path
	{
		char path[1024];
		char new_cpath[1024];
		const char *cpath;
		get_module_path(path);
		
		lua_getglobal(x->lua, "package");
		lua_pushstring(x->lua, "cpath");
		lua_rawget(x->lua, -2);
		
		cpath = lua_tostring(x->lua, -1);
		strcpy(new_cpath, cpath);
		
		strcat(new_cpath, ";");				//add delimiter
		strcat(new_cpath, path);			//add module path

#if TARGET_RT_MAC_MACHO
		strcat(new_cpath, "?.so");			//add so matcher
#else
		strcat(new_cpath, "?.dll");			//add dll matcher
#endif
		lua_pop(x->lua, 1);					//get rid of old cpath
		lua_pushstring(x->lua, "cpath");
		lua_pushstring(x->lua, new_cpath);
		
		lua_rawset(x->lua, -3);
		
		lua_pop(x->lua, 1);				//pop table from stack
	}
	
	
	luaopen_opengl(x->lua);			//LuaGL for OpenGL API bindings
	luaopen_glu(x->lua);			//LuaGLU for glu* OpenGL functions
	luaopen_jit(x->lua);			//Jitlib bindings jit.*
	luaopen_vecmath(x->lua);		//jit.vecmath.c bindings vec2.*/vec3.*/vec4.*/quat.*/mat3.*/mat4.*
	
	//print function from Lua that uses post()
	lua_pushcfunction(x->lua, lua_post);
	lua_setglobal(x->lua, "print");
	
	//outlet() function
	lua_pushcfunction(x->lua, lua_outlet);
	lua_setglobal(x->lua, "outlet");
	
	//importfile() function for loading in scripts within scripts
	lua_pushcfunction(x->lua, lua_importfile);
	lua_setglobal(x->lua, "importfile");
	
	//stackdump for printing the Lua stack
//	lua_pushcfunction(x->lua, stackDump);
//	lua_setglobal(x->lua, "stackdump");
		
	//setting global "this" variable to this instance of jit.gl.lua
	Jitobj_push(x->lua, x, 0);
	lua_setglobal(x->lua, "this");
	
	//put "this" in the global registry so it wont be garbage collected
	lua_pushstring(x->lua, x->lua_unique_name->s_name);
	lua_getglobal(x->lua, "this");
	lua_settable(x->lua, LUA_REGISTRYINDEX);
	
	//create a meta-patcher-message handler
	lua_getglobal(x->lua, "_G");					//get globals table
	luaL_newmetatable(x->lua, "_G_meta");			//create a new metatable
	lua_setmetatable(x->lua, -2);					//set the new metatable to be the globals metatable
	lua_pop(x->lua, 1);								//pop globals table from stack
	
	luaopen_jit_gl(x->lua);
}

void load_bundle(t_symbol *realname, t_symbol *diskname)
{
	void *c, *p;
	
	c = (void *)class_findbyname(gensym("jitter"),realname);
	
	if (!c) {
		if (p=newinstance(diskname,0,NULL)) { 
			c = (void *)class_findbyname(gensym("jitter"),realname);
			freeobject(p);
			p = NULL;
		}
	}
}

void lua_call_function(t_jit_gl_lua *x, const char *func, const char *sig, ...)
{
	va_list vl;
	int narg, nres;	/* number of arguments and results */
	
	va_start(vl, sig);
	lua_getglobal(x->lua, func);	/* push function */
	
	/******************************
		push arguments
	*/
	for(narg = 0; *sig; narg++) {
		/* check stack space */
		luaL_checkstack(x->lua, 1, "too many arguments");
		
		switch (*sig++)
		{
			case 'd':	/* double argument */
				lua_pushnumber(x->lua, va_arg(vl, double));
				break;
			
			case 'i':	/* int argument */
				lua_pushinteger(x->lua, va_arg(vl, int));
				break;
				
			case 's':	/* string argument */
				lua_pushstring(x->lua, va_arg(vl, char *));
				break;
				
			case '>':	/* end of arguments */
				goto endargs;
				
			default:
				error("invalid option (%c)", *(sig - 1));
		}
	}
	
endargs:
	
	nres = strlen(sig);		/* number of expected results */
	
	/* do the call */
	if(lua_pcall(x->lua, narg, nres, 0) != 0) {
		error("error calling %s: %s", func, lua_tostring(x->lua, -1));
	}
	
	/******************************
		retrieve results
	*/
	
	nres = -nres;	/* stack index of first result */
	
	while(*sig) {	/* repeat for each result */
		switch(*sig++)
		{
			case 'd':	/* double result */
				if(! lua_isnumber(x->lua, nres)) {
					error("wrong result type");
				}
				
				*va_arg(vl, double *) = lua_tonumber(x->lua, nres);
				break;
				
			case 'i':	/* int result */
				if(! lua_isnumber(x->lua, nres)) {
					error("wrong result type");
				}
				
				*va_arg(vl, int *) = lua_tointeger(x->lua, nres);
				break;
				
			case 's':	/* string result */
				if(! lua_isstring(x->lua, nres)) {
					error("wrong result type");
				}
				
				*va_arg(vl, const char **) = lua_tostring(x->lua, nres);
				break;
				
			default:
				error("invalid option (%c)", *(sig -1));
		}
		
		nres++;
	}
	
	va_end(vl);
}

void lua_call_function_atom(t_jit_gl_lua *x, const char *func, const char *sig, long argc, t_atom *argv)
{
	int narg;	/* number of arguments and results */
	int debug_idx = -1;
	
	lua_getfield(x->lua, LUA_REGISTRYINDEX, JIT_GL_LUA_TRACEBACK);
	debug_idx = lua_gettop(x->lua);
	
	lua_getglobal(x->lua, func);	/* push function */
	
	/******************************
		push arguments
	*/
	for(narg = 0; *sig; narg++) {
		/* check stack space */
		luaL_checkstack(x->lua, 1, "too many arguments");
		
		switch (*sig++) {
			case 'd':	/* double argument */
				lua_pushnumber(x->lua, jit_atom_getfloat(argv+narg));
				break;
			
			case 'i':	/* int argument */
				lua_pushinteger(x->lua, jit_atom_getlong(argv+narg));
				break;
				
			case 's':	/* string argument */
				lua_pushstring(x->lua, jit_atom_getsym(argv+narg)->s_name);
				break;
				
			case '>':	/* end of arguments */
				goto endargs;
				
			default:
				error("invalid option (%c)", *(sig - 1));
		}
	}
	
endargs:
	
	/* do the call */
	//if(lua_pcall(x->lua, narg, nres, -(narg+2)) != 0) {
	if(lua_pcall(x->lua, narg, 0, debug_idx) != 0) {
		//error("error calling %s: %s", func, lua_tostring(x->lua, -1));
		char str[4096];
		sprintf(str, "error calling %s: %s", func, lua_tostring(x->lua, -1));
		str[4095] = '\0';
		lua_post_error(x, str);
		lua_pop(x->lua, 1);
	}
	{
//		int top = lua_gettop(x->lua);
		lua_remove(x->lua, debug_idx);
	}
	
//	printf("stack: %d\n", lua_gettop(x->lua));
}

void lua_call_function_list(t_jit_gl_lua *x, const char *func, long argc, t_atom *argv)
{
	long i;
	
	//get global function
	lua_getglobal(x->lua, func);
	
	//arguments in a table
	lua_newtable(x->lua);
	
	for(i=0; i < argc; i++) {
		switch(argv[i].a_type)	/* first atom is func name */
		{
			case A_LONG:
				lua_pushinteger(x->lua, jit_atom_getlong(argv+i));
				lua_rawseti(x->lua, -2, i+1);
				break;
			case A_FLOAT:
				lua_pushnumber(x->lua, jit_atom_getfloat(argv+i));
				lua_rawseti(x->lua, -2, i+1);
				break;
			case A_SYM:
				lua_pushstring(x->lua, jit_atom_getsym(argv+i)->s_name);
				lua_rawseti(x->lua, -2, i+1);
				break;
		}
	}
	
	/* do the call */
	if(lua_pcall(x->lua, 1, 0, 0) != 0) {
		error("error calling %s: %s", func, lua_tostring(x->lua, -1));
	}
}

int stackDump(lua_State *L)
{
	int i;
	int top = lua_gettop(L);
	
	printf("stack dump %d:\n", top);
	for(i=top; i >= 1; i--) {
		int t = lua_type(L, i);
		
		switch(t)
		{
			case LUA_TSTRING:
					printf("%d \t'%s' string\n", i, lua_tostring(L, i));
					break;
					
			case LUA_TBOOLEAN:
					printf(lua_toboolean(L, i) ? "\ttrue\n" : "\tfalse\n");
					break;
					
			case LUA_TNUMBER:
					printf("%d \t'%f' number\n", i, lua_tonumber(L, i));
					break;
			
			case LUA_TLIGHTUSERDATA:
					printf("%d \t'%x'\n", i, lua_touserdata(L, i));
					break;
					
			case LUA_TFUNCTION:
					printf("%d \t'%x'\n", i, lua_tocfunction(L, i));
					break;
									
			default:
					printf("%d \t'%s'\n", i, lua_typename(L, t));
					break;
		}
	}
	
	return 0;
}

int lua_post(lua_State *L)
{
	char res[512];
	int n = lua_gettop(L);  /* number of arguments */
	int i;
	lua_getglobal(L, "tostring");
	
	res[0] = '\0';
	
	for (i=1; i<=n; i++) {
		const char *s;
		lua_pushvalue(L, -1);  /* function to be called */
		lua_pushvalue(L, i);   /* value to print */
		lua_call(L, 1, 1);
		s = lua_tostring(L, -1);  /* get result */
		if (s == NULL)
			return luaL_error(L, "`tostring' must return a string to `print'");

		if(i > 1) {
			strcat(res, "    ");
		}
		if(strlen(res)+strlen(s) < 511) {
			strcat(res, s);
		}
		else {
			int last = strlen(res);
			last = last < 508 ? last : 508;
			
			res[508] = '.';
			res[509] = '.';
			res[510] = '.';
			res[511] = '\0';
		}
		
		
		// add s to the output string, perhaps tab delimited?
		lua_pop(L, 1);  /* pop result */
	}
	post(res);

	// post the output string to max window
	return 0;
}

void lua_post_error(t_jit_gl_lua *x, const char *msg) {
	char line[512];
	long len = strlen(msg);
	long i=0;
	long j=0;
	long idx=0;
	
	while(i < len) {
		idx = 0;
		while(msg[j] != '\n' && j < len) {
			line[idx] = msg[j];
			j++;
			idx++;
		}
		j++;
		
		line[idx] = '\0';
		object_error((t_object *)x, line);
		
		i = j;
	}
}

int lua_outlet(lua_State *L)
{
	int outlet;
	int argc;
	t_atom *argv;
	void *jitobj=NULL;
	void *maxobj=NULL;
	
	if(!lua_isnumber(L, 1))
		luaL_error(L, "argument 1 for outlet must be an integer");
		
	outlet = lua_tointeger(L, 1);
	argc = script_lua_atoms_from_args(L, 2, &argv);

	lua_getglobal(L, "this");
	jitobj = toJitobj(L, -1);
	
	if(jitobj) {
		maxobj = jit_object_method(jitobj, gensym("getmax_wrapper"));
		
		if(maxobj) {
			object_method(maxobj, gensym("out_list"), outlet, argc, argv);
		}
	}
	
	jit_freebytes((void *)argv, argc*sizeof(t_atom));
	
	return 0;
}

int lua_importfile(lua_State *L)
{
	const char *filename;
	long outtype;
	short file_volume, err;
	
	if(!lua_isstring(L, 1))
		luaL_error(L, "argument 1 for outlet must be a string");

	filename = lua_tostring(L, 1);
	err = locatefile_extended(filename, &file_volume, &outtype, 0, 0);
	
	if(err) {
		error("jit.gl.lua: can't find file %s", filename);
	}
	else {
		// read file from disk
		long count;
		char **texthandle;
		t_filehandle fh;
		
		err = path_opensysfile(filename, file_volume, &fh, READ_PERM);
		if (err) {
			error("jit.gl.lua: %s: error %d opening file", filename, err);
			return 0;
		}
		
		texthandle = sysmem_newhandle(0);
		sysfile_readtextfile(fh, texthandle, 0, TEXT_LB_NATIVE);
		sysfile_close(fh);
		count = sysmem_handlesize(texthandle);
		sysmem_resizehandle(texthandle, count + 1);
		(*texthandle)[count] = 0; //NULL terminate, '\0'?
		
		//run file in Lua
		err = luaL_loadstring(L, *texthandle);
		err = lua_pcall(L, 0, LUA_MULTRET, 0);
		
		if (err) {
			post("lua pcall error %s", lua_tostring(L, -1));
			lua_pop(L, 1);
		}
		
		sysmem_lockhandle(texthandle, false);
		sysmem_freehandle(texthandle);
	}

	return 0;
}

//grabs all global variables corresponding to the names 
//of jit.gl.lua's attrbutes and sets  them as the current 
//attribute values of the embedding object e.g. this 
//instance of jit.gl.lua
static const char * set_this_attributes_from_script[] = 
{
						"local metatable = getmetatable(this)",
						"for k, v in pairs(metatable[\"attributes\"]) do",
							"if(rawget(_G, k)) then",
								"this[k] = rawget(_G, k)",
							"end",
						"end",
						NULL
};

void lua_getattributes(t_jit_gl_lua *x)
{
	int i=0;
	char set_attrs[1024];
	int err;

	set_attrs[0] = '\0';

	while(set_this_attributes_from_script[i])
	{
		strcat(set_attrs, set_this_attributes_from_script[i]);
		strcat(set_attrs, "\n");
		i++;
	}
	
	err = luaL_dostring(x->lua, set_attrs);

	if (err) {
		post("lua luaL_dostring error %s", lua_tostring(x->lua, -1));
		lua_pop(x->lua, -1);
	}
}

int script_lua_atoms_from_args(lua_State *L, int index_start, t_atom **args)
{
	int i, n;
	int num_args = 0;
	
	n = lua_gettop(L);
	
	//count the number of arguments
	for(i=index_start; i <= n; i++) {
		int type = lua_type(L, i);
		
		switch(type)
		{
			case LUA_TTABLE:
					num_args += luaL_getn(L, i);
					break;
			
			case LUA_TSTRING:
			case LUA_TNUMBER:
			case LUA_TUSERDATA:
					num_args++;
					break;

			default:
					break;
		}
	}
	
	*args = (t_atom *)jit_getbytes(num_args*sizeof(t_atom));

	{
		int arg_index=0;	//index of current argument
		
		//iterate over the number of stack elements
		for(i=index_start; i <= n; i++) {
			int type = lua_type(L, i);
			
			switch(type)
			{
				case LUA_TSTRING:
						jit_atom_setsym(*args+arg_index, GENSYM(lua_tostring(L, i)));
						arg_index++;
						break;
					
				case LUA_TNUMBER:
						jit_atom_setfloat(*args+arg_index, lua_tonumber(L, i));
						arg_index++;
						break;
				
				case LUA_TUSERDATA:
						(*args+arg_index)->a_w.w_obj = toJitobj(L, i);
						(*args+arg_index)->a_type = A_OBJ;
						arg_index++;
						break;
				
				case LUA_TTABLE:
						{
							int j;
							int table_type;
							
							//doesn't account for tables of userdata yet
							for(j=1; j <= luaL_getn(L, i); j++) {
								lua_rawgeti(L, i, j);
								table_type = lua_type(L, -1);
								
								switch(table_type)
								{
									case LUA_TSTRING:
											jit_atom_setsym(*args+arg_index, GENSYM(lua_tostring(L, -1)));
											arg_index++;
											break;
											
									case LUA_TNUMBER:
											jit_atom_setfloat(*args+arg_index, lua_tonumber(L, -1));
											arg_index++;
											break;
									
									case LUA_TUSERDATA:
											(*args+arg_index)->a_w.w_obj = toJitobj(L, -1);
											(*args+arg_index)->a_type = A_OBJ;
											arg_index++;
											break;
											
									default:
											break;
								}
								
							}
						}
						
						break;
						
				default:
					break;
			}
		}
	}
	
	return num_args;
}

void script_lua_atoms_to_args(lua_State *L, int argc, t_atom *argv)
{
	if(argc > 1) {
		int i;
		lua_newtable(L);
		
		for(i=0; i < argc; i++) {
			switch(argv[i].a_type)
			{
			case A_LONG:
				lua_pushinteger(L, jit_atom_getlong(argv+i));
				lua_rawseti(L, -2, i+1);
				break;
			case A_FLOAT:
				lua_pushnumber(L, jit_atom_getfloat(argv+i));
				lua_rawseti(L, -2, i+1);
				break;
			case A_SYM:
				lua_pushstring(L, jit_atom_getsym(argv+i)->s_name);
				lua_rawseti(L, -2, i+1);
				break;
			default:
				break;
			}
		}
	
	}
	else {
		switch(argv[0].a_type)
		{
		case A_LONG:
			lua_pushinteger(L, jit_atom_getlong(argv));
			break;
		case A_FLOAT:
			lua_pushnumber(L, jit_atom_getfloat(argv));
			break;
		case A_SYM:
			lua_pushstring(L, jit_atom_getsym(argv)->s_name);
			break;
		default:
			break;
		}
	}
}



void SCRIPT_ERROR(lua_State *L, int level, const char *string, ...)
{
	va_list argp;

	va_start(argp, string);
	lua_getglobal(L, "error");
	lua_pushfstring(L, string, argp);
	lua_pushinteger(L, level);
	lua_call(L, 2, 0);

	va_end(argp);
}