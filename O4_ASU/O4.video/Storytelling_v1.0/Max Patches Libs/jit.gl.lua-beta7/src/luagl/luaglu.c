#include "luaglu.h"
#include <stdlib.h>
#include <string.h>

static GLenum get_glu_enum(lua_State *L, int index)
{
	if(lua_type(L, index) == LUA_TSTRING)
	{
		const char *key = lua_tostring(L, index);

		lua_getglobal(L, "glu");				//put table on stack
		lua_getfield(L, -1, "enums");			//get enums table and put it on the stack
		lua_getfield(L, -1, key);				//get enum value from enum table and put it on the stack
		lua_remove(L, -3);						//remove glu table from stack
		lua_remove(L, -2);						//remove enum table from stack

		return (GLenum)lua_tointeger(L, -1);	//return enum value
	}
	else {
		return (GLenum)lua_tonumber(L, index);
	}
}

static int get_arrayf(lua_State *L, int index, GLfloat **array)
{
	int i;
	int n = luaL_getn(L, index);

	*array = (GLfloat *)malloc(n * sizeof(GLfloat));

	for(i = 0; i < n; i++)
	{
	  lua_rawgeti(L, index, i + 1);
	  (*array)[i] = (GLfloat)lua_tonumber(L, -1);
	}

	return n; /* return the number of valid elements found.*/
}

//replace with better functions for memory access
static int get_arrayf2d(lua_State *L, int index, GLfloat **array)
{
	int w, h, v;

	//get number of rows in table
	w = luaL_getn(L, index);

	//get number of columns in table
	lua_pushinteger(L, 1);
	lua_gettable(L, index);
	h = luaL_getn(L, -1);

	//get number of values per cell
	lua_pushinteger(L, 1);
	lua_gettable(L, -2);
	v = luaL_getn(L, -1);

	return 1; /* return the number of valid elements found.*/
}

void string_from_array(int length, GLfloat *array, char *string)
{
	int i;
	char temp[64];

	string[0] = '\0';

	for(i=0; i < length; i++) {
		sprintf(temp, "%f ", array[i]);
		strcat(string, temp);
	}
}

/* glu.LookAt(Ex, Ey, Ez, Lx, Ly, Lz, Ux, Uy, Uz) -> none */
static int glu_LookAt(lua_State *L)
{
	if (!( lua_isnumber(L, 1) && lua_isnumber(L, 2) && lua_isnumber(L, 3)
		&& lua_isnumber(L, 4) && lua_isnumber(L, 5) && lua_isnumber(L, 6)
		&& lua_isnumber(L, 7) && lua_isnumber(L, 8) && lua_isnumber(L, 9)))
	{
		luaL_error(L, "incorrect arguments to function 'glu.LookAt' (requires nine numbers)");
		return 0;
	}
	gluLookAt(
			(GLdouble)lua_tonumber(L, 1), (GLdouble)lua_tonumber(L, 2), (GLdouble)lua_tonumber(L, 3),
			(GLdouble)lua_tonumber(L, 4), (GLdouble)lua_tonumber(L, 5), (GLdouble)lua_tonumber(L, 6),
			(GLdouble)lua_tonumber(L, 7), (GLdouble)lua_tonumber(L, 8), (GLdouble)lua_tonumber(L, 9));

	return 0;
}

static int glu_Ortho2D(lua_State *L)
{
	if (!( lua_isnumber(L, 1) && lua_isnumber(L, 2) && lua_isnumber(L, 3) && lua_isnumber(L, 4)))
	{
		luaL_error(L, "incorrect arguments to function 'glu.Ortho2D' (requires four numbers)");
		return 0;
	}

	gluOrtho2D(	(GLdouble)lua_tonumber(L, 1), (GLdouble)lua_tonumber(L, 2),
				(GLdouble)lua_tonumber(L, 3), (GLdouble)lua_tonumber(L, 4));

	return 0;
}

static int glu_Perspective(lua_State *L)
{
	if (!( lua_isnumber(L, 1) && lua_isnumber(L, 2) && lua_isnumber(L, 3) && lua_isnumber(L, 4)))
	{
		luaL_error(L, "incorrect arguments to function 'glu.Perspective' (requires four numbers)");
		return 0;
	}
	gluPerspective((GLdouble)lua_tonumber(L, 1), (GLdouble)lua_tonumber(L, 2), (GLdouble)lua_tonumber(L, 3), (GLdouble)lua_tonumber(L, 4));
	return 0;
}

static int glu_Project(lua_State *L)
{
	double ox, oy, oz;
	double model[16];
	double proj[16];
	GLint view[4];
	double x, y, z;

	if (!( lua_isnumber(L, 1) && lua_isnumber(L, 2) && lua_isnumber(L, 3) ))
	{
		luaL_error(L, "incorrect arguments to function 'glu.Project'");
		return 0;
	}

	ox = lua_tonumber(L, 1);
	oy = lua_tonumber(L, 2);
	oz = lua_tonumber(L, 3);

	glGetDoublev(GL_MODELVIEW_MATRIX, model);
	glGetDoublev(GL_PROJECTION_MATRIX, proj);
	glGetIntegerv(GL_VIEWPORT, view);

	gluProject(ox, oy, oz,
			model,
			proj,
			view,
			&x, &y, &z);

	lua_pushnumber(L, x);
	lua_pushnumber(L, y);
	lua_pushnumber(L, z);

	return 3;
}

static int glu_UnProject(lua_State *L)
{
	double x, y, z;
	double model[16];
	double proj[16];
	GLint view[4];
	double ox, oy, oz;

	if (!( lua_isnumber(L, 1) && lua_isnumber(L, 2) && lua_isnumber(L, 3) ))
	{
		luaL_error(L, "incorrect arguments to function 'glu.UnProject' (requires 3 numbers)");
		return 0;
	}

	x = lua_tonumber(L, 1);
	y = lua_tonumber(L, 2);
	z = lua_tonumber(L, 3);

	glGetDoublev(GL_MODELVIEW_MATRIX, model);
	glGetDoublev(GL_PROJECTION_MATRIX, proj);
	glGetIntegerv(GL_VIEWPORT, view);

	gluUnProject(x, y, z,
			model,
			proj,
			view,
			&ox, &oy, &oz);

	lua_pushnumber(L, ox);
	lua_pushnumber(L, oy);
	lua_pushnumber(L, oz);

	return 3;
}

static luaL_reg const glulib[] = {
	TABLE_ENTRY(glu, LookAt),
	TABLE_ENTRY(glu, Ortho2D),
	TABLE_ENTRY(glu, Perspective),
	TABLE_ENTRY(glu, Project),
	TABLE_ENTRY(glu, UnProject),
	{NULL, NULL}
};

LGLU_API int luaopen_glu(lua_State *L)
{
	luaL_register(L, "glu", glulib);				//register table and put on stack
	lua_pushstring(L, "enums");						//put key on stack

	//make enum table
	lua_newtable(L);								//put value on stack

	//fill new table
	{
		int i=0;

		while(glu_str[i].str)
		{
			lua_pushstring(L, glu_str[i].str);		//strings as enum keys
			lua_pushinteger(L, glu_str[i].value);	//enum value as values
			lua_settable(L, -3);					//set table with (key, value) pair
			i++;
		}
	}

	lua_settable(L, -3);							//set table with (key, value) pair


	{
		int i=0;
		while(glu_str[i].str)
		{
			lua_pushstring(L, glu_str[i].str);
			lua_pushinteger(L, glu_str[i].value);
			lua_settable(L, -3);
			i++;
		}
	}

	return 1;
}
