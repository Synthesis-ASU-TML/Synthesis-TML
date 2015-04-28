/* 
	jit.gl.lua
*/

#include "jit.common.h"
#include "max.jit.mop.h"
#include "jit.gl.h"

#define MAX_OUT			1024
#define MAX_INLETS		8
#define MAX_OUTLETS		8

typedef void * t_max_jit_gl_outlet;
typedef void * t_max_jit_gl_proxy;

typedef struct _max_jit_gl_lua 
{
	t_object				ob;
	void					*obex;
	t_max_jit_gl_proxy		*data_in;
	long					inlet_num;
	t_max_jit_gl_outlet		*data_out;
	t_atom					*data;
	long					num_inlets;
	long					num_outlets;
	t_symbol				*lua_unique_name;
} t_max_jit_gl_lua;

t_jit_err jit_gl_lua_init(void); 

void *max_jit_gl_lua_new(t_symbol *s, long argc, t_atom *argv);
void max_jit_gl_lua_free(t_max_jit_gl_lua *x);

void max_jit_gl_lua_loadbang(t_max_jit_gl_lua *x);
void max_jit_gl_lua_float(t_max_jit_gl_lua *x, double val);
void max_jit_gl_lua_int(t_max_jit_gl_lua *x, long val);
void max_jit_gl_lua_list(t_max_jit_gl_lua *x, t_symbol *s, short argc, t_atom *argv);
void max_jit_gl_lua_output_list(t_max_jit_gl_lua *x, short outlet, short argc, t_atom *argv);
void max_jit_gl_lua_anything(t_max_jit_gl_lua *x, t_symbol *message, short argc, t_atom *argv);

//registration / notification
void max_jit_gl_lua_notify(t_max_jit_gl_lua *x, t_symbol *s, t_symbol *msg, t_object *sender, void *data);

void *max_jit_gl_lua_class;

	
void main(void)
{	
	void *p,*q;
	
	jit_gl_lua_init();	
	setup(&max_jit_gl_lua_class, max_jit_gl_lua_new, (method)max_jit_gl_lua_free, (short)sizeof(t_max_jit_gl_lua), 
		0L, A_GIMME, 0);

	p = max_jit_classex_setup(calcoffset(t_max_jit_gl_lua,obex));
	q = jit_class_findbyname(gensym("jit_gl_lua"));
    max_jit_classex_standard_wrap(p,q,0);
	
//	addmess((method)object_register,				"register", A_CANT, 0L); //can register
	addmess((method)max_jit_gl_lua_anything,		"anything", A_GIMME, 0); 
	addmess((method)max_jit_ob3d_assist,			"assist", A_CANT,0);
	addmess((method)max_jit_gl_lua_loadbang,		"loadbang", 0);
	addfloat((method)max_jit_gl_lua_float);
	addint((method)max_jit_gl_lua_int);
	addmess((method)max_jit_gl_lua_list,			"list", A_GIMME, 0);
	addmess((method)max_jit_gl_lua_output_list,		"out_list", A_CANT, 0);
	
	// add methods for 3d drawing
    max_ob3d_setup();
}

void max_jit_gl_lua_loadbang(t_max_jit_gl_lua *x)
{
	void *jitobj;
	
	jitobj = max_jit_obex_jitob_get(x);
	jit_object_method(jitobj, gensym("loadbang"));
}

void max_jit_gl_lua_notify(t_max_jit_gl_lua *x, t_symbol *s, t_symbol *msg, t_object *sender, void *data)
{
	post("x: %p  s: %s  msg: %s  sender: %p  data: %p", x, s, msg, sender, data);
}

void max_jit_gl_lua_anything(t_max_jit_gl_lua *x, t_symbol *message, short argc, t_atom *argv)
{
	long inlet;
	void *jitobj;

	inlet = max_jit_obex_inletnumber_get(x);
	jitobj = max_jit_obex_jitob_get(x);
//	jit_object_method(jitobj, message, argc, argv);
}

void max_jit_gl_lua_float(t_max_jit_gl_lua *x, double val)
{
	void *jitobj;
	t_atom argv[2];
	
	jit_atom_setsym(argv, gensym("msg_float"));
	jit_atom_setfloat(argv+1, val);
	
	jitobj = max_jit_obex_jitob_get(x);
	jit_object_method(jitobj, gensym("call"), gensym("call"), 2, argv);
}

void max_jit_gl_lua_int(t_max_jit_gl_lua *x, long val)
{
	void *jitobj;
	t_atom argv[2];
	
	jit_atom_setsym(argv, gensym("msg_int"));
	jit_atom_setlong(argv+1, val);
	
	jitobj = max_jit_obex_jitob_get(x);
	jit_object_method(jitobj, gensym("call"), gensym("call"), 2, argv);
}

void max_jit_gl_lua_list(t_max_jit_gl_lua *x, t_symbol *s, short argc, t_atom *argv)
{
	void *jitobj;
	
	jitobj = max_jit_obex_jitob_get(x);
	jit_object_method(jitobj, gensym("call_list"), _jit_sym_list, argc, argv);
	
//	jit_atom_setlong(x->data, 1);
//	jit_atom_setlong(x->data+1, 10101);
	
	//outlet_anything(x->data_out, _jit_sym_list, 2, x->data);
}

void max_jit_gl_lua_output_list(t_max_jit_gl_lua *x, short outlet, short argc, t_atom *argv)
{
	memcpy(x->data, argv, argc*sizeof(t_atom));
	
	if(outlet < x->num_outlets && outlet >= 0) {
		if(argc && argv[0].a_type == A_SYM) {
			outlet_anything(x->data_out[outlet], jit_atom_getsym(argv), argc-1, (x->data)+1);
		}
		else {
			outlet_anything(x->data_out[outlet], _jit_sym_list, argc, x->data);
		}
	}
	else {
		error("trying to index outlet %d, does not exist", outlet);
	}
}

void max_jit_gl_lua_free(t_max_jit_gl_lua *x)
{
	max_jit_ob3d_detach(x);
	jit_object_free(max_jit_obex_jitob_get(x));
	jit_freebytes(x->data, sizeof(t_atom)*MAX_OUT);
	freebytes(x->data_out, sizeof(t_max_jit_gl_outlet) * x->num_outlets);
	freebytes(x->data_in, sizeof(t_max_jit_gl_proxy) * (x->num_inlets - 1));
	max_jit_obex_free(x);
}

void *max_jit_gl_lua_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_gl_lua *x;
	void *o;
	long attrstart;
	t_symbol *dest_name_sym = _jit_sym_nothing;
	int inlets, outlets;
	int i;

	if (x=(t_max_jit_gl_lua *)max_jit_obex_new(max_jit_gl_lua_class,gensym("jit_gl_lua"))) {
		//get normal args
		attrstart = max_jit_attr_args_offset(argc,argv);
		if (attrstart&&argv) 
		{
			jit_atom_arg_getsym(&dest_name_sym, 0, attrstart, argv);
		}
		
		if (o=jit_object_new(gensym("jit_gl_lua"), dest_name_sym)) {
			max_jit_obex_jitob_set(x, o);
			max_jit_obex_dumpout_set(x, outlet_new(x,NULL));
			max_jit_attr_args(x, argc, argv);	
			
			inlets = CLAMP(jit_attr_getlong(o, gensym("inlets")), 1, MAX_INLETS);
			outlets = CLAMP(jit_attr_getlong(o, gensym("outlets")), 1, MAX_OUTLETS);
			
			x->lua_unique_name = jit_attr_getsym(o, gensym("lua_unique_name"));
			jit_object_method(o, gensym("max_wrapper"), x);
			
			//object_method(x, gensym("register"), x->lua_unique_name);
			
			// attach the jit object's ob3d to a new outlet for sending drawing messages.	
			max_jit_ob3d_attach(x, (t_jit_object*)o, outlet_new(x, "jit_matrix"));

			x->num_outlets = outlets;
			x->data_out = (t_max_jit_gl_outlet *)getbytes(sizeof(t_max_jit_gl_outlet) * outlets);
			
			for (i=outlets-1; i >= 0; i--)
				x->data_out[i] = (t_max_jit_gl_outlet)outlet_new((t_object *)x, 0);
				
			x->num_inlets = inlets;
			if (inlets > 1) {
				x->data_in = (t_max_jit_gl_proxy *)getbytes(sizeof(t_max_jit_gl_proxy) * (inlets - 1));
				for (i=inlets-2; i >= 0; i--)
					x->data_in[i] = (t_max_jit_gl_proxy)proxy_new(x, i+1, &(x->inlet_num));
			}
			
			x->data = jit_getbytes(sizeof(t_atom)*MAX_OUT);
		} else {
			error("jit.gl.lua: could not allocate object");
			freeobject(x);
		}
	}
	return (x);
}