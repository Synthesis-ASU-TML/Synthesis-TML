//		----------------------------------------------------------
//		-- fredrik olofsson 020115								--
//		-- updated for carbon using cw8.0 040225				--
//		-- fix for output on right input 060507					--
//		-- updated for ub using xcode 070103					--
//		-- clip arg and speed improve fix 070106				--
//		-- distributed under GNU GPL license					--
//		----------------------------------------------------------

#include "ext.h"
#include "ext_common.h"

void *this_class;

typedef struct _f0ext {
	t_object x_ob;
	double x_valLeft;
	double x_valMiddle;
	double x_valRight;
	double x_valOutLeft;
	double x_valOutRight;
	void *x_outLeft;
	void *x_outRight;
} x_f0ext;

void *f0ext_new(double value1, double value2);
void f0ext_int(x_f0ext *f0ext, long value);
void f0ext_float(x_f0ext *f0ext, double value);
void f0ext_ft1(x_f0ext *f0ext, double value);
void f0ext_ft2(x_f0ext *f0ext, double value);
void f0ext_set(x_f0ext *f0ext, double value);
void f0ext_bang(x_f0ext *f0ext);
void theFunction(x_f0ext *f0ext);
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst);

//----------------------------------------------------------------------------------------------
void main(void) {
	setup((Messlist **)&this_class, (method)f0ext_new, 0L, (short)sizeof(x_f0ext), 0L, A_DEFFLOAT, A_DEFFLOAT, 0);
	addbang((method)f0ext_bang);
	addint((method)f0ext_int);
	addfloat((method)f0ext_float);
	addftx((method)f0ext_ft1, 1);
	addftx((method)f0ext_ft2, 2);
	addmess((method)f0ext_set, "set", A_FLOAT, 0);
	addmess((method)f0ext_assist, "assist", A_CANT, 0);
	finder_addclass("All Objects", "f0.smooth2");
	finder_addclass("Math", "f0.smooth2");
	post("f0.smooth2 v1.11-ub; distributed under GNU GPL license");		//target specific
}
void *f0ext_new(double value1, double value2) {
	x_f0ext *f0ext;
	f0ext= (x_f0ext *)newobject(this_class);
	f0ext->x_valLeft= 0;
	f0ext->x_valOutLeft= 0;
	f0ext->x_valOutRight= 0;
	if(value1==0&&value2==0) {
		f0ext->x_valMiddle= 0.15;
		f0ext->x_valRight= 0.3;
	} else if(value1!=0&&value2==0) {
		f0ext->x_valMiddle= CLIP(value1, 0, 1);
		f0ext->x_valRight= 0.3;
	} else {
		f0ext->x_valMiddle= CLIP(value1, 0, 1);
		f0ext->x_valRight= CLIP(value2, 0, 1);
	}
	f0ext->x_outRight= floatout(f0ext);
	f0ext->x_outLeft= floatout(f0ext);
	floatin(f0ext, 2);
	floatin(f0ext, 1);
	return(f0ext);
}
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0:
				sprintf(dst, "values to smooth (int/float)");
				break;
			case 1:
				sprintf(dst, "smoothing constant alpha (float)");
				break;
			case 2:
				sprintf(dst, "smoothing constant gamma (float)");
				break;
		}
	} else if(msg==ASSIST_OUTLET) {
		switch(arg) {
			case 0:
				sprintf(dst, "smoothed output (float)");
				break;
			case 1:
				sprintf(dst, "trend (float)");
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
	f0ext->x_valMiddle= CLIP(value, 0, 1);
}
void f0ext_ft2(x_f0ext *f0ext, double value) {
	f0ext->x_valRight= CLIP(value, 0, 1);
}
void f0ext_set(x_f0ext *f0ext, double value) {
	f0ext->x_valOutLeft= value;
}
void f0ext_bang(x_f0ext *f0ext) {
	theFunction(f0ext);
}

//----------------------------------------------------------------------------------------------
void theFunction(x_f0ext *f0ext) {
	double St0, St1, Bt0, Bt1, a, g, Yt0;
	a= f0ext->x_valMiddle;
	g= f0ext->x_valRight;
	Yt0= f0ext->x_valLeft;
	St1= f0ext->x_valOutLeft;
	Bt1= f0ext->x_valOutRight;
	St0= a*Yt0+(1-a)*(St1+Bt1);		//DES - Double Exponential Smoothing
	Bt0= g*(St0-St1)+(1-g)*Bt1;
	f0ext->x_valOutLeft= St0;
	f0ext->x_valOutRight= Bt0;
	outlet_float(f0ext->x_outRight, f0ext->x_valOutRight);
	outlet_float(f0ext->x_outLeft, f0ext->x_valOutLeft);
}
