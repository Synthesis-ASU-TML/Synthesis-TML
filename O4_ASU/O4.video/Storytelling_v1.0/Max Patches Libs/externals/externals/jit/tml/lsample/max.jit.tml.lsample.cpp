

#include "jit.common.h"
#include "max.jit.mop.h"

#define EXTERNAL_NAME "jit_tml_lsample"

typedef struct _max_jit_tml_lsample 
{
	t_object		ob;
	void			*obex;
} t_max_jit_tml_lsample;

t_jit_err jit_tml_lsample_init(void); 

void *max_jit_tml_lsample_class;


/* 
 * Constructor
 */
void *max_jit_tml_lsample_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_tml_lsample *x;
	//long attrstart;
	void *o;

	//Allocate memory
	x = (t_max_jit_tml_lsample *)max_jit_obex_new(max_jit_tml_lsample_class,NULL); //only max object, no jit object
	
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
 *	Assistance
 */
void max_jit_tml_lsample_assist(t_max_jit_tml_lsample *x, void *b, long m, long a, char *s)
{
	void *mop;
	
	if (!(mop=max_jit_obex_adornment_get(x, _jit_sym_jit_mop)))
		return;

	if (m == 1)		//Inlet?
	{
		if (a == 0)
		{
			sprintf(s, "(matrix) Input to sample semi-randomly");
		}
	} else { 		//Outlet?
		if (a == 0)
		{
			sprintf(s, "(matrix) Sampled Points");			
		} else {
			sprintf(s, "dumpout");			
		}
	}
}


/*
 * Destructor
 */	
void max_jit_tml_lsample_delete(t_max_jit_tml_lsample *x)
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
	jit_tml_lsample_init();
	
	setup((t_messlist**)&max_jit_tml_lsample_class,		//Define class type
		(method)max_jit_tml_lsample_new,					//Constructor
		(method)max_jit_tml_lsample_delete,				//Destructor
		(short)sizeof(t_max_jit_tml_lsample), 				//Size of data to allocate
		0L, A_GIMME, 0);									//Default get-all

	p = max_jit_classex_setup(calcoffset(t_max_jit_tml_lsample,obex));
	q = jit_class_findbyname(gensym(EXTERNAL_NAME));
	max_jit_classex_mop_wrap(p,q,0);
	max_jit_classex_standard_wrap(p,q,0);
	
	addmess((method)max_jit_tml_lsample_assist, "assist", A_CANT, 0);
    addmess((method)max_jit_mop_variable_anything, "anything", A_GIMME, 0);  
	
	post("Initialized: jit.tml.lsample - XCode Build");
	
	return 0;
}

