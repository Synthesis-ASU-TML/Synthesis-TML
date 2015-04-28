//		----------------------------------------------------------
//		-- fredrik olofsson 070106								--
//		-- distributed under GNU GPL license					--
//		----------------------------------------------------------

#include "ext.h"
#include "z_dsp.h"

void *this_class;

typedef struct _f0ext {
	t_pxobject x_ob;
	t_float x_valMiddle;
	t_float x_valRight;
	t_float x_min;
	t_float x_max;
	short x_flag;
	void *x_out2;
} x_f0ext;

void *f0ext_new(double val1, double val2);
t_int *f0ext_perform0(t_int *w);
t_int *f0ext_perform1(t_int *w);
t_int *f0ext_perform2(t_int *w);
t_int *f0ext_perform3(t_int *w);
void f0ext_bang(x_f0ext *f0ext);
void f0ext_float(x_f0ext *f0ext, double val);
void f0ext_set(x_f0ext *f0ext, double val1, double val2);
void f0ext_factor(x_f0ext *f0ext);
void f0ext_range(x_f0ext *f0ext);
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count);
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst);

//----------------------------------------------------------------------------------------------
void *f0ext_new(double val1, double val2) {
	x_f0ext *f0ext= (x_f0ext *)newobject(this_class);
	f0ext->x_min= 0;
	f0ext->x_max= 0;
	f0ext->x_flag= 0;
	if(val1==0&&val2==0) {
		f0ext->x_valMiddle= 0.0;
		f0ext->x_valRight= 1.0;
	} else {
		f0ext->x_valMiddle= val1;
		f0ext->x_valRight= val2;
	}
	dsp_setup((t_pxobject *)f0ext, 3);						//inlets
	f0ext->x_out2= listout(f0ext);							//outlet
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	return(f0ext);
}
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0: sprintf(dst, "signal to autoscale (signal)"); break;
			case 1: sprintf(dst, "low output (signal/float)"); break;
			case 2: sprintf(dst, "high output (signal/float)"); break;
		}
	} else if(msg==ASSIST_OUTLET) {
		switch(arg) {
			case 0: sprintf(dst, "scaled output (signal)"); break;
			case 1: sprintf(dst, "info (list)"); break;
		}
	}
}

//----------------------------------------------------------------------------------------------
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count) {
	if((!count[1])&&(!count[2])) {		//signal float float
		dsp_add(f0ext_perform0, 4, sp[0]->s_vec, sp[3]->s_vec, sp[0]->s_n, f0ext);
	} else if(!count[2]) {				//signal signal float
		dsp_add(f0ext_perform1, 5, sp[0]->s_vec, sp[1]->s_vec, sp[3]->s_vec, sp[0]->s_n, f0ext);
	} else if(!count[1]) {				//signal float signal
		dsp_add(f0ext_perform2, 5, sp[0]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n, f0ext);
	} else {							//signal signal signal
		dsp_add(f0ext_perform3, 6, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n, f0ext);
	}
}
t_int *f0ext_perform0(t_int *w) {
	t_float *inL= (t_float *)w[1];
	t_float *outL= (t_float *)w[2];
	int n= (int)w[3];
	x_f0ext *f0ext= (x_f0ext *)w[4];
	double in, rangeIn, rangeOut;
	short flag= f0ext->x_flag;
	double min= f0ext->x_min;
	double max= f0ext->x_max;
	double middle= f0ext->x_valMiddle;
	double right= f0ext->x_valRight;
	while(n--) {
		in= *inL++;
		if(flag==0&&min==max) {flag= 1; min= in; max= in;}
		if(in<min) min= in;
		if(in>max) max= in;
		rangeIn= fabs(max-min);
		rangeOut= fabs(right-middle);
		if(rangeIn==0) {
			if(middle<=right) *outL++= middle;
			else *outL++= right;
		} else if(middle<=right) {
			*outL++= fabs((in-min)/rangeIn*rangeOut)+middle;
		} else {
			*outL++= fabs((in-max)/rangeIn*rangeOut)+right;
		}
	}
	f0ext->x_flag= flag;
	f0ext->x_min= min;
	f0ext->x_max= max;
	f0ext->x_valMiddle= middle;
	f0ext->x_valRight= right;
	return w+5;
}
t_int *f0ext_perform1(t_int *w) {
	t_float *inL= (t_float *)w[1];
	t_float *inM= (t_float *)w[2];
	t_float *outL= (t_float *)w[3];
	int n= (int)w[4];
	x_f0ext *f0ext= (x_f0ext *)w[5];
	double in, middle, rangeIn, rangeOut;
	short flag= f0ext->x_flag;
	double min= f0ext->x_min;
	double max= f0ext->x_max;
	double right= f0ext->x_valRight;
	while(n--) {
		in= *inL++;
		middle= *inM++;
		if(flag==0&&min==max) {flag= 1; min= in; max= in;}
		if(in<min) min= in;
		if(in>max) max= in;
		rangeIn= fabs(max-min);
		rangeOut= fabs(right-middle);
		if(rangeIn==0) {
			if(middle<=right) *outL++= middle;
			else *outL++= right;
		} else if(middle<=right) {
			*outL++= fabs((in-min)/rangeIn*rangeOut)+middle;
		} else {
			*outL++= fabs((in-max)/rangeIn*rangeOut)+right;
		}
	}
	f0ext->x_flag= flag;
	f0ext->x_min= min;
	f0ext->x_max= max;
	f0ext->x_valRight= right;
	return w+6;
}
t_int *f0ext_perform2(t_int *w) {
	t_float *inL= (t_float *)w[1];
	t_float *inR= (t_float *)w[2];
	t_float *outL= (t_float *)w[3];
	int n= (int)w[4];
	x_f0ext *f0ext= (x_f0ext *)w[5];
	double in, right, rangeIn, rangeOut;
	short flag= f0ext->x_flag;
	double min= f0ext->x_min;
	double max= f0ext->x_max;
	double middle= f0ext->x_valMiddle;
	while(n--) {
		in= *inL++;
		right= *inR++;
		if(flag==0&&min==max) {flag= 1; min= in; max= in;}
		if(in<min) min= in;
		if(in>max) max= in;
		rangeIn= fabs(max-min);
		rangeOut= fabs(right-middle);
		if(rangeIn==0) {
			if(middle<=right) *outL++= middle;
			else *outL++= right;
		} else if(middle<=right) {
			*outL++= fabs((in-min)/rangeIn*rangeOut)+middle;
		} else {
			*outL++= fabs((in-max)/rangeIn*rangeOut)+right;
		}
	}
	f0ext->x_flag= flag;
	f0ext->x_min= min;
	f0ext->x_max= max;
	f0ext->x_valMiddle= middle;
	return w+6;
}
t_int *f0ext_perform3(t_int *w) {
	t_float *inL= (t_float *)w[1];
	t_float *inM= (t_float *)w[2];
	t_float *inR= (t_float *)w[3];
	t_float *outL= (t_float *)w[4];
	int n= (int)w[5];
	x_f0ext *f0ext= (x_f0ext *)w[6];
	double in, middle, right, rangeIn, rangeOut;
	short flag= f0ext->x_flag;
	double min= f0ext->x_min;
	double max= f0ext->x_max;
	while(n--) {
		in= *inL++;
		middle= *inM++;
		right= *inR++;
		if(flag==0&&min==max) {flag= 1; min= in; max= in;}
		if(in<min) min= in;
		if(in>max) max= in;
		rangeIn= fabs(max-min);
		rangeOut= fabs(right-middle);
		if(rangeIn==0) {
			if(middle<=right) *outL++= middle;
			else *outL++= right;
		} else if(middle<=right) {
			*outL++= fabs((in-min)/rangeIn*rangeOut)+middle;
		} else {
			*outL++= fabs((in-max)/rangeIn*rangeOut)+right;
		}
	}
	f0ext->x_flag= flag;
	f0ext->x_min= min;
	f0ext->x_max= max;
	return w+7;
}

//----------------------------------------------------------------------------------------------
void f0ext_float(x_f0ext *f0ext, double val) {
	long in= proxy_getinlet((x_f0ext *)f0ext);
	if(in==1) f0ext->x_valMiddle= val;
	else if(in==2) f0ext->x_valRight= val;
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
void main(void) {
	setup((t_messlist **)&this_class, (method)f0ext_new, (method)dsp_free, (short)sizeof(x_f0ext), 0L, A_DEFFLOAT, A_DEFFLOAT, 0);
	dsp_initclass();
	addmess((method)f0ext_dsp, "dsp", A_CANT, 0);
	addfloat((method)f0ext_float);
	addbang((method)f0ext_bang);
	addmess((method)f0ext_set, "set", A_FLOAT, A_FLOAT, 0);
	addmess((method)f0ext_factor, "factor", 0);
	addmess((method)f0ext_range, "range", 0);
	addmess((method)f0ext_assist, "assist", A_CANT, 0);
	finder_addclass("All Objects", "f0.auto_scale~");
	finder_addclass("MSP Modifiers", "f0.auto_scale~");
	post("f0.auto_scale~ v1.0-ub; distributed under GNU GPL license");		//target specific
}