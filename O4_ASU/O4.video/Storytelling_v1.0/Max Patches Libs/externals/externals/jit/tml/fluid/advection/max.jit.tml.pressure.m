

#include "jit.common.h"
#include "max.jit.mop.h"

#ifdef BUILD_PRESSURE
	#define EXTERNAL_NAME "jit_tml_fluid_pressure"
#elif defined BUILD_VISCOCITY
	#define EXTERNAL_NAME "jit_tml_fluid_viscocity"
#elif defined BUILD_GENREPOS
	#define EXTERNAL_NAME "jit_tml_fluid_genRepos"
#elif defined BUILD_BLEND
	#define EXTERNAL_NAME "jit_tml_fluid_blend"
#else
	#error "Bad build setting"
#endif

typedef struct _max_jit_tml_fluid_advection 
{
	t_object		ob;
	void			*obex;
	
} t_max_jit_tml_fluid_advection;

t_jit_err jit_tml_fluid_advection_init(void); 

void *max_jit_tml_fluid_advection_class;


/* 
 * Constructor
 */
void *max_jit_tml_fluid_advection_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_tml_fluid_advection *x;
	//long attrstart;
	void *o = NULL;
	
	//Allocate memory
	x = (t_max_jit_tml_fluid_advection *)max_jit_obex_new(max_jit_tml_fluid_advection_class,NULL); //only max object, no jit object
	
	if (x)
		o = jit_object_new(gensym(EXTERNAL_NAME));
	
	if (o)
	{
		max_jit_mop_setup_simple(x, o, argc, argv);
		max_jit_attr_args(x, argc, argv);
	}
	else
	{
		error("%s: unable to allocate object", EXTERNAL_NAME);
		if (x)
			freeobject((struct object *)x);
			
		x = NULL;
	}
	

	return (x);
}

/**
	Assistance / help..
*/
void max_jit_fluid_advection_assist(t_max_jit_tml_fluid_advection *x, void *b, long m, long a, char *s)
{
	void *mop;
	
	if (!(mop=max_jit_obex_adornment_get(x, _jit_sym_jit_mop)))
		return;

#ifdef BUILD_GENREPOS
	if (m == 1)
	{
		if (a == 0)
			sprintf(s, "(matrix-floatx2) Vector field");
		
	} else { 		//output
		if (a == 0 )
		{
			sprintf(s, "(matrix) Repos Field");			
		} else {
			sprintf(s, "dumpout");			
		}
	}
#elif BUILD_BLEND
	if (m == 1)
	{
		if (a == 0)
			sprintf(s, "(matrix-floatx2) Input 1");
		
		else if (a == 1)
			sprintf(s, "(matrix-floatx2) Input 2");
		
	} else { 		//output
		if (a == 0 )
		{
			sprintf(s, "(matrix) Updated Vector Field");			
		} else {
			sprintf(s, "dumpout");			
		}
	}
#else
	if (m == 1)
	{
		if (a == 0)
			sprintf(s, "(matrix-floatx2) Vector field");
		
		else if (a == 1)
			sprintf(s, "(matrix-char) Collisions");
		
	} else { 		//output
		if (a == 0 )
		{
			sprintf(s, "(matrix) Updated Vector Field");			
		} else {
			sprintf(s, "dumpout");			
		}
	}
#endif
}

/*
 * Destructor
 */	
void max_jit_tml_fluid_advection_delete(t_max_jit_tml_fluid_advection *x)
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
	jit_tml_fluid_advection_init();
	
	setup((t_messlist**)&max_jit_tml_fluid_advection_class,		//Define class type
		(method)max_jit_tml_fluid_advection_new,					//Constructor
		(method)max_jit_tml_fluid_advection_delete,				//Destructor
		(short)sizeof(t_max_jit_tml_fluid_advection), 				//Size of data to allocate
		0L, A_GIMME, 0);									//Default get-all
		
	p = max_jit_classex_setup(calcoffset(t_max_jit_tml_fluid_advection,obex));
	q = jit_class_findbyname(gensym(EXTERNAL_NAME));
	max_jit_classex_mop_wrap(p,q,0);
	max_jit_classex_standard_wrap(p,q,0);
	
    addmess((method)max_jit_fluid_advection_assist, "assist", A_CANT, 0);
	
	post("Initialized - %s - XCode 2.5 build", EXTERNAL_NAME);
	
	return 0;
}

