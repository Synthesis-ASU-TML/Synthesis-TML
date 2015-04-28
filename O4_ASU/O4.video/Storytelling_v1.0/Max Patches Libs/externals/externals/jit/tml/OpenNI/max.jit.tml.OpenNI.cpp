

#include "jit.common.h"
#include "max.jit.mop.h"

#define EXTERNAL_NAME "jit_tml_OpenNI"

typedef struct _max_jit_tml_OpenNI 
{
	t_object		ob;
	void			*obex;
} t_max_jit_tml_OpenNI;

t_jit_err jit_tml_OpenNI_init(void); 

void *max_jit_tml_OpenNI_class;

t_symbol *ps_getmap;


/* 
 * Constructor
 */
void *max_jit_tml_OpenNI_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_tml_OpenNI *x;
	//long attrstart;
	void *o;

	//Allocate memory
	x = (t_max_jit_tml_OpenNI *)max_jit_obex_new(max_jit_tml_OpenNI_class,NULL); //only max object, no jit object
	
	o = jit_object_new(gensym(EXTERNAL_NAME));
	if (o)
	{
		max_jit_mop_setup_simple(x, o, argc, argv);
		max_jit_attr_args(x, argc, argv);
	}
	else
	{
		error("jit.tml.rockeby: unable to allocate object");
		freeobject((struct object *)x);
	}
	

	return (x);
}


/*
 * Destructor
 */	
void max_jit_tml_OpenNI_delete(t_max_jit_tml_OpenNI *x)
{
	//only max object, no jit object
	max_jit_mop_free(x);
	jit_object_free(max_jit_obex_jitob_get(x));
	max_jit_obex_free(x);
}


void max_jit_tml_OpenNI_outputmatrix(t_max_jit_tml_OpenNI *x)
{
	t_atom a;
	long outputmode=max_jit_mop_getoutputmode(x);
	void *mop=max_jit_obex_adornment_get(x,_jit_sym_jit_mop);
	t_jit_err err;	
	
	if (outputmode&&mop) { //always output unless output mode is none
		if (outputmode==1) {
			if (err=(t_jit_err)jit_object_method(
				max_jit_obex_jitob_get(x), 
				_jit_sym_matrix_calc,
				jit_object_method(mop,_jit_sym_getinputlist),
				jit_object_method(mop,_jit_sym_getoutputlist)))						
			{
				jit_error_code(x,err); 
			} else {
				max_jit_mop_outputmatrix(x);
			}
		} else {
			max_jit_mop_outputmatrix(x);
		}
	}	
}

/*
 * Main method
 */
int main(void)
{	
	//long attrflags;
	void *p, *q;//, *attr;
	
	//Initialize the ODE stuff
	jit_tml_OpenNI_init();
	
	setup((t_messlist**)&max_jit_tml_OpenNI_class,		//Define class type
		(method)max_jit_tml_OpenNI_new,					//Constructor
		(method)max_jit_tml_OpenNI_delete,				//Destructor
		(short)sizeof(t_max_jit_tml_OpenNI), 				//Size of data to allocate
		0L, A_GIMME, 0);									//Default get-all

	p = max_jit_classex_setup(calcoffset(t_max_jit_tml_OpenNI,obex));
	q = jit_class_findbyname(gensym(EXTERNAL_NAME));
    max_jit_classex_mop_wrap(p,q,MAX_JIT_MOP_FLAGS_OWN_OUTPUTMATRIX|MAX_JIT_MOP_FLAGS_OWN_JIT_MATRIX);
	max_jit_classex_standard_wrap(p,q,0);
	max_addmethod_usurp_low((method)max_jit_tml_OpenNI_outputmatrix, "outputmatrix");	
	
	 addmess((method)max_jit_mop_assist, "assist", A_CANT,0);
	post("Initialized: jit.tml.OpenNI - XCode Build");
	
	return 0;
}

