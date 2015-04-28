#include "jit.submatrix.wrapper.h"
#include "jit.common.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_strings.h"

typedef struct _jit_submatrix_wrapper
{
	t_object			ob;
	void				*obex;
	t_symbol 			*name;
	void				*submatrix;
	void				*out_matrix;
} t_jit_submatrix_wrapper;

void jit_submatrix_wrapper_wrapit(t_class *c);

void *jit_submatrix_wrapper_new();
void jit_submatrix_wrapper_free(t_jit_submatrix_wrapper *x);
t_max_err jit_submatrix_wrapper_attrwrap_set(t_jit_submatrix_wrapper *x, void *attr, long ac, t_atom *av);
t_max_err jit_submatrix_wrapper_attrwrap_get(t_jit_submatrix_wrapper *x, void *attr, long *ac, t_atom **av);
t_max_err jit_submatrix_wrapper_methodwrap(t_jit_submatrix_wrapper *x, t_symbol *s, long argc, t_atom *argv, t_atom *rv);

t_max_err jit_submatrix_wrapper_frommatrix(t_jit_submatrix_wrapper *x, t_symbol *s, long argc, t_atom *argv, t_atom *rv);
void *jit_submatrix_wrapper_getsubmatrix(t_jit_submatrix_wrapper *x);

t_jit_err jit_submatrix_wrapper_setcell(t_jit_submatrix_wrapper *x, t_symbol *s, long argc, t_atom *argv);

static t_symbol *ps_preset,*ps_assist,*ps_op,*ps_nobox,*ps_atomarray,*ps_jit_submatrix_wrapper;
static t_symbol *ps_usercanset,*ps_usercanget;

t_class *_jit_submatrix_wrapper_class=NULL;

void jit_submatrix_wrapper_init(void)
{
	t_class *c;
	long attrflags;
	void *attr;
	
	load_bundle(gensym("jit_submatrix"), gensym("jit.submatrix"));

	c = class_new("jit_submatrix_wrapper", (method)jit_submatrix_wrapper_new, (method)jit_submatrix_wrapper_free, (short)sizeof(t_jit_submatrix_wrapper), 
		(method)0L, A_GIMME, 0);		
	class_obexoffset_set(c, calcoffset(t_jit_submatrix_wrapper, obex));
	class_addmethod(c,(method)jit_submatrix_wrapper_frommatrix,		"frommatrix", 	A_GIMMEBACK, 0);
 	class_addmethod(c,(method)jit_submatrix_wrapper_getsubmatrix,	"getsubmatrix", A_CANT, 0);
	class_addmethod(c,(method)jit_submatrix_wrapper_setcell,		"setcell",		A_DEFER_LOW, 0L);
	
 	// a little bit confused below using jitter attributes, but should 
 	// work now that jitter is obex based
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW | JIT_ATTR_SET_OPAQUE;    
	attr = jit_object_new(_jit_sym_jit_attr_offset,"name",_jit_sym_symbol,attrflags,
		(method)0L,(method)0L, calcoffset(t_jit_submatrix_wrapper,name));
	class_addattr(c,attr);
   
	// symbols needed in the wrapit call
	ps_assist 		= gensym("assist");
	ps_preset 		= gensym("preset");
	ps_op 			= gensym("op");
	ps_nobox 		= gensym("nobox");
	ps_atomarray 	= gensym("atomarray");
	ps_jit_submatrix_wrapper = gensym("jit_submatrix_wrapper");
	ps_usercanset	= gensym("usercanset");
	ps_usercanget	= gensym("usercanget");

	// wrap the jit_matrix class (attributes/methods/operators)
	jit_submatrix_wrapper_wrapit(c);
	
	class_register(gensym("jitter"),c);	
	_jit_submatrix_wrapper_class = c;	
}

void jit_submatrix_wrapper_wrapit(t_class *c)
{
	t_class *jc;
	long attrcount=0;
	t_symbol **attrarray=NULL;
	long canset,canget,flags;
	t_messlist *mp;
	t_messlist *mp2;
	long i;
	void *attr=NULL;

	jc = class_findbyname(gensym("jitter"), gensym("jit_submatrix"));
	if (!jc) {
		error("jit_submatrix_wrapper: could not find jit_submatrix class");
		return;
	}
	 
	// for each public attribute add a wrapper attribute
	hashtab_getkeys((t_hashtab *)jc->c_attributes,&attrcount,&attrarray);
	for (i=0;i<attrcount;i++) {
		if (attr=class_attr_get(jc,attrarray[i])) {			
			canset = (long) object_method(attr,ps_usercanset);
			canget = (long) object_method(attr,ps_usercanget);
			if (canset||canget) {
				flags = 0;
				if (!canset) flags |= ATTR_SET_OPAQUE_USER;
				if (!canget) flags |= ATTR_GET_OPAQUE_USER;
				attr = attribute_new(attrarray[i]->s_name,object_method(attr,_jit_sym_gettype),flags,
					(method)jit_submatrix_wrapper_attrwrap_get,(method)jit_submatrix_wrapper_attrwrap_set);
				class_addattr(c,attr);
			}
		}
	}
	freebytes(attrarray, sizeof(t_symbol *)*attrcount);
	 
	// for each typed method add wrapper method
	if (jc->c_messcount>0) {
		for (i=0,mp=jc->c_messlist+1;i<jc->c_messcount-1;i++,mp++) {
			if (mp->m_type[0]==A_CANT)	{
				if (!(mp2=class_typedwrapper_get(jc,mp->m_sym)))
					mp2 = mp;
			} else {
				mp2 = mp;
			}			
			if (mp2->m_sym && (mp2->m_type[0]!=A_CANT) && (mp2->m_sym!=ps_assist) && (mp2->m_sym!=ps_preset)) {
				class_addmethod(c,(method)jit_submatrix_wrapper_methodwrap, mp2->m_sym->s_name, A_GIMMEBACK, 0L);
			}
		}
	}	
}

t_max_err jit_submatrix_wrapper_attrwrap_set(t_jit_submatrix_wrapper *x, void *attr, long ac, t_atom *av)
{
	if (x->submatrix&&attr) {
		//MAKE THIS FUNCTION AND EXPORT FOR 1.5 GUARANTEE
		//jit_object_attr_setvalueof(x->matrix,object_method(attr,_jit_sym_getname),ac,av); 
		return object_attr_setvalueof(x->submatrix,object_method(attr,_jit_sym_getname),ac,av); 
	}
	return MAX_ERR_GENERIC;
}

t_max_err jit_submatrix_wrapper_attrwrap_get(t_jit_submatrix_wrapper *x, void *attr, long *ac, t_atom **av)
{
	if (x->submatrix&&attr) {
		//MAKE THIS FUNCTION AND EXPORT FOR 1.5 GUARANTEE
		//return jit_object_attr_getvalueof(x->matrix,object_method(attr,_jit_sym_getname),ac,av);
		return object_attr_getvalueof(x->submatrix,object_method(attr,_jit_sym_getname),ac,av);	
	}
	return MAX_ERR_GENERIC;
}

t_max_err jit_submatrix_wrapper_methodwrap(t_jit_submatrix_wrapper *x, t_symbol *s, long argc, t_atom *argv, t_atom *rv)
{
	t_atom av2[256];
	long i;
	
	if (x->submatrix) {
		for (i=0;i<argc;i++) {
			if ((argv[i].a_type==A_OBJ)&&
				(object_classname((t_object *)argv[i].a_w.w_obj)==ps_jit_submatrix_wrapper)) 
			{
				atom_setobj(av2+i,((t_jit_submatrix_wrapper *)argv[i].a_w.w_obj)->submatrix);				
			} else { 
				av2[i] = argv[i];
			}
		}	
		return object_method_typed(x->submatrix,s,argc,av2,rv);
	}
	return MAX_ERR_GENERIC;
}

t_max_err jit_submatrix_wrapper_frommatrix(t_jit_submatrix_wrapper *x, t_symbol *s, long argc, t_atom *argv, t_atom *rv)
{
	long err;
	t_symbol *name;
	void *o,*p;
	t_matrix_conv_info mcinfo;
	t_jit_matrix_info minfo;
	
	//check if it is a symbol or an object pointer
	//if an object pointer, make sure you grab underlying object
	// for now just support name
			
	if (argc&&argv) {
		if ((name=jit_atom_getsym(argv)) != _jit_sym_nothing) {
			o = jit_object_findregistered(name);
			if (!jit_object_method(o, _jit_sym_class_jit_matrix))
				o = NULL;
		}
		
		if (o) {
			if(x->submatrix) {
				t_jit_linklist *input_list;
				t_jit_linklist *output_list;

				input_list = jit_object_new(_jit_sym_jit_linklist);
				output_list = jit_object_new(_jit_sym_jit_linklist);

				jit_object_method(input_list, _jit_sym_append, o);
				jit_object_method(output_list, _jit_sym_append, x->out_matrix);
			
				jit_object_method(x->submatrix, _jit_sym_matrix_calc,
								input_list, 
								output_list);
					
				jit_object_method(input_list, _jit_sym_chuck);
				jit_object_method(output_list, _jit_sym_chuck);
			}
		} 
	} 	
	// later could return success codes in rv?
	return MAX_ERR_NONE;
}

void *jit_submatrix_wrapper_getsubmatrix(t_jit_submatrix_wrapper *x)
{
	return (void *)x->submatrix;
}

t_jit_err jit_submatrix_wrapper_setcell(t_jit_submatrix_wrapper *x, t_symbol *s, long argc, t_atom *argv)
{
	jit_object_method(x->out_matrix, s, argc, argv);
	return JIT_ERR_NONE;
}

void *jit_submatrix_wrapper_new()
{
	t_jit_submatrix_wrapper *x = NULL;
	t_jit_matrix_info info;
	void *p;

	if (x = (t_jit_submatrix_wrapper *)object_alloc(_jit_submatrix_wrapper_class)) {
		x->name = _jit_sym_nothing;
		x->submatrix = jit_object_new(gensym("jit_submatrix"));
		
		//create jit.submatrix's output matrix
		jit_matrix_info_default(&info);
		info.type = _jit_sym_char;
		info.planecount = 4;
		x->name = jit_symbol_unique();
		x->out_matrix = jit_object_new(_jit_sym_jit_matrix, &info);
		x->out_matrix = jit_object_method(x->out_matrix, _jit_sym_register, x->name);
		
		//Register matrix name
		if(!x->out_matrix) error("could not allocate internal matrix!");
		jit_object_attach(x->name, x);
		
		
		jit_object_method(x->out_matrix, _jit_sym_getinfo, &info);			
		jit_object_method(x->out_matrix, gensym("freedata"));			
		info.flags = JIT_MATRIX_DATA_REFERENCE;
		info.size = 0;	
		p = NULL;
		jit_object_method(x->out_matrix, _jit_sym_setinfo_ex, &info);
		jit_object_method(x->out_matrix, _jit_sym_data, p);
	}

out:		
	return x;
}

void jit_submatrix_wrapper_free(t_jit_submatrix_wrapper *x)
{
	jit_object_detach(x->name, x->out_matrix);
	jit_object_free(x->out_matrix);
	
	if (x->submatrix)
		jit_object_free(x->submatrix);
}