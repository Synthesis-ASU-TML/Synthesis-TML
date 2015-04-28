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
	short x_dim;
	double x_x;
	double x_y;
	double x_z;
} x_f0ext;

void *f0ext_new(long val);
t_int *f0ext_perform0(t_int *w);
t_int *f0ext_perform1(t_int *w);
t_int *f0ext_perform2(t_int *w);
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count);
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst);

//----------------------------------------------------------------------------------------------
void *f0ext_new(long val) {
	x_f0ext *f0ext= (x_f0ext *)newobject(this_class);
	f0ext->x_x= 0;
	f0ext->x_y= 0;
	f0ext->x_z= 0;
	f0ext->x_dim= CLIP(val, 1, 3);
	if(val<0||val>3) {post("warning: f0.distance~ only 1, 2 or 3 dimensions");}
	dsp_setup((t_pxobject *)f0ext, f0ext->x_dim);			//inlets
	outlet_new((t_pxobject *)f0ext, "signal");				//outlet
	return(f0ext);
}
void f0ext_assist(x_f0ext *f0ext, void *box, long msg, long arg, char *dst) {
	if(msg==ASSIST_INLET) {
		switch(arg) {
			case 0: sprintf(dst, "x (signal)"); break;
			case 1: sprintf(dst, "y (signal)"); break;
			case 2: sprintf(dst, "z (signal)"); break;
		}
	} else if(msg==ASSIST_OUTLET) {
		sprintf(dst, "distance between delta (signal)");
	}
}

//----------------------------------------------------------------------------------------------
void f0ext_dsp(x_f0ext *f0ext, t_signal **sp, short *count) {
	if(f0ext->x_dim==1) {				//1dim signal
		dsp_add(f0ext_perform0, 4, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n, f0ext);
	} else if(f0ext->x_dim==2) {		//2dim signal signal
		dsp_add(f0ext_perform1, 5, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[0]->s_n, f0ext);
	} else {							//3dim signal signal signal
		dsp_add(f0ext_perform2, 6, sp[0]->s_vec, sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[0]->s_n, f0ext);
	}
}
t_int *f0ext_perform0(t_int *w) {		//1dim
	t_float *inL= (t_float *)w[1];
	t_float *outL= (t_float *)w[2];
	int n= (int)w[3];
	x_f0ext *f0ext= (x_f0ext *)w[4];
	double x= f0ext->x_x;
	double xx;
	while(n--) {
		xx= *inL++;
		*outL++= fabs(xx-x);
		x= xx;
	}
	f0ext->x_x= x;
	return w+5;
}
t_int *f0ext_perform1(t_int *w) {		//2dim
	t_float *inL= (t_float *)w[1];
	t_float *inM= (t_float *)w[2];
	t_float *outL= (t_float *)w[3];
	int n= (int)w[4];
	x_f0ext *f0ext= (x_f0ext *)w[5];
	double x= f0ext->x_x;
	double y= f0ext->x_y;
	double xx, yy;
	while(n--) {
		xx= *inL++;
		yy= *inM++;
		*outL++= fabs(sqrt(pow(xx-x, 2)+pow(yy-y, 2)));
		x= xx;
		y= yy;
	}
	f0ext->x_x= x;
	f0ext->x_y= y;
	return w+6;
}
t_int *f0ext_perform2(t_int *w) {		//3dim
	t_float *inL= (t_float *)w[1];
	t_float *inM= (t_float *)w[2];
	t_float *inR= (t_float *)w[3];
	t_float *outL= (t_float *)w[4];
	int n= (int)w[5];
	x_f0ext *f0ext= (x_f0ext *)w[6];
	double x= f0ext->x_x;
	double y= f0ext->x_y;
	double z= f0ext->x_z;
	double xx, yy, zz;
	while(n--) {
		xx= *inL++;
		yy= *inM++;
		zz= *inR++;
		*outL++= fabs(sqrt(pow(xx-x, 2)+pow(yy-y, 2)+pow(zz-z, 2)));
		x= xx;
		y= yy;
		z= zz;
	}
	f0ext->x_x= x;
	f0ext->x_y= y;
	f0ext->x_z= z;
	return w+7;
}

//----------------------------------------------------------------------------------------------
void main(void) {
	setup((t_messlist **)&this_class, (method)f0ext_new, (method)dsp_free, (short)sizeof(x_f0ext), 0L, A_DEFLONG, 0);
	dsp_initclass();
	addmess((method)f0ext_dsp, "dsp", A_CANT, 0);
	addmess((method)f0ext_assist, "assist", A_CANT, 0);
	finder_addclass("All Objects", "f0.distance~");
	finder_addclass("MSP Modifiers", "f0.distance~");
	post("f0.distance~ v1.0-ub; distributed under GNU GPL license");		//target specific
}
