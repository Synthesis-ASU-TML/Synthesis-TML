//		----------------------------------------------------------
//		-- fredrik olofsson 040301								--
//		-- updated 060507 - added set							--
//		-- converted from abstraction with the same name		--
//		-- updated for ub using xcode 070103					--
//		-- distributed under GNU GPL license					--
//		----------------------------------------------------------

//#include <math.h>		//target specific - uncomment for classic
#include "ext.h"

void *this_class;

typedef struct _f0ext {
	t_object x_ob;
	double x_valLeft;
	double x_valMiddle;
	double x_valRight;
	double x_min;
	double x_max;
	short x_flag;
	void *x_out;
	void *x_out2;
} x_f0ext;

void *f0ext_new(double value1, double value2);
void f0ext_int(x_f0ext *f0ext, long value);
void f0ext_float(x_f0ext *f0ext, double value);
void f0ext_ft1(x_f0ext *f0ext, double value);
void f0ext_ft2(x_f0ext *f0ext, double value);
void f0ext_bang(x_f0ext *f0ext);
void f0ext_factor(x_f0ext *f0ext);
void f0ext_range(x_f0ext *f0ext);
void f0ext_set(x_f0ext *f0ext, double min, double max);
void theFunction(x_f0ext *f0ext);
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *s);

//----------------------------------------------------------------------------------------------
void main(void) {
	setup((Messlist **)&this_class, (method)f0ext_new, 0L, (short)sizeof(x_f0ext), 0L, A_DEFFLOAT, A_DEFFLOAT, 0);
	addbang((method)f0ext_bang);
	addint((method)f0ext_int);
	addfloat((method)f0ext_float);
	addftx((method)f0ext_ft1, 1);
	addftx((method)f0ext_ft2, 2);
	addmess((method)f0ext_factor, "factor", 0);
	addmess((method)f0ext_range, "range", 0);
	addmess((method)f0ext_set, "set", A_FLOAT, A_FLOAT, 0);
	addmess((method)f0ext_assist, "assist", A_CANT, 0);
	finder_addclass("All Objects", "f0.auto_scale");
	finder_addclass("Math", "f0.auto_scale");
	post("f0.auto_scale v1.1-ub; distributed under GNU GPL license");		//target specific
}
void *f0ext_new(double value1, double value2) {
	x_f0ext *f0ext;
	f0ext= (x_f0ext *)newobject(this_class);
	f0ext->x_min= 0;
	f0ext->x_max= 0;
	f0ext->x_flag= 0;
	if(value1==0&&value2==0) {
		f0ext->x_valMiddle= 0.0;
		f0ext->x_valRight= 1.0;
	} else {
		f0ext->x_valMiddle= value1;
		f0ext->x_valRight= value2;
	}
	f0ext->x_out2= listout(f0ext);
	f0ext->x_out= floatout(f0ext);
	floatin(f0ext, 2);
	floatin(f0ext, 1);
	return(f0ext);
}
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0:
				sprintf(dst, "values to autoscale (int/float)");
				break;
			case 1:
				sprintf(dst, "low output value (int/float)");
				break;
			case 2:
				sprintf(dst, "high output value (int/float)");
				break;
		}
	} else if(msg==ASSIST_OUTLET) {
		switch(arg) {
			case 0:
				sprintf(dst, "scaled output (float)");
				break;
			case 1:
				sprintf(dst, "info (list)");
				break;
		}
	}
}

//----------------------------------------------------------------------------------------------
void f0ext_int(x_f0ext *f0ext, long value) {
	f0ext->x_valLeft= value;
	theFunction(f0ext);
}
void f0ext_float(x_f0ext *f0ext, double value) {
	f0ext->x_valLeft= value;
	theFunction(f0ext);
}
void f0ext_ft1(x_f0ext *f0ext, double value) {
	f0ext->x_valMiddle= value;
}
void f0ext_ft2(x_f0ext *f0ext, double value) {
	f0ext->x_valRight= value;
}
void f0ext_bang(x_f0ext *f0ext) {
	f0ext->x_min= 0;
	f0ext->x_max= 0;
	f0ext->x_flag= 0;
}
void f0ext_factor(x_f0ext *f0ext) {
	double rangeIn, rangeOut;
	Atom daList[3];
	rangeIn= fabs(f0ext->x_max-f0ext->x_min);
	rangeOut= fabs(f0ext->x_valRight-f0ext->x_valMiddle);
	SETLONG(daList, 0);				//index for routing
	if(rangeIn==0) {
		SETFLOAT(daList+1, 0);
		SETFLOAT(daList+2, rangeOut);
	} else if(rangeOut==0) {
		SETFLOAT(daList+1, rangeIn);
		SETFLOAT(daList+2, 0);
	} else if(rangeIn<=rangeOut) {
		SETFLOAT(daList+1, 1);
		SETFLOAT(daList+2, 1/(rangeIn/rangeOut));
	} else {
		SETFLOAT(daList+1, 1/(rangeOut/rangeIn));
		SETFLOAT(daList+2, 1);
	}
	outlet_list(f0ext->x_out2, 0L, 3, daList);
}
void f0ext_range(x_f0ext *f0ext) {
	Atom daList[3];
	SETLONG(daList, 1);				//index for routing
	if(f0ext->x_min<=f0ext->x_max) {
		SETFLOAT(daList+1, f0ext->x_min);
		SETFLOAT(daList+2, f0ext->x_max);
	} else {
		SETFLOAT(daList+1, f0ext->x_max);
		SETFLOAT(daList+2, f0ext->x_min);
	}
	outlet_list(f0ext->x_out2, 0L, 3, daList);
}
void f0ext_set(x_f0ext *f0ext, double min, double max) {
	f0ext->x_min= min;
	f0ext->x_max= max;
}

//----------------------------------------------------------------------------------------------
void theFunction(x_f0ext *f0ext) {
	double v, o, rangeIn, rangeOut;
	v= f0ext->x_valLeft;
	if(f0ext->x_flag==0&&f0ext->x_min==f0ext->x_max) {
		f0ext->x_flag= 1;
		f0ext->x_min= v;
		f0ext->x_max= v;
	}
	if(v<f0ext->x_min) {
		f0ext->x_min= v;
	}
	if(v>f0ext->x_max) {
		f0ext->x_max= v;
	}
	rangeIn= fabs(f0ext->x_max-f0ext->x_min);
	rangeOut= fabs(f0ext->x_valRight-f0ext->x_valMiddle);
	if(rangeIn==0) {
		if(f0ext->x_valMiddle<=f0ext->x_valRight) {
			o= f0ext->x_valMiddle;
		} else {
			o= f0ext->x_valRight;
		}
	} else if(f0ext->x_valMiddle<=f0ext->x_valRight) {
		o= fabs((v-f0ext->x_min)/rangeIn*rangeOut)+f0ext->x_valMiddle;
	} else {
		o= fabs((v-f0ext->x_max)/rangeIn*rangeOut)+f0ext->x_valRight;
	}
	outlet_float(f0ext->x_out, o);
}
