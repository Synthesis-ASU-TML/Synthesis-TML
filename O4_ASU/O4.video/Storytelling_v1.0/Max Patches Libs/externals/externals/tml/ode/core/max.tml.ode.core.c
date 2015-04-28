/* 
	Copyright 2001-2002 - Cycling '74
	Joshua Kit Clayton jkc@cycling74.com	
*/

#include "jit.common.h"
#include "max.jit.mop.h"


typedef struct _max_tml_ode_core 
{
	//Existing from jit.fill
	t_object			ob;
	void				*obex;
} t_max_tml_ode_core;


//Prototypes to stuff inside the tml.ode.core
t_jit_err tml_ode_core_init(void);

//Constructors
void *max_tml_ode_core_new(t_symbol *s, long argc, t_atom *argv);
void max_tml_ode_core_delete(t_max_tml_ode_core *x);

void *max_tml_ode_core_class;
		 	
t_symbol *ps_done;

/*
 * main
 * 	Entry point, configure the max external
 */
int main(void)
{		
	//int x;
	//long attrflags;
	void *p, *q;//, *attr;
	
	//Initialize the ODE stuff
	tml_ode_core_init();
	
	setup(&max_tml_ode_core_class,		//Define class type
		max_tml_ode_core_new,			//Constructor
		(method)max_tml_ode_core_delete,					//Destructor
		(short)sizeof(t_max_tml_ode_core), 					//Size of data to allocate
		0L, A_GIMME, 0);								//Default get-all

	p = max_jit_classex_setup(calcoffset(t_max_tml_ode_core,obex));
	q = jit_class_findbyname(gensym("tml_ode_core"));
	max_jit_classex_mop_wrap(p,q,0);
	max_jit_classex_standard_wrap(p,q,0);
	
	post("Loading ODE - XCode Build");
	
	return 0;
}



/* 
 * Constructor
 */
void *max_tml_ode_core_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_tml_ode_core *x;
	//long attrstart;
	void *o;

	//Allocate memory
	x = (t_max_tml_ode_core *)max_jit_obex_new(max_tml_ode_core_class,NULL); //only max object, no jit object
	
	o = jit_object_new(gensym("tml_ode_core"));
	if (o)
	{
		max_jit_mop_setup_simple(x, o, argc, argv);
		max_jit_attr_args(x, argc, argv);
	}
	else
	{
		error("tml.ode.core: unable to allocate object");
		freeobject((struct object *)x);
	}
	

	return (x);
}


/*
 * Destructor
 */	
void max_tml_ode_core_delete(t_max_tml_ode_core *x)
{
	//only max object, no jit object
	max_jit_mop_free(x);
	jit_object_free(max_jit_obex_jitob_get(x));
	max_jit_obex_free(x);
}


