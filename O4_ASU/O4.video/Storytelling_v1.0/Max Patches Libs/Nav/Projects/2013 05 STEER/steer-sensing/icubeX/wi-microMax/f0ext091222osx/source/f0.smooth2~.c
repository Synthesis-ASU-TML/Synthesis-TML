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
	t_float x_valMiddle;
	t_float x_valRight;
	t_float x_prev;
	t_float x_prevTrend;
} x_f0ext;

void *f0ext_new(double val1, double val2);
t_int *f0ext_perform0(t_int *w);
t_int *f0ext_perform1(t_int *w);
t_int *f0ext_perform2(t_int *w);
t_int *f0ext_perform3(t_int *w);
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count);
void f0ext_float(x_f0ext *f0ext, double val);
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst);

//----------------------------------------------------------------------------------------------
void *f0ext_new(double val1, double val2) {
	x_f0ext *f0ext= (x_f0ext *)newobject(this_class);
	f0ext->x_prev= 0;
	f0ext->x_prevTrend= 0;
	if(val1==0&&val2==0) {
		f0ext->x_valMiddle= 0.15;
		f0ext->x_valRight= 0.3;
	} else if(val1!=0&&val2==0) {
		f0ext->x_valMiddle= CLIP(val1, 0, 1);
		f0ext->x_valRight= 0.3;
	} else {
		f0ext->x_valMiddle= CLIP(val1, 0, 1);
		f0ext->x_valRight= CLIP(val2, 0, 1);
	}
	dsp_setup((t_pxobject *)f0ext, 3);						//inlets
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	return(f0ext);
}
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0: sprintf(dst, "signal to smooth (signal)"); break;
			case 1: sprintf(dst, "smoothing constant alpha (signal/float)"); break;
			case 2: sprintf(dst, "smoothing constant gamma (signal/float)"); break;
		}
	} else if(msg==ASSIST_OUTLET) {
		switch(arg) {
			case 0: sprintf(dst, "smoothed output (signal)"); break;
			case 1: sprintf(dst, "trend (signal)"); break;
		}
	}
}

//----------------------------------------------------------------------------------------------
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count) {
	if((!count[1])&&(!count[2])) {		//signal float float
		dsp_add(f0ext_perform0, 5, sp[0]->s_vec, sp[3]->s_vec, sp[4]->s_vec, sp[0]->s_n, f0ext);
	} else if(!count[2]) {				//signal signal float
		dsp_add(f0ext_perform1, 6, sp[0]->s_vec, sp[1]->s_vec, sp[3]->s_vec, sp[4]->s_vec, sp[0]->s_n, f0ext);
	} else if(!count[1]) {				//signal float signal
		dsp_add(f0ext_perform2, 6, sp[0]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[4]->s_vec, sp[0]->s_n, f0ext);
	} else {
		dsp_add(f0ext_perform3, 7, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[4]->s_vec, sp[0]->s_n, f0ext);
	}
}
t_int *f0ext_perform0(t_int *w) {	//signal float float
	t_float *inL= (t_float *)w[1];
	t_float *outL= (t_float *)w[2];
	t_float *outR= (t_float *)w[3];
	int n= (int)w[4];
	x_f0ext *f0ext= (x_f0ext *)w[5];
	double a= pow(f0ext->x_valMiddle, 4);
	double g= pow(f0ext->x_valRight, 4);
	double prev= f0ext->x_prev;
	double prevTrend= f0ext->x_prevTrend;
	double temp;
	while(n--) {
		temp= prev;
		prev= *outL++= a*(*inL++)+(1-a)*(temp+prevTrend);
		prevTrend= *outR++= g*(prev-temp)+(1-g)*prevTrend;
	}
	f0ext->x_prev= prev;
	f0ext->x_prevTrend= prevTrend;
	return w+6;
}
t_int *f0ext_perform1(t_int *w) {	//signal signal float
	t_float *inL= (t_float *)w[1];
	t_float *inM= (t_float *)w[2];
	t_float *outL= (t_float *)w[3];
	t_float *outR= (t_float *)w[4];
	int n= (int)w[5];
	x_f0ext *f0ext= (x_f0ext *)w[6];
	double a, r;
	double g= pow(f0ext->x_valRight, 4);
	double prev= f0ext->x_prev;
	double prevTrend= f0ext->x_prevTrend;
	double temp;
	while(n--) {
		r= *inM++;
		if(r<0) r= 0; else if(r>1) r= 1;
		a= pow(r, 4);
		temp= prev;
		prev= *outL++= a*(*inL++)+(1-a)*(temp+prevTrend);
		prevTrend= *outR++= g*(prev-temp)+(1-g)*prevTrend;
	}
	f0ext->x_prev= prev;
	f0ext->x_prevTrend= prevTrend;
	return w+7;
}
t_int *f0ext_perform2(t_int *w) {	//signal float signal
	t_float *inL= (t_float *)w[1];
	t_float *inR= (t_float *)w[2];
	t_float *outL= (t_float *)w[3];
	t_float *outR= (t_float *)w[4];
	int n= (int)w[5];
	x_f0ext *f0ext= (x_f0ext *)w[6];
	double g, r;
	double a= pow(f0ext->x_valMiddle, 4);
	double prev= f0ext->x_prev;
	double prevTrend= f0ext->x_prevTrend;
	double temp;
	while(n--) {
		r= *inR++;
		if(r<0) r= 0; else if(r>1) r= 1;
		g= pow(r, 4);
		temp= prev;
		prev= *outL++= a*(*inL++)+(1-a)*(temp+prevTrend);
		prevTrend= *outR++= g*(prev-temp)+(1-g)*prevTrend;
	}
	f0ext->x_prev= prev;
	f0ext->x_prevTrend= prevTrend;
	return w+7;
}
t_int *f0ext_perform3(t_int *w) {	//signal signal signal
	t_float *inL= (t_float *)w[1];
	t_float *inM= (t_float *)w[2];
	t_float *inR= (t_float *)w[3];
	t_float *outL= (t_float *)w[4];
	t_float *outR= (t_float *)w[5];
	int n= (int)w[6];
	x_f0ext *f0ext= (x_f0ext *)w[7];
	double a, g, r;
	double prev= f0ext->x_prev;
	double prevTrend= f0ext->x_prevTrend;
	double temp;
	while(n--) {
		r= *inM++;
		if(r<0) r= 0; else if(r>1) r= 1;
		a= pow(r, 4);
		r= *inR++;
		if(r<0) r= 0; else if(r>1) r= 1;
		g= pow(r, 4);
		temp= prev;
		prev= *outL++= a*(*inL++)+(1-a)*(temp+prevTrend);
		prevTrend= *outR++= g*(prev-temp)+(1-g)*prevTrend;
	}
	f0ext->x_prev= prev;
	f0ext->x_prevTrend= prevTrend;
	return w+8;
}

//----------------------------------------------------------------------------------------------
void f0ext_float(x_f0ext *f0ext, double val) {
	long in= proxy_getinlet((x_f0ext *)f0ext);
	if(in==1) f0ext->x_valMiddle= CLIP(val, 0, 1);
	else if(in==2) f0ext->x_valRight= CLIP(val, 0, 1);
}

//----------------------------------------------------------------------------------------------
void main(void) {
	setup((t_messlist **)&this_class, (method)f0ext_new, (method)dsp_free, (short)sizeof(x_f0ext), 0L, A_DEFFLOAT, A_DEFFLOAT, 0);
	dsp_initclass();
	addmess((method)f0ext_dsp, "dsp", A_CANT, 0);
	addfloat((method)f0ext_float);
	addmess((method)f0ext_assist, "assist", A_CANT, 0);
	finder_addclass("All Objects", "f0.smooth2~");
	finder_addclass("MSP Filters", "f0.smooth2~");
	post("f0.smooth2~ v1.0-ub; distributed under GNU GPL license");		//target specific
}
