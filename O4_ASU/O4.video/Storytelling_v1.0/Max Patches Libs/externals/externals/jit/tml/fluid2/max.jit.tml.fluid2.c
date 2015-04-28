//
//	max.jit.tml.fluid2.c
//						06.06.03	by Yoichiro Serita	(pixelWeight)
//						2007-04-04	Michael Fortin		(same code base)

#include "jit.common.h"
#include "max.jit.mop.h"
#define MAX_OUT 1024

typedef struct _max_jit_tml_fluid2 
{
	t_object		ob;
	void			*obex;
} t_max_jit_tml_fluid2;

t_jit_err jit_tml_fluid2_init(void); 

void *max_jit_tml_fluid2_new(t_symbol *s, long argc, t_atom *argv);
void max_jit_tml_fluid2_mproc(t_max_jit_tml_fluid2 *x, void *mop);
void max_jit_tml_fluid2_free(t_max_jit_tml_fluid2 *x);
void max_jit_tml_fluid2_bang(t_max_jit_tml_fluid2 *x);
void *max_jit_tml_fluid2_class;

t_symbol *ps_getmap;

__attribute__((visibility("default")))
int main(void)
{	
	//long attrflags;
	void *p, *q;
	
	jit_tml_fluid2_init();	
	setup((void*)&max_jit_tml_fluid2_class,
			(method)max_jit_tml_fluid2_new,
			(method)max_jit_tml_fluid2_free, (short)sizeof(t_max_jit_tml_fluid2), 
		0L, A_GIMME, 0);

	p = max_jit_classex_setup(calcoffset(t_max_jit_tml_fluid2,obex));
	q = jit_class_findbyname(gensym("jit_tml_fluid2"));    
    	max_jit_classex_mop_wrap(p,q,MAX_JIT_MOP_FLAGS_OWN_BANG|MAX_JIT_MOP_FLAGS_OWN_OUTPUTMATRIX);
    	max_jit_classex_mop_mproc(p, q, max_jit_tml_fluid2_mproc); // custom mproc
	max_jit_classex_standard_wrap(p,q,0); 	

    	addmess((method)max_jit_mop_assist, "assist", A_CANT,0);
    	
    	// bang method (accept bang)
    	addbang((method)max_jit_tml_fluid2_bang);
    
    	ps_getmap = gensym("getmap");
	
	return 0;
}

// bang method
void max_jit_tml_fluid2_bang(t_max_jit_tml_fluid2 *x)
{
	max_jit_mop_outputmatrix(x);
}


void max_jit_tml_fluid2_mproc(t_max_jit_tml_fluid2 *x, void *mop)
{
	t_jit_err err;
	void *o;
	
	o=max_jit_obex_jitob_get(x);
	if (err=(t_jit_err) jit_object_method(
		o,
		_jit_sym_matrix_calc,
		jit_object_method(mop,_jit_sym_getinputlist),
		jit_object_method(mop,_jit_sym_getoutputlist))) 
	{
		jit_error_code(x,err); 
	} else {
		// bang method
		max_jit_tml_fluid2_bang(x);
	}
}

void max_jit_tml_fluid2_free(t_max_jit_tml_fluid2 *x)
{
	max_jit_mop_free(x);
	jit_object_free(max_jit_obex_jitob_get(x));
	
	max_jit_obex_free(x);
}

void *max_jit_tml_fluid2_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_tml_fluid2 *x;
	void *o;

	if (x=(t_max_jit_tml_fluid2 *)max_jit_obex_new(max_jit_tml_fluid2_class,gensym("jit_tml_fluid2")))
	{
		if (o=jit_object_new(gensym("jit_tml_fluid2")))
		{			
			// create matrix outlet?
			max_jit_mop_setup_simple(x,o,argc,argv);
			
			max_jit_attr_args(x,argc,argv);
		} else {
			error("jit.change: could not allocate object");
			freeobject((void*)x);
		}
	}
	return (x);
}