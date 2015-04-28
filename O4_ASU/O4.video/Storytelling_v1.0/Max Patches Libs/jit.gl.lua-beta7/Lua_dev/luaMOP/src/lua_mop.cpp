/*
 *  lua_MOP.c
 *  lua_package
 *
 *  Created by Wesley Smith on 3/05/07.
 *  Copyright 2007 __MyCompanyName__. All rights reserved.
 *
 */

#ifdef __cplusplus
extern "C" {
#endif

#include "lua.h"
#include "lauxlib.h"
#include "jit.common.h"

#ifdef __cplusplus
}
#endif


#include <map>
#include <string>

static std::map<t_jit_err, std::string> error_map;

void init_error_map()
{
	error_map[JIT_ERR_NONE] = "JIT_ERR_NONE";
	error_map[JIT_ERR_GENERIC] = "JIT_ERR_GENERIC";
	error_map[JIT_ERR_INVALID_OBJECT] = "JIT_ERR_INVALID_OBJECT";
	error_map[JIT_ERR_OBJECT_BUSY] = "JIT_ERR_OBJECT_BUSY";
	error_map[JIT_ERR_OUT_OF_MEM] = "JIT_ERR_OUT_OF_MEM";
	error_map[JIT_ERR_INVALID_PTR] = "JIT_ERR_INVALID_PTR";
	error_map[JIT_ERR_DUPLICATE] = "JIT_ERR_DUPLICATE";
	error_map[JIT_ERR_OUT_OF_BOUNDS] = "JIT_ERR_OUT_OF_BOUNDS";
	error_map[JIT_ERR_INVALID_INPUT] = "JIT_ERR_INVALID_INPUT";
	error_map[JIT_ERR_INVALID_OUTPUT] = "JIT_ERR_INVALID_OUTPUT";
	error_map[JIT_ERR_MISMATCH_TYPE] = "JIT_ERR_MISMATCH_TYPE";
	error_map[JIT_ERR_MISMATCH_PLANE] = "JIT_ERR_MISMATCH_PLANE";
	
	error_map[JIT_ERR_MISMATCH_DIM] = "JIT_ERR_MISMATCH_DIM";
	error_map[JIT_ERR_MATRIX_UNKNOWN] = "JIT_ERR_MATRIX_UNKNOWN";
	error_map[JIT_ERR_SUPPRESS_OUTPUT] = "JIT_ERR_SUPPRESS_OUTPUT";
}


#ifdef __cplusplus
extern "C" {
#endif

#define LUA_MOP_LIBNAME	"mop"
#define TABLE_ENTRY(PREFIX, NAME)		{ #NAME, PREFIX##_##NAME }

/*
	Macros and typedefs for Jitter Lua stuff
*/
#define MATRIX_META	"C74_matrix_jit"
#define JITOBJ_META	"C74_jit"
#define JITOBJ		"jit"
typedef void*		Jitobj_ptr;
typedef Jitobj_ptr	Jitobj;

/*
	Useful macros for getting parameters from a table
*/
#define get_param(name, func)	lua_pushstring(L, #name);				\
								lua_gettable(L, 1);						\
								if(!lua_isnil(L, -1)) {					\
									name = func(L, -1);					\
								}										\
								lua_pop(L, 1);


#define get_int_param(name)			get_param(name, lua_tointeger)
#define get_float_param(name)		get_param(name, lua_tonumber)


#define get_array_param(name, size, func)	lua_pushstring(L, #name);				\
											lua_gettable(L, 1);						\
											if(lua_istable(L, -1)) {				\
												int i=0;							\
												for(i=0; i < size; i++) {			\
													lua_rawgeti(L, -1, i+1);		\
													name[i] = func(L, -1);			\
													lua_pop(L, 1);					\
												}									\
											}										\
											lua_pop(L, 1);

#define get_int_array_param(name, size)	get_array_param(name, size, lua_tointeger)
#define get_float_array_param(name, size)	get_array_param(name, size, lua_tonumber)


/*
	Cached symbols
*/
static t_symbol *ps_luamop_jit_matrix_wrapper = gensym("jit_matrix_wrapper");
static t_symbol *ps_luamop_getmatrix = gensym("getmatrix");

/*
	Handy utility function for getting the matrix object from Lua
*/
Jitobj toMatrix(lua_State *L, int index)
{
	Jitobj obj = NULL;
	
	if(lua_type(L, index) == LUA_TSTRING) {
		//find matrix based on name
		obj = jit_object_findregistered(gensym( (char *)lua_tostring(L, index) ));
	}
	else if(lua_isuserdata(L, index)) {
		Jitobj *p_obj = (Jitobj *)lua_touserdata(L, index);
		if (p_obj == NULL)
			luaL_typerror(L, index, JITOBJ);
		
		obj = *p_obj;
	}
	
	if(!obj)
		return NULL;
	
	//get real matrix not just the wrapper
	if(jit_object_classname(obj) == ps_luamop_jit_matrix_wrapper) {
		obj = jit_object_method(obj, ps_luamop_getmatrix);
	}

	return obj;
}


/***************************************************************
*
*	This stuff is what is needed to define operations on a set of matrices.
*	Here we defined operations for 1(i)nput and 1(o)utput.
*	If you need more than 1 input or output, copy this section and follow the pattern.
*	You will also have to get your functions into Lua.  See luaopen_mop for how to do this
*/
static int mop_matrix_calc_1i_1o(lua_State *L);

void calc_ndim_solarize(lua_State *L, long dimcount, long *dim, long planecount, 
						t_jit_matrix_info *in1_minfo, char *bip1, 
						t_jit_matrix_info *out1_minfo, char *bop1);

void calc_ndim_blackhole(lua_State *L, long dimcount, long *dim, long planecount, 
						t_jit_matrix_info *in1_minfo, char *bip1, 
						t_jit_matrix_info *out1_minfo, char *bop1);

//function pointer typedefs for sticking in structs
typedef void (*calc_ndim_1i_1o)(lua_State *L, long dimcount, long *dim, long planecount, 
								t_jit_matrix_info *in1_minfo, char *bip1, 
								t_jit_matrix_info *out1_minfo, char *bop1);


//structs for holding functions and other daya
typedef struct _calc_ndim_1i_1o {
	const char			*name;		//name of function
	calc_ndim_1i_1o		func;		//matrix processing function
} t_calc_ndim_1i_1o;


//1i 1o functions
static const t_calc_ndim_1i_1o calc_ndim_1i_1o_funcs[] =  
{
	{"blackhole", calc_ndim_blackhole},
	{"solarize", calc_ndim_solarize},
	{NULL, NULL}
};

/****************************************************************/

// Expected arguments and their indices:
// 1: table of data at index
// 2: input matrix
// 3: output matrix
static int mop_matrix_calc_1i_1o(lua_State *L)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, out1_savelock;
	t_jit_matrix_info in1_minfo, out1_minfo;
	char *in1_bp, *out1_bp;
	long i, dimcount, planecount, dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *out1_matrix;
	
	in1_matrix 	= toMatrix(L, 2);
	out1_matrix = toMatrix(L, 3);

	if (in1_matrix && out1_matrix) {
		in1_savelock = (long) jit_object_method(in1_matrix, _jit_sym_lock, 1);
		out1_savelock = (long) jit_object_method(out1_matrix, _jit_sym_lock, 1);
		
		jit_object_method(in1_matrix, _jit_sym_getinfo, &in1_minfo);
		
		jit_object_method(out1_matrix, _jit_sym_setinfo, &in1_minfo);	//make output matrix same size as input
		jit_object_method(out1_matrix, _jit_sym_getinfo, &out1_minfo);
		
		jit_object_method(in1_matrix,  _jit_sym_getdata, &in1_bp);
		jit_object_method(out1_matrix, _jit_sym_getdata, &out1_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out1_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//get dimensions/planecount
		dimcount   = out1_minfo.dimcount;
		planecount = out1_minfo.planecount;			
		
		for (i=0;i<dimcount;i++) {
			dim[i] = out1_minfo.dim[i];
		}
		
		{
			int index = lua_tointeger(L, lua_upvalueindex(1));
			calc_ndim_1i_1o_funcs[index].func(L, dimcount, dim, planecount, 
											&in1_minfo, in1_bp, 
											&out1_minfo, out1_bp);
		}
										
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out1_matrix, _jit_sym_lock, out1_savelock);
	jit_object_method(in1_matrix, _jit_sym_lock, in1_savelock);
	
	//report error if any
	if(err) {
		lua_getglobal(L, "print");
		if(!lua_isnil(L, -1)) {
			lua_pushfstring(L, " error mop_matrix_calc_1i_1o: %s",  error_map[err].data());
			lua_call(L, 1, 0);
		}
		else {
			lua_pop(L, 1);
		}
	}

	return 0;
}

void calc_ndim_solarize(lua_State *L, long dimcount, long *dim, long planecount, 
						t_jit_matrix_info *in1_minfo, char *bip1, 
						t_jit_matrix_info *out1_minfo, char *bop1)
{
	int i, j, k;
	uchar *cip1, *cop1;
	uchar maxthresh = 200;
	uchar maxresult = 200;
	uchar minthresh = 60;
	uchar minresult = 120;
	
	//get table parameters from index 1
	if(lua_istable(L, 1)) {
		get_int_param(maxthresh)
		get_int_param(maxresult)
		get_int_param(minthresh)
		get_int_param(minresult)
	}
	
	if (dimcount<1) return; //safety
	
	switch(dimcount)
	{
		case 1:
			dim[1]=1;
			
		case 2:
			if(in1_minfo->type==_jit_sym_char)
			{
				for(j=0; j < dim[1]; j++) {
					cip1 = (uchar *)(bip1 + j*in1_minfo->dimstride[1]);
					cop1 = (uchar *)(bop1 + j*out1_minfo->dimstride[1]);
					
					for(i=0; i < dim[0]; i++) {
						for(k=0; k < planecount; k++) {
							if(*cip1 > maxthresh)
								*cop1 = maxresult;
							else if(*cip1 < minthresh)
								*cop1 = minresult;
							else
								*cop1 = *cip1;
							
							cip1++;
							cop1++;
						}
					}
				}
			}
			else if(in1_minfo->type==_jit_sym_long)
			{
				//nothing for now
			}
			else if(in1_minfo->type==_jit_sym_float32)
			{
				//nothing for now
			}
			else if(in1_minfo->type==_jit_sym_float64)
			{
				//nothing for now
			}
			
		default:
			
			break;
	}
}

static double x[] = { 0.16273910604158,
					4873031.9629221,
					1.4591723580927e+14,
					4.3693207572255e+21,
					1.3083419360051e+29,
					3.9176767205266e+36};

double RandomFloat (void) 
{
	double c;
	c = (double) 2111111111.0 * x[3] + 1492.0 * (x[3]=x[2]) + 1776.0*(x[2]=x[1]) + 5115.0*(x[1]=x[0]) + x[4];
	x[4] = jit_math_floor(c);
	x[0] = c - x[4];
	x[4] = x[4] * (1. / (65536. * 65536.));
	return x[0];
}

void GenerateParticle(float *particle, float *emitter, float velocity)
{
	particle[0] = emitter[0] + (RandomFloat() * 0.2f - 0.1f);
	particle[1] = emitter[1] + (RandomFloat() * 0.2f - 0.1f);
	particle[2] = emitter[2] + (RandomFloat() * 0.2f - 0.1f);
	
	particle[3] = RandomFloat()*velocity - velocity/2.;
	particle[4] = RandomFloat()*velocity - velocity/2.;
	particle[5] = RandomFloat()*velocity - velocity/2.;
}

void calc_ndim_blackhole(lua_State *L, long dimcount, long *dim, long planecount, 
						t_jit_matrix_info *in1_minfo, char *bip1, 
						t_jit_matrix_info *out1_minfo, char *bop1)
{
	int i, j;
	float *fip, *fop;
	float attractor[] = {0., 0., 0.};
	float emitter[] = {1., 0., 0.};
	float timestep = 0.1;
	float max_distance = 10;
	float min_distance = 0.01;
	float gravity = 0.4;
	float velocity = 1.0;
	float maxDistance, minDistance, distanceSQ, distance;
	long incolspan, inrowspan;
	long outcolspan, outrowspan;
	
	//get table parameters from index 1
	if(lua_istable(L, 1)) {
		get_float_array_param(attractor, 3)
		get_float_array_param(emitter, 3)
		get_float_param(timestep)
		get_float_param(max_distance)
		get_float_param(min_distance)
		get_float_param(gravity)
		get_float_param(velocity)
	}
	
	maxDistance = max_distance * max_distance;
	minDistance = min_distance * min_distance;
	
	if (dimcount<1) return; //safety
	
	switch(dimcount)
	{
		case 1:
			dim[1]=1;
			
		case 2:
			if(in1_minfo->type==_jit_sym_char)
			{
				//nothing for now
			}
			else if(in1_minfo->type==_jit_sym_long)
			{
				//nothing for now
			}
			else if (in1_minfo->type==_jit_sym_float32)
			{
				incolspan = in1_minfo->dimstride[0];
				inrowspan = in1_minfo->dimstride[1];
				outcolspan = out1_minfo->dimstride[0];
				outrowspan = out1_minfo->dimstride[1];
					
				for(i=0; i < dim[1]; i++) {
					fip = (float *)(bip1 + i*inrowspan);
					fop = (float *)(bop1 + i*outrowspan);
					
					for(j=0; j < dim[0]; j++) {					
						//Attractor - P = -Relative Pos
						fop[6] = (attractor[0] - fip[0]);
						fop[7] = (attractor[1] - fip[1]);
						fop[8] = (attractor[2] - fip[2]);
						
						distanceSQ = fop[6]*fop[6] + fop[7]*fop[7] + fop[8]*fop[8];

						if(distanceSQ > maxDistance || distanceSQ < minDistance) {
							GenerateParticle(fop, emitter, velocity);
						}
						else {
							distance = jit_math_sqrt(distanceSQ);
							
							//Ft = -Relative Pos/distance * G/distanceSQ
							fop[6] = fop[6]/distance * gravity/distanceSQ;
							fop[7] = fop[7]/distance * gravity/distanceSQ;
							fop[8] = fop[8]/distance * gravity/distanceSQ;
					
							//Vt = Vt-1 + Ft*dt
							fop[3] = (fip[3] + timestep * fop[6]);
							fop[4] = (fip[4] + timestep * fop[7]);
							fop[5] = (fip[5] + timestep * fop[8]);
							
							//Pt = Pt-1 + Vt*dt
							fop[0] = fip[0] + fop[3]*timestep;
							fop[1] = fip[1] + fop[4]*timestep;
							fop[2] = fip[2] + fop[5]*timestep;
						}

						
						fip += planecount;
						fop += planecount;
					}
				}
			}
			else if(in1_minfo->type==_jit_sym_float64)
			{
				//nothing for now
			}
			
		default:
			
			break;
	}
}

//no library functions
static const luaL_Reg moplib[] =
{
	{NULL, NULL}
};

extern int luaopen_mop(lua_State *L)
{
	luaL_register(L, LUA_MOP_LIBNAME, moplib);
	init_error_map();
	
	{
		int i=0;
		
		//get the 1i 1o functions into Lua
		//if you're defining a new class of functions,
		//copy this chunk
		while(calc_ndim_1i_1o_funcs[i].name) {
			lua_pushstring(L, calc_ndim_1i_1o_funcs[i].name);
			lua_pushinteger(L, i);
			lua_pushcclosure(L, mop_matrix_calc_1i_1o, 1);
			lua_settable(L, -3);
			i++;
		}
	}
	
	return 1;
}

#ifdef __cplusplus
}
#endif