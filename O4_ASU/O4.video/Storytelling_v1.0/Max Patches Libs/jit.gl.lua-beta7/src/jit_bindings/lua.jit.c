#include "lua.jit.h"
#include "ext_obex.h"
#include "ext_mess.h"

static int Matrix___index(lua_State *L);
static int Matrix___newindex(lua_State *L);

static int Jitobj_object_method(lua_State *L);
static int Jitobj_attribute(lua_State *L);
static int Jitobj_getattribute(lua_State *L);
static int Jitobj___gc(lua_State *L);
static int Jitobj___tostring(lua_State *L);
static int Jitobj___index(lua_State *L);
static int Jitobj___newindex(lua_State *L);

static const luaL_reg Matrix_meta[] = 
{
	TABLE_ENTRY(Matrix, __index),
	TABLE_ENTRY(Matrix, __newindex),
	{NULL, NULL}
};

static const luaL_reg Jitobj_meta[] = 
{
	TABLE_ENTRY(Jitobj, object_method),
	TABLE_ENTRY(Jitobj, attribute),
	TABLE_ENTRY(Jitobj, getattribute),
	TABLE_ENTRY(Jitobj, __gc),
	TABLE_ENTRY(Jitobj, __tostring),
	TABLE_ENTRY(Jitobj, __index),
	TABLE_ENTRY(Jitobj, __newindex),
	{NULL, NULL}
};

static int Jitobj_matrixcalc(lua_State *L);
void * get_matrix(lua_State *L, int index);


//NOTES:  Symbol cache in Lua table

void lua_stringtosymbol(L, index)
{
//	int length;
//	char *string;
	
//	length = luaL_getn(L, index);
	
}

Jitobj toJitobj(lua_State *L, int index)
{
	Jitobj *p_obj = (Jitobj *)lua_touserdata(L, index);

	if (p_obj == NULL)
		luaL_typerror(L, index, JITOBJ);
		
	return *p_obj;
}

Jitobj checkJitobj(lua_State *L, int index)
{
	Jitobj *p_obj, obj;
	
	luaL_checktype(L, index, LUA_TUSERDATA);
	p_obj = (Jitobj *)luaL_checkudata(L, index, JITOBJ);
	
	if (p_obj == NULL)
		luaL_typerror(L, index, JITOBJ);

	obj = *p_obj;

	if (!obj)
		luaL_error(L, "null Jitobj");

	return obj;
}

Jitobj * Jitobj_push(lua_State *L, Jitobj obj, long lua_owns)
{
	long symcount=0;
	t_symbol **symarray=NULL;
	int i;
	t_messlist *mess;
	Jitobj *p_obj = (Jitobj *)lua_newuserdata(L, sizeof(Jitobj));
	t_class *class;
	t_symbol *classname;
	int newtable;
	
	*p_obj = obj;
//	luaL_getmetatable(L, JITOBJ_META);

//	lua_pushstring(L, "copyself");
//	lua_gettable(L, -2);
	
	classname = jit_object_classname(obj);
	newtable = luaL_newmetatable(L, classname->s_name);

//	lua_call(L, 1, 1);

//	lua_insert(L, -2);								//move new metatable below jit metatable
//	lua_pop(L, 1);									//pop it from the stack
	
	if(newtable)
	{
		i=0;
		while(Jitobj_meta[i].name)
		{
			lua_pushstring(L, Jitobj_meta[i].name);
			lua_pushcfunction(L, Jitobj_meta[i].func);
			lua_rawset(L, -3);
			i++;
		}
	
	
	
		class = jit_class_findbyname(classname);
		
		//cache class object pointer
		lua_pushstring(L, "class");						//key for class field
		lua_pushlightuserdata(L, class);				//class reference
		lua_settable(L, -3);
	
		//put instance information in the metatable's instance field
		lua_pushstring(L, "instance");					//key for instance table
		lua_newtable(L);								//instance table
		lua_settable(L, -3);
		
		//get list of attribute names and put them in the metatable's attributes field
		if(obj) {
			object_attr_getnames(obj, &symcount, &symarray);
		}
		else {
			error("jit.gl.lua: jit.new object doesn't exist");
		}
		
		lua_newtable(L);								//attribute table
		
		for(i=0; i < symcount; i++) {
			lua_pushstring(L, symarray[i]->s_name);		//strings as attribute keys
			lua_pushboolean(L, 1);						//push 'true' as value
			lua_settable(L, -3);						//set table with (key, value) pair
		}
		
		lua_pushstring(L, "attributes");				//string as key
		lua_insert(L, -2);								//move it below the attribute table on the stack
		lua_settable(L, -3);							//set the attribute table to the field "attribute" in the metatable
		
		//get list of method names and put them in the metatable's methods field
		lua_newtable(L);								//methods table
		mess = ob_messlist(obj);
		
		if(mess) {
			t_messlist *cached_mess;
			
			mess++;
			while (mess->m_sym) {
				if (!max_jit_method_is_attr(obj,mess->m_sym)) {
					if (mess->m_type[0] == A_CANT) {
						cached_mess = class_typedwrapper_get(class, mess->m_sym);
					}
					else {
						cached_mess = mess;
					}
					
					if (cached_mess) {
						lua_pushstring(L, cached_mess->m_sym->s_name);		//strings as method keys
						lua_pushlightuserdata(L, cached_mess);				//push t_messlist as value	(might want to put method type here)
						lua_settable(L, -3);								//set table with (key, value) pair
					}
				}
				mess++;
			}
		}
		else {
			error("jit.gl.lua: jitter object has no methods");
		}
		
		lua_pushstring(L, "methods");					//string as key
		lua_insert(L, -2);								//move it below the methods table on the stack
		lua_settable(L, -3);							//set the methods table to the field "methods" in the metatable
		
		//jit_methods is for Lua defined Jitter class methods
		lua_newtable(L);								//jit_methods table
		
		// add matrix_calc method of Jitter objects with MOP addornments
		if(jit_class_adornment_get(class, _jit_sym_jit_mop)) {
			lua_pushstring(L, "matrixcalc");
			lua_pushcfunction(L, Jitobj_matrixcalc);
			lua_settable(L, -3);
		}
		
		lua_pushstring(L, "jit_methods");				//string as key
		lua_insert(L, -2);								//move it below the methods table on the stack
		lua_settable(L, -3);							//set the jit_methods table to the field "jit_methods" in the metatable
	}
	
	lua_pushstring(L, "instance");
	lua_gettable(L, -2);								//get the metatable's instance table
	lua_pushlightuserdata(L, obj);						//address of jitter object as key
	lua_pushboolean(L, lua_owns);						//ownership flag as value
	lua_settable(L, -3);								//set the field in the instance table
	lua_pop(L, 1);										//pop instance table from stack
	
	lua_setmetatable(L, -2);

	return p_obj;
}

/****************************************
		Jitter Object constructors
		
		jit.new
		jit.matrix
		jit.submatrix
		jit.listener
*****************************************/

static int Jitobj_new(lua_State *L)
{
	const char *const_name;
	const char *arg;
	char name[256];
	char diskname[256];
	char *dot;
	t_symbol *sym_name;
	t_symbol *sym_diskname;
	void *jitobj;
	
	const_name = luaL_checkstring(L, 1);
	strcpy(name, const_name);
	strcpy(diskname, const_name);
	
	while(dot = strchr(name, '.')) {
		*dot = '_';
	}
	
	sym_name = GENSYM(name);
	sym_diskname = GENSYM(diskname);
	
	load_bundle(sym_name, sym_diskname);

	if(0 == strcmp(diskname, "jit.matrix")) {
		SCRIPT_ERROR(L, 2, " use the jit.matrix constructor to create matrices", NULL);
	}
	else if(0 == strcmp(diskname, "jit.submatrix")) {
		SCRIPT_ERROR(L, 2, " use the jit.submatrix constructor to create submatrices", NULL);
	}
	
	if(lua_gettop(L) > 1) {
		if(lua_isnil(L, 2)) {
			SCRIPT_ERROR(L, 2, " Error: trying to pass nil argument to constructor", NULL);
		}
		arg = lua_tostring(L, 2);
		jitobj = jit_object_new(sym_name, GENSYM(arg));
	}
	else {
		jitobj = jit_object_new(sym_name);
	}

	if(jitobj)
		Jitobj_push(L, jitobj, 1);
	else {
		SCRIPT_ERROR(L, 2, " %s is not a valid Jitter object name", diskname);
	}
	
	return 1;
}

static int Jitobj_matrix(lua_State *L)
{
	t_atom *args;
	int num_args;
	void *jitobj;

	num_args = script_lua_atoms_from_args(L, 1, &args);
	
	jitobj = jit_object_new(ps_jit_gl_lua_jit_matrix_wrapper, ps_jit_gl_lua_jit_matrix_wrapper, num_args, args);
	jit_freebytes((void *)args, num_args*sizeof(t_atom));
	Jitobj_push(L, jitobj, 1);
	
	lua_getmetatable(L, -1);						//get matrix's metatable
	
	{
		int i=0;
		while(Matrix_meta[i].name)
		{
			lua_pushstring(L, Matrix_meta[i].name);
			lua_pushcfunction(L, Matrix_meta[i].func);
			lua_rawset(L, -3);
			i++;
		}
	}
	
	lua_pop(L, 1);	//pop metatable*/
	
	/*
	lua_pushstring(L, "make_matrix_meta");
	lua_rawget(L, -2);								//get it's make_matrix__index field (a function)
	
	lua_pushvalue(L, -2);							//put metatable at top of stack
	lua_remove(L, -3);								//remove original copy of metatable from stack
	
	lua_call(L, 1, 0);								//call make_matrix__index
	*/
	
	return 1;
}

static int Jitobj_submatrix(lua_State *L)
{
	void *jitobj;
	jitobj = jit_object_new(ps_jit_gl_lua_jit_submatrix_wrapper, ps_jit_gl_lua_jit_submatrix_wrapper);
	
	if(jitobj) {
		Jitobj_push(L, jitobj, 1);
	}
	else {
		SCRIPT_ERROR(L, 2, " unable to create jit.submatrix object", NULL);
	}
	
	return 1;
}

static int Jitobj_listener(lua_State *L)
{
	t_atom *args;
	int num_args;
	void *jitobj;
	
	num_args = script_lua_atoms_from_args(L, 1, &args);
	
	jitobj = jit_object_new(ps_jit_gl_lua_jit_lua_listener, L, num_args, args);
	
	if(jitobj) {
		Jitobj_push(L, jitobj, 1);
	}
	else {
		SCRIPT_ERROR(L, 2, " unable to create jit.listener object", NULL);
	}
	
	jit_freebytes((void *)args, num_args*sizeof(t_atom));
	
	return 1;
}

/****************************************
		Jitter Object basic functions
		for method and attribute access
		called by the metatable
*****************************************/

static int Jitobj_getattribute(lua_State *L)
{
	Jitobj *p_obj;
	t_symbol *attr_sym;
	void *attr_obj;
	
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 3, " invalid argument 1 to jit.getattribute, must be userdata", NULL);
	}

	if(lua_type(L, 2) != LUA_TSTRING) {
		SCRIPT_ERROR(L, 3, " invalid argument 2 to jit.getattribute, must be a string", NULL);
	}

	p_obj = lua_touserdata(L, 1);
	attr_sym = GENSYM(lua_tostring(L, 2));
	
	// get attribute object
	attr_obj = jit_object_attr_get(*p_obj, attr_sym);
	
	if(p_obj && attr_obj) {
		t_symbol *attr_classname;
		t_symbol *type;
		
		attr_classname = jit_object_classname(attr_obj);
		type = jit_object_method(attr_obj, ps_jit_gl_lua_gettype);
		
		if(attr_classname == _jit_sym_jit_attr_offset) {
			if(type == _jit_sym_long || type == _jit_sym_char) {
				lua_pushinteger(L, jit_attr_getlong(*p_obj, attr_sym));
			}
			else if(type == _jit_sym_float32 || type == _jit_sym_float64) {
				lua_pushnumber(L, jit_attr_getfloat(*p_obj, attr_sym));
			}
			else if(type == _jit_sym_symbol) {
				lua_pushstring(L, jit_attr_getsym(*p_obj, attr_sym)->s_name);
			}
		}
		else if(attr_classname == _jit_sym_jit_attr_offset_array) {
			int n = (int)jit_object_method(attr_obj, ps_jit_gl_lua_getsize);
			lua_newtable(L);
			
			if(type == _jit_sym_char) {
				int i;
				int num_vals;
				uchar *vals;
				
				vals = (uchar *)jit_getbytes(n*sizeof(uchar));
				num_vals = jit_attr_getchar_array(*p_obj, attr_sym, n, vals);
				
				for(i=0; i < num_vals; i++) {
					lua_pushinteger(L, vals[i]);
					lua_rawseti(L, -2, i+1);
				}
				
				jit_freebytes((void *)vals, n*sizeof(uchar));
			}
			else if(type == _jit_sym_long) {
				int i;
				int num_vals;
				long *vals;
				
				vals = (long *)jit_getbytes(n*sizeof(long));
				num_vals = jit_attr_getlong_array(*p_obj, attr_sym, n, vals);
				
				for(i=0; i < num_vals; i++) {
					lua_pushinteger(L, vals[i]);
					lua_rawseti(L, -2, i+1);
				}
				
				jit_freebytes((void *)vals, n*sizeof(long));
			}
			else if(type == _jit_sym_float32 || type == _jit_sym_float64) {
				int i;
				int num_vals;
				float *vals;
				
				vals = (float *)jit_getbytes(n*sizeof(float));
				num_vals = jit_attr_getfloat_array(*p_obj, attr_sym, n, vals);
				
				for(i=0; i < num_vals; i++) {
					lua_pushnumber(L, vals[i]);
					lua_rawseti(L, -2, i+1);
				}
				
				jit_freebytes((void *)vals, n*sizeof(float));
			}
			else if(type == _jit_sym_float64) {
				int i;
				int num_vals;
				double *vals;
				
				vals = (double *)jit_getbytes(n*sizeof(double));
				num_vals = jit_attr_getdouble_array(*p_obj, attr_sym, n, vals);
				
				for(i=0; i < num_vals; i++) {
					lua_pushnumber(L, vals[i]);
					lua_rawseti(L, -2, i+1);
				}
				
				jit_freebytes((void *)vals, n*sizeof(double));
			}
			else if(type == _jit_sym_symbol) {
				int i;
				int num_vals;
				t_symbol **vals;
				
				vals = (t_symbol **)jit_getbytes(n*sizeof(t_symbol *));
				num_vals = jit_attr_getsym_array(*p_obj, attr_sym, n, vals);
				
				for(i=0; i < num_vals; i++) {
					lua_pushstring(L, vals[i]->s_name);
					lua_rawseti(L, -2, i+1);
				}
				
				jit_freebytes((void *)vals, n*sizeof(t_symbol *));
			}
		}
		else if(attr_classname == ps_jit_gl_lua_attribute) {
			t_atom *vals;
			int num = 32;
			
			vals = jit_getbytes(sizeof(t_atom)*num);
			object_method(attr_obj, ps_jit_gl_lua_get, *p_obj, &num, &vals);
			script_lua_atoms_to_args(L, num, vals);
			jit_freebytes(vals, sizeof(t_atom)*num);
		}
	}
	else {
		post("Invalid Jitter object or attribute");
		lua_pushnil(L);
	}
	
	return 1;
}

static int Jitobj_attribute(lua_State *L)
{
	Jitobj *p_obj;
	void *attr_obj;
	int luaval_type;
	t_symbol *attr_sym;
	
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 3, " invalid argument 1 for jit.attribute, must be userdata", NULL);
	}
		
	if(! lua_isstring(L, 2) ) {
		SCRIPT_ERROR(L, 3, " invalid argument 2 for jit.attribute, must be string", NULL);
	}

	p_obj = lua_touserdata(L, 1);						// get handle to jitter object
	attr_sym = GENSYM(lua_tostring(L, 2));				// get name of jitter attribute
	attr_obj = jit_object_attr_get(*p_obj, attr_sym);	// get attribute object
	
	luaval_type = lua_type(L, 3);						//	string, number, or table
	
	if(attr_obj) {
		switch(luaval_type)
		{
			case LUA_TSTRING:
					{
						const char *val = lua_tostring(L, 3);
						jit_attr_setsym(*p_obj, attr_sym, GENSYM(val));
					}
					break;
			
			case LUA_TNUMBER:
					{
						t_symbol *type = jit_object_method(attr_obj, ps_jit_gl_lua_gettype);
						
						if(type == _jit_sym_char || type == _jit_sym_long) {
							long val = lua_tointeger(L, 3);
							jit_attr_setlong(*p_obj, attr_sym, val);
						}
						else if(type == _jit_sym_float32 || type == _jit_sym_float64) {
							float val = (float)lua_tonumber(L, 3);
							jit_attr_setfloat(*p_obj, attr_sym, val);
						}
					}
					break;
			
			case LUA_TTABLE:
					{
						t_symbol *type = jit_object_method(attr_obj, ps_jit_gl_lua_gettype);
						
						if(type == _jit_sym_char) {
							uchar *vals;
							int i;
							int n = luaL_getn(L, 3);
							
							vals = (uchar *)jit_getbytes(n*sizeof(uchar));

							for(i=0; i < n; i++)
							{
								lua_rawgeti(L, 3, i + 1);
								vals[i] = (uchar)lua_tointeger(L, -1);
							}
							
							jit_attr_setchar_array(*p_obj, attr_sym, n, vals);
							jit_freebytes((void *)vals, n*sizeof(uchar));
						}
						else if(type == _jit_sym_long) {
							long *vals;
							int i;
							int n = luaL_getn(L, 3);
							
							vals = (long *)jit_getbytes(n*sizeof(long));

							for(i=0; i < n; i++)
							{
								lua_rawgeti(L, 3, i + 1);
								vals[i] = lua_tointeger(L, -1);
							}
							
							jit_attr_setlong_array(*p_obj, attr_sym, n, vals);
							jit_freebytes((void *)vals, n*sizeof(long));
						}
						else if(type == _jit_sym_float32) {
							float *vals;
							int i;
							int n = luaL_getn(L, 3);
							
							vals = (float *)jit_getbytes(n*sizeof(float));

							for(i=0; i < n; i++)
							{
								lua_rawgeti(L, 3, i + 1);
								vals[i] = (float)lua_tonumber(L, -1);
							}
							
							jit_attr_setfloat_array(*p_obj, attr_sym, n, vals);
							jit_freebytes((void *)vals, n*sizeof(float));
						}
						else if(type == _jit_sym_float64) {
							double *vals;
							int i;
							int n = luaL_getn(L, 3);
							
							vals = (double *)jit_getbytes(n*sizeof(double));

							for(i=0; i < n; i++)
							{
								lua_rawgeti(L, 3, i + 1);
								vals[i] = lua_tonumber(L, -1);
							}
							
							jit_attr_setdouble_array(*p_obj, attr_sym, n, vals);
							jit_freebytes((void *)vals, n*sizeof(double));
						}
						else if(type == _jit_sym_symbol) {
							t_symbol **vals;
							int i;
							int n = luaL_getn(L, 3);
							
							vals = (t_symbol **)jit_getbytes(n*sizeof(t_symbol *));

							for(i=0; i < n; i++)
							{
								lua_rawgeti(L, 3, i + 1);
								vals[i] = GENSYM(lua_tostring(L, -1));
							}
							
							jit_attr_setsym_array(*p_obj, attr_sym, n, vals);
							jit_freebytes((void *)vals, n*sizeof(t_symbol *));
						}
					}
					break;
			
			default:
					break;
		}
	}
	
	return 0;
}

//could just allocate 256 atoms from the stack so don't have to iterate over args twice
//to count and getbytes the exact number
static int Jitobj_object_method(lua_State *L)
{
	Jitobj jitobj;
	const char *method;
	int num_args = 0;
	t_atom *args;
	t_atom return_val;
	t_messlist *mess;
	
	/* Type check arguments */
	if(! lua_isuserdata(L, lua_upvalueindex(1)) ) {
		SCRIPT_ERROR(L, 3, " argument 1 to jit.object_method must be userdata", NULL);
	}
		
	if(! lua_isstring(L, lua_upvalueindex(2)) ) {
		SCRIPT_ERROR(L, 3, " argument 2 to jit.object_method must be a string", NULL);
	}
		
	if(! lua_islightuserdata(L, lua_upvalueindex(3)) ) {
		SCRIPT_ERROR(L, 3, " invalid messlist", NULL);
	}

	jitobj = toJitobj(L, lua_upvalueindex(1));
	method = lua_tostring(L, lua_upvalueindex(2));
	mess = lua_touserdata(L, lua_upvalueindex(3));
	
	num_args = script_lua_atoms_from_args(L, 2, &args);
	
	object_method_typedfun(jitobj, mess, GENSYM(method), num_args, args, &return_val);
	
	if (return_val.a_type==A_NOTHING) {
		lua_pushnil(L);
	}
	else if (return_val.a_type==A_OBJ) {
		long argc2 = 0;
		t_atom *argv2 = NULL;
		t_object *o = (t_object *)return_val.a_w.w_obj;
	
		if (o) {
			object_getvalueof(o, &argc2, &argv2);
			
			if (argc2)
				script_lua_atoms_to_args(L, argc2, argv2);
			else 
				lua_pushnil(L);
				
			freeobject(o);
			freebytes((char *)argv2, argc2*sizeof(t_atom));
		} else { 
			lua_pushnil(L);
		}
	} else {
		script_lua_atoms_to_args(L, 1, &return_val);
	}
	
	jit_freebytes((void *)args, num_args*sizeof(t_atom));
	
	return 1;
}

/****************************************
		jit.matrix utility functions
*****************************************/

typedef void * t_jit_gl_lua_matrix;

void * get_matrix(lua_State *L, int index)
{
	void *m = NULL;
	int luaval_type;
	t_symbol *class_name;
	
	luaval_type = lua_type(L, index);
	
	if(luaval_type == LUA_TSTRING) {
		m = jit_object_findregistered( GENSYM(lua_tostring(L, index)));
	}
	else if(luaval_type == LUA_TUSERDATA) {
		m = toJitobj(L, index);
	}
	else {
		error("Invalid input matrix, must be a string or user data");
		return NULL;
	}
	
	class_name = jit_object_classname(m);
	
	if(class_name == ps_jit_gl_lua_jit_matrix_wrapper)
	{
		m = jit_object_method(m, ps_jit_gl_lua_getmatrix);
		class_name = jit_object_classname(m);
	}
	
	if(!(m && class_name == ps_jit_gl_lua_jit_matrix))
	{
		error("invalid matrix or matrix name");
		return NULL;
	}
	
	return m;
}

void * get_matrices(lua_State *L, int matrixIndex)
{
	int n, i;
	int type;
	void *list, *m;
	
	list = jit_object_new(_jit_sym_jit_linklist);
	type = lua_type(L, matrixIndex);
	
	//get input matrices
	switch(type)
	{
		case LUA_TUSERDATA:
		case LUA_TSTRING:
			m = get_matrix(L, matrixIndex);
				
			if(m)
				jit_object_method(list, _jit_sym_append, m);
			break;
	
	case LUA_TTABLE:
		n = luaL_getn(L, matrixIndex);
								
		for(i=0; i < n; i++)
		{
			lua_rawgeti(L, matrixIndex, i + 1);
			m = get_matrix(L, -1);
			
			if(m)
				jit_object_method(list, _jit_sym_append, m);
		}
		break;
	
	default:
		error("Invalid matrix argument.  Must be a table or userdata.");
		break;
	}

	return list;
}

/****************************************
		MOP and jit.matrix specific functions
		
		mop.matrixcalc
		jit.matrix[int] = {1, 2, 3, ...}
		{1, 2, 3, ...} = jit.matrix[int]
*****************************************/

static int Jitobj_matrixcalc(lua_State *L)
{
	void *jitobj;
	void *input_list, *output_list;
	
	/* Type check arguments */	
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 3, " invalid argument 1 to jit.matrixcalc, must be userdata", NULL);
	}
	
	jitobj = toJitobj(L, 1);
	
	input_list = get_matrices(L, 2);
	output_list = get_matrices(L, 3);
	
	jit_object_method(jitobj, ps_jit_gl_lua_matrix_calc, input_list, output_list);
	
	if (input_list) {
		jit_object_method(input_list, _jit_sym_chuck);
	}
	
	if (output_list) {
		jit_object_method(output_list, _jit_sym_chuck);
	}
	
	return 0;	
}

static int Matrix_get_row(lua_State *L)
{
	void *matrix;
	long row;
	t_jit_matrix_info minfo;
	long savelock;
	char *bp;
	
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 3, " Invalid matrix", NULL);
	}
		
	if(! lua_isnumber(L, 2) )  {
		SCRIPT_ERROR(L, 3, " Invalid row, must be a number", NULL);
	}

	matrix = get_matrix(L, 1);
	row = lua_tointeger(L, 2);

	savelock = (long) jit_object_method(matrix, _jit_sym_lock, 1);
	jit_object_method(matrix, _jit_sym_getinfo, &minfo);
	jit_object_method(matrix, _jit_sym_getdata, &bp);
	
	if(row >= 0 && row < minfo.dim[1]) {
		long i, k;
		int table_index = 1;
		
		lua_newtable(L);
		
		if(minfo.type == _jit_sym_char) {
			uchar *c_bp = (uchar *)(bp + row*minfo.dimstride[1]);
			
			for(i=0; i < minfo.dim[0]; i++) {
				for(k=0; k < minfo.planecount; k++) {
					lua_pushinteger(L, *c_bp++);
					lua_rawseti(L, -2, table_index++);
				}
			}
		}
		else if(minfo.type == _jit_sym_long) {
			long *c_bp = (long *)(bp + row*minfo.dimstride[1]);
			
			for(i=0; i < minfo.dim[0]; i++) {
				for(k=0; k < minfo.planecount; k++) {
					lua_pushinteger(L, *c_bp++);
					lua_rawseti(L, -2, table_index++);
				}
			}
		}
		else if(minfo.type == _jit_sym_float32) {
			float *c_bp = (float *)(bp + row*minfo.dimstride[1]);
			
			for(i=0; i < minfo.dim[0]; i++) {
				for(k=0; k < minfo.planecount; k++) {
					lua_pushnumber(L, *c_bp++);
					lua_rawseti(L, -2, table_index++);
				}
			}
		}
		else if(minfo.type == _jit_sym_float64) {
			double *c_bp = (double *)(bp + row*minfo.dimstride[1]);
			
			for(i=0; i < minfo.dim[0]; i++) {
				for(k=0; k < minfo.planecount; k++) {
					lua_pushnumber(L, *c_bp++);
					lua_rawseti(L, -2, table_index++);
				}
			}
		}
	}
	else {
		lua_pushnil(L);
	}
	
	
	jit_object_method(matrix, _jit_sym_lock, savelock);
	
	return 1;
}

static int Matrix_set_row(lua_State *L)
{
	void *matrix;
	long row;
	t_jit_matrix_info minfo;
	long savelock;
	char *bp;
	
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 3, " Invalid matrix", NULL);
	}
		
	if(! lua_isnumber(L, 2) ) {
		SCRIPT_ERROR(L, 3, " Invalid row, must be a number", NULL);
	}
		
	if(! lua_istable(L, 3) ) {
		SCRIPT_ERROR(L, 3, " Invalid data vector, must be a table", NULL);
	}
	
	matrix = get_matrix(L, 1);
	row = lua_tointeger(L, 2);

	savelock = (long) jit_object_method(matrix, _jit_sym_lock, 1);
	jit_object_method(matrix, _jit_sym_getinfo, &minfo);
	jit_object_method(matrix, _jit_sym_getdata, &bp);
	
	if(row >= 0 && row < minfo.dim[1]) {
		long i;
		long table_size = lua_objlen(L, 3);
		
		if(minfo.type == _jit_sym_char) {
			uchar *c_bp = (uchar *)(bp + row*minfo.dimstride[1]);
			
			for(i=1; i <= MIN(table_size, minfo.dim[0]*minfo.planecount); i++) {
				lua_rawgeti(L, 3, i);
				*c_bp++ = (uchar)lua_tointeger(L, -1);
			}
		}
		else if(minfo.type == _jit_sym_long) {
			long *c_bp = (long *)(bp + row*minfo.dimstride[1]);
			
			for(i=1; i <= MIN(table_size, minfo.dim[0]*minfo.planecount); i++) {
				lua_rawgeti(L, 3, i);
				*c_bp++ = lua_tointeger(L, -1);
			}
		}
		else if(minfo.type == _jit_sym_float32) {
			float *c_bp = (float *)(bp + row*minfo.dimstride[1]);
			
			for(i=1; i <= MIN(table_size, minfo.dim[0]*minfo.planecount); i++) {
				lua_rawgeti(L, 3, i);
				*c_bp++ = (float)lua_tonumber(L, -1);
			}
		}
		else if(minfo.type == _jit_sym_float64) {
			double *c_bp = (double *)(bp + row*minfo.dimstride[1]);
			
			for(i=1; i <= MIN(table_size, minfo.dim[0]*minfo.planecount); i++) {
				lua_rawgeti(L, 3, i);
				*c_bp++ = lua_tonumber(L, -1);
			}
		}
	}
	
	jit_object_method(matrix, _jit_sym_lock, savelock);
	
	return 0;
}

/****************************************
		jit_object functions
		
		jit.attach
		jit.attr_get
		jit.class
		jit.classname
		jit.findregistered
		jit.findregisteredbyptr
		jit.notify
		jit.register
		jit.unregister
*****************************************/


static int Jitobj_attach(lua_State *L)
{
	/* Type check arguments */
	if(lua_type(L, 2) != LUA_TSTRING) {
		SCRIPT_ERROR(L, 2, " argument 1 for jit.attach must be a string", NULL);
	}
		
	if(! lua_isuserdata(L, 2) ) {
		SCRIPT_ERROR(L, 2, " argument 2 for jit.attach must be a jitter object", NULL);
	}
		
	Jitobj_push( L, jit_object_attach(GENSYM(lua_tostring(L, 1)), toJitobj(L, 2)), 0 );

	return 1;
}

static int Jitobj_attr_get(lua_State *L)
{
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 2, " argument 1 for jit.attr_get must be a jitter object", NULL);
	}
		
	if(lua_type(L, 2) != LUA_TSTRING) {
		SCRIPT_ERROR(L, 2, " argument 2 for jit.attr_get must be a string", NULL);
	}
		
	Jitobj_push( L, jit_object_attr_get(toJitobj(L, 1), GENSYM(lua_tostring(L, 2))), 0 );

	return 0;
}

static int Jitobj_class(lua_State *L)
{
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 2, " argument 1 for jit.class must be a jitter object", NULL);
	}
	
	//Jitobj_push( L, 	
	//lua_pushuserdata( jit_object_class(toJitobj(L, 1)) );

	return 1;
}

static int Jitobj_classname(lua_State *L)
{
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 2, " argument 1 for jit.classname must be a jitter object", NULL);
	}
	
	lua_pushstring( L, jit_object_classname(toJitobj(L, 1))->s_name );
	
	return 1;
}

static int Jitobj_findregistered(lua_State *L)
{
	void *o = NULL;
	if(lua_type(L, 1) != LUA_TSTRING) {
		SCRIPT_ERROR(L, 2, " argument 1 for jit.findregistered must be a string", NULL);
	}
	
	o = jit_object_findregistered(GENSYM(lua_tostring(L, 1)));
	if(o) {
		Jitobj_push( L, o, 0 );
	}
	else {
		lua_pushnil(L);
	}
		
	return 1;
}

static int Jitobj_findregisteredbyptr(lua_State *L)
{
	t_symbol *name;
	
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 2, " argument 1 for jit.findregisteredbyptr must be a jitter object", NULL);
	}
	
	name = jit_object_findregisteredbyptr(toJitobj(L, 1));
	
	if(name) {
		lua_pushstring(L, name->s_name);
	}
	else {
		lua_pushstring(L, "");
	}
		
	return 1;
}

static int Jitobj_notify(lua_State *L)
{
	t_jit_err err = JIT_ERR_NONE;
	
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 2, " argument 1 for jit.notify must be userdata", NULL);
	}
	
	if(lua_type(L, 2) != LUA_TSTRING) {
		SCRIPT_ERROR(L, 2, " argument 2 for jit.notify must be a string", NULL);
	}
	
	if(! lua_isuserdata(L, 3) ) {
		SCRIPT_ERROR(L, 2, " argument 3 for jit.notify must be a user data", NULL);
	}
		
//	err = jit_object_notify(toJitobj(L, 1), GENSYM(lua_tostring(L, 2)), toJitobj(L, 1));
	
	if(err)
		error("jit.notify error calling jit.notify");
		
	return 0;
}

static int Jitobj_register(lua_State *L)
{
	/* Type check arguments */
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 2, " argument 1 for jit.register must be a jitter object", NULL);
	}
		
	if(lua_type(L, 2) != LUA_TSTRING) {
		SCRIPT_ERROR(L, 2, " argument 2 for jit.register must be a string", NULL);
	}
	
	//might have to just pass in the flag instead of 0
	Jitobj_push( L, jit_object_register(toJitobj(L, 1), GENSYM(lua_tostring(L, 2))), 0 );
	
	return 1;
}

static int Jitobj_unregister(lua_State *L)
{
	t_jit_err err = JIT_ERR_NONE;
	
	if(! lua_isuserdata(L, 1) ) {
		SCRIPT_ERROR(L, 2, " argument 1 for jit.unregister must be a jitter object", NULL);
	}
	
	err = jit_object_unregister(toJitobj(L, 1));
	if(err)
		error("jit.unregister calling jit_object_unregister");
		
	return 0;
}

static int Jitobj_domatrix(lua_State *L)
{
	void *jitobj;
	t_jit_matrix_info minfo;
	const char *lua_func;
	float *fp;
	char *bp;
	void *mat;
	
	/* Type check arguments */	
	if(! lua_isuserdata(L, 1) )
		luaL_error(L, "argument 1 for jit.domatrix must be a matrix");
		
	/* Type check arguments */	
	if(! lua_isstring(L, 2) )
		luaL_error(L, "argument 2 for jit.domatrix must be a string");
	
	jitobj = toJitobj(L, 1);
	lua_func = lua_tostring(L, 2);
	
	mat = jit_object_method(jitobj, GENSYM("getmatrix"));
	
	//check if a matrix later
	jit_object_method(mat, _jit_sym_getinfo, &minfo);
	jit_object_method(mat, _jit_sym_getdata, &bp);
	
	if(bp)
	{
		int i, j;
		
		if(minfo.type == _jit_sym_float32)
		{
			//push lua function onto stack
			lua_getglobal(L, lua_func);
			
			for(j=0; j < minfo.dim[1]; j++) {
				fp = (float *)(bp + j*minfo.dimstride[1]);
				
				//note range
				for(i=1; i <= minfo.dim[0]; i++) {
					glPushMatrix();
						glTranslatef(fp[0], fp[1], fp[2]);
						lua_pushvalue(L, -1);
						lua_pushinteger(L, i + j*minfo.dim[0]);
						lua_call(L, 1, 0);
					glPopMatrix();
					
					fp += minfo.planecount;
				}
			}
		}
	}
	
	return 0;
}

static int Jitobj___gc(lua_State *L)
{
	void *im = toJitobj(L, 1);
	int lua_owns = 0;
	
	lua_getmetatable(L, 1);					//get objects metatable
	lua_pushstring(L, "instance");			
	lua_gettable(L, -2);					//get the metatable's instance table
	lua_pushlightuserdata(L, im);			//push jitter object's address as key (NOT the same address as in 
											//lua scripts which is a handle)
	lua_gettable(L, -2);					//get jitter object's ownership flag	
	lua_owns = lua_toboolean(L, -1);

	if (im && lua_owns) {
		jit_object_free(im);
		im = 0;
	}

	//remove address from table?

	return 0;
}

static int Jitobj___tostring(lua_State *L)
{
	Jitobj *p_obj = lua_touserdata(L, 1);
	lua_pushfstring(L, "%s: %p", jit_object_classname(*p_obj)->s_name, *p_obj);
	
	return 1;
}

int Jitobj___index(lua_State *L)
{
	//check if method exists
	lua_getmetatable(L, 1);
	
	lua_getfield(L, -1, "methods");
	lua_pushvalue(L, 2);
	lua_gettable(L, -2);
	
	if(!lua_isnil(L, -1)) {
		lua_pushvalue(L, 1);
		lua_pushvalue(L, 2);
		lua_pushvalue(L, -3);
		lua_pushcclosure(L, Jitobj_object_method, 3);
	}
	else {
		lua_pop(L, 2);
				
		lua_getfield(L, -1, "jit_methods");
		lua_pushvalue(L, 2);
		lua_gettable(L, -2);
		
		if(!lua_isnil(L, -1)) {
			lua_CFunction func = lua_tocfunction(L, -1);
			lua_pop(L, 2);
			
			lua_pushvalue(L, 1);
			lua_pushcclosure(L, func, 1);
		}
		else {
			lua_pop(L, 3);
			return Jitobj_getattribute(L);
		}
	}
	
	return 1;
}

int Jitobj___newindex(lua_State *L)
{
	return Jitobj_attribute(L);
}

int Matrix___index(lua_State *L)
{
	if(lua_isnumber(L, 2)) {
		return Matrix_get_row(L);
	}
	else {
		return Jitobj___index(L);
	}
}

int Matrix___newindex(lua_State *L)
{
	if(lua_isnumber(L, 2)) {
		return Matrix_set_row(L);
	}
	else {
		return Jitobj___newindex(L);
	}
}

	
																	
static const luaL_reg Jitobj_lib[] = 
{
	TABLE_ENTRY(Jitobj, new),
	TABLE_ENTRY(Jitobj, matrix),
	TABLE_ENTRY(Jitobj, submatrix),
	TABLE_ENTRY(Jitobj, listener),
	TABLE_ENTRY(Jitobj, classname),
	TABLE_ENTRY(Jitobj, register),
	TABLE_ENTRY(Jitobj, findregistered),
	TABLE_ENTRY(Jitobj, findregisteredbyptr),
	TABLE_ENTRY(Jitobj, unregister),
	TABLE_ENTRY(Jitobj, attach),
	TABLE_ENTRY(Jitobj, notify),
	TABLE_ENTRY(Jitobj, class),
	TABLE_ENTRY(Jitobj, attr_get),
	TABLE_ENTRY(Jitobj, domatrix),
	{NULL, NULL}
};


//still need to cache symbols somewhere
//potentially in the metatable under jit[__metatable][symbols]
//so that they don't have to be generated on every call
LJIT_API int luaopen_jit(lua_State* L)
{
	luaL_newmetatable(L, JITOBJ_META);
	
	//fill metatable
	{
		int i=0;
		
		while(Jitobj_lib[i].name)
		{
			lua_pushstring(L, Jitobj_lib[i].name);		//strings as function keys
			lua_pushcfunction(L, Jitobj_lib[i].func);	//functions as values
			lua_settable(L, -3);						//set table with (key, value) pair
			i++;
		}
	}
	
	lua_setglobal(L, JITOBJ_META);
	
	return 1;
}