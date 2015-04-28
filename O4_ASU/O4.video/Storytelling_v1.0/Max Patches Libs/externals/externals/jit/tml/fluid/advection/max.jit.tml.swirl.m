

#import "jit.common.h"
#include "max.jit.mop.h"

#ifdef BUILD_ADVECTION
	#define EXTERNAL_NAME "jit_tml_fluid_advection"
#elif defined BUILD_MCCORMACK
	#define EXTERNAL_NAME "jit_tml_fluid_mccormack"
#elif defined BUILD_REPOS
	#define EXTERNAL_NAME "jit_tml_fluid_repos"
#else
	#error "Bad build setting"
#endif

typedef struct _max_jit_tml_fluid_advection 
{
	t_object		ob;
	void			*obex;
	
	long			m_fluids;

#ifdef BUILD_ADVECTION
	void			*inputs[34];
#elif defined BUILD_REPOS
	void			*inputs[34];
#elif defined BUILD_MCCORMACK
	void			*inputs[67];
#endif
	
} t_max_jit_tml_fluid_advection;

t_jit_err jit_tml_fluid_advection_init(void); 

void *max_jit_tml_fluid_advection_class;

t_symbol *ps_fluids;


/* 
 * Constructor
 */
void *max_jit_tml_fluid_advection_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_tml_fluid_advection *x;
	//long attrstart;
	void *o = NULL;

	int i;
	
	//Allocate memory
	x = (t_max_jit_tml_fluid_advection *)max_jit_obex_new(max_jit_tml_fluid_advection_class,NULL); //only max object, no jit object
	
	if (x)
		o = jit_object_new(gensym(EXTERNAL_NAME));
	
	if (o)
	{
		max_jit_obex_jitob_set(x, o);						//Bind max object to jitter object
		max_jit_obex_dumpout_set(x, outlet_new(x, NULL));	//Dump (rightmost) outlet
		max_jit_mop_setup(x);
		
		
		max_jit_attr_args(x, argc, argv);
		x->m_fluids = jit_attr_getlong(o, ps_fluids);
		post("%s: Found %i fluids", EXTERNAL_NAME, x->m_fluids);
	
	#ifdef BUILD_ADVECTION
		max_jit_mop_variable_addinputs(x,x->m_fluids+2);
	#elif defined BUILD_REPOS
		max_jit_mop_variable_addinputs(x,x->m_fluids+2);
	#elif defined BUILD_MCCORMACK
		max_jit_mop_variable_addinputs(x,x->m_fluids*2+3);
	#endif
		max_jit_mop_variable_addoutputs(x, x->m_fluids);
		
		void *mop = (void*)max_jit_obex_adornment_get(x,_jit_sym_jit_mop);
		post("%s: Jitter got %i inputs", EXTERNAL_NAME, jit_attr_getlong(mop, _jit_sym_inputcount));
		
		
		max_jit_mop_inputs(x);
		max_jit_mop_outputs(x);
		
		jit_attr_setlong(o, gensym("max"), x->m_fluids);
		max_jit_mop_matrix_args(x, argc, argv);
		
		//Setup copy on adapt...
	#ifdef BUILD_ADVECTION
		for (i=1; i<x->m_fluids+2; i++)
	#elif defined BUILD_REPOS
		for (i=1; i<x->m_fluids+2; i++)
	#elif defined BUILD_MCCORMACK
		for (i=1; i<x->m_fluids*2+3; i++)
	#endif
		{
			t_jit_object *z = jit_object_method(mop, _jit_sym_getinput, i);
			jit_object_method(z, _jit_sym_ioproc, jit_mop_ioproc_copy_adapt);
			x->inputs[i] = NULL;
		}
		
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

	if (m == 1)
	{
		if (a == 0)
		{
		#ifdef BUILD_REPOS
			sprintf(s, "(matrix-floatx2) Repos field");
		#else
			sprintf(s, "(matrix-floatx2) Vector field");
		#endif
		}
		
		else if (a == 1)
		{
			sprintf(s, "(matrix-char) Collisions");
		}
		else
		{
		#ifdef BUILD_ADVECTION
			sprintf(s, "(matrix) Substance %i", a-1);
		#elif defined BUILD_REPOS
			sprintf(s, "(matrix) Substance %i", a-1);
		#elif defined BUILD_MCCORMACK
			if (a-1 <= x->m_fluids)
				sprintf(s, "(matrix) Substance %i", a-1);
			else if (a-2 == x->m_fluids)
				sprintf(s, "(matrix-floatx2) Advected Vector Field");
			else
				sprintf(s, "(matrix) Advected Substance %i", a-x->m_fluids-2);
		#endif
		}
	} else { 		//output
		if (a<(x->m_fluids))
		{
			sprintf(s, "(matrix) Advected fluid %i", a+1);			
		} else {
			sprintf(s, "dumpout");			
		}
	}
}

/*
 * Destructor
 */	
void max_jit_tml_fluid_advection_delete(t_max_jit_tml_fluid_advection *x)
{
	int i;
	
	#ifdef BUILD_ADVECTION
		for (i=1; i<34; i++)
	#elif defined BUILD_REPOS
		for (i=1; i<34; i++)
	#elif defined BUILD_MCCORMACK
		for (i=1; i<67; i++)
	#endif
	{
		if (x->inputs[i] != NULL)
			jit_object_free(x->inputs[i]);
	}

	//only max object, no jit object
	max_jit_mop_free(x);
	jit_object_free(max_jit_obex_jitob_get(x));
	max_jit_obex_free(x);
}

/** Special call to Jitter */
t_jit_err max_tml_jit_fluid_jit_matrix(t_max_jit_tml_fluid_advection *x, t_symbol *s, long argc, t_atom *argv)
{
	void *matrix,*mop,*o,*p;
	t_symbol *matrixname;
	long err=JIT_ERR_NONE,inlet;
	
	if (!(mop=max_jit_obex_adornment_get(x,_jit_sym_jit_mop)))
		return JIT_ERR_GENERIC;
	
	if (argc&&argv)
	{
		//find matrix
		matrixname = jit_atom_getsym(argv);
		matrix = jit_object_findregistered(matrixname);
		if (matrix&&jit_object_method(matrix, _jit_sym_class_jit_matrix))
		{
			inlet=max_jit_obex_inletnumber_get(x); 
			
			//calculate
			switch (jit_attr_getlong(mop,_jit_sym_outputmode))
			{
			case 0: //nada
				break;
			case 2: //input(no calc)
				//pass input through leftmost output
				if ((inlet==0) &&
					(p=jit_object_method(mop,_jit_sym_getoutput,1)) &&
					(o=max_jit_mop_io_getoutlet(p))) 
				{
					outlet_anything(o,_jit_sym_jit_matrix,1,argv);
				}
				break; 
			case 3: //output(no calc)
				max_jit_mop_outputmatrix(x);
				break; 
			default: //calc
							
				//stuff any one into 1st matrix input
				p = jit_object_method(mop,_jit_sym_getinput,1);
				jit_object_method(p,_jit_sym_matrix,matrix);
				jit_attr_setsym(p,_jit_sym_matrixname,matrixname);
				
				if (inlet == 0)
				{
					void *jitInput = jit_object_method(mop,_jit_sym_getinputlist);
					x->inputs[inlet] = jit_object_method(jitInput, _jit_sym_getindex, 0);
					
					t_jit_matrix_info	info_input;
					jit_object_method(x->inputs[inlet], _jit_sym_getinfo, &info_input);
					
//					post("%s: Processing inlet %i (%i,%i,%i)", 
//								EXTERNAL_NAME,inlet, info_input.planecount,
//								info_input.dimstride[0], info_input.dimstride[1]);

					
					//set jitob's plane attribute + call matrixcalc
					o = max_jit_obex_jitob_get(x);
					if (err=(t_jit_err) jit_object_method(
						o,
						_jit_sym_matrix_calc,
						x->inputs,
						jit_object_method(mop,_jit_sym_getoutputlist))) 
					{
						jit_error_code(x,err); 
					} else {
						max_jit_mop_outputmatrix(x);
					}
					
					x->inputs[inlet] = NULL;
				}
				else
				{
					if (x->inputs[inlet] != NULL)
						jit_object_free(x->inputs[inlet]);
				
					void *jitInput = jit_object_method(mop,_jit_sym_getinputlist);
					x->inputs[inlet] = jit_object_method(jitInput, _jit_sym_getindex, 0);
					x->inputs[inlet] = jit_object_method(x->inputs[inlet], _jit_sym_newcopy);
					
					t_jit_matrix_info	info_input;
					jit_object_method(x->inputs[inlet], _jit_sym_getinfo, &info_input);
					
					//post("%s: Processing inlet %i (%i,%i,%i)", 
//								EXTERNAL_NAME,inlet, info_input.planecount,
//								info_input.dimstride[0], info_input.dimstride[1]);
				}
				break; 
			}
		} else {
			jit_error_code(x,JIT_ERR_MATRIX_UNKNOWN); 
		}
	}
	
	return err;	
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

	addmess((method)max_tml_jit_fluid_jit_matrix, "jit_matrix", A_GIMME, 0);
	p = max_jit_classex_setup(calcoffset(t_max_jit_tml_fluid_advection,obex));
	q = jit_class_findbyname(gensym(EXTERNAL_NAME));
	max_jit_classex_mop_wrap(p,q,MAX_JIT_MOP_FLAGS_OWN_JIT_MATRIX);
	max_jit_classex_standard_wrap(p,q,0);
	
    addmess((method)max_jit_fluid_advection_assist, "assist", A_CANT, 0);
    addmess((method)max_jit_mop_variable_anything, "anything", A_GIMME, 0);  
	
	ps_fluids = gensym("fluids");
	
	post("Initialized - %s - XCode 2.5 build", EXTERNAL_NAME);
	
	return 0;
}

