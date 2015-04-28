//		----------------------------------------------------------
//		-- fredrik olofsson 070106								--
//		-- distributed under GNU GPL license					--
//		----------------------------------------------------------

#include "ext.h"
#include "z_dsp.h"

//#define LONG_MIN -2147483647		//target specific - uncomment for windows
//#define LONG_MAX 2147483647

void *this_class;

typedef struct _f0ext {
	t_pxobject x_ob;
	t_float x_min;
	t_float x_max;
	t_float x_setMin;
	t_float x_setMax;
	short x_setFlag;
} x_f0ext;

void *f0ext_new(double val1, double val2);
t_int *f0ext_perform(t_int *w);
void f0ext_bang(x_f0ext *f0ext);
void f0ext_set(x_f0ext *f0ext, double val1, double val2);
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count);
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst);

//----------------------------------------------------------------------------------------------
void *f0ext_new(double val1, double val2) {
	x_f0ext *f0ext= (x_f0ext *)newobject(this_class);
	if(val1==0&&val2==0) {
		f0ext->x_setMin= LONG_MAX;
		f0ext->x_setMax= LONG_MIN;
		f0ext->x_setFlag= 0;
	} else {
		f0ext->x_setMin= val1;
		f0ext->x_setMax= val2;
		f0ext->x_setFlag= 2;
	}
	f0ext->x_min= f0ext->x_setMin;
	f0ext->x_max= f0ext->x_setMax;
	dsp_setup((t_pxobject *)f0ext, 1);						//inlets
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	return(f0ext);
}
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		sprintf(dst, "signal to check (signal)");
	} else if(msg==ASSIST_OUTLET) {
		switch(arg) {
			case 0: sprintf(dst, "minimum (signal)"); break;
			case 1: sprintf(dst, "middle (signal)"); break;
			case 2: sprintf(dst, "maximum (signal)"); break;
		}
	}
}

//----------------------------------------------------------------------------------------------
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count) {
	dsp_add(f0ext_perform, 6, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n, f0ext);
}
t_int *f0ext_perform(t_int *w) {
	t_float *inL= (t_float *)w[1];
	t_float *outL= (t_float *)w[2];
	t_float *outM= (t_float *)w[3];
	t_float *outR= (t_float *)w[4];
	int n= (int)w[5];
	x_f0ext *f0ext= (x_f0ext *)w[6];
	double min= f0ext->x_min;
	double max= f0ext->x_max;
	double in;
	while(n--) {
		in= *inL++;
		if(in<min) min= in;
		if(in>max) max= in;
		*outL++= min;
		*outM++= (max-min)/2+min;
		*outR++= max;
	}
	f0ext->x_min= min;
	f0ext->x_max= max;
	return w+7;
}

//----------------------------------------------------------------------------------------------
void f0ext_bang(x_f0ext *f0ext) {
	if(f0ext->x_setFlag==0) {
		f0ext->x_min= LONG_MAX;
		f0ext->x_max= LONG_MIN;
	} else {
		f0ext->x_min= f0ext->x_setMin;
		f0ext->x_max= f0ext->x_setMax;
	}
}
void f0ext_set(x_f0ext *f0ext, double val1, double val2) {
	if(val1<val2) {
		f0ext->x_min= val1;
		f0ext->x_max= val2;
		f0ext->x_setMin= val1;
		f0ext->x_setMax= val2;
	} else {
		f0ext->x_min= val2;
		f0ext->x_max= val1;
		f0ext->x_setMin= val2;
		f0ext->x_setMax= val1;
	}
	f0ext->x_setFlag= 2;
}

//----------------------------------------------------------------------------------------------
void main(void) {
	setup((t_messlist **)&this_class, (method)f0ext_new, (method)dsp_free, (short)sizeof(x_f0ext), 0L, A_DEFFLOAT, A_DEFFLOAT, 0);
	dsp_initclass();
	addmess((method)f0ext_dsp, "dsp", A_CANT, 0);
	addbang((method)f0ext_bang);
	addmess((method)f0ext_set, "set", A_FLOAT, A_FLOAT, 0);
	addmess((method)f0ext_assist, "assist", A_CANT, 0);
	finder_addclass("All Objects", "f0.range~");
	finder_addclass("MSP Analysis", "f0.range~");
	post("f0.range~ v1.0-ub; distributed under GNU GPL license");		//target specific
}
