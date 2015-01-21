//======================= Includes

#include "ext.h"
#include "ext_strings.h"
//#include <string.h>
#include "math.h"	
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include "eermDefines.h"
#include "eermDefaults.h"
#include "GraphModelUtil.h"
#include "feature.h"
#include "node.h"
#include "simplex.h"
#include "token.h"
#include "eerm.h"
#include "eermMax.h"
//#include "eermGraphics.h"


//======================= Defines

#define MAX_LABEL_SIZE 128


//======================= Atom checks

//----------------------- AtomFloatIsValid

void AtomFloatIsValid(short ac, Atom *av, int len)
{
	int i;

	MErrorVoid(av != NULL, "No float vector found");
	MErrorVoid(ac == len, "Bad float length");

	for (i = 0; i < ac; i++)
	{
		MErrorVoid((av[i].a_type == A_FLOAT), "Wrong atom type");
	}
}
		

//----------------------- AtomPosFloatIsValid

void AtomPosFloatIsValid(short ac, Atom *av, int len)
{
	int i;
	MErrorVoid(av != NULL, "No float vector found");
	MErrorVoid(ac == len, "Bad float length");
	for (i = 0; i < ac; i++)
	{
		MErrorVoid(av[i].a_type == A_FLOAT, "Wrong atom type");
		MErrorVoid(av[i].a_w.w_float >= 0.0, "Non-positive entry");
	}
}

//----------------------- AtomPosIntIsValid


void AtomPosIntIsValid(short ac, Atom *av, int len)
{
	int i;
	MErrorVoid(av != NULL, "No float vector found");
	MErrorVoid(ac == len, "Bad float length");
	for (i = 0; i < ac; i++)
	{
		MErrorVoid(av[i].a_type == A_LONG, "Wrong atom type");
		MErrorVoid(av[i].a_w.w_long >= 0, "Non-positive entry");
	}
}
		

//----------------------- AtomIsValid

void AtomIsValid(short ac, Atom *av, short len, Atom *proto)
{
	int i;
	MErrorVoid((av != NULL) && (proto != NULL), "invalid eerm ptr");
	MErrorVoid(ac == len, "invalid eerm ptr");
	for (i = 0; i < ac; i++)
	{
		MErrorVoid(av[i].a_type == proto[i].a_type, "invalid eerm ptr");
	}
}

//----------------------- AtomToFloatVector

void AtomToFloatVector(short ac, Atom *av, short len, float *f)
{
	int i;
	AtomFloatIsValid(ac, av, len);

	for (i = 0; i < len; i++)
	{
		f[i] = av[i].a_w.w_float;
	}
}

//======================= Max Functions

//----------------------- Main

void main()
{
	void *classex;
	void *jitclass;
	
	#ifdef MDebug
		graphmodelutiltests();
	#endif
	
	EermMaxJitGLInit();
	
	setup(
		(t_messlist **)&EermMaxClass, 
		(method)EermMaxNew, 
		(method)EermMaxFree, 
		(short)sizeof(EermMax), 
		0L, A_GIMME, 0);

	classex = max_jit_classex_setup(calcoffset(EermMax, obex));
	jitclass = jit_class_findbyname(gensym("EermMaxJitGL"));

	// getattributes/dumpout/maxjitclassaddmethods/etc
	max_jit_classex_standard_wrap(classex, jitclass, 0);
	addmess((method)max_jit_ob3d_assist, "assist", A_CANT, 0);
	

	addbang((method)EermMaxBang);
	addint((method)EermMaxInt);

	addmess((method)EermMaxSimplexSetEntry, "SimplexSetEntry", A_GIMME, 0);
	addmess((method)EermMaxSetDt, "SetDt", A_GIMME, 0);
	addmess((method)EermMaxSetForce, "SetForce", A_GIMME, 0);
	addmess((method)EermMaxSetWeights, "SetWeights", A_GIMME, 0);
	addmess((method)EermMaxSetSlew, "SetSlew", A_GIMME, 0);
	
	addmess((method)EermMaxForceMeter, "ForceMeter", A_GIMME, 0);
	
	addmess((method)EermMaxPostSimplices, "PostSimplices", A_GIMME, 0);
	addmess((method)EermMaxPostTokens, "PostTokens", A_GIMME, 0);
	
	addmess((method)EermMaxSimplexNew, "SimplexNew", A_GIMME, 0);
	addmess((method)EermMaxSimplexDelete, "SimplexDelete", A_GIMME, 0);
	addmess((method)EermMaxSimplexSetTp, "SimplexSetTp", A_GIMME, 0);
	
	addmess((method)EermMaxNodeNew, "NodeNew", A_GIMME, 0);
	addmess((method)EermMaxNodeSetMean, "NodeSetMean", A_GIMME, 0);
	addmess((method)EermMaxNodeSetVar, "NodeSetVar", A_GIMME, 0);
	addmess((method)EermMaxNodeSetLabelMsg, "NodeSetLabel", A_GIMME, 0);

	addmess((method)EermMaxStulleTokenNew, "StulleTokenNew", A_GIMME, 0);		
	addmess((method)EermMaxTokenNew, "TokenNew", A_GIMME, 0);		
	addmess((method)EermMaxTokenDelete, "TokenDelete", A_GIMME, 0);		
	addmess((method)EermMaxTokenSetCoord, "TokenSetCoord", A_GIMME, 0);		
	addmess((method)EermMaxTokenSetMass, "TokenSetMass", A_GIMME, 0);		
	addmess((method)EermMaxTokenSetDamping, "TokenSetDamping", A_GIMME, 0);		
	addmess((method)EermMaxTokenSetExpScale, "TokenSetExpScale", A_GIMME, 0);		
	addmess((method)EermMaxTokenSetTokenCoupling, "TokenSetTokenCoupling", A_GIMME, 0);		
	addmess((method)EermMaxTokenSetWeights, "TokenSetWeights", A_GIMME, 0);
	addmess((method)EermMaxTokenSetSimplex, "TokenSetSimplex", A_GIMME, 0);

	addmess((method)EermMaxClockEvolution, "ClockEvolution", A_LONG, 0);
	addmess((method)EermMaxClockOnce, "ClockOnce", A_GIMME, 0);

	addmess((method)EermMaxTokenFeatureUpdate, "anything", A_GIMME, 0); // Feature In		

	//finder_addclass("Data","Eerm");

	// add methods for 3d drawing
	max_ob3d_setup();
}


//======================= New / Free

//----------------------- EermMaxNew

void *EermMaxNew(Symbol *s, short ac, Atom *av)
{
	int nnodes = KNNodesDefault;
	int nmaxsimplices = KNMaxSimplicesDefault;
	int nmaxtokens = KNMaxTokensDefault;
	int Nf = KNfDefault;
	float dt = KDtInMsDefault;
	EermMax *m;
	void *jit_ob;
	long attrstart;
	t_symbol *dest_name_sym = _jit_sym_nothing;

	MTraceCall("eermMax:\tNew..");

	unused(s);
	
	// this mechanism is incompatible with the attributes stuff below?
	// it would be better to treat these as well using attributes.
	arg_num(nnodes,0,ac,av);
	arg_num(nmaxsimplices,1,ac,av);
	arg_num(nmaxtokens,2,ac,av);
	arg_num(Nf,3,ac,av);
	arg_num(dt,4,ac,av);

	MTrace5("eermMax:\tNew: nnodes=%d, nmaxsimp=%d, nmaxt=%d, Nf=%d, dt=%f",
		nnodes, nmaxsimplices, nmaxtokens, Nf, dt);
		
	//m = (EermMax *)newobject(EermMaxClass);
	m = (EermMax *)max_jit_obex_new(
		EermMaxClass, gensym("EermMax"));
	
	if (m)
	{
		attrstart = max_jit_attr_args_offset(argc, argv);
		if (attrstart && argv)
		{
			jit_atom_arg_getsym(&dest_name_sym, 0, attrstart, argv);
		}
		
		if (jit_ob = jit_object_new(gensym("EermMax"), dest_name_sym))
		{
			max_jit_obex_jitob_set(m, jit_ob);
			max_jit_obex_dumpout_set(m, outlet_new(m, NULL));
			max_jit_attr_args(m, argc, argv);

			// attach the jit object's ob3d to a new outlet for sending drawing methods
			max_jit_ob3d_attach(m, jit_ob, outlet_new(m, "jit_matrix"));
		}
		else
		{
			MError("EermMax: could not allocate Jit object");
			freeobject((t_object *)m);
			m = NULL;
			return m;
		}
	}

	m->e = EermNew(nnodes, nmaxsimplices, nmaxtokens, Nf, dt);

	m->DoClock = 0;
	
	m->xout = listout(m);
	m->out = listout(m);
	
	EermMaxLabelsNew(m);
	
	MTraceCall("eermMax:\tNew finished.");
	return (m);
}


//----------------------- EermMaxFree

void EermMaxFree(EermMax *m)
{
	MTraceCall("eermMax:\tFree..");

	MAssertVoid(m != NULL, "invalid eerm ptr");

	EermMaxLabelsFree(m);

	EermFree(m->e);

	MTraceCall("eermMax:\tFree finished.");

	#ifdef MemDebug
	post("membytes = %d", membytes);

	MTrace( "------ un-freed memory -------");
	MTrace1("eerm:\tgMemSimplex = %d", gMemSimplex);	
	MTrace1("eerm:\tgMemNode = %d", gMemNode);	
	MTrace1("eerm:\tgMemToken = %d", gMemToken);	
	MTrace1("eerm:\tgMemFeature = %d", gMemFeature);		
	MTrace1("eerm:\tmemeermmaxlabels = %d", memeermmaxlabels);	

	MAssertVoid(membytes == 0, "We have a leak, captain!");
	#endif

	max_jit_ob3d_detach(m);
	jit_object_free(max_jit_obex_jitob_get(m));
	max_jit_obex_free(m);
}


//----------------------- EermMaxLabelsNew

void EermMaxLabelsNew(EermMax *m)
{
	int i;
	char nullstr[] = KNullStr;
	MMemChkStart;
	
	MTraceCall("eermMax:\tAllocating labels.");
	MAssertVoid(m != NULL, "invalid eerm ptr");
	
	m->NodeLabel = (char **)getmem(m->e->NnMax * sizeof(char *));
	MAssertPtr(m->NodeLabel != NULL, "didn't get mem");
	//MTrace1("eerm\t:EermMaxLabelsNew:\tAllocating %d Node* bytes",m->e->NnMax * sizeof(char *));

	for (i = 0; i < m->e->NnMax; i++)
	{
		m->NodeLabel[i] = (char *)getmem(MAX_LABEL_SIZE * sizeof(char));
		MAssertPtr(m->NodeLabel[i] != NULL, "didn't get mem");

		strcpy(m->NodeLabel[i], nullstr);
	}

	m->SimplexLabel = (char **)getmem(m->e->NsMax * sizeof(char *));
	MAssertPtr(m->SimplexLabel != NULL, "didn't get mem");

	for (i = 0; i < m->e->NsMax; i++)
	{
		m->SimplexLabel[i] = (char *)getmem(MAX_LABEL_SIZE * sizeof(char));
		MAssertPtr(m->SimplexLabel[i] != NULL, "didn't get mem");

		strcpy(m->SimplexLabel[i], nullstr);
	}

	m->TokenLabel = (char **)getmem(m->e->NtMax * sizeof(char *));
	MAssertPtr(m->SimplexLabel != NULL, "didn't get mem");

	for (i = 0; i < m->e->NtMax; i++)
	{
		m->TokenLabel[i] = (char *)getmem(MAX_LABEL_SIZE * sizeof(char));
		MAssertPtr(m->TokenLabel[i] != NULL, "didn't get mem");

		strcpy(m->TokenLabel[i], nullstr);
	}
	MMemChkExit(memeermmaxlabels);
	MTraceCall("eermMax:\tFinished allocating labels.");
}


//----------------------- EermMaxLabelsFree

void EermMaxLabelsFree(EermMax *m)
{
	int i;
	
	MMemChkStart;
	MTraceCall("eermMax:\tLabels free..");
	MAssertVoid(m != NULL, "invalid eerm ptr");
	
	for (i = 0; i < m->e->NnMax; i++)
	{
		freemem(m->NodeLabel[i], MAX_LABEL_SIZE * sizeof(char));
	}
	
	freemem(m->NodeLabel,m->e->NnMax * sizeof(char *));

	for (i = 0; i < m->e->NsMax; i++)
	{
		freemem(m->SimplexLabel[i], MAX_LABEL_SIZE * sizeof(char));
	}

	freemem(m->SimplexLabel,m->e->NsMax * sizeof(char *));

	for (i = 0; i < m->e->NtMax; i++)
	{
		freemem(m->TokenLabel[i], MAX_LABEL_SIZE * sizeof(char));
	}

	freemem(m->TokenLabel,m->e->NtMax * sizeof(char *));

	MMemChkExit(memeermmaxlabels);
	MTraceCall("eermMax:\tLabels free finished.");
}


//======================= Evolution

//----------------------- EermMaxClockEvolution

void EermMaxClockEvolution(EermMax *m, int DoClock)
{
	MMemEntry;
	MTraceCall("eermMax:\tClockEvolution.`.");
	MAssertVoid(m != NULL, "invalid eerm ptr");
	MErrorVoid((DoClock == 0) || (DoClock == 1), "Expected arg 0 or 1");

	m->DoClock = DoClock;

	if (DoClock == 1)
	{ 
		// debug : TokenDoTransition(m->e->tokens[0], m->e, 2);
		EermMaxEvolve(m);
	}

	MTraceCall("eermMax:\tClockEvolution finished.");
	MMemExit;	
}

//----------------------- EermMaxClockOnce

void EermMaxClockOnce(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	MMemEntry;
	MTraceCall("eermMax:\tClockOnce..");
	MAssertVoid(m != NULL, "invalid eerm ptr");

	EermTokensEvolve(m->e);
	EermMaxOutputTokens(m);

	MTraceCall("eermMax:\tClockOnce finished.");
	MMemExit;	
}

//----------------------- EermMaxEvolve

void EermMaxEvolve(EermMax *m)
{
	MMemEntry;
	MTraceCall("eermMax:\tEvolve..");
	MAssertVoid(m != NULL, "invalid eerm ptr");

	if (m->DoClock == 1) 
	{
		MTrace1("eermMax:\tEvolving %d ms.", (int)(m->e->dt));
		EermTokensEvolve(m->e);
		EermMaxOutputTokens(m);
		// If this is a problem, may need to switch from "schedule" to "defer"?
		// Todo : commented out for debug : 
		//schedule(m, (void *)EermMaxEvolve, gettime() + (int)(m->e->dt), 0L, 0, NULL);
	}

	MTraceCall("eermMax:\tEvolve finished.");
	MMemExit;	
}

//======================= Output

//----------------------- EermMaxOutputTokens

void EermMaxOutputTokens(EermMax *m)
{
	int i;
	MMemEntry;
	
	MTraceCall("eermMax:\tOutputTokens..");
	MAssertVoid(m != NULL, "invalid eermmax ptr");

	for (i = 0; i < m->e->Nt; i++)
	{
		MTokenIsValid(m->e->tokens[i]);
		EermMaxOutputToken(m, i);
	}			

	MTraceCall("eermMax:\tOutputTokens finished.");
	MMemExit;	

}


//----------------------- EermMaxOutputToken

void EermMaxOutputToken(EermMax *m, int i)
{
	int k,j;
	Atom av[2];
	int ac = 2;
	char OutputString[MAX_LABEL_SIZE];
	//Symbol* symtoken, symnode;

	MMemEntry;
	MTraceCall("eermMax:\tOutputToken..");
	MAssertVoid(m != NULL, "invalid eerm ptr");
	
	// Todo : Check that the following string usage is correct.
	
	
	//MTrace2("OutputToken:\tToken[%d] : Simplex = %s", i, EermMaxSimplexLabel(m, m->e->tokens[i]->s->index));

	for (j = 0; j < m->e->Nn; j++)
	{

		strcpy(OutputString, EermMaxTokenLabel(m,i));
		strcat(OutputString, "/");
		strcat(OutputString, EermMaxNodeLabel(m, m->e->nodes[j]->index));
		SETSYM(av, gensym(OutputString));

		k = SimplexNodeFind(m->e->tokens[i]->s, m->e->nodes[j]);
		MAssert((k < m->e->tokens[i]->Nn), "invalid index");
			
		if (k != -1)
		{
			SETFLOAT(av+1, m->e->tokens[i]->coord[k]); 
		}
		else
		{
			SETFLOAT(av+1, 0.0f); 			
		}
		outlet_list(m->out, 0L, ac, av);					

	}
		
	/*
	for (j = 0; j < m->e->tokens[i]->Nn; j++)
	{
		MTrace1("OutputToken:\tCoord=%f",
			m->e->tokens[i]->coord[j]); 
		MTrace1("OutputToken:\tVCoord=%f",
			m->e->tokens[i]->vcoord[j]); 
		
		strcpy(OutputString, EermMaxTokenLabel(m,i));  
		strcat(OutputString, "/");
		strcat(OutputString, EermMaxNodeLabel(m, m->e->tokens[i]->s->nodes[j]->index) );
		SETSYM(av, gensym(OutputString));
		SETFLOAT(av+1, m->e->tokens[i]->coord[j]);

		outlet_list(m->out, 0L, ac, av);					
	}			
	*/

	MTraceCall("eermMax:\tOutputState finished.");
	MMemExit;	

}


//==========
// Messages 
//==========

//----------------------- EermMaxBang

void EermMaxBang(EermMax *m)
{
	MAssertVoid(m != NULL, "invalid eerm ptr");
	MTraceCall("eermMax:\tBang!");
	EermMaxClockOnce(m, NULL, 0, NULL);
}


//----------------------- EermMaxInt

void EermMaxInt(EermMax *m, int i)
{
	MMemEntry;	
	MAssertVoid(m != NULL, "invalid eerm ptr");
	MTrace1("eermMax:\tint=%d",i);
	MMemExit;	
}


//======================= Eerm

//----------------------- EermMaxSimplexSetEntry

void EermMaxSimplexSetEntry(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int s;
	MMemEntry;

	MTraceCall("eermMax:\tSimplexSetEntry");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");

	s = EermMaxSimplexAtomToIndex(m, ac, av);
	MErrorVoid(s != -1, "Simplex not found.");

	MTrace1("eermMax:\tSimplexSetEntry to %d", s);
	
	EermSetEntry(m->e, s);
	MMemExit;	

	MTraceCall("eermMax:\tSimplexSetEntry finished.");
}


//----------------------- EermMaxSetDt

void EermMaxSetDt(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	MMemEntry;	

	MTrace1("eermMax:\tSetDt %f ..",av[0].a_w.w_float);
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid (ac == 1, "Bad Arg count to EermMaxSetDt.");
	MErrorVoid(av[0].a_type == A_FLOAT, "Bad arg type to EermMaxSetDt.");
	
	EermSetDt(m->e, av[0].a_w.w_float);
	MMemExit;	

	MTraceCall("eermMax:\tSetDt finished.");
}


//----------------------- EermMaxSetForce

void EermMaxSetForce(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	MMemEntry;	

	MTraceCall("eermMax:\tSetForce..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid (ac == 1, "Bad Arg count to EermMaxSetForce.");
	MErrorVoid(av[0].a_type == A_SYM, "Bad arg type to EermMaxSetForce.");
	
	
	if (strcmp(av[0].a_w.w_sym->s_name, "InverseSquare") == 0)
	{
		m->e->sensorforce = 1;
	}
	else if (strcmp(av[0].a_w.w_sym->s_name, "Spring") == 0)
	{
		m->e->sensorforce = 0;
	}
	else
	{
		MError(0, "Valid sensor forces are: InverseSquare, Spring.");
	}
	
	MMemExit;	
	MTraceCall("eermMax:\tSetForce finished.");
}


//----------------------- EermMaxSetWeights
// Set weights for all tokens.
void EermMaxSetWeights(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	float *weights;
	MMemEntry;
	
	MTraceCall("eermMax:\tSetWeights..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument to EermMaxSetWeights");
	MErrorVoid (ac >= 0, "Bad argument count to EermMaxSetWeights");

	weights = (float *)getmem(m->e->tmptoken->Nf * sizeof(float));
	MErrorVoid(weights != NULL, "didn't get mem");

	AtomToFloatVector(ac,av,m->e->tmptoken->Nf,weights);

	EermSetWeights(m->e, weights, m->e->tmptoken->Nf);

	freemem(weights, m->e->tmptoken->Nf * sizeof(float));
		
	MMemExit;	

	MTraceCall("eermMax:\tSetWeights finished.");
}

//----------------------- EermMaxSetSlew
// Set slew for all tokens.
void EermMaxSetSlew(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	MMemEntry;
	
	MTraceCall("eermMax:\tSetSlew..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument to EermMaxSetWeights");
	MErrorVoid (ac == 1, "Bad argument count to EermMaxSetWeights");

	EermSetSlew(m->e, av[0].a_w.w_float);

	MMemExit;	
	MTraceCall("eermMax:\tSetSlew finished.");
}



//----------------------- EermMaxForceMeter

void EermMaxForceMeter(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	float *f;
	MMemEntry;
	
	MTraceCall("eermMax\t:ForceMeter..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
		
	f = (float *)getmem(ac * sizeof(float));
	MErrorVoid(f != NULL, "didn't get mem");

	AtomToFloatVector(ac, av, m->e->protof->Nf, f);
	
	FeatureUpdate(m->e->protof, f, m->e->protof->Nf);
	
	freemem(f, ac * sizeof(float));
	f = (float *)getmem(m->e->Nn * sizeof(float));
	MErrorVoid(f != NULL, "didn't get mem");

	EermForceMeter(m->e, m->e->protof, f, m->e->Nn);

	for (i = 0; i < m->e->Nn; i++)
	{
		post("Node %d : Force = %f", i, f[i]);
	}
		
	freemem(f, m->e->Nn * sizeof(float));

	// Todo : Could pass this out an aux output instead.
	MMemExit;	

	MTraceCall("eerm\t:ForceMeter finished.");
}


//----------------------- PostSimplices

void EermMaxPostSimplices(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	MMemEntry;
	MTraceCall("eermMax\t:PostSimplices..");
	MErrorVoid((m != NULL), "Missing argument");
	TraceSimplices(m);
	MTraceCall("eermMax\t:PostSimplices finished.");
}

//----------------------- PostTokens

void EermMaxPostTokens(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	MMemEntry;
	MTraceCall("eermMax\t:PostTokens..");
	MErrorVoid((m != NULL), "Missing argument");

	EermMaxOutputTokens(m);

	MTraceCall("eermMax\t:PostTokens finished.");
}


//----------------------- TraceSimplices

void TraceSimplices(EermMax *m)
{
	int i,j,nodeindex;	

	for (i = 0; i < m->e->Ns; i++)
	{
		//MSimplexIsValid(m->e->simplices[i]);
		post("SimplexLabels:\tIndex: %d\tLabel: %s", i, *(m->SimplexLabel + i));

		for(j = 0; j < m->e->simplices[i]->Nn; j++)
		{
			nodeindex = m->e->simplices[i]->nodes[j]->index;
			post("    Node %d : index=%d, label=%s", 
				j,
				nodeindex, 
				m->NodeLabel[nodeindex]);

			//MNodeIsValid(m->e->simplices[i]->nodes[j]);
		}

	}
}



//----------------------- TraceLabels

void TraceLabels(EermMax *m)
{
/*	int i;
	for (i = 0; i < m->e->NsMax; i++)
	{
		post("SimplexLabel[%d] = %s", i, m->SimplexLabel[i]);
	}
	for (i = 0; i < m->e->NnMax; i++)
	{
		post("NodeLabel[%d] = %s", i, m->NodeLabel[i]);
	}
	for (i = 0; i < m->e->NtMax; i++)
	{
		post("TokenLabel[%d] = %s", i, m->TokenLabel[i]);
	}*/
}


//======================= Simplex

//----------------------- SimplexNew

void EermMaxSimplexNew(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	int s;
	Atom *NodeAtom;
	int *NodeIndexList;
	//MMemEntry;	

	MTrace1("eermMax:\tSimplexNew with %d nodes..", (ac-1));
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid (ac >= 2, "Wrong num args to SimplexNew");
	MErrorVoid(av[0].a_type == A_SYM, "Simplex label expected.");

	// Make sure that the label is unique:
	MErrorVoid(EermMaxSimplexIndex(m, av[0].a_w.w_sym->s_name) == -1, 
		"Name is not unique!");

	// Create the node int list	
	NodeIndexList = (int *)getmem((ac-1) * sizeof(int));
	MErrorVoid(NodeIndexList != NULL, "didn't get mem");

	NodeAtom = av + 1;

	// Node atoms to node indexes
	for (i = 0; i < (ac-1); i++)
	{
		NodeIndexList[i] = EermMaxNodeAtomToIndex(m, 1, &NodeAtom[i]);
		if (NodeIndexList[i] == -1)
		{
			MError((NodeIndexList[i] != -1),"Node not found.");
			freemem(NodeIndexList, (ac-1) * sizeof(int));
			MTraceCall("eermMax:\tSimplexNew finished.");
			return;
		}		
	} 
	
	// Create the Eerm Simplex, returning the index
	s = EermSimplexAdd(m->e, (ac-1), NodeIndexList);

	freemem(NodeIndexList, (ac-1) * sizeof(int));

	if (s != (m->e->Ns - 1))
	{
		post("Expression should be 1: %d", (s != (m->e->Ns - 1))); 
		post("Warning: Simplex already exists, with index %d; label unchanged.", s);
		//MPostMemChange;
		MTraceCall("eermMax:\tSimplexNew finished.");
		return;
	}
	 
	// Add the label.
	EermMaxSimplexSetLabel(m, s, av[0].a_w.w_sym->s_name);

	//MPostMemChange;	

	MTraceSimplices(m);
	MTraceCall("eermMax:\tSimplexNew finished.");
}


//----------------------- SimplexDelete

void EermMaxSimplexDelete(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int index;
	MMemEntry;	

	MTraceCall("eermMax:\tSimplexDelete..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid(ac >= 0, "wrong num args to SimplexDelete");
	MErrorVoid(av[0].a_type == A_SYM, "Simplex label expected.");

	index = EermMaxSimplexIndex(m, av[0].a_w.w_sym->s_name);

	MErrorVoid(index != -1, "Simplex not found.");
		
	EermSimplexDelete(m->e,index); 		

	MPostMemChange;	

	MTraceCall("eermMax:\tSimplexDelete finished..");
}


//----------------------- SimplexSetTp

void EermMaxSimplexSetTp(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int s1, s2;
	MMemEntry;	

	MTraceCall("eermMax:\tSimplexSetTp..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid (ac == 3, "wrong num args to SimplexSetTp");
	MErrorVoid(av[0].a_type == A_SYM, "Simplex label expected.");
	MErrorVoid(av[1].a_type == A_SYM, "Simplex label expected.");
	MErrorVoid(av[2].a_type == A_FLOAT, "TP expected.");
	MErrorVoid(av[2].a_w.w_float >= 0.0, "Positive float expected.");

	s1 = EermMaxSimplexIndex(m, av[0].a_w.w_sym->s_name);
	MErrorVoid(s1 != -1, "Simplex not found.");

	s2 = EermMaxSimplexIndex(m, av[1].a_w.w_sym->s_name);
	MErrorVoid(s2 != -1, "Simplex not found.");

	if (!SimplexSetTp(m->e->simplices[s1], m->e->simplices[s2], av[2].a_w.w_float))
	{
		error("Simplices are not neighbors");
	}

	MMemExit;	
	MTraceCall("eermMax:\tSimplexSetTp finished.");
}


//======================= Node

//----------------------- NodeNew

void EermMaxNodeNew(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;

	MTraceCall("eermMax:\tNodeNew.");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid (ac == 1, "wrong num args to NodeNew");

	i = EermNodeAdd(m->e,
		NodeNew(m->e->Nn, m->e->tmpnode->Nf, m->e->NnMax));
	MErrorVoid(i >= 0, "Max Nnodes reached.");	

	MTrace4("eermMax:\tNodeNew: Index=%d, Nn=%d, Nf=%d, NnMax=%d",
		i, m->e->Nn, m->e->tmpnode->Nf, m->e->NnMax);
	
	//Set Node Label
	MErrorVoid(av[0].a_type == A_SYM, "Node Label expected");
	EermMaxNodeSetLabel(m, i, av[0].a_w.w_sym->s_name);

	MTraceCall("eermMax:\tNodeNew finished..");
	
	// Note: don't bother to set tp here, since we connect simplices, not nodes. 
	// node->tp is not important for the present application. (perhaps later.)	
}


//----------------------- NodeSetLabelMsg  (ugly name but NodeSetLabel already used.)

void EermMaxNodeSetLabelMsg(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	MTraceCall("eermMax:\tNodeSetLabel..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid (ac == 2, "Two args expected to NodeSetLabel");
	MErrorVoid(((av[0].a_type == A_LONG) || (av[0].a_type == A_SYM)) && (av[1].a_type == A_SYM), "Wrong args to NodeSetLabel");	
	
	EermMaxNodeSetLabel(m, 
		EermMaxNodeAtomToIndex(m,1,&av[0]), 
		av[1].a_w.w_sym->s_name);

	MTraceSimplices(m);
	MTraceCall("eermMax:\tNodeSetLabel finished.");
}


//----------------------- NodeSetMean

void EermMaxNodeSetMean(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	float *mean;
	Atom *MeanAtom;
	MMemEntry;	
	
	MTraceCall("eermMax:\tNodeSetMean..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac > 1) && ((av[0].a_type == A_LONG) || (av[0].a_type == A_SYM)), "Node Label arg expected");
	MErrorVoid(ac == (m->e->tmptoken->Nf + 1), "Wrong feature dimension");
	
	i = EermMaxNodeAtomToIndex(m, 1, &av[0]);
	MErrorVoid(i >= 0, "eermMax:\tNode not found.");
	MeanAtom = av + 1;
	
	AtomFloatIsValid((ac-1), MeanAtom, m->e->nodes[i]->Nf);	
		
	mean = (float *)getmem((ac-1) * sizeof(float));
	MErrorVoid(mean != NULL, "failed to get mem.");

	AtomToFloatVector((ac-1),MeanAtom,(ac-1),mean);
		
	NodeSetMean(m->e->nodes[i], mean, ac - 1);

	freemem(mean, (ac-1) * sizeof(float));
	MMemExit;

	MTraceCall("eermMax:\tNodeSetMean finished.");
}


//----------------------- NodeSetVar

void EermMaxNodeSetVar(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	float *var;
	Atom *VarAtom;
	MMemEntry;	
	
	MTraceCall("eermMax:\tNodeSetVar..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac > 1) && ((av[0].a_type == A_LONG) || (av[0].a_type == A_SYM)), "Node Label arg expected");
	MErrorVoid(ac == (m->e->tmptoken->Nf + 1), "Wrong feature dimension");
	
	i = EermMaxNodeAtomToIndex(m, 1, &av[0]);
	MErrorVoid(i >= 0, "eermMax:\tNode not found.");
	VarAtom = av + 1;

	AtomPosFloatIsValid((ac-1), VarAtom, m->e->nodes[i]->Nf);	
		
	var = (float *)getmem((ac-1) * sizeof(float));
	MErrorVoid(var != NULL, "failed to get mem.");

	AtomToFloatVector((ac-1),VarAtom,(ac-1),var);
	
	NodeSetVar(m->e->nodes[i], var, ac - 1);
	freemem(var, (ac-1) * sizeof(float));

	MMemExit;
		
	MTraceCall("eermMax:\tNodeSetVar finished..");
}


//----------------------- NodeSetPotential

void EermMaxNodeSetPotential(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	MMemEntry;	
	
	MTraceCall("eermMax:\tNodeSetPotential..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac == 2) , "wrong number args to NodeSetPotential");
	MErrorVoid(av[1].a_type == A_FLOAT, "float expected at NodeSetPotential");
	
	i = EermMaxNodeAtomToIndex(m, 1, &av[0]);
	MErrorVoid(i >= 0, "eermMax:\tNode not found.");

	NodeSetPotential(m->e->nodes[i], av[1].a_w.w_float);	

	MTraceCall("eermMax:\tNodeSetPotential finished..");
}


//======================= Token

//----------------------- TokenNew

void EermMaxTokenNew(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;

	MTraceCall("eermMax:\tTokenNew..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid(ac >= 1, "Wrong num args to TokenNew");

	// Add token.
	i = EermTokenAdd(m->e, 
		TokenNew(
			m->e->Nt, 
			m->e->tmpsmp, 
			m->e->tmptoken->Nf, 
			m->e->tmptoken->f->slew,
			m->e->NnMax)); 
	MErrorVoid(i >= 0, "Unable to add token");

	// Set Token Label
	MErrorVoid(av[0].a_type == A_SYM, "Token Label expected");
	EermMaxTokenSetLabel(m,i,av[0].a_w.w_sym->s_name);

	// Set Token Attributes
	arg_num(m->e->tokens[i]->mass, 1, ac, av);
	arg_num(m->e->tokens[i]->expscale, 2, ac, av);
	arg_num(m->e->tokens[i]->damping, 3, ac, av);
	arg_num(m->e->tokens[i]->tokencoupling, 4, ac, av);

	MTraceCall("eermMax:\tTokenNew finished.");
}


//----------------------- StulleTokenNew

void EermMaxStulleTokenNew(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;

	MTraceCall("eermMax:\tStulleTokenNew..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid(ac >= 1, "Wrong num args to TokenNew");

	// Add token.
	i = EermTokenAdd(m->e, 
		TokenNew(
			m->e->Nt, 
			m->e->tmpsmp, 
			m->e->tmptoken->Nf, 
			m->e->tmptoken->f->slew,
			m->e->NnMax));
			 
	MErrorVoid(i >= 0, "Unable to add token");

	// Set Token Label
	MErrorVoid(av[0].a_type == A_SYM, "Token Label expected");
	EermMaxTokenSetLabel(m,i,av[0].a_w.w_sym->s_name);

	// Set Token Attributes
	arg_num(m->e->tokens[i]->mass, 1, ac, av);
	arg_num(m->e->tokens[i]->damping, 2, ac, av);
	arg_num(m->e->tokens[i]->tokencoupling, 3, ac, av);

	// Set Stulle Attributes.
	m->e->tokens[i]->stulle = 1;
	m->e->tokens[i]->expscale = 0.0;

	MTraceCall("eermMax:\tStulleTokenNew finished.");
}


//----------------------- TokenDelete

void EermMaxTokenDelete(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	MMemEntry;	

	MTraceCall("eermMax:\tTokenDelete..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac == 1) && (av[0].a_type == A_SYM), "Token Label arg expected");
	
	i = EermMaxTokenIndex(m,av[0].a_w.w_sym->s_name);
	EermTokenDelete(m->e, i);
	m->NodeLabel[i] = NULL; // Not sure if this is the right thing to do.
	CompactPtrArray((void **)m->NodeLabel, m->e->NtMax);

	MTraceCall("eermMax:\tTokenDelete finished.");
}


//----------------------- TokenSetCoord

void EermMaxTokenSetCoord(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	float *coord;
	Atom *CoordAtom;
	MMemEntry;	
	
	MTraceCall("eermMax:\tTokenSetCoord..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac > 1) && (av[0].a_type == A_SYM), "Token Label arg expected");
	
	// get token index by label:
	i = EermMaxTokenIndex(m,av[0].a_w.w_sym->s_name);
	AtomPosFloatIsValid((ac-1), (av+1), m->e->tokens[i]->Nn);	
	
	// extract coord vector:	
	coord = (float *)getmem((ac-1) * sizeof(float));
	MErrorVoid(coord != NULL, "failed to get mem.");

	CoordAtom = av + 1;
	AtomToFloatVector((ac-1),CoordAtom,(ac-1),coord);
	
	TokenSetCoord(m->e->tokens[i], coord, NULL, m->e->tokens[i]->Nn);

	freemem(coord, (ac-1) * sizeof(float));

	MTraceCall("eermMax:\tTokenSetCoord finished.");

	MMemExit;	
}


//----------------------- EermMaxTokenSetWeights
// Set weights for token.
void EermMaxTokenSetWeights(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	float *weights;
	Atom *WeightAtom;
	MMemEntry;	
	
	MTraceCall("eermMax:\tTokenSetWeights..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid (ac == (m->e->tmptoken->Nf + 1), "Wrong number args to TokenSetWeights");
	MErrorVoid(av[0].a_type == A_SYM, "Symbol expected");	
	
	i = EermMaxTokenIndex(m, av[0].a_w.w_sym->s_name);
	MErrorVoid(i != -1, "Token Not Found.");

	weights = (float *)getmem((ac-1) * sizeof(float));
	MErrorVoid(weights != NULL, "failed to get mem.");
	
	WeightAtom = av + 1;

	AtomToFloatVector((ac-1),WeightAtom,m->e->tmptoken->Nf,weights);	

	FeatureSetWeights(m->e->tokens[i]->f, weights, (ac-1));

	freemem(weights, (ac-1) * sizeof(float));

	MMemExit;	

	MTraceCall("eermMax:\tTokenSetWeights finished.");
}


//----------------------- TokenSetSimplex

void EermMaxTokenSetSimplex(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i,j;
	Atom *simplexatom;
	MMemEntry;	

	MTraceCall("eermMax:\tTokenSetSimplex..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac > 1) && (av[0].a_type == A_SYM), "Token Label arg expected");

	// get token index by label:
	i = EermMaxTokenIndex(m, av[0].a_w.w_sym->s_name);

	// get simplex index by atom (node list or label):
	simplexatom = av+1;
	j = EermMaxSimplexAtomToIndex(m, (ac-1), simplexatom);
	
	if ((i != -1) && (j != -1))
	{
		TokenSetSimplex(m->e->tokens[i], m->e->simplices[j], m->e);
	}
	else
	{
		MError(i != -1, "Token not found.");
		MError(j != -1, "Simplex not found.");
	}

	MTraceCall("eermMax:\tTokenSetSimplex finished.");
}


//----------------------- TokenSetMass

void EermMaxTokenSetMass(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	MMemEntry;	

	MTraceCall("eermMax:\tTokenSetMass..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac == 1) && (av[0].a_type == A_FLOAT), "Token Label arg expected");
	MErrorVoid(av[0].a_w.w_float > 0.0, "Positive mass expected");
	
	// get token index by label:
	i = EermMaxTokenIndex(m,av[0].a_w.w_sym->s_name);

	m->e->tokens[i]->mass = av[0].a_w.w_float;

	MTraceCall("eermMax:\tTokenSetMass finished.");
}


//----------------------- TokenSetDamping

void EermMaxTokenSetDamping(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	MMemEntry;	

	MTraceCall("eermMax:\tTokenSetDamping..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac == 1) && (av[0].a_type == A_FLOAT), "Token Label arg expected");

	// get token index by label:
	i = EermMaxTokenIndex(m,av[0].a_w.w_sym->s_name);

	m->e->tokens[i]->damping = av[0].a_w.w_float;

	MTraceCall("eermMax:\tTokenSetDamping finished.");
}


//----------------------- TokenSetExpScale

void EermMaxTokenSetExpScale(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	MMemEntry;	

	MTraceCall("eermMax:\tTokenSetExpScale..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac == 1) && (av[0].a_type == A_FLOAT), "Token Label arg expected");

	// get token index by label:
	i = EermMaxTokenIndex(m,av[0].a_w.w_sym->s_name);

	m->e->tokens[i]->expscale = av[0].a_w.w_float;

	MTraceCall("eermMax:\tTokenSetExpScale finished.");
}


//----------------------- TokenSetTokenCoupling

void EermMaxTokenSetTokenCoupling(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	MMemEntry;	

	MTraceCall("eermMax:\tTokenSetTokenCoupling..");
	MErrorVoid((m != NULL) && (msg != NULL) && (av != NULL), "Missing argument");
	MErrorVoid((ac == 1) && (av[0].a_type == A_FLOAT), "Token Label arg expected");

	// get token index by label:
	i = EermMaxTokenIndex(m,av[0].a_w.w_sym->s_name);

	m->e->tokens[i]->tokencoupling = av[0].a_w.w_float;

	MTraceCall("eermMax:\tTokenSetTokenCoupling finished.");
}


//----------------------- TokenFeatureUpdate

void EermMaxTokenFeatureUpdate(EermMax *m, Symbol *msg, short ac, Atom *av)
{
	int i;
	float *f;
	Atom *fAtom;
	int Nf;
	MMemEntry;	

	MTraceCall("eermMax:\tTokenFeatureUpdate..");
	MAssertVoid((m != NULL), "Missing argument to TokenFeatureUpdate");
	MAssertVoid (ac >= 0, "Wrong num args to TokenFeatureUpdate");
	fAtom = av;
	Nf = ac;

	if (msg == gensym("TokenFeatureUpdate"))
	{
		i = EermMaxTokenIndex(m,av[0].a_w.w_sym->s_name);
		fAtom++;
		Nf--;
	}
	else
	{
		i = EermMaxTokenIndex(m,msg->s_name);
	}
	
	// Todo : make sure these checks are in place elsewhere index is looked up.
	// Todo : spawn new player if we receive new sensor data && auto_token_new flag.
	if (i == -1) return;
	
	MErrorVoid(Nf == m->e->tokens[i]->Nf, "Wrong number of feature components.");

	f = (float *)getmem(Nf * sizeof(float));
	MAssertVoid(f != NULL, "failed to get mem.");

	MAtomToVec(Nf, fAtom, f);	
	FeatureUpdate(m->e->tokens[i]->f, f, Nf);

	freemem(f, Nf * sizeof(float));
	MMemExit;

	MTraceCall("eermMax:\tTokenFeatureUpdate finished.");
}


//======================= Strings

//----------------------- StringArraySetLabel

void StringArraySetLabel(char **a, int asize, int i, char *s)
{
	MErrorVoid(s != KNullStr, "received null string");
	MErrorVoid(i < asize, "invalid index");
	MErrorVoid(a != NULL, "invalid string array ptr");
	MErrorVoid(s != NULL, "invalid string ptr");
	MErrorVoid(a+i != NULL, "invalid string ptr");
	MErrorVoid(strlen(s) < (MAX_LABEL_SIZE - 1), "label too long!");
	
	strcpy(a[i],s);	
}

//----------------------- StringArrayLabel

char *StringArrayLabel(char **a, int asize, int i)
{
	MAssertPtr(i < asize, "invalid string array index");
	MAssertPtr(a != NULL, "invalid string ptr");
	MAssertPtr(a+i != NULL, "invalid string ptr");
	//MTrace2("StringArrayLabel:\tLabel[%d]=%s",i,a[i]);
	
	return a[i];
}


//----------------------- StringArrayIndex

int StringArrayIndex(char **a, int asize, char *s)
{
	int i;
	MAssertInt(a != NULL, "invalid string ptr");
	MAssertInt(s != NULL, "invalid string");
	MAssertInt(strlen(s) < (MAX_LABEL_SIZE - 1), "label too long!");

	for (i = 0; i < asize; i++)
	{
		if (strcmp(s, a[i]) == 0) return i;
	}

	return -1;
}


//---------- Tokens

//----------------------- EermMaxTokenSetLabel

void EermMaxTokenSetLabel(EermMax *m, int i, char *s)
{
	MAssertVoid(m != NULL, "invalid eerm ptr");
	StringArraySetLabel(m->TokenLabel, m->e->Nt, i, s);	
	MTraceLabels(m);
}

//----------------------- EermMaxTokenLabel

char *EermMaxTokenLabel(EermMax *m, int i)
{
	MAssertPtr(m != NULL, "invalid eerm ptr");
	return StringArrayLabel(m->TokenLabel, m->e->NtMax, i);
}

//----------------------- EermMaxTokenIndex

int EermMaxTokenIndex(EermMax *m, char *s)
{
	MAssertInt(m != NULL, "invalid eerm ptr");
	return StringArrayIndex(m->TokenLabel, m->e->Nt, s);
}

//---------- Nodes

//----------------------- EermMaxNodeSetLabel

void EermMaxNodeSetLabel(EermMax *m, int i, char *s)
{
	MAssertVoid(m != NULL, "invalid eerm ptr");
	StringArraySetLabel(m->NodeLabel, m->e->NnMax, i, s);	
	MTraceLabels(m);
}

//----------------------- EermMaxNodeLabel

char *EermMaxNodeLabel(EermMax *m, int i)
{
	MAssertPtr(m != NULL, "invalid eerm ptr");
	return StringArrayLabel(m->NodeLabel, m->e->Nn, i);
}

//----------------------- EermMaxNodeIndex

int EermMaxNodeIndex(EermMax *m, char *s)
{
	MAssertInt(m != NULL, "invalid eerm ptr");
	return StringArrayIndex(m->NodeLabel, m->e->Nn, s);
}

//---------- Simplices

//----------------------- EermMaxSimplexSetLabel

void EermMaxSimplexSetLabel(EermMax *m, int i, char *s)
{
	MAssertVoid(m != NULL, "invalid eerm ptr");
	StringArraySetLabel(m->SimplexLabel, m->e->NsMax, i, s);	
	MTraceLabels(m);
}

//----------------------- EermMaxSimplexLabel

char *EermMaxSimplexLabel(EermMax *m, int i)
{
	MAssertPtr(m != NULL, "invalid eerm ptr");
	return StringArrayLabel(m->SimplexLabel, m->e->Ns, i);
}

//----------------------- EermMaxSimplexIndex

int EermMaxSimplexIndex(EermMax *m, char *s)
{
	MAssertInt(m != NULL, "invalid eerm ptr");
	return StringArrayIndex(m->SimplexLabel, m->e->Ns, s);
}


//======================= Helpers


//----------------------- SimplexAtomToIndex

int EermMaxSimplexAtomToIndex(EermMax *m, int ac, Atom *av)
{
	int i, s;
	Node **nodes;
	MMemEntry;	
	MAssertInt ((ac >= 0) && (ac <= m->e->Nn), "Bad argument count.");

	if (ac == 1) // SimplexByLabel
	{
		MAssertInt(av[0].a_type == A_SYM, "invalid eerm ptr"); // check simplex Label
		s = EermMaxSimplexIndex(m, av[0].a_w.w_sym->s_name);
		MAssertInt(s != -1, "Simplex not found.");
	}
	else // SimplexByNodes
	{
		AtomPosIntIsValid(ac, av, ac);
		nodes = (Node **)getmem(ac * sizeof(Node *));
		MAssertInt(nodes != NULL, "failed to get mem.");

		for (i = 0; i < ac; i++)
		{
			nodes[i] = m->e->nodes[av[i].a_w.w_long];
		}
			
		s = EermNodeListFind(m->e, nodes, ac);

		freemem(nodes, ac * sizeof(Node *));		
	}
			
	MMemExit;
	return s;
}

//----------------------- NodeAtomToIndex

int EermMaxNodeAtomToIndex(EermMax *m, int ac, Atom *av)
{
	int n;
	MMemEntry;	

	MAssertInt((ac == 1), "Bad argument count.");

	//MTrace1("eermMax:\tNodeAtomToIndex:\t(a_type == A_LONG) = %d",(av[0].a_type == A_LONG));

	if (av[0].a_type == A_LONG) // NodeByIndex
	{
		n = av[0].a_w.w_long;
	}
	else if (av[0].a_type == A_SYM)
	{
		n = EermMaxNodeIndex(m, av[0].a_w.w_sym->s_name);
	}
	else
	{
		MInvalid("Bad node indicator");
		n = -2;
	}
			
	MMemExit;
	return n;
}





//=======
//  EOF
//=======



