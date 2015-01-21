//
//	max.jit.fluidimage.c
//						05.26.03	by Yoichiro Serita

#include "jit.common.h"
#include "max.jit.mop.h"
#define MAX_OUT 1024

typedef struct _max_jit_fluidimage 
{
    t_object		ob;
    void			*obex;
    //void			*mapout;			// the right most outlet
    //long			*mapout_buff;		// buffer for the outlet
} t_max_jit_fluidimage;

t_jit_err jit_fluidimage_init(void); 

void *max_jit_fluidimage_new(t_symbol *s, long argc, t_atom *argv);
void max_jit_fluidimage_mproc(t_max_jit_fluidimage *x, void *mop);
void max_jit_fluidimage_free(t_max_jit_fluidimage *x);
void max_jit_fluidimage_bang(t_max_jit_fluidimage *x);
void *max_jit_fluidimage_class;

t_symbol *ps_getmap;

void main(void)
{	
    long attrflags;
    void *p, *q;
	
    jit_fluidimage_init();	
    setup(&max_jit_fluidimage_class, max_jit_fluidimage_new, (method)max_jit_fluidimage_free, (short)sizeof(t_max_jit_fluidimage), 
	  0L, A_GIMME, 0);

    p = max_jit_classex_setup(calcoffset(t_max_jit_fluidimage,obex));
    q = jit_class_findbyname(gensym("jit_fluidimage"));    
    max_jit_classex_mop_wrap(p,q,MAX_JIT_MOP_FLAGS_OWN_BANG|MAX_JIT_MOP_FLAGS_OWN_OUTPUTMATRIX);
    max_jit_classex_mop_mproc(p, q, max_jit_fluidimage_mproc); // custom mproc
    max_jit_classex_standard_wrap(p,q,0); 	

    addmess((method)max_jit_mop_assist, "assist", A_CANT,0);
    	
    // bang method (accept bang)
    addbang((method)max_jit_fluidimage_bang);
    
    ps_getmap = gensym("getmap");
}

// bang method
void max_jit_fluidimage_bang(t_max_jit_fluidimage *x)
{
    //long ac=0;
    //void *o;
	
    //o=max_jit_obex_jitob_get(x);

    // output from the right outlet
    //jit_object_method(o,ps_getmap,&ac,&(x->mapout_buff));
    //outlet_anything(x->mapout,_jit_sym_list,ac,x->mapout_buff);
		
    // or you can use dumpout (this example doesn't work actually)
    // but dumpout is typically used for getsomething(attribute)
    //max_jit_obex_dumpout(x, gensym("report"), 1, &a);
		
    // output matrix
    max_jit_mop_outputmatrix(x);
}


void max_jit_fluidimage_mproc(t_max_jit_fluidimage *x, void *mop)
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
	max_jit_fluidimage_bang(x);
    }
}

void max_jit_fluidimage_free(t_max_jit_fluidimage *x)
{
    max_jit_mop_free(x);
    jit_object_free(max_jit_obex_jitob_get(x));
	
    // free buffer for outlet
    //f(x->mapout_buff) jit_freebytes(x->mapout_buff, sizeof(long)*MAX_OUT);
	
    max_jit_obex_free(x);
}

void *max_jit_fluidimage_new(t_symbol *s, long argc, t_atom *argv)
{
    t_max_jit_fluidimage *x;
    void *o;

    if (x=(t_max_jit_fluidimage *)max_jit_obex_new(max_jit_fluidimage_class,gensym("jit_fluidimage"))) {
	
	if (o=jit_object_new(gensym("jit_fluidimage"))) {
		
	    // add aditional non-matrix output
	    //x->mapout = outlet_new(x, 0L);
			
	    // alocate buffer for outlet
	    //x->mapout_buff = jit_getbytes(sizeof(long)*MAX_OUT);
			
	    // create matrix outlet?
	    max_jit_mop_setup_simple(x,o,argc,argv);
			
	    max_jit_attr_args(x,argc,argv);
	} else {
	    error("jit.change: could not allocate object");
	    freeobject(x);
	}
    }
    return (x);
}
