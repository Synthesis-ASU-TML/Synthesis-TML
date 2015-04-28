//
//	max.jit.tml.fakeDepth.c
//						06.06.03	by Yoichiro Serita	(pixelWeight)
//						2007-04-04	Michael Fortin		(same code base)

#include "jit.common.h"
#include "max.jit.mop.h"
#define MAX_OUT 1024

typedef struct _max_jit_tml_fakeDepth 
{
	t_object		ob;
	void			*obex;
	//void			*mapout;			// the right most outlet
	//long			*mapout_buff;		// buffer for the outlet
} t_max_jit_tml_fakeDepth;

t_jit_err jit_tml_fakeDepth_init(void); 

void *max_jit_tml_fakeDepth_new(t_symbol *s, long argc, t_atom *argv);
void max_jit_tml_fakeDepth_mproc(t_max_jit_tml_fakeDepth *x, void *mop);
void max_jit_tml_fakeDepth_free(t_max_jit_tml_fakeDepth *x);
void max_jit_tml_fakeDepth_bang(t_max_jit_tml_fakeDepth *x);
void *max_jit_tml_fakeDepth_class;

t_symbol *ps_getmap;

int main(void)
{	
	//long attrflags;
	void *p, *q;
	
	jit_tml_fakeDepth_init();	
	setup((void*)&max_jit_tml_fakeDepth_class,
			(method)max_jit_tml_fakeDepth_new,
			(method)max_jit_tml_fakeDepth_free, (short)sizeof(t_max_jit_tml_fakeDepth), 
		0L, A_GIMME, 0);

	p = max_jit_classex_setup(calcoffset(t_max_jit_tml_fakeDepth,obex));
	q = jit_class_findbyname(gensym("jit_tml_fakeDepth"));    
    	max_jit_classex_mop_wrap(p,q,MAX_JIT_MOP_FLAGS_OWN_BANG|MAX_JIT_MOP_FLAGS_OWN_OUTPUTMATRIX);
    	max_jit_classex_mop_mproc(p, q, max_jit_tml_fakeDepth_mproc); // custom mproc
	max_jit_classex_standard_wrap(p,q,0); 	

    	addmess((method)max_jit_mop_assist, "assist", A_CANT,0);
    	
    	// bang method (accept bang)
    	addbang((method)max_jit_tml_fakeDepth_bang);
    
    	ps_getmap = gensym("getmap");
	
	return 0;
}

// bang method
void max_jit_tml_fakeDepth_bang(t_max_jit_tml_fakeDepth *x)
{
	max_jit_mop_outputmatrix(x);
}


void max_jit_tml_fakeDepth_mproc(t_max_jit_tml_fakeDepth *x, void *mop)
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
		max_jit_tml_fakeDepth_bang(x);
	}
}

void max_jit_tml_fakeDepth_free(t_max_jit_tml_fakeDepth *x)
{
	max_jit_mop_free(x);
	jit_object_free(max_jit_obex_jitob_get(x));
	
	max_jit_obex_free(x);
}

void *max_jit_tml_fakeDepth_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_tml_fakeDepth *x;
	void *o;

	if (x=(t_max_jit_tml_fakeDepth *)max_jit_obex_new(max_jit_tml_fakeDepth_class,gensym("jit_tml_fakeDepth")))
	{
		if (o=jit_object_new(gensym("jit_tml_fakeDepth")))
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