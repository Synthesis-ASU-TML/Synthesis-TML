//		----------------------------------------------------------
//		-- fredrik olofsson 070106								--
//		-- distributed under GNU GPL license					--
//		----------------------------------------------------------

#include "ext.h"
#include "z_dsp.h"

void *this_class;

typedef struct _f0ext {
	t_pxobject x_ob;
	t_float x_valRight;
} x_f0ext;

void *f0ext_new(double val);
t_int *f0ext_perform0(t_int *w);
t_int *f0ext_perform1(t_int *w);
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count);
void f0ext_float(x_f0ext *f0ext, double val);
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst);

//----------------------------------------------------------------------------------------------
void *f0ext_new(double val) {
	x_f0ext *f0ext= (x_f0ext *)newobject(this_class);
	if(val!=0) {
		f0ext->x_valRight= val;
	} else {
		f0ext->x_valRight= 1;
	}
	dsp_setup((t_pxobject *)f0ext, 2);						//inlets
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	return(f0ext);
}
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0: sprintf(dst, "signal to round (signal)"); break;
			case 1: sprintf(dst, "quantise (signal/float)"); break;
		}
	} else if(msg==ASSIST_OUTLET) {
		sprintf(dst, "rounded output (signal)");
	}
}

//----------------------------------------------------------------------------------------------
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count) {
	if(!count[1]) {		//signal float
		dsp_add(f0ext_perform0, 4, sp[0]->s_vec, sp[2]->s_vec, sp[0]->s_n, f0ext);
	} else {			//signal signal
		dsp_add(f0ext_perform1, 4, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[0]->s_n);
	}
}
t_int *f0ext_perform0(t_int *w) {	//signal float
	t_float *inL= (t_float *)w[1];
	t_float *outL= (t_float *)w[2];
	int n= (int)w[3];
	x_f0ext *f0ext= (x_f0ext *)w[4];
	double right= f0ext->x_valRight;
	if(right==0) {
		while(n--)
			*outL++= *inL++;
	} else {
		while(n--)
			*outL++= round(*inL++/right)*right;
	}
	return w+5;
}
t_int *f0ext_perform1(t_int *w) {	//signal signal
	t_float *inL= (t_float *)w[1];
	t_float *inR= (t_float *)w[2];
	t_float *outL= (t_float *)w[3];
	int n= (int)w[4];
	double right;
	while(n--) {
		right= *inR++;
		if(right==0) {
			*outL++= *inL++;
		} else {
			*outL++= round(*inL++/right)*right;
		}
	}
	return w+5;
}

//----------------------------------------------------------------------------------------------
void f0ext_float(x_f0ext *f0ext, double val) {
	f0ext->x_valRight= val;
}

//----------------------------------------------------------------------------------------------
void main(void) {
	setup((t_messlist **)&this_class, (method)f0ext_new, (method)dsp_free, (short)sizeof(x_f0ext), 0L, A_DEFFLOAT, 0);
	dsp_initclass();
	addmess((method)f0ext_dsp, "dsp", A_CANT, 0);
	addfloat((method)f0ext_float);
	addmess((method)f0ext_assist, "assist", A_CANT, 0);
	finder_addclass("All Objects", "f0.round~");
	finder_addclass("MSP Modifiers", "f0.round~");
	post("f0.round~ v1.0-ub; distributed under GNU GPL license");		//target specific
}
