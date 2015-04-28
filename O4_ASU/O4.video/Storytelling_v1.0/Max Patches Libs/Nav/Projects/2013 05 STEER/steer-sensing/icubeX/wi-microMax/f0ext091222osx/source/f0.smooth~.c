//		----------------------------------------------------------
//		-- fredrik olofsson 070106								--
//		-- distributed under GNU GPL license					--
//		----------------------------------------------------------

#include "ext.h"
#include "ext_common.h"
#include "z_dsp.h"

void *this_class;

typedef struct _f0ext {
	t_pxobject x_ob;
	t_float x_valRight;
	t_float x_prev;
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
	f0ext->x_prev= 0;
	if(val>0) {
		f0ext->x_valRight= CLIP(val, 0, 1);
	} else {
		f0ext->x_valRight= 0.15;
	}
	dsp_setup((t_pxobject *)f0ext, 2);						//inlets
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	return(f0ext);
}
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0: sprintf(dst, "signal to smooth (signal)"); break;
			case 1: sprintf(dst, "smoothing constant alpha (signal/float)"); break;
		}
	} else if(msg==ASSIST_OUTLET) {
		sprintf(dst, "smoothed output (signal)");
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
	double a= pow(f0ext->x_valRight, 4);
	double prev= f0ext->x_prev;
	while(n--) {
		prev= *outL++= (1-a)*prev+a*(*inL++);
	}
	f0ext->x_prev= prev;
	return w+5;
}
t_int *f0ext_perform1(t_int *w) {	//signal signal
	t_float *inL= (t_float *)w[1];
	t_float *inR= (t_float *)w[2];
	t_float *outL= (t_float *)w[3];
	int n= (int)w[4];
	x_f0ext *f0ext= (x_f0ext *)w[5];
	double a, r;
	double prev= f0ext->x_prev;
	while(n--) {
		r= *inR++;
		if(r<0) r= 0; else if(r>1) r= 1;
		a= pow(r, 4);
		prev= *outL++= (1-a)*prev+a*(*inL++);
	}
	f0ext->x_prev= prev;
	return w+6;
}

//----------------------------------------------------------------------------------------------
void f0ext_float(x_f0ext *f0ext, double val) {
	f0ext->x_valRight= CLIP(val, 0, 1);
}

//----------------------------------------------------------------------------------------------
void main(void) {
	setup((t_messlist **)&this_class, (method)f0ext_new, (method)dsp_free, (short)sizeof(x_f0ext), 0L, A_DEFFLOAT, 0);
	dsp_initclass();
	addmess((method)f0ext_dsp, "dsp", A_CANT, 0);
	addfloat((method)f0ext_float);
	addmess((method)f0ext_assist, "assist", A_CANT, 0);
	finder_addclass("All Objects", "f0.smooth~");
	finder_addclass("MSP Filters", "f0.smooth~");
	post("f0.smooth~ v1.0-ub; distributed under GNU GPL license");		//target specific
}
