//		----------------------------------------------------------
//		-- fredrik olofsson 040226								--
//		-- converted from abstraction with the same name		--
//		-- well, almost the same name: f0.inc/dec_split			--
//		-- updated for wmax using cygwin 051016					--
//		-- updated for ub using xcode 070103					--
//		-- bugfix for repeating values 081104 - v1.1			--
//		-- distributed under GNU GPL license					--
//		----------------------------------------------------------

#include "ext.h"

void *this_class;

typedef struct _mod {
	t_object m_ob;
	double m_valueLeft;
	double m_valueLast;
	double m_valueDefault;
	short m_outFlag;
	void *m_out;
	void *m_out2;
} m_mod;

void *mod_new(double value);
void mod_int(m_mod *mod, long value);
void mod_float(m_mod *mod, double value);
void mod_ft1(m_mod *mod, double value);
void mod_bang(m_mod *mod);
void mod_reset(m_mod *mod);
void theFunction(m_mod *mod);
void mod_assist(m_mod *mod, Object *m, long msg, long arg, char *dst);


//----------------------------------------------------------------------------------------------

void main(void) {
	setup((Messlist **)&this_class, (method)mod_new, 0L, (short)sizeof(m_mod), 0L, A_DEFFLOAT, 0);
	
	addbang((method)mod_bang);
	addint((method)mod_int);
	addfloat((method)mod_float);
	addftx((method)mod_ft1, 1);
	addmess((method)mod_reset, "reset", 0);
	
	addmess((method)mod_assist, "assist", A_CANT, 0);
	
	finder_addclass("All Objects", "f0.inc_dec_split");
	finder_addclass("Control", "f0.inc_dec_split");
	
	post("f0.inc_dec_split v1.1-ub; distributed under GNU GPL license");		//target specific
}

void *mod_new(double value) {
	m_mod *mod;
	
	mod = (m_mod *)newobject(this_class);
	mod->m_valueLeft = 0;
	mod->m_valueLast = 0;
	mod->m_outFlag = 0;
	if (value != 0) {
		mod->m_valueLast = value;
		mod->m_valueDefault = value;
	}
	mod->m_out2 = floatout(mod);
	mod->m_out = floatout(mod);
	floatin(mod, 1);
	
	return(mod);
}

void mod_assist(m_mod *mod, Object *m, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0:
				sprintf(dst, "values (float)");
				break;
			case 1:
				sprintf(dst, "start value (float)");
				break;
		}
	} else if(msg==ASSIST_OUTLET) {
		switch(arg) {
			case 0:
				sprintf(dst, "increasing values (float)");
				break;
			case 1:
				sprintf(dst, "decreasing values (float)");
				break;
		}
	}
}

//----------------------------------------------------------------------------------------------

void mod_int(m_mod *mod, long value) {
	mod->m_valueLeft = value;
	theFunction(mod);
}

void mod_float(m_mod *mod, double value) {
	mod->m_valueLeft = value;
	theFunction(mod);
}

void mod_ft1(m_mod *mod, double value) {
	mod->m_valueLast = value;
}

void mod_bang(m_mod *mod) {
	theFunction(mod);
}

void mod_reset(m_mod *mod) {
	mod->m_valueLast = mod->m_valueDefault;
}

//----------------------------------------------------------------------------------------------

void theFunction(m_mod *mod) {
	if(mod->m_valueLeft > mod->m_valueLast) {
		outlet_float(mod->m_out, mod->m_valueLeft);
		mod->m_outFlag = 0;
		mod->m_valueLast = mod->m_valueLeft;
	} else if (mod->m_valueLeft < mod->m_valueLast) {
		outlet_float(mod->m_out2, mod->m_valueLeft);
		mod->m_outFlag = 1;
		mod->m_valueLast = mod->m_valueLeft;
	} else {
		if (mod->m_outFlag == 0) {
			outlet_float(mod->m_out, mod->m_valueLeft);
		} else {
			outlet_float(mod->m_out2, mod->m_valueLeft);
		}
	}
}
