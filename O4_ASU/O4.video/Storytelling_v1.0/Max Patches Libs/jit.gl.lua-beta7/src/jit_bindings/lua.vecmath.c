/*
 *  lua.vecmath.c
 *  max.jit.gl.lua
 *
 *  Created by Wesley Smith on 10/30/06.
 *  Copyright 2006 __MyCompanyName__. All rights reserved.
 *
 */

#include "lua.vecmath.h"

#define JITVEC2MATH_META	"C74_jit_vec2math"
#define JITVEC2MATH			"vec2"

#define JITVEC3MATH_META	"C74_jit_vec3math"
#define JITVEC3MATH			"vec3"

#define JITVEC4MATH_META	"C74_jit_vec4math"
#define JITVEC4MATH			"vec4"

#define JITQUATMATH_META	"C74_jit_quatmath"
#define JITQUATMATH			"quat"

#define JITMAT3MATH_META	"C74_jit_mat3math"
#define JITMAT3MATH			"mat3"

#define JITMAT4MATH_META	"C74_jit_mat4math"
#define JITMAT4MATH			"mat4"

#define JIT_GL_LUA_PI_OVER_180			0.01745329252

#define ONE_IN_SELF_OUT(type, function)		static int type##_##function(lua_State *L)		\
											{												\
												t_jit_##type	in_one;						\
																							\
												if(! lua_istable(L, 1))						\
													luaL_error(L, "first argument must be a table");	\
																							\
												table_to_##type(L, 1, &in_one);				\
																							\
												jit_##type##_##function(&in_one);			\
																							\
												type##_to_table(L, &in_one);				\
																							\
												return 1;									\
											}
											
#define ONE_IN_ONE_OUT(type, function)		static int type##_##function(lua_State *L)		\
											{												\
												t_jit_##type	in_one;						\
												t_jit_##type	out_one;					\
																							\
												if(! lua_istable(L, 1))						\
													luaL_error(L, "first argument must be a table");	\
																							\
												table_to_##type(L, 1, &in_one);				\
																							\
												jit_##type##_##function(&out_one, &in_one);	\
																							\
												type##_to_table(L, &out_one);				\
																							\
												return 1;									\
											}

#define TWO_IN_SELF_OUT(type, function)		static int type##_##function(lua_State *L)		\
											{												\
												t_jit_##type	in_one;						\
												t_jit_##type	in_two;						\
																							\
												if(! lua_istable(L, 1))						\
													luaL_error(L, "first argument must be a table");	\
																							\
												if(! lua_istable(L, 2))						\
													luaL_error(L, "second argument must be a table");	\
																							\
												table_to_##type(L, 1, &in_one);				\
												table_to_##type(L, 2, &in_two);				\
																							\
												jit_##type##_##function(&in_one, &in_two);		\
																							\
												type##_to_table(L, &in_one);				\
																							\
												return 1;									\
											}

#define TWO_IN_ONE_OUT(type, function)		static int type##_##function(lua_State *L)		\
											{												\
												t_jit_##type	in_one;						\
												t_jit_##type	in_two;						\
												t_jit_##type	out_one;					\
																							\
												if(! lua_istable(L, 1))						\
													luaL_error(L, "first argument must be a table");	\
																							\
												if(! lua_istable(L, 2))						\
													luaL_error(L, "second argument must be a table");	\
																							\
												table_to_##type(L, 1, &in_one);				\
												table_to_##type(L, 2, &in_two);				\
																							\
												jit_##type##_##function(&out_one, &in_one, &in_two);		\
																							\
												type##_to_table(L, &out_one);				\
																							\
												return 1;									\
											}
											
#define ONE_IN_NUM_OUT(type, function, return_func)	\
											static int type##_##function(lua_State *L)		\
											{												\
												t_jit_##type	in_one;						\
																							\
												if(! lua_istable(L, 1))						\
													luaL_error(L, "first argument must be a table");	\
																							\
												table_to_##type(L, 1, &in_one);				\
																							\
												return_func(L, jit_##type##_##function(&in_one));		\
																							\
												return 1;									\
											}

#define TWO_IN_NUM_OUT(type, function, return_func)	\
											static int type##_##function(lua_State *L)		\
											{												\
												t_jit_##type	in_one;						\
												t_jit_##type	in_two;						\
																							\
												if(! lua_istable(L, 1))						\
													luaL_error(L, "first argument must be a table");	\
																							\
												if(! lua_istable(L, 2))						\
													luaL_error(L, "second argument must be a table");	\
																							\
												table_to_##type(L, 1, &in_one);				\
												table_to_##type(L, 2, &in_two);				\
																							\
												return_func(L, jit_##type##_##function(&in_one, &in_two));		\
																							\
												return 1;									\
											}
											
#define ONE_IN_FLOAT_IN_ONE_OUT(type, function)	\
											static int type##_##function(lua_State *L)		\
											{												\
												t_jit_##type	in_one;						\
												t_jit_##type	out_one;					\
																							\
												if(! lua_istable(L, 1))						\
													luaL_error(L, "first argument must be a table");	\
																							\
												if(! lua_isnumber(L, 2))					\
													luaL_error(L, "second argument must be a number");	\
																							\
												table_to_##type(L, 1, &in_one);				\
																							\
												jit_##type##_##function(&out_one, &in_one, lua_tonumber(L, 2));		\
																							\
												type##_to_table(L, &out_one);				\
																							\
												return 1;									\
											}
											
#define ONE_IN_FLOAT_IN_SELF_OUT(type, function)	\
											static int type##_##function(lua_State *L)		\
											{												\
												t_jit_##type	in_one;						\
																							\
												if(! lua_istable(L, 1))						\
													luaL_error(L, "first argument must be a table");	\
																							\
												if(! lua_isnumber(L, 2))					\
													luaL_error(L, "second argument must be a number");	\
																							\
												table_to_##type(L, 1, &in_one);				\
																							\
												jit_##type##_##function(&in_one, lua_tonumber(L, 2));		\
																							\
												type##_to_table(L, &in_one);				\
																							\
												return 1;									\
											}

#define TABLE_TO_TYPE(type, num_vals)		void table_to_##type(lua_State *L, int index, t_jit_##type *val)	\
											{												\
												int n = luaL_getn(L, index);				\
												int i;										\
																							\
												CLIP(n, 0, num_vals);						\
																							\
												for(i=0; i < n; i++) {						\
													lua_rawgeti(L, index, i+1);				\
													val->vals[i] = (float)lua_tonumber(L, -1);	\
												}											\
											}
											
#define TYPE_TO_TABLE(type, num_vals)		void type##_to_table(lua_State *L, t_jit_##type *val)	\
											{												\
												int i;										\
																							\
												lua_newtable(L);							\
																							\
												for(i=0; i < num_vals; i++) {				\
													lua_pushnumber(L, val->vals[i]);		\
													lua_rawseti(L, -2, i+1);				\
												}											\
											}
											
TABLE_TO_TYPE(vec2, 2)
TYPE_TO_TABLE(vec2, 2)

TABLE_TO_TYPE(vec3, 3)
TYPE_TO_TABLE(vec3, 3)

TABLE_TO_TYPE(vec4, 4)
TYPE_TO_TABLE(vec4, 4)

TABLE_TO_TYPE(quat, 4)
TYPE_TO_TABLE(quat, 4)

TABLE_TO_TYPE(mat3, 9)
TYPE_TO_TABLE(mat3, 9)

TABLE_TO_TYPE(mat4, 16)
TYPE_TO_TABLE(mat4, 16)

TWO_IN_NUM_OUT(vec2, equal, lua_pushinteger)
TWO_IN_NUM_OUT(vec2, not_equal, lua_pushinteger)
TWO_IN_ONE_OUT(vec2, mult)
ONE_IN_FLOAT_IN_ONE_OUT(vec2, scale)
ONE_IN_FLOAT_IN_SELF_OUT(vec2, accum_scale)
ONE_IN_FLOAT_IN_ONE_OUT(vec2, div)
TWO_IN_ONE_OUT(vec2, sub)
TWO_IN_SELF_OUT(vec2, accum_sub)
TWO_IN_ONE_OUT(vec2, add)
TWO_IN_SELF_OUT(vec2, accum_add)
ONE_IN_NUM_OUT(vec2, mag_sqr, lua_pushnumber)
ONE_IN_NUM_OUT(vec2, mag, lua_pushnumber)
ONE_IN_SELF_OUT(vec2, negate)
TWO_IN_ONE_OUT(vec2, max)
//TWO_IN_ONE_OUT(vec2, min)

static int vec2_dot(lua_State *L)
{
	t_jit_vec2 v1;
	t_jit_vec2 v2;
	float dot;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_vec2(L, 1, &v1);
	table_to_vec2(L, 2, &v2);
	
	dot = v1.x*v2.x + v1.y*v2.y;
	lua_pushnumber(L, dot);
	
	return 1;
}

static int vec2_normalize(lua_State *L)
{
	t_jit_vec2 v1;
	double s = DBL_EPSILON;
	double m;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_vec2(L, 1, &v1);
	
	m = v1.x*v1.x + v1.y*v1.y;
	if (m > DBL_EPSILON)
	{
		s = jit_math_sqrt(m);
		v1.x /= s;
		v1.y /= s;
	}
	else
	{
		v1.x = s;
		v1.x = s;
	}
	
	vec2_to_table(L, &v1);
	
	return 1;
}

static int vec2_lerp(lua_State *L)
{
	t_jit_vec2 v1;
	t_jit_vec2 v2;
	t_jit_vec2 v3;
	
	/* test argument type */
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
		
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");

	table_to_vec2(L, 2, &v1);
	table_to_vec2(L, 3, &v2);
	
	jit_vec2_lerp(&v3, lua_tonumber(L, 1), &v1, &v2);
	vec2_to_table(L, &v3);
	
	return 1;
}

TWO_IN_NUM_OUT(vec3, equal, lua_pushinteger)
TWO_IN_NUM_OUT(vec3, not_equal, lua_pushinteger)
TWO_IN_ONE_OUT(vec3, mult)
ONE_IN_FLOAT_IN_ONE_OUT(vec3, scale)
ONE_IN_FLOAT_IN_SELF_OUT(vec3, accum_scale)
ONE_IN_FLOAT_IN_ONE_OUT(vec3, div)
TWO_IN_ONE_OUT(vec3, sub)
TWO_IN_SELF_OUT(vec3, accum_sub)
TWO_IN_ONE_OUT(vec3, add)
TWO_IN_SELF_OUT(vec3, accum_add)

static int vec3_madd(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
			
	if(! lua_isnumber(L, 3))
		luaL_error(L, "third argument must be a number");

	table_to_vec3(L, 1, &v1);
	table_to_vec3(L, 2, &v2);
	
	jit_vec3_madd(&v1, &v2, lua_tonumber(L, 3));
	vec3_to_table(L, &v1);
	
	return 1;
}

ONE_IN_NUM_OUT(vec3, mag_sqr, lua_pushnumber)
ONE_IN_NUM_OUT(vec3, mag, lua_pushnumber)
ONE_IN_SELF_OUT(vec3, negate)
TWO_IN_ONE_OUT(vec3, cross)
TWO_IN_NUM_OUT(vec3, dot, lua_pushnumber)
TWO_IN_ONE_OUT(vec3, reflect)

static int vec3_normal(lua_State *L)
{
	t_jit_vec3 p1;
	t_jit_vec3 p2;
	t_jit_vec3 p3;
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	t_jit_vec3 n;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
	
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");
	
	table_to_vec3(L, 1, &p1);
	table_to_vec3(L, 2, &p2);
	table_to_vec3(L, 3, &p3);
	
	jit_vec3_sub(&v1, &p2, &p1);
	jit_vec3_sub(&v2, &p3, &p1);
	jit_vec3_cross(&n, &v2, &v1);
	jit_vec3_normalize(&n);
	
	vec3_to_table(L, &n);
	
	return 1;
}

ONE_IN_SELF_OUT(vec3, normalize)

static int vec3_orthogonalize(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_vec3(L, 1, &v1);
	table_to_vec3(L, 2, &v2);
	
	jit_vec3_orthogonalize(&v1, &v2);
	vec3_to_table(L, &v1);
	
	return 1;
}

static int vec3_orthonormalize(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_vec3(L, 1, &v1);
	table_to_vec3(L, 2, &v2);
	
	jit_vec3_orthonormalize(&v1, &v2);
	vec3_to_table(L, &v1);
	
	return 1;
}

TWO_IN_ONE_OUT(vec3, max)
TWO_IN_ONE_OUT(vec3, min)

static int vec3_lerp(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	t_jit_vec3 v3;
	
	/* test argument type */
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
		
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");

	table_to_vec3(L, 2, &v1);
	table_to_vec3(L, 3, &v2);
	
	jit_vec3_lerp(&v3, lua_tonumber(L, 1), &v1, &v2);
	vec3_to_table(L, &v3);
	
	return 1;
}


static int vec3_cubemap_normal(lua_State *L)
{
	t_jit_vec3 v1;
	
	/* test argument type */
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");
		
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");
		
	if(! lua_isnumber(L, 3))
		luaL_error(L, "third argument must be a number");
		
	if(! lua_isnumber(L, 4))
		luaL_error(L, "fourth argument must be a number");
	
	jit_vec3_cubemap_normal(&v1,	lua_tointeger(L, 1), lua_tointeger(L, 2),
									lua_tointeger(L, 3), lua_tointeger(L, 4));
	vec3_to_table(L, &v1);
	
	return 1;
}

static int vec3_intersect_line_sphere(lua_State *L)
{
	//input arguments
	t_jit_vec3 line_a;	//start point of line
	t_jit_vec3 line_b;	//end point of line
	t_jit_vec3 center;	//center of sphere
	float r;			//sphere radius
	
	//output value
	t_jit_vec3 p1;		//point of intersection if it exists
	
	//temp vars
	t_jit_vec3 EO;		//vector pointing from start point of line to center of sphere
	t_jit_vec3 V;		//vector pointing from the start point of the line to the end of the line
	float v, disc, d;

	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
		
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");
		
	if(! lua_isnumber(L, 4))
		luaL_error(L, "fourth argument must be a number");

	table_to_vec3(L, 1, &line_a);
	table_to_vec3(L, 2, &line_b);
	table_to_vec3(L, 3, &center);
	r = lua_tonumber(L, 4);

	jit_vec3_sub(&EO, &center, &line_a);
	jit_vec3_sub(&V, &line_b, &line_a);
	jit_vec3_normalize(&V);

	v = jit_vec3_dot(&EO, &V);
	disc = r*r - (jit_vec3_dot(&EO, &EO) - v*v);
		
	if (disc < 0)
	{
		lua_pushboolean(L, 0);
		lua_pushnil(L);
	}
	else
	{
		d = jit_math_sqrt(disc);
		jit_vec3_scale(&V, &V, v-d);
		jit_vec3_add(&p1, &V, &line_a);
		
		lua_pushboolean(L, 1);
		vec3_to_table(L, &p1);
	}	
	
	return 2;
}

static int vec3_axisx_from_quat(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_quat q1;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_quat(L, 1, &q1);
	v1.x = 1.0 - 2.0*q1.y*q1.y - 2.0*q1.z*q1.z;
	v1.y = 2.0*q1.x*q1.y + 2.0*q1.z*q1.w;
	v1.z = 2.0*q1.x*q1.z - 2.0*q1.y*q1.w;
	vec3_to_table(L, &v1);
	
	return 1;
}

static int vec3_axisy_from_quat(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_quat q1;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_quat(L, 1, &q1);
	v1.x = 2.0*q1.x*q1.y - 2.0*q1.z*q1.w;
	v1.y = 1.0 - 2.0*q1.x*q1.x - 2.0*q1.z*q1.z;
	v1.z = 2.0*q1.y*q1.z + 2.0*q1.x*q1.w;
	vec3_to_table(L, &v1);
	
	return 1;
}

static int vec3_axisz_from_quat(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_quat q1;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_quat(L, 1, &q1);
	v1.x = 2.0*q1.x*q1.z + 2.0*q1.y*q1.w;
	v1.y = 2.0*q1.y*q1.z - 2.0*q1.x*q1.w;
	v1.z = 1.0 - 2.0*q1.x*q1.x - 2.0*q1.y*q1.y;
	vec3_to_table(L, &v1);
	
	return 1;
}

static int vec3_transform_axisangle(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	float angle;
	t_jit_vec3 axis;
	t_jit_mat3 mat;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");
		
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");

	table_to_vec3(L, 1, &v1);
	angle = lua_tonumber(L, 2);
	table_to_vec3(L, 3, &axis);
	
	jit_mat3_from_axisangle(&mat, &axis, angle*JIT_GL_LUA_PI_OVER_180);
	jit_mat3_mult_vec3(&v2, &mat, &v1);
	
	vec3_to_table(L, &v2);
	
	return 1;
}

static int vec3_centroid3(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	t_jit_vec3 v3;
	t_jit_vec3 c;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
		
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");
	
	table_to_vec3(L, 1, &v1);
	table_to_vec3(L, 2, &v2);
	table_to_vec3(L, 3, &v3);
	
	c.x = (v1.x + v2.x + v3.x)*0.333333333;
	c.y = (v1.y + v2.y + v3.y)*0.333333333;
	c.z = (v1.z + v2.z + v3.z)*0.333333333;
	
	vec3_to_table(L, &c);
	
	return 1;
}

static int vec3_centroid4(lua_State *L)
{
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	t_jit_vec3 v3;
	t_jit_vec3 v4;
	t_jit_vec3 c;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
		
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");
		
	if(! lua_istable(L, 4))
		luaL_error(L, "fourth argument must be a table");
	
	table_to_vec3(L, 1, &v1);
	table_to_vec3(L, 2, &v2);
	table_to_vec3(L, 3, &v3);
	table_to_vec3(L, 4, &v4);
	
	c.x = (v1.x + v2.x + v3.x + v4.x)*0.25;
	c.y = (v1.y + v2.y + v3.y + v4.y)*0.25;
	c.z = (v1.z + v2.z + v3.z + v4.z)*0.25;
	
	vec3_to_table(L, &c);
	
	return 1;
}

static int vec3_centroid4_weight(lua_State *L)
{
	t_jit_vec4 w;
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	t_jit_vec3 v3;
	t_jit_vec3 v4;
	t_jit_vec3 c;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
		
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");
		
	if(! lua_istable(L, 4))
		luaL_error(L, "fourth argument must be a table");
		
	if(! lua_istable(L, 5))
		luaL_error(L, "fifth argument must be a table");
	
	table_to_vec4(L, 1, &w);
	table_to_vec3(L, 2, &v1);
	table_to_vec3(L, 3, &v2);
	table_to_vec3(L, 4, &v3);
	table_to_vec3(L, 5, &v4);
	
	c.x = (v1.x*w.x + v2.x*w.y + v3.x*w.z + v4.x*w.w);
	c.y = (v1.y*w.x + v2.y*w.y + v3.y*w.z + v4.y*w.w);
	c.z = (v1.z*w.x + v2.z*w.y + v3.z*w.z + v4.z*w.w);
	
	vec3_to_table(L, &c);
	
	return 1;
}

TWO_IN_NUM_OUT(vec4, equal, lua_pushinteger)
TWO_IN_NUM_OUT(vec4, not_equal, lua_pushinteger)
TWO_IN_ONE_OUT(vec4, mult)
ONE_IN_FLOAT_IN_ONE_OUT(vec4, scale)
ONE_IN_FLOAT_IN_SELF_OUT(vec4, accum_scale)
ONE_IN_FLOAT_IN_ONE_OUT(vec4, div)
TWO_IN_ONE_OUT(vec4, sub)
TWO_IN_SELF_OUT(vec4, accum_sub)
TWO_IN_ONE_OUT(vec4, add)
TWO_IN_SELF_OUT(vec4, accum_add)
ONE_IN_NUM_OUT(vec4, mag_sqr, lua_pushnumber)
ONE_IN_NUM_OUT(vec4, mag, lua_pushnumber)
ONE_IN_SELF_OUT(vec4, negate)
TWO_IN_NUM_OUT(vec4, dot, lua_pushnumber)
ONE_IN_SELF_OUT(vec4, normalize)
TWO_IN_ONE_OUT(vec4, max)
TWO_IN_ONE_OUT(vec4, min)

static int vec4_lerp(lua_State *L)
{
	t_jit_vec4 v1;
	t_jit_vec4 v2;
	t_jit_vec4 v3;
	
	/* test argument type */
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");
		
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
		
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");

	table_to_vec4(L, 2, &v1);
	table_to_vec4(L, 3, &v2);
	
	jit_vec4_lerp(&v3, lua_tonumber(L, 1), &v1, &v2);
	vec4_to_table(L, &v3);
	
	return 1;
}


TWO_IN_NUM_OUT(quat, equal, lua_pushinteger)
TWO_IN_NUM_OUT(quat, not_equal, lua_pushinteger)
ONE_IN_FLOAT_IN_ONE_OUT(quat, scale)
ONE_IN_FLOAT_IN_ONE_OUT(quat, div)
TWO_IN_ONE_OUT(quat, add)
TWO_IN_ONE_OUT(quat, mult)
TWO_IN_NUM_OUT(quat, dot, lua_pushnumber)
ONE_IN_NUM_OUT(quat, mag_sqr, lua_pushnumber)
ONE_IN_NUM_OUT(quat, mag, lua_pushnumber)
ONE_IN_SELF_OUT(quat, negate)
ONE_IN_SELF_OUT(quat, normalize)
TWO_IN_ONE_OUT(quat, max)
TWO_IN_ONE_OUT(quat, min)

static int quat_from_mat3(lua_State *L)
{
	t_jit_quat q;
	t_jit_mat3 m;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat3(L, 1, &m);
	jit_quat_from_mat3(&q, &m);
	quat_to_table(L, &q);
	
	return 1;
}

static int mat3_from_quat(lua_State *L)
{
	t_jit_mat3 m;
	t_jit_quat q;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_quat(L, 1, &q);
	jit_mat3_from_quat(&m, &q);
	mat3_to_table(L, &m);
	
	return 1;
}

static int quat_from_mat4(lua_State *L)
{
	t_jit_quat q;
	t_jit_mat4 m;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat4(L, 1, &m);
	jit_quat_from_mat4(&q, &m);
	quat_to_table(L, &q);
	
	return 1;
}

static int quat_from_axisangle(lua_State *L)
{
	t_jit_quat q1;
	t_jit_vec3 v1;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");

	table_to_vec3(L, 1, &v1);
	jit_quat_from_axisangle(&q1, &v1, lua_tonumber(L, 2));
	quat_to_table(L, &q1);
	
	return 1;
}

ONE_IN_SELF_OUT(quat, conj)

static int quat_slerp(lua_State *L)
{
	t_jit_quat q1;
	t_jit_quat q2;
	t_jit_quat q3;
	
	/* test argument type */
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");

	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
			
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");

	table_to_quat(L, 2, &q1);
	table_to_quat(L, 3, &q2);
	jit_quat_slerp(&q3, lua_tonumber(L, 1), &q1, &q2);
	quat_to_table(L, &q3);
	
	return 1;
}

static int quat_x_axis(lua_State *L)
{
	t_jit_quat q;
	t_jit_vec3 v;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	
	table_to_quat(L, 1, &q);
	
	v.x = 1.0 - 2.0*q.z*q.z - 2.0*q.w*q.w;
	v.y = 2.0*q.y*q.z + 2.0*q.w*q.x;
	v.z = 2.0*q.y*q.w - 2.0*q.z*q.x;
	
	vec3_to_table(L, &v);
	
	return 1;
}


#define QUAT_DEG2RAD_BY2 (0.00872664626)

//Code from euler2quat by Graham Wakefield
static int quat_from_euler(lua_State *L)
{
	t_jit_quat q1;
	t_jit_vec3 v1;
	
	/* test argument type */
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_vec3(L, 1, &v1);

	{
		float c1, c2, c3, s1, s2, s3, tw, tx, ty, tz;
		
		c1 = jit_math_cos(v1.y * QUAT_DEG2RAD_BY2);
		c2 = jit_math_cos(v1.x * QUAT_DEG2RAD_BY2);
		c3 = jit_math_cos(v1.z * QUAT_DEG2RAD_BY2);
		s1 = jit_math_sin(v1.y * QUAT_DEG2RAD_BY2);
		s2 = jit_math_sin(v1.x * QUAT_DEG2RAD_BY2);
		s3 = jit_math_sin(v1.z * QUAT_DEG2RAD_BY2);
		
		// equiv quat_multiply(&Qy, &Qx, &Q1); // since many terms are zero
		tw = c1*c2;
		tx = c1*s2;
		ty = s1*c2;
		tz = - s1*s2;
		
		// equiv quat_multiply(&Q1, &Qz, &Q2); // since many terms are zero
		q1.x = tw*c3 - tz*s3;
		q1.y = tx*c3 + ty*s3;
		q1.z = ty*c3 - tx*s3;
		q1.w = tw*s3 + tz*c3;
	}

	quat_to_table(L, &q1);
	
	return 1;
}

static int mat3_print(lua_State *L)
{
	t_jit_mat3 m;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat3(L, 1, &m);

	post("%f %f %f", m.v00, m.v01, m.v02);
	post("%f %f %f", m.v10, m.v11, m.v12);
	post("%f %f %f", m.v20, m.v21, m.v22);
	
	return 0;
}

void set_arg(lua_State *L, int index)
{
	int n = luaL_getn(L, -1);
	int i;
	
	for(i=1; i <= n; i++) {
		lua_rawgeti(L, -1, i);
		lua_rawseti(L, index, i);
	}
}

static int mat3_get_row(lua_State *L)
{
	t_jit_mat3 m;
	t_jit_vec3 v;
	
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_mat3(L, 2, &m);
	
	jit_mat3_get_row(&v, lua_tointeger(L, 1), &m);
	vec3_to_table(L, &v);
		
	return 1;
}

static int mat3_set_row(lua_State *L)
{
	t_jit_mat3 m;
	t_jit_vec3 v;
	
	if(! lua_istable(L, 1))
		luaL_error(L, " first argument must be a table");
	
	if(! lua_isnumber(L, 2))
		luaL_error(L, " second argument must be a number");
		
	if(! lua_istable(L, 3))
		luaL_error(L, " third argument must be a table");

	table_to_mat3(L, 1, &m);
	table_to_vec3(L, 3, &v);
	
	jit_mat3_set_row(&m, lua_tointeger(L, 2), &v);
	
	mat3_to_table(L, &m);
	
	set_arg(L, 1);
	lua_pop(L, 1);
	
	return 0;
}

static int mat3_get_col(lua_State *L)
{
	t_jit_mat3 m;
	t_jit_vec3 v;
	

	if(! lua_isnumber(L, 1))
		luaL_error(L, " first argument must be a number");
	
	if(! lua_istable(L, 2))
		luaL_error(L, " second argument must be a table");

	table_to_mat3(L, 2, &m);
	jit_mat3_get_col(&v, lua_tointeger(L, 1), &m);
	vec3_to_table(L, &v);
	
	return 1;
}

static int mat3_set_col(lua_State *L)
{
	t_jit_mat3 m;
	t_jit_vec3 v;
	
	if(! lua_istable(L, 1))
		luaL_error(L, " first argument must be a table");
	
	if(! lua_isnumber(L, 2))
		luaL_error(L, " second argument must be a number");
	
	if(! lua_istable(L, 3))
		luaL_error(L, " third argument must be a table");

	table_to_vec3(L, 1, &v);
	table_to_mat3(L, 3, &m);
	
	jit_mat3_set_col(&m, lua_tointeger(L, 2), &v);

	mat3_to_table(L, &m);
	
	set_arg(L, 3);
	lua_pop(L, 1);
	
	return 0;
}

TWO_IN_ONE_OUT(mat3, add)
TWO_IN_SELF_OUT(mat3, accum_add)
ONE_IN_FLOAT_IN_SELF_OUT(mat3, accum_scale)
TWO_IN_SELF_OUT(mat3, accum_sub)
TWO_IN_ONE_OUT(mat3, mult)
ONE_IN_ONE_OUT(mat3, get_transpose)

static int mat3_transpose(lua_State *L)
{
	t_jit_mat3 m;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat3(L, 1, &m);
	
	jit_mat3_transpose(&m);

	mat3_to_table(L, &m);
	
	set_arg(L, 1);
	lua_pop(L, 1);
	
	return 0;
}

static int mat3_mult_vec3(lua_State *L)
{
	t_jit_mat3 m;
	t_jit_vec3 v1;
	t_jit_vec3 v2;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_mat3(L, 1, &m);
	table_to_vec3(L, 2, &v1);
	jit_mat3_mult_vec3(&v2, &m, &v1);
	vec3_to_table(L, &v2);

	return 1;
}

static int vec3_mult_mat3(lua_State *L)
{
	t_jit_mat3 m;
	t_jit_vec3 v1;
	t_jit_vec3 v2;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_vec3(L, 1, &v1);
	table_to_mat3(L, 2, &m);
	jit_vec3_mult_mat3(&v2, &v1, &m);
	vec3_to_table(L, &v2);
	
	return 1;
}

static int mat3_from_axisangle(lua_State *L)
{
	t_jit_mat3 m;
	t_jit_vec3 axis;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");

	table_to_vec3(L, 1, &axis);

	jit_mat3_from_axisangle(&m, &axis, lua_tonumber(L, 2));
	mat3_to_table(L, &m);
	
	return 1;
}

static int mat3_from_uv(lua_State *L)
{
	t_jit_mat3 m;
	t_jit_vec3 u, v;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_vec3(L, 1, &u);
	table_to_vec3(L, 1, &v);

	jit_mat3_from_uv(&m, &u, &v);
	mat3_to_table(L, &m);
	
	return 1;
}

static int mat3_determinant(lua_State *L)
{
	t_jit_mat3 m;
	float determinant;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat3(L, 1, &m);

	determinant = jit_mat3_determinant(&m);
	lua_pushnumber(L, determinant);
	
	return 1;
}

ONE_IN_ONE_OUT(mat3, get_inverse)

static int mat3_negate(lua_State *L)
{
	t_jit_mat3 m;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat3(L, 1, &m);
	
	jit_mat3_negate(&m);

	mat3_to_table(L, &m);
	
	set_arg(L, 1);
	lua_pop(L, 1);
	
	return 0;
}

static int mat4_print(lua_State *L)
{
	t_jit_mat4 m;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat4(L, 1, &m);

	post("%f %f %f %f", m.v00, m.v01, m.v02, m.v03);
	post("%f %f %f %f", m.v10, m.v11, m.v12, m.v13);
	post("%f %f %f %f", m.v20, m.v21, m.v22, m.v23);
	post("%f %f %f %f", m.v30, m.v31, m.v32, m.v33);
	
	return 0;
}

static int mat4_get_row(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec4 v;
	
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_mat4(L, 2, &m);
	
	jit_mat4_get_row(&v, lua_tointeger(L, 2), &m);
	vec4_to_table(L, &v);
		
	return 1;
}

static int mat4_set_row(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec4 v;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");
		
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");

	table_to_mat4(L, 1, &m);
	table_to_vec4(L, 3, &v);
	
	jit_mat4_set_row(&m, lua_tointeger(L, 2), &v);
	
	mat4_to_table(L, &m);
	
	set_arg(L, 1);
	lua_pop(L, 1);
	
	return 0;
}

static int mat4_get_col(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec4 v;
	

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");

	table_to_mat4(L, 1, &m);
	jit_mat4_get_col(&v, lua_tointeger(L, 2), &m);
	vec4_to_table(L, &v);
	
	return 1;
}

static int mat4_set_col(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec4 v;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");
	
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");

	table_to_mat4(L, 1, &m);
	table_to_vec4(L, 3, &v);
	
	jit_mat4_set_col(&m, lua_tointeger(L, 2), &v);

	mat4_to_table(L, &m);
	
	set_arg(L, 1);
	lua_pop(L, 1);
	
	return 0;
}

static int mat4_mult_vec4(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec4 v1;
	t_jit_vec4 v2;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_mat4(L, 1, &m);
	table_to_vec4(L, 2, &v1);
	jit_mat4_mult_vec4(&v2, &m, &v1);
	vec4_to_table(L, &v2);

	return 1;
}

static int vec4_mult_mat4(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec4 v1;
	t_jit_vec4 v2;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_vec4(L, 1, &v1);
	table_to_mat4(L, 2, &m);
	jit_vec4_mult_mat4(&v2, &v1, &m);
	vec4_to_table(L, &v2);
	
	return 1;
}

TWO_IN_SELF_OUT(mat4, accum_add)
TWO_IN_ONE_OUT(mat4, add)
TWO_IN_ONE_OUT(mat4, mult)

static int mat4_transpose(lua_State *L)
{
	t_jit_mat4 m;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat4(L, 1, &m);
	
	jit_mat4_transpose(&m);

	mat4_to_table(L, &m);
	
	set_arg(L, 1);
	lua_pop(L, 1);
	
	return 0;
}

ONE_IN_ONE_OUT(mat4, get_transpose)
ONE_IN_ONE_OUT(mat4, get_inverse)
ONE_IN_ONE_OUT(mat4, get_inverse_rot_trans)

static int mat4_look_at(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec3 v1;
	t_jit_vec3 v2;
	t_jit_vec3 v3;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");
	
	if(! lua_istable(L, 3))
		luaL_error(L, "third argument must be a table");

	table_to_vec3(L, 1, &v1);
	table_to_vec3(L, 2, &v2);
	table_to_vec3(L, 3, &v3);
	
	jit_mat4_look_at(&m, &v1, &v2, &v3);

	mat4_to_table(L, &m);
	
	return 1;
}

static int mat4_frustum(lua_State *L)
{
	t_jit_mat4 m;
	
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");
	
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");

	if(! lua_isnumber(L, 3))
		luaL_error(L, "third argument must be a number");
		
	if(! lua_isnumber(L, 4))
		luaL_error(L, "fourth argument must be a number");
	
	if(! lua_isnumber(L, 5))
		luaL_error(L, "fifth argument must be a number");

	if(! lua_isnumber(L, 6))
		luaL_error(L, "sixth argument must be a number");

	jit_mat4_frustum(&m,	lua_tonumber(L, 1), lua_tonumber(L, 2),
							lua_tonumber(L, 3), lua_tonumber(L, 4),
							lua_tonumber(L, 5), lua_tonumber(L, 6));
	
	mat4_to_table(L, &m);
	
	return 1;
}

static int mat4_perspective(lua_State *L)
{
	t_jit_mat4 m;
	
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");
	
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");

	if(! lua_isnumber(L, 3))
		luaL_error(L, "third argument must be a number");
		
	if(! lua_isnumber(L, 4))
		luaL_error(L, "fourth argument must be a number");

	jit_mat4_perspective(&m,	lua_tonumber(L, 1), lua_tonumber(L, 2),
								lua_tonumber(L, 3), lua_tonumber(L, 4));
	
	mat4_to_table(L, &m);
	
	return 1;
}

static int mat4_ortho(lua_State *L)
{
	t_jit_mat4 m;
	
	if(! lua_isnumber(L, 1))
		luaL_error(L, "first argument must be a number");
	
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");

	if(! lua_isnumber(L, 3))
		luaL_error(L, "third argument must be a number");
		
	if(! lua_isnumber(L, 4))
		luaL_error(L, "fourth argument must be a number");
	
	if(! lua_isnumber(L, 5))
		luaL_error(L, "fifth argument must be a number");

	if(! lua_isnumber(L, 6))
		luaL_error(L, "sixth argument must be a number");

	jit_mat4_ortho(&m,	lua_tonumber(L, 1), lua_tonumber(L, 2),
						lua_tonumber(L, 3), lua_tonumber(L, 4),
						lua_tonumber(L, 5), lua_tonumber(L, 6));
	
	mat4_to_table(L, &m);
	
	return 1;
}

static int mat4_from_quat(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_quat q;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_quat(L, 1, &q);
	
	jit_mat4_from_quat(&m, &q);
	mat4_to_table(L, &m);
	
	return 1;
}

static int mat4_from_axisangle(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec3 v;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_isnumber(L, 2))
		luaL_error(L, "second argument must be a number");

	table_to_vec3(L, 1, &v);
	
	jit_mat4_from_axisangle(&m, &v, lua_tonumber(L, 2));
	mat4_to_table(L, &m);
	
	return 1;
}

static int mat4_from_uv(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec3 u, v;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
	
	if(! lua_istable(L, 2))
		luaL_error(L, "second argument must be a table");

	table_to_vec3(L, 1, &u);
	table_to_vec3(L, 1, &v);

	jit_mat4_from_uv(&m, &u, &v);
	mat4_to_table(L, &m);
	
	return 1;
}

static int mat4_from_mat3(lua_State *L)
{
	t_jit_mat4 m4;
	t_jit_mat3 m3;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat3(L, 1, &m3);

	jit_mat4_from_mat3(&m4, &m3);
	mat4_to_table(L, &m4);
	
	return 1;
}

static int mat3_from_mat4(lua_State *L)
{
	t_jit_mat4 m4;
	t_jit_mat3 m3;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat4(L, 1, &m4);

	jit_mat3_from_mat4(&m3, &m4);
	mat3_to_table(L, &m3);
	
	return 1;
}

static int mat4_set_scale(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec3 v;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 1))
		luaL_error(L, "second argument must be a table");

	table_to_mat4(L, 1, &m);
	table_to_vec3(L, 1, &v);

	jit_mat4_set_scale(&m, &v);

	mat4_to_table(L, &m);
	set_arg(L, 1);
	lua_pop(L, 1);
	
	return 0;
}

static int mat4_get_scale(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec3 v;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat4(L, 1, &m);

	jit_mat4_get_scale(&v, &m);
	vec3_to_table(L, &v);
	
	return 1;
}

static int mat4_set_translation(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec3 v;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");
		
	if(! lua_istable(L, 1))
		luaL_error(L, "second argument must be a table");

	table_to_mat4(L, 1, &m);
	table_to_vec3(L, 1, &v);

	jit_mat4_set_translation(&m, &v);

	mat4_to_table(L, &m);
	set_arg(L, 1);
	lua_pop(L, 1);
	
	return 0;
}

static int mat4_get_translation(lua_State *L)
{
	t_jit_mat4 m;
	t_jit_vec3 v;

	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat4(L, 1, &m);

	jit_mat4_get_translation(&v, &m);
	vec3_to_table(L, &v);
	
	return 1;
}

static int mat4_negate(lua_State *L)
{
	t_jit_mat4 m;
	
	if(! lua_istable(L, 1))
		luaL_error(L, "first argument must be a table");

	table_to_mat4(L, 1, &m);
	
	jit_mat4_negate(&m);

	mat4_to_table(L, &m);
	
	set_arg(L, 1);
	lua_pop(L, 1);
	
	return 0;
}

static const luaL_reg Jitvec2math_lib[] = 
{
	TABLE_ENTRY(vec2, equal),
	TABLE_ENTRY(vec2, not_equal),
	TABLE_ENTRY(vec2, dot),
	TABLE_ENTRY(vec2, normalize),
	TABLE_ENTRY(vec2, mult),
	TABLE_ENTRY(vec2, scale),
	TABLE_ENTRY(vec2, accum_scale),
	TABLE_ENTRY(vec2, div),
	TABLE_ENTRY(vec2, sub),
	TABLE_ENTRY(vec2, accum_sub),
	TABLE_ENTRY(vec2, add),
	TABLE_ENTRY(vec2, accum_add),
	TABLE_ENTRY(vec2, mag_sqr),
	TABLE_ENTRY(vec2, mag),
	TABLE_ENTRY(vec2, negate),
	TABLE_ENTRY(vec2, max),
//	TABLE_ENTRY(vec2, min),
	TABLE_ENTRY(vec2, lerp),
	{NULL, NULL}
};

static const luaL_reg Jitvec3math_lib[] = 
{
	TABLE_ENTRY(vec3, equal),
	TABLE_ENTRY(vec3, not_equal),
	TABLE_ENTRY(vec3, mult),
	TABLE_ENTRY(vec3, scale),
	TABLE_ENTRY(vec3, accum_scale),
	TABLE_ENTRY(vec3, div),
	TABLE_ENTRY(vec3, sub),
	TABLE_ENTRY(vec3, accum_sub),
	TABLE_ENTRY(vec3, add),
	TABLE_ENTRY(vec3, accum_add),
	TABLE_ENTRY(vec3, madd),
	TABLE_ENTRY(vec3, mag_sqr),
	TABLE_ENTRY(vec3, mag),
	TABLE_ENTRY(vec3, negate),
	TABLE_ENTRY(vec3, cross),
	TABLE_ENTRY(vec3, dot),
	TABLE_ENTRY(vec3, reflect),
	TABLE_ENTRY(vec3, normal),
	TABLE_ENTRY(vec3, normalize),
	TABLE_ENTRY(vec3, orthogonalize),
	TABLE_ENTRY(vec3, orthonormalize),
	TABLE_ENTRY(vec3, max),
	TABLE_ENTRY(vec3, min),
	TABLE_ENTRY(vec3, lerp),
	TABLE_ENTRY(vec3, cubemap_normal),
	TABLE_ENTRY(vec3, intersect_line_sphere),
	TABLE_ENTRY(vec3, axisx_from_quat),
	TABLE_ENTRY(vec3, axisy_from_quat),
	TABLE_ENTRY(vec3, axisz_from_quat),
	TABLE_ENTRY(vec3, transform_axisangle),
	TABLE_ENTRY(vec3, mult_mat3),
	TABLE_ENTRY(vec3, centroid3),
	TABLE_ENTRY(vec3, centroid4),
	TABLE_ENTRY(vec3, centroid4_weight),
	{NULL, NULL}
};

static const luaL_reg Jitvec4math_lib[] = 
{
	TABLE_ENTRY(vec4, equal),
	TABLE_ENTRY(vec4, not_equal),
	TABLE_ENTRY(vec4, mult),
	TABLE_ENTRY(vec4, scale),
	TABLE_ENTRY(vec4, accum_scale),
	TABLE_ENTRY(vec4, div),
	TABLE_ENTRY(vec4, sub),
	TABLE_ENTRY(vec4, accum_sub),
	TABLE_ENTRY(vec4, add),
	TABLE_ENTRY(vec4, accum_add),
	TABLE_ENTRY(vec4, mag_sqr),
	TABLE_ENTRY(vec4, mag),
	TABLE_ENTRY(vec4, negate),
	TABLE_ENTRY(vec4, dot),
	TABLE_ENTRY(vec4, normalize),
	TABLE_ENTRY(vec4, max),
	TABLE_ENTRY(vec4, min),
	TABLE_ENTRY(vec4, lerp),
	TABLE_ENTRY(vec4, mult_mat4),
	{NULL, NULL}
};

static const luaL_reg Jitquatmath_lib[] = 
{
	TABLE_ENTRY(quat, equal),
	TABLE_ENTRY(quat, not_equal),
	TABLE_ENTRY(quat, scale),
	TABLE_ENTRY(quat, div),
	TABLE_ENTRY(quat, add),
	TABLE_ENTRY(quat, mult),
	TABLE_ENTRY(quat, dot),
	TABLE_ENTRY(quat, mag_sqr),
	TABLE_ENTRY(quat, mag),
	TABLE_ENTRY(quat, negate),
	TABLE_ENTRY(quat, normalize),
	TABLE_ENTRY(quat, max),
	TABLE_ENTRY(quat, min),
	TABLE_ENTRY(quat, from_mat3),
	TABLE_ENTRY(quat, from_mat4),
	TABLE_ENTRY(quat, from_axisangle),
	TABLE_ENTRY(quat, conj),
	TABLE_ENTRY(quat, slerp),
	TABLE_ENTRY(quat, from_euler),
	TABLE_ENTRY(quat, x_axis),
//	TABLE_ENTRY(quat, trackball),
	{NULL, NULL}
};


static const luaL_reg Jitmat3math_lib[] = 
{
	TABLE_ENTRY(mat3, print),
	TABLE_ENTRY(mat3, get_row),
	TABLE_ENTRY(mat3, set_row),
	TABLE_ENTRY(mat3, get_col),
	TABLE_ENTRY(mat3, set_col),
	
	TABLE_ENTRY(mat3, add),
	TABLE_ENTRY(mat3, accum_add),
	TABLE_ENTRY(mat3, accum_scale),
	TABLE_ENTRY(mat3, accum_sub),
	TABLE_ENTRY(mat3, mult),
	TABLE_ENTRY(mat3, get_transpose),
	TABLE_ENTRY(mat3, transpose),
	TABLE_ENTRY(mat3, mult_vec3),
	TABLE_ENTRY(mat3, from_axisangle),
	TABLE_ENTRY(mat3, from_uv),
	TABLE_ENTRY(mat3, determinant),
	TABLE_ENTRY(mat3, get_inverse),
	TABLE_ENTRY(mat3, negate),
	TABLE_ENTRY(mat3, from_mat4),
	TABLE_ENTRY(mat3, from_quat),
/*	TABLE_ENTRY(mat3, tangent_basis),*/
	{NULL, NULL}
};

static const luaL_reg Jitmat4math_lib[] = 
{
	TABLE_ENTRY(mat4, print),
	TABLE_ENTRY(mat4, get_row),
	TABLE_ENTRY(mat4, set_row),
	TABLE_ENTRY(mat4, get_col),
	TABLE_ENTRY(mat4, set_col),
	TABLE_ENTRY(mat4, mult_vec4),
	TABLE_ENTRY(mat4, accum_add),
	TABLE_ENTRY(mat4, add),
	TABLE_ENTRY(mat4, mult),
	TABLE_ENTRY(mat4, transpose),
	TABLE_ENTRY(mat4, get_transpose),
	TABLE_ENTRY(mat4, get_inverse),
	TABLE_ENTRY(mat4, get_inverse_rot_trans),
	TABLE_ENTRY(mat4, look_at),
	TABLE_ENTRY(mat4, frustum),
	TABLE_ENTRY(mat4, perspective),
	TABLE_ENTRY(mat4, ortho),
	TABLE_ENTRY(mat4, from_quat),
	TABLE_ENTRY(mat4, from_axisangle),
	TABLE_ENTRY(mat4, from_uv),
	TABLE_ENTRY(mat4, from_mat3),
	TABLE_ENTRY(mat4, set_scale),
	TABLE_ENTRY(mat4, get_scale),
	TABLE_ENTRY(mat4, set_translation),
	TABLE_ENTRY(mat4, get_translation),
	TABLE_ENTRY(mat4, negate),
	{NULL, NULL}
};

LVECMATH_API int luaopen_vecmath(lua_State* L)
{
	luaL_register(L, JITVEC2MATH, Jitvec2math_lib);
	luaL_register(L, JITVEC3MATH, Jitvec3math_lib);
	luaL_register(L, JITVEC4MATH, Jitvec4math_lib);
	luaL_register(L, JITQUATMATH, Jitquatmath_lib);
	luaL_register(L, JITMAT3MATH, Jitmat3math_lib);
	luaL_register(L, JITMAT4MATH, Jitmat4math_lib);
	
	return 6;
}