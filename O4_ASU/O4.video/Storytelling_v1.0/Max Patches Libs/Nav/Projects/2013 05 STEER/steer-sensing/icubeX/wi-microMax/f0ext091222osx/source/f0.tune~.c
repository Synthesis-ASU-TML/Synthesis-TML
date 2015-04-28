//		----------------------------------------------------------
//		-- fredrik olofsson 070106								--
//		-- distributed under GNU GPL license					--
//		----------------------------------------------------------

#include "ext.h"
#include "z_dsp.h"

void *this_class;

typedef struct _f0ext {
	t_pxobject x_ob;
	t_float x_valLeft;
	t_float x_valRight;
	t_float x_tonesPerOctave;
} x_f0ext;

void *f0ext_new(double val);
t_int *f0ext_perform0(t_int *w);
t_int *f0ext_perform1(t_int *w);
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count);
void f0ext_float(x_f0ext *f0ext, double val);
void f0ext_tonesPerOctave(x_f0ext *f0ext, double tones);
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst);

//----------------------------------------------------------------------------------------------
void *f0ext_new(double val) {
	x_f0ext *f0ext= (x_f0ext *)newobject(this_class);
	f0ext->x_valLeft= 0;
	f0ext->x_tonesPerOctave= 12;
	if(val>0) {
		f0ext->x_valRight= val;
	} else {
		f0ext->x_valRight= 440;
	}
	dsp_setup((t_pxobject *)f0ext, 2);						//inlets
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	return(f0ext);
}
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0: sprintf(dst, "frequency (signal)"); break;
			case 1: sprintf(dst, "base frequency (signal/float)"); break;
		}
	} else if(msg==ASSIST_OUTLET) {
		sprintf(dst, "quantised frequency (signal)");
	}
}

//----------------------------------------------------------------------------------------------
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count) {
	if(!count[1]) {		//signal float
		dsp_add(f0ext_perform0, 4, sp[0]->s_vec, sp[2]->s_vec, sp[0]->s_n, f0ext);
	} else {			//signal signal
		dsp_add(f0ext_perform1, 5, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[0]->s_n, f0ext);
	}
}
t_int *f0ext_perform0(t_int *w) {	//signal float
	t_float *inL= (t_float *)w[1];
	t_float *outL= (t_float *)w[2];
	int n= (int)w[3];
	x_f0ext *f0ext= (x_f0ext *)w[4];
	double tones= f0ext->x_tonesPerOctave;
	double base= f0ext->x_valRight;
	if(base!=0&&tones!=0) {
		double v= pow(2, 1/tones);
		double a, b;
		while(n--) {
			a= (log(fabs(*inL++))-log(fabs(base)))/log(v);
			b= round(69+a)-69;
			*outL++= fabs(base)*pow(v, b);
		}
	} else {
		while(n--) *outL++= base;
	}
	return w+5;
}
t_int *f0ext_perform1(t_int *w) {	//signal signal
	t_float *inL= (t_float *)w[1];
	t_float *inR= (t_float *)w[2];
	t_float *outL= (t_float *)w[3];
	int n= (int)w[4];
	x_f0ext *f0ext= (x_f0ext *)w[5];
	double tones= f0ext->x_tonesPerOctave;
	double base;
	if(tones!=0) {
		double v= pow(2, 1/tones);
		double a, b;
		while(n--) {
			base= *inR++;
			if(base!=0) {
				a= (log(fabs(*inL++))-log(fabs(base)))/log(v);
				b= round(69+a)-69;
				*outL++= fabs(base)*pow(v, b);
			} else {
				*outL++= 0;
			}
		}
	} else {
		while(n--) *outL++= *inR++;
	}
	return w+6;
}

//----------------------------------------------------------------------------------------------
void f0ext_float(x_f0ext *f0ext, double val) {
	f0ext->x_valRight= val;
}
void f0ext_tonesPerOctave(x_f0ext *f0ext, double val) {
	f0ext->x_tonesPerOctave= val;
}

//----------------------------------------------------------------------------------------------
void main(void) {
	setup((t_messlist **)&this_class, (method)f0ext_new, (method)dsp_free, (short)sizeof(x_f0ext), 0L, A_DEFFLOAT, 0);
	dsp_initclass();
	addmess((method)f0ext_dsp, "dsp", A_CANT, 0);
	addfloat((method)f0ext_float);
	addmess((method)f0ext_tonesPerOctave, "tonesPerOctave", A_FLOAT, 0);
	addmess((method)f0ext_assist, "assist", A_CANT, 0);
	finder_addclass("All Objects", "f0.tune~");
	finder_addclass("MSP Modifiers", "f0.tune~");
	post("f0.tune~ v1.0-ub; distributed under GNU GPL license");		//target specific
}
