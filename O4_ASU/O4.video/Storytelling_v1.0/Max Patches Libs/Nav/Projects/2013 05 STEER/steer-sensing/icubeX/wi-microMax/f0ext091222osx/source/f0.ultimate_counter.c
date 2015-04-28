//		----------------------------------------------------------
//		-- fredrik olofsson 091221								--
//		-- distributed under GNU GPL license					--
//		----------------------------------------------------------

#include "ext.h"

#define CNT_MIN -2147483647
#define CNT_MAX 2147483647

void *this_class;

typedef struct _mod {
	t_object m_ob;
	double m_value;
	double m_step;
	short m_loop;
	double m_min;
	double m_max;
	void *m_out;
	void *m_out2;
	void *m_out3;
} m_mod;

void *mod_new(double stepArg, short loopArg, double minArg, double maxArg);
void mod_float(m_mod *mod, double value);
void mod_loop(m_mod *mod, short value);
void mod_reset_next(m_mod *mod, double value);
void mod_reset_now(m_mod *mod, double value);
void mod_min(m_mod *mod, double min);
void mod_max(m_mod *mod, double max);
void mod_bang(m_mod *mod);
void mod_step(m_mod *mod, double value);
double clipFunction(m_mod *mod, double in, double min, double max);
double wrapFunction(m_mod *mod, double in, double min, double max);
double foldFunction(m_mod *mod, double in, double min, double max);
void mod_assist(m_mod *mod, Object *m, long msg, long arg, char *dst);


//----------------------------------------------------------------------------------------------

void main(void) {
	setup((Messlist **)&this_class, (method)mod_new, 0L, (short)sizeof(m_mod), 0L, A_DEFFLOAT, A_DEFLONG, A_DEFFLOAT, A_DEFFLOAT, 0);
	
	addbang((method)mod_bang);
	addint((method)mod_float);
	addfloat((method)mod_float);
	addftx((method)mod_step, 1);
	addinx((method)mod_loop, 2);
	addftx((method)mod_reset_next, 3);
	addftx((method)mod_reset_now, 4);
	addftx((method)mod_min, 5);
	addftx((method)mod_max, 6);
	
	addmess((method)mod_assist, "assist", A_CANT, 0);
	
	finder_addclass("All Objects", "f0.ultimate_counter");
	finder_addclass("Control", "f0.ultimate_counter");
	
	post("f0.ultimate_counter v1.0-ub; distributed under GNU GPL license");		//target specific
}

void *mod_new(double stepArg, short loopArg, double minArg, double maxArg) {
	m_mod *mod = (m_mod *)newobject(this_class);
	
	if(stepArg != 0.) {
		mod->m_step = stepArg;
	} else {
		mod->m_step = 1.;
	}
	mod->m_loop = loopArg;
	
	if(minArg == 0. && maxArg == 0.) {
		mod->m_min = CNT_MIN;
		mod->m_max = CNT_MAX;
		mod->m_value = 0.;
	} else if(minArg != 0. && maxArg == 0.) {
		mod->m_min = minArg;
		mod->m_max = CNT_MAX;
		mod->m_value = mod->m_min;
	} else {
		mod->m_min = minArg;
		mod->m_max = maxArg;
		mod->m_value = mod->m_min;
	}
	
	mod->m_out3 = bangout(mod);
	mod->m_out2 = bangout(mod);
	mod->m_out = floatout(mod);
	floatin(mod, 6);
	floatin(mod, 5);
	floatin(mod, 4);
	floatin(mod, 3);
	intin(mod, 2);
	floatin(mod, 1);
	
	return(mod);
}

void mod_assist(m_mod *mod, Object *m, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0:
				sprintf(dst, "inc/dec (bang), set value (float)");
				break;
			case 1:
				sprintf(dst, "set step (float)");
				break;
			case 2:
				sprintf(dst, "0= limit, 1= loop, 2= palindrome");
				break;
			case 3:
				sprintf(dst, "resets counter to number on next clock");
				break;
			case 4:
				sprintf(dst, "resets counter to number immediately");
				break;
			case 5:
				sprintf(dst, "floor value (float)");
				break;
			case 6:
				sprintf(dst, "ceil value (float)");
				break;
		}
	} else if(msg==ASSIST_OUTLET) {
		switch(arg) {
			case 0:
				sprintf(dst, "counter (float)");
				break;
			case 1:
				sprintf(dst, "counter hits floor (bang)");
				break;
			case 2:
				sprintf(dst, "counter hits ceil (bang)");
				break;
		}
	}
}

//----------------------------------------------------------------------------------------------

void mod_float(m_mod *mod, double value) {
	mod->m_value = value;
}

void mod_step(m_mod *mod, double value) {
	mod->m_step = value;
}

void mod_loop(m_mod *mod, short value) {
	mod->m_loop = value;
}

void mod_reset_next(m_mod *mod, double value) {
	mod->m_value = value;
}

void mod_reset_now(m_mod *mod, double value) {
	mod->m_value = clipFunction(mod, value, mod->m_min, mod->m_max);
	outlet_float(mod->m_out, mod->m_value);
}

void mod_min(m_mod *mod, double min) {
	mod->m_min = min;
}

void mod_max(m_mod *mod, double max) {
	mod->m_max = max;
}

void mod_bang(m_mod *mod) {
	switch(mod->m_loop) {
		case 1:
			mod->m_value = wrapFunction(mod, mod->m_value, mod->m_min, mod->m_max);
			break;
		case 2:
			mod->m_value = foldFunction(mod, mod->m_value, mod->m_min, mod->m_max);
			break;
		default:
			mod->m_value = clipFunction(mod, mod->m_value, mod->m_min, mod->m_max);
			break;
	}
	outlet_float(mod->m_out, mod->m_value);
	mod->m_value = mod->m_value+mod->m_step;
}

double clipFunction(m_mod *mod, double in, double min, double max) {
	double a;
	
	if(min > max) {
		a = min;
		min = max;
		max = a;
	}
	
	if(in > max) {
		outlet_bang(mod->m_out3);
		a = max;
	} else if(in < min) {
		outlet_bang(mod->m_out2);
		a = min;
	} else {
		a = in;
	}
	
	return a;
}

double wrapFunction(m_mod *mod, double in, double min, double max) {
	double a, b;
	
	if(min > max) {
		a = min;
		min = max;
		max = a;
	}
	
	if(in >= min && in <= max || min == max) {
		a = in;
	} else {
		b = fabs(max - min);
		if(in < min) {
			outlet_bang(mod->m_out2);
			a = max - fabs(fmod(in - min, b));
		} else {
			outlet_bang(mod->m_out3);
			a = min + fabs(fmod(in - max, b));
		}
	}
	
	return a;
}

double foldFunction(m_mod *mod, double in, double min, double max) {
	double a, b, c;
	
	if(min > max) {
		a = min;
		min = max;
		max = a;
	}
	
	if(in >= min && in <= max || min == max) {
		b = in;
	} else {
		mod->m_step = 0.-mod->m_step;
		c = fabs(max - min) * 2;
		if(in < min) {
			outlet_bang(mod->m_out2);
			a = min - fmod(in - min, c);
			if(a >= min && a <= max) {
				b = a;
			} else {
				b = max + (max - a);
			}
		} else {
			outlet_bang(mod->m_out3);
			a = max - fmod(in - max, c);
			if(a > (min - c / 2) && a <= min) {
				b = min + (min - a);
			} else {
				b = a;
			}
		}
	}
	
	return b;
}
