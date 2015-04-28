

#include "jit.common.h"
#include "max.jit.mop.h"

#define EXTERNAL_NAME "jit_tml_lineJumpers"

typedef struct _max_jit_tml_lineJumpers
{
	t_object		ob;
	void			*obex;
} t_max_jit_tml_lineJumpers;

t_jit_err jit_tml_lineJumpers_init(void); 

void *max_jit_tml_lineJumpers_class;

t_symbol *ps_getmap;


/* 
 * Constructor
 */
void *max_jit_tml_lineJumpers_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_tml_lineJumpers*x;
	//long attrstart;
	void *o;

	//Allocate memory
	x = (t_max_jit_tml_lineJumpers*)max_jit_obex_new(max_jit_tml_lineJumpers_class,NULL); //only max object, no jit object
	
	o = jit_object_new(gensym(EXTERNAL_NAME));
	if (o)
	{
		max_jit_mop_setup_simple(x, o, argc, argv);
		max_jit_attr_args(x, argc, argv);
	}
	else
	{
		error("jit.tml.lineJumpers: unable to allocate object");
		freeobject((struct object *)x);
	}
	

	return (x);
}


/*
 * Destructor
 */	
void max_jit_tml_lineJumpers_delete(t_max_jit_tml_lineJumpers*x)
{
	//only max object, no jit object
	max_jit_mop_free(x);
	jit_object_free(max_jit_obex_jitob_get(x));
	max_jit_obex_free(x);
}

/*
 * Main method
 */
int main(void)
{	
	//long attrflags;
	void *p, *q;//, *attr;
	
	//Initialize the ODE stuff
	jit_tml_lineJumpers_init();
	
	setup((t_messlist**)&max_jit_tml_lineJumpers_class,		//Define class type
		(method)max_jit_tml_lineJumpers_new,					//Constructor
		(method)max_jit_tml_lineJumpers_delete,				//Destructor
		(short)sizeof(t_max_jit_tml_lineJumpers), 				//Size of data to allocate
		0L, A_GIMME, 0);									//Default get-all

	p = max_jit_classex_setup(calcoffset(t_max_jit_tml_lineJumpers,obex));
	q = jit_class_findbyname(gensym(EXTERNAL_NAME));
	max_jit_classex_mop_wrap(p,q,0);
	max_jit_classex_standard_wrap(p,q,0);
	
	post("Initialized: jit.tml.lineJumpers - XCode Build");
	
	return 0;
}

