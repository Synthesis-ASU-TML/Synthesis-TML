#ifdef __cplusplus
extern "C" {
#endif

#include "jit.gl.lua.h"
#include "jit.vecmath.h"
#include "jit.submatrix.wrapper.h"


void *_jit_gl_lua_class;

t_symbol *ps_jit_gl_lua_jit_matrix_wrapper;
t_symbol *ps_jit_gl_lua_jit_submatrix_wrapper;
t_symbol *ps_jit_gl_lua_jit_lua_listener;
t_symbol *ps_jit_gl_lua_getmatrix;
t_symbol *ps_jit_gl_lua_jit_matrix;
t_symbol *ps_jit_gl_lua_matrix_calc;
t_symbol *ps_jit_gl_lua_gettype;
t_symbol *ps_jit_gl_lua_getsize;
t_symbol *ps_jit_gl_lua_get;
t_symbol *ps_jit_gl_lua_attribute;
t_symbol *ps_nothing;
t_symbol *ps_none;
t_symbol *ps_drawinfo;

//jitter object methods
t_jit_err jit_gl_lua_init(void);
t_jit_gl_lua *jit_gl_lua_new(t_symbol * dest_name);
void jit_gl_lua_free(t_jit_gl_lua *x);

//ob3d methods
t_jit_err jit_gl_lua_draw(t_jit_gl_lua *x);
t_jit_err jit_gl_lua_dest_changed(t_jit_gl_lua *x);
t_jit_err jit_gl_lua_dest_closing(t_jit_gl_lua *x);

//attr methods
t_jit_err jit_gl_lua_setfile(t_jit_gl_lua *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_gl_lua_setgc(t_jit_gl_lua *x, void *attr, long argc, t_atom *argv);
t_jit_err jit_gl_lua_getmemsize(t_jit_gl_lua *x, void *attr, long *argc, t_atom **argv);
t_jit_err jit_gl_lua_getcontext(t_jit_gl_lua *x, void *attr, long *argc, t_atom **argv);

//method methods
t_jit_err jit_gl_lua_call(t_jit_gl_lua *x, t_symbol *s, long argc, t_atom *argv);
t_jit_err jit_gl_lua_call_list(t_jit_gl_lua *x, t_symbol *s, long argc, t_atom *argv);
t_jit_err jit_gl_lua_loadbang(t_jit_gl_lua *x);
t_jit_err jit_gl_lua_closebang(t_jit_gl_lua *x);
void jit_gl_lua_max_wrapper(t_jit_gl_lua *x, void *max_wrapper);
void * jit_gl_lua_getmax_wrapper(t_jit_gl_lua *x);

//util method
t_jit_err jit_gl_lua_call_luafunction(t_jit_gl_lua *x, const char *function);

//gl methods
void * jit_gl_lua_drawinfo(t_jit_gl_lua *x);

t_jit_err jit_gl_lua_init(void)
{
	long attrflags=0;
	long ob3d_flags = 0;
	t_jit_object *attr;
	void *ob3d;
	
	jit_submatrix_wrapper_init();
	
	_jit_gl_lua_class = jit_class_new("jit_gl_lua",(method)jit_gl_lua_new,(method)jit_gl_lua_free,
		sizeof(t_jit_gl_lua),0L); //A_CANT = untyped
	
	// set up object extension for 3d object, customized with flags
	ob3d = jit_ob3d_setup(_jit_gl_lua_class, 
				calcoffset(t_jit_gl_lua, ob3d), ob3d_flags);

	// add ob3d methods
	jit_class_addmethod(_jit_gl_lua_class,
						(method)jit_object_register,		"register", A_CANT, 0L);
	jit_class_addmethod(_jit_gl_lua_class,
						(method)jit_gl_lua_call,			"call", A_GIMME, 0L);
	jit_class_addmethod(_jit_gl_lua_class,
						(method)jit_gl_lua_call_list,		"call_list", A_GIMME, 0L);
	jit_class_addmethod(_jit_gl_lua_class,
						(method)jit_gl_lua_draw,			"ob3d_draw", A_CANT, 0L);
	jit_class_addmethod(_jit_gl_lua_class,
						(method)jit_gl_lua_dest_changed,	"dest_changed", A_CANT, 0L);
	jit_class_addmethod(_jit_gl_lua_class,
						(method)jit_gl_lua_dest_closing,	"dest_closing", A_CANT, 0L);
	jit_class_addmethod(_jit_gl_lua_class, 
						(method)lua_filechanged,			"filechanged", A_CANT, 0);
	jit_class_addmethod(_jit_gl_lua_class, 
						(method)jit_gl_lua_drawinfo,		"drawinfo", A_CANT, 0);
	jit_class_addmethod(_jit_gl_lua_class,
						(method)jit_gl_lua_loadbang,		"loadbang", A_CANT, 0L);
	jit_class_addmethod(_jit_gl_lua_class,
						(method)jit_gl_lua_max_wrapper,		"max_wrapper", A_CANT, 0L);
	jit_class_addmethod(_jit_gl_lua_class,
						(method)jit_gl_lua_getmax_wrapper,	"getmax_wrapper", A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	// autowatch
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"autowatch",_jit_sym_long,attrflags,
		(method)0L,(method)lua_autowatch,calcoffset(t_jit_gl_lua,autowatch));
	jit_class_addattr(_jit_gl_lua_class, attr);
	
	// file
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"file",_jit_sym_symbol,attrflags,
		(method)0L,(method)jit_gl_lua_setfile,calcoffset(t_jit_gl_lua,file));
	jit_class_addattr(_jit_gl_lua_class, attr);

	// gc
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"gc",_jit_sym_long,attrflags,
		(method)0L,(method)jit_gl_lua_setgc,calcoffset(t_jit_gl_lua,gc));
	jit_class_addattr(_jit_gl_lua_class, attr);
	
	attrflags |= JIT_ATTR_SET_OPAQUE;
	
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"path",_jit_sym_symbol,attrflags,
		(method)0L,(method)0L,calcoffset(t_jit_gl_lua,path));
	jit_class_addattr(_jit_gl_lua_class, attr);
	
	// memsize
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"memsize",_jit_sym_long,attrflags,
		(method)jit_gl_lua_getmemsize,(method)0L,calcoffset(t_jit_gl_lua,memsize));
	jit_class_addattr(_jit_gl_lua_class, attr);
	
	// context
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"context",_jit_sym_long,attrflags,
		(method)jit_gl_lua_getcontext,(method)0L,calcoffset(t_jit_gl_lua,context));
	jit_class_addattr(_jit_gl_lua_class, attr);
	
	// last_inlet
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"last_inlet",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_jit_gl_lua,last_inlet));
	jit_class_addattr(_jit_gl_lua_class, attr);
	
	attrflags = JIT_ATTR_GET_OPAQUE_USER | JIT_ATTR_SET_OPAQUE_USER;
	
	// inlets
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"inlets",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_jit_gl_lua,inlets));
	jit_class_addattr(_jit_gl_lua_class, attr);
	
	// outlets
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"outlets",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_jit_gl_lua,outlets));
	jit_class_addattr(_jit_gl_lua_class, attr);
	
	// lua_unique_name
	attr = (t_object *)jit_object_new(_jit_sym_jit_attr_offset,"lua_unique_name",_jit_sym_symbol,attrflags,
		(method)0L,(method)0L,calcoffset(t_jit_gl_lua, lua_unique_name));
	jit_class_addattr(_jit_gl_lua_class, attr);
		
	ps_jit_gl_lua_jit_matrix_wrapper = gensym("jit_matrix_wrapper");
	ps_jit_gl_lua_jit_submatrix_wrapper = gensym("jit_submatrix_wrapper");
	ps_jit_gl_lua_jit_lua_listener = gensym("jit_lua_listener");
	ps_jit_gl_lua_getmatrix = gensym("getmatrix");
	ps_jit_gl_lua_jit_matrix = gensym("jit_matrix");
	ps_jit_gl_lua_matrix_calc = gensym("matrix_calc");
	ps_jit_gl_lua_gettype = gensym("gettype");
	ps_jit_gl_lua_getsize = gensym("getsize");
	ps_jit_gl_lua_get = gensym("get");
	ps_jit_gl_lua_attribute = gensym("attribute");
	ps_nothing = gensym("nothing");
	ps_none = gensym("none");
	ps_drawinfo = gensym("drawinfo");

	jit_class_register(_jit_gl_lua_class);

	return JIT_ERR_NONE;
}

t_jit_err jit_gl_lua_setfile(t_jit_gl_lua *x, void *attr, long argc, t_atom *argv)
{
	if(argc && argv) {
		x->file = jit_atom_getsym(argv);
		lua_doread(x, x->file, 0, NULL);
		jit_attr_setlong(x, gensym("autowatch"), x->autowatch);
		jit_gl_lua_load_script(x);
	}
	
	return JIT_ERR_NONE;
}

t_jit_err jit_gl_lua_setgc(t_jit_gl_lua *x, void *attr, long argc, t_atom *argv)
{
	if(argc && argv) {
		x->gc = jit_atom_getlong(argv);
		
		if(x->gc) {
			lua_gc(x->lua, LUA_GCRESTART, 0);
		}
		else {
			lua_gc(x->lua, LUA_GCSTOP, 0);
		}
	}
	
	return JIT_ERR_NONE;
}

t_jit_err jit_gl_lua_getmemsize(t_jit_gl_lua *x, void *attr, long *argc, t_atom **argv)
{
	if ((*argc)&&(*argv)) {
		//memory passed in, use it
	} else {
		//otherwise allocate memory
		*argc = 1;
		if (!(*argv = (t_atom *)jit_getbytes(sizeof(t_atom)*(*argc)))) {
			*argc = 0;
			return JIT_ERR_OUT_OF_MEM;
		}
	}
	
	x->memsize = lua_gc(x->lua, LUA_GCCOUNT, 0);
	jit_atom_setlong(*argv, x->memsize);

	return JIT_ERR_NONE;
}

t_jit_err jit_gl_lua_getcontext(t_jit_gl_lua *x, void *attr, long *argc, t_atom **argv)
{
	if ((*argc)&&(*argv)) {
		//memory passed in, use it
	} else {
		//otherwise allocate memory
		*argc = 1;
		if (!(*argv = (t_atom *)jit_getbytes(sizeof(t_atom)*(*argc)))) {
			*argc = 0;
			return JIT_ERR_OUT_OF_MEM;
		}
	}
	
	x->context = (long)(x->drawinfo.ctx);
	jit_atom_setlong(*argv, x->context);

	return JIT_ERR_NONE;
}

void jit_gl_lua_load_script(t_jit_gl_lua *x)
{
	int err=0;
	
	if(x->texthandle) {
		lua_close(x->lua);
		lua_setup_lua(x);
	
		err = luaL_loadstring(x->lua, *(x->texthandle));
		if(err) {
			post("load file error %s", lua_tostring(x->lua, -1));
		}
		else {
			err = lua_pcall(x->lua, 0, LUA_MULTRET, 0);
			if (err) {
				post("lua pcall error %s", lua_tostring(x->lua, -1));
				lua_pop(x->lua, 1);
			}
			else {
				lua_getattributes(x);
				jit_gl_lua_call_luafunction(x, "script_load");
			}
		}
	}
	else {
		error("jit.gl.lua: file not loaded.");
	}
}

t_jit_err jit_gl_lua_draw(t_jit_gl_lua *x)
{
	if(x->texthandle) {
		jit_gl_lua_call_luafunction(x, "draw");
	}

	return JIT_ERR_NONE;
}

t_jit_err jit_gl_lua_call(t_jit_gl_lua *x, t_symbol *s, long argc, t_atom *argv)
{
	t_symbol *function;
	char args[257];
	long i;
	
	// get the inlet number
	if(x->max_wrapper) {
		x->last_inlet = max_jit_obex_inletnumber_get(x->max_wrapper);
	}

	if(argc) {
		function = jit_atom_getsym(argv);

		for(i=0; i < MIN(argc-1, 255); i++) {
			switch(argv[i+1].a_type)	/* first atom is func name */
			{
				case A_LONG:
					args[i] = 'i';
					break;
				case A_FLOAT:
					args[i] = 'd';
					break;
				case A_SYM:
					args[i] = 's';
					break;
			}
		}
		
		args[i] = '\0';
		lua_call_function_atom(x, function->s_name, args, argc-1, argv+1);
	}
	
	return JIT_ERR_NONE;
}

t_jit_err jit_gl_lua_call_list(t_jit_gl_lua *x, t_symbol *s, long argc, t_atom *argv)
{
	int i;
	
	post("method: %s", s->s_name);

	for(i=0; i < argc; i++) {
		switch(argv[i].a_type)	/* first atom is func name */
		{
			case A_LONG:
				post("\t%d", jit_atom_getlong(argv+i));
				break;
			case A_FLOAT:
				post("\t%f", jit_atom_getfloat(argv+i));
				break;
			case A_SYM:
				post("\t%s", jit_atom_getsym(argv+i)->s_name);
				break;
		}
	}
	
	lua_call_function_list(x, s->s_name, argc, argv);
	
	if(x->max_wrapper)
		jit_object_method(x->max_wrapper, gensym("out_list"), argc, argv);
	
	return JIT_ERR_NONE;
}

t_jit_err jit_gl_lua_loadbang(t_jit_gl_lua *x)
{
	return jit_gl_lua_call_luafunction(x, "loadbang");
}

t_jit_err jit_gl_lua_closebang(t_jit_gl_lua *x)
{
	return jit_gl_lua_call_luafunction(x, "closebang");
}

t_jit_err jit_gl_lua_dest_changed(t_jit_gl_lua *x)
{
	jit_gl_drawinfo_setup(x, &(x->drawinfo));
	//glext_init(x->lua);
	return jit_gl_lua_call_luafunction(x, "dest_changed");
}

t_jit_err jit_gl_lua_dest_closing(t_jit_gl_lua *x)
{
	x->drawinfo.ctx = NULL;
	x->drawinfo.ob3d = NULL;
	return jit_gl_lua_call_luafunction(x, "dest_closing");
}

void * jit_gl_lua_drawinfo(t_jit_gl_lua *x)
{
	if(! x->drawinfo.ob3d) {
		jit_gl_drawinfo_setup(x, &(x->drawinfo));
	}
	return &(x->drawinfo);
}

void jit_gl_lua_max_wrapper(t_jit_gl_lua *x, void *max_wrapper)
{
	x->max_wrapper = max_wrapper;
}

void * jit_gl_lua_getmax_wrapper(t_jit_gl_lua *x)
{
	return x->max_wrapper;
}

t_jit_err jit_gl_lua_call_luafunction(t_jit_gl_lua *x, const char *function)
{
	int err = 0;

	if(x->texthandle) {
		lua_getglobal(x->lua, function);
		
		if(lua_isfunction(x->lua, -1)) {
			err = lua_pcall(x->lua, 0, 0, 0);
			
			if (err) {
				post("lua pcall error %s", lua_tostring(x->lua, -1));
				lua_pop(x->lua, -1);
			}
		}
		else {
			// have to pop value (which is most likely nil), else will eventually get a stack overflow
			lua_pop(x->lua, -1);
		}
	}
	
//	printf("top: %d\n", lua_gettop(x->lua));
	
	return JIT_ERR_NONE;
}

t_jit_gl_lua *jit_gl_lua_new(t_symbol * dest_name)
{
	t_jit_gl_lua *x;
		
	if (x=(t_jit_gl_lua *)jit_object_alloc(_jit_gl_lua_class)) {
		// create and attach ob3d
        jit_ob3d_new(x, dest_name);
		x->max_wrapper = NULL;
		
		//Lua
		x->lua = NULL;
		
		//lua file
		x->file = _jit_sym_nothing;
		x->file_volume = 0;
		x->texthandle = 0;
		x->file_watcher = NULL;
		x->textsize = 0;
		x->autowatch = 1;
		x->file_path[0] = '\0';
		
		x->path = _jit_sym_nothing;
		
		x->drawinfo.ob3d = NULL;
		x->lua_unique_name = jit_symbol_unique();
		x->gc = 1;
		x->memsize = 0;
		
		x->inlets = 1;
		x->outlets = 1;
		
		x->last_inlet = 0;
		
		lua_setup_lua(x);
	} else {
		x = NULL;
	}	
	return x;
}

void jit_gl_lua_free(t_jit_gl_lua *x)
{
	/* call closebang method on script if it exists*/
	jit_gl_lua_closebang(x);

	/* Remember to destroy the Lua State */
	lua_close(x->lua);
	
	//free handle on script data
	if (x->texthandle) {
		//HUnlock(x->texthandle);
		sysmem_lockhandle(x->texthandle, false);
		//DisposeHandle(x->texthandle);
		sysmem_freehandle(x->texthandle);
	}
	
	if (x->file_watcher) {
		freeobject((t_object *)x->file_watcher);
		x->file_watcher = NULL;
	}
	
	jit_ob3d_free(x);
}



#ifdef __cplusplus
}
#endif