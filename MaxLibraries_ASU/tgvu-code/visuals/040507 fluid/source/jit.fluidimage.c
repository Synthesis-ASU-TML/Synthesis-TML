////	jit.fluidimage.c//  04.15.04	by Delphine Nain and Maria Cordell//  Based on jit.fluid.c. Modified to use an image as the density source.//  #include "jit.common.h"#define IX(i,j) ((i)+(N+2)*(j))#define SWAP(x0,x) {float * tmp=x0;x0=x;x=tmp;}#define FOR_EACH_CELL for ( i=1 ; i<=N ; i++ ) { for ( j=1 ; j<=N ; j++ ) {#define END_FOR }}typedef struct _jit_fluidimage {	t_object ob;	float *u;	float *v;	float *u_prev;	float *v_prev;	float *dens;	float *dens_prev;	long datasize;	long N;    float dt;	float diff;	float visc;	float force ;	float source;	float mouse_x;	float mouse_y;	float button;	float shift;	float ctr;	float mode;		char firstIteration;	float omx;	float omy;	float mx,my;	float oldButtonDown;		} t_jit_fluidimage;void *_jit_fluidimage_class;t_jit_fluidimage *jit_fluidimage_new(void);void jit_fluidimage_free(t_jit_fluidimage *x);t_jit_err jit_fluidimage_matrix_calc(t_jit_fluidimage *x, void *inputs, void *outputs);t_jit_err jit_fluidimage_calculate_ndim(t_jit_fluidimage *x, long dimcount, long *dim, long planecount, 	t_jit_matrix_info *in_minfo, char *bip, t_jit_matrix_info *out_minfo, char *bop);t_jit_err jit_fluidimage_init(void);void add_source ( int N, float x[], float s[], float dt ){	int i, size=(N+2)*(N+2);	for ( i=0 ; i<size ; i++ ) x[i] += dt*s[i];}void set_bnd ( int N, int b, float x[] ){	int i;	for ( i=1 ; i<=N ; i++ ) {		x[IX(0  ,i)] = b==1 ? -x[IX(1,i)] : x[IX(1,i)];		x[IX(N+1,i)] = b==1 ? -x[IX(N,i)] : x[IX(N,i)];		x[IX(i,0  )] = b==2 ? -x[IX(i,1)] : x[IX(i,1)];		x[IX(i,N+1)] = b==2 ? -x[IX(i,N)] : x[IX(i,N)];	}	x[IX(0  ,0  )] = 0.5f*(x[IX(1,0  )]+x[IX(0  ,1)]);	x[IX(0  ,N+1)] = 0.5f*(x[IX(1,N+1)]+x[IX(0  ,N)]);	x[IX(N+1,0  )] = 0.5f*(x[IX(N,0  )]+x[IX(N+1,1)]);	x[IX(N+1,N+1)] = 0.5f*(x[IX(N,N+1)]+x[IX(N+1,N)]);}void lin_solve ( int N, int b, float x[], float x0[], float a, float c ){	int i, j, k;	for ( k=0 ; k<20 ; k++ ) {		FOR_EACH_CELL			x[IX(i,j)] = (x0[IX(i,j)] + a*(x[IX(i-1,j)]+x[IX(i+1,j)]+x[IX(i,j-1)]+x[IX(i,j+1)]))/c;		END_FOR		set_bnd ( N, b, x );	}}void diffuse ( int N, int b, float x[], float x0[], float diff, float dt ){	float a=dt*diff*N*N;	lin_solve ( N, b, x, x0, a, 1+4*a );}void advect ( int N, int b, float d[], float d0[], float u[], float v[], float dt ){	int i, j, i0, j0, i1, j1;	float x, y, s0, t0, s1, t1, dt0;	dt0 = dt*N;	FOR_EACH_CELL		x = i-dt0*u[IX(i,j)]; y = j-dt0*v[IX(i,j)];		if (x<0.5f) x=0.5f; if (x>N+0.5f) x=N+0.5f; i0=(int)x; i1=i0+1;		if (y<0.5f) y=0.5f; if (y>N+0.5f) y=N+0.5f; j0=(int)y; j1=j0+1;		s1 = x-i0; s0 = 1-s1; t1 = y-j0; t0 = 1-t1;		d[IX(i,j)] = s0*(t0*d0[IX(i0,j0)]+t1*d0[IX(i0,j1)])+					 s1*(t0*d0[IX(i1,j0)]+t1*d0[IX(i1,j1)]);	END_FOR	set_bnd ( N, b, d );}void project ( int N, float u[], float v[], float p[], float div[] ){	int i, j;	FOR_EACH_CELL		div[IX(i,j)] = -0.5f*(u[IX(i+1,j)]-u[IX(i-1,j)]+v[IX(i,j+1)]-v[IX(i,j-1)])/N;		p[IX(i,j)] = 0;	END_FOR		set_bnd ( N, 0, div ); set_bnd ( N, 0, p );	lin_solve ( N, 0, p, div, 1, 4 );	FOR_EACH_CELL		u[IX(i,j)] -= 0.5f*N*(p[IX(i+1,j)]-p[IX(i-1,j)]);		v[IX(i,j)] -= 0.5f*N*(p[IX(i,j+1)]-p[IX(i,j-1)]);	END_FOR	set_bnd ( N, 1, u ); set_bnd ( N, 2, v );}void vel_step (float N, float u[], float v[], float u0[], float v0[], float visc, float dt){	add_source ( N, u, u0, dt ); 	add_source ( N, v, v0, dt );	SWAP ( u0, u ); 	diffuse ( N, 1, u, u0, visc, dt );	SWAP ( v0, v ); 	diffuse ( N, 2, v, v0, visc, dt );	project ( N, u, v, u0, v0 );	SWAP ( u0, u ); 	SWAP ( v0, v );	advect ( N, 1, u, u0, u0, v0, dt ); 	advect ( N, 2, v, v0, u0, v0, dt );	project ( N, u, v, u0, v0 );}void dens_step (float N, float x[], float x0[], float u[], float v[], float diff, float dt){	add_source ( N, x, x0, dt );	SWAP ( x0, x ); 	diffuse ( N, 0, x, x0, diff, dt );	SWAP ( x0, x ); 	advect ( N, 0, x, x0, u, v, dt );}void Evaluate(char *bip, char *bop, long dimstride, long width, long height, float u[],float v[]){	long i, j;	long val;        		u[0]+=1;		v[0]+=1;		 			    	// apply equation    	for(j=0; j<height; j++){    		uchar *ip = bip + j*dimstride;	// dimstride[1] == width (bytes)		uchar  *op = bop  + j*dimstride;			for( i=0; i<width; i++){						int a1 = (i != width-1) ? ip[(i+1)*2]  : 0;			int a2 = (i != 0) ? ip[(i-1)*2]  : 0;			int a3 = (j != height-1) ? ip[i*2+dimstride]  : 0;			int a4 = (j != 0) ? ip[i*2-dimstride] : 0;								val =  u[0]*ip[i*2] + u[1]*ip[i*2+1] + u[2]*a1 +					u[3]*a2 + u[4]*a3 + u[5]*a4;				    		if(val < 0) val = 0;	    		else if(val > 255) val = 255;	    	    		op[i*2] = val;			op[i*2+1] = ip[i*2];		}   	}}t_jit_err jit_fluidimage_init(void) {	long attrflags=0;	t_jit_object *attr;	t_jit_object *mop;		_jit_fluidimage_class = jit_class_new("jit_fluidimage",(method)jit_fluidimage_new,(method)jit_fluidimage_free,		sizeof(t_jit_fluidimage),A_CANT,0L); //A_CANT = untyped	// add mop	mop = jit_object_new(_jit_sym_jit_mop,1,1);	// 1 matrix input / 1 matrix output	jit_class_addadornment(_jit_fluidimage_class,mop);		// add methods	jit_class_addmethod(_jit_fluidimage_class, (method)jit_fluidimage_matrix_calc, "matrix_calc", A_CANT, 0L);			// diff attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"diff",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,diff));	jit_class_addattr(_jit_fluidimage_class,attr);		// dt attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"dt",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,dt));	jit_class_addattr(_jit_fluidimage_class,attr);		// visc attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"visc",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,visc));	jit_class_addattr(_jit_fluidimage_class,attr);		// force attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"force",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,force));	jit_class_addattr(_jit_fluidimage_class,attr);		// source attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"source",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,source));	jit_class_addattr(_jit_fluidimage_class,attr);		// mouse_x attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"mouse_x",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,mouse_x));	jit_class_addattr(_jit_fluidimage_class,attr);		// mouse_y attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"mouse_y",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,mouse_y));	jit_class_addattr(_jit_fluidimage_class,attr);		// button attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"button",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,button));	jit_class_addattr(_jit_fluidimage_class,attr);		// shift attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"shift",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,shift));	jit_class_addattr(_jit_fluidimage_class,attr);			// shift attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"mode",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,mode));	jit_class_addattr(_jit_fluidimage_class,attr);		// ctr attribute	attr = jit_object_new(_jit_sym_jit_attr_offset,"ctr",_jit_sym_float32,attrflags,		(method)0L,(method)0L,calcoffset(t_jit_fluidimage,ctr));	jit_class_addattr(_jit_fluidimage_class,attr);	//attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;		//attr = jit_object_new(_jit_sym_jit_attr_offset_array,"param",_jit_sym_float32,		//JIT_MATRIX_MAX_PLANECOUNT, attrflags,(method)0L,(method)0L,		//calcoffset(t_jit_ys_pixelweight,paramcount),calcoffset(t_jit_ys_pixelweight,param));	//jit_class_addattr(_jit_ys_pixelweight_class,attr);						jit_class_register(_jit_fluidimage_class);	return JIT_ERR_NONE;}t_jit_err jit_fluidimage_matrix_calc(t_jit_fluidimage *x, void *inputs, void *outputs){	t_jit_err err=JIT_ERR_NONE;	long in_savelock,out_savelock;	t_jit_matrix_info in_minfo,out_minfo;	char *in_bp,*out_bp;	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];	void *in_matrix,*out_matrix;		in_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);			// 1st matrix	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);		// 1st matrix	if (x&&in_matrix&&out_matrix) {		in_savelock = (long) jit_object_method(in_matrix,_jit_sym_lock,1); 		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);				jit_object_method(in_matrix,_jit_sym_getinfo,&in_minfo);		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);				jit_object_method(in_matrix,_jit_sym_getdata,&in_bp);		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);				if (!in_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}				//compatible types?		if ((in_minfo.type!=out_minfo.type)) { 			err=JIT_ERR_MISMATCH_TYPE; 			goto out;		}				//compatible planes?		if (in_minfo.planecount!=out_minfo.planecount) {			err=JIT_ERR_MISMATCH_PLANE; 			goto out;		}		//get dimensions/planecount		dimcount   = out_minfo.dimcount;		planecount = out_minfo.planecount;					for (i=0;i<dimcount;i++) {			dim[i] = MIN(in_minfo.dim[i],out_minfo.dim[i]);		}				//calculate		jit_fluidimage_calculate_ndim(x, dimcount, dim, planecount, &in_minfo, in_bp, &out_minfo, out_bp);			} else {		return JIT_ERR_INVALID_PTR;	}	out:	jit_object_method(out_matrix,_jit_sym_lock,out_savelock);	jit_object_method(in_matrix,_jit_sym_lock,in_savelock);	return err;}//recursive function to handle higher dimension matrices, by processing 2D sections at a time t_jit_err jit_fluidimage_calculate_ndim(t_jit_fluidimage *x, long dimcount, long *dim, long planecount, 	t_jit_matrix_info *in_minfo, char *bip, t_jit_matrix_info *out_minfo, char *bop){	long i, j, width, height, index;	uchar *ip, *op;	float N;	int grid_i;	int grid_j;			if (dimcount<1) return 0; //safety	switch(dimcount) {	case 1:		dim[1] = 1;	case 2:		width = dim[0];		height = dim[1];				if (in_minfo->type==_jit_sym_char) {			switch (planecount) {			case 1:	// Grayscale				post("warning: plane count .. 1");				return 1;				break;							case 4:					N = x->N+2;							/* mode 0 : 					density: we want to use input as dens_prev, we keep density as it was in the previous step (simple smoke simulation)					user input: from mouse or tracker										mode 1: 					density: we want to use the input as current density, no previous density	(only see the effect of the velocity field on the input, watery effect)					user input: from mouse or tracker									*/													    /*********************** DENSITY INPUT *******************************************/				// grid sizes correspond to the computation grid				// width and height correspond to the window size				// so we need to scale the computation grid to display in the window 					for (i=0; i<width; i++){					long *ipp = bip + i*in_minfo->dimstride[1];	// dimstride[1] == width*4 (bytes)					grid_i = (int)(i/(width/N)); //computation grid pointer													for(j=0; j<height; j++, ipp++){						ip = ipp; //pointer to input matrix																grid_j = (int)(j/(height/N)); //computation grid pointer										if(grid_i >= N)							grid_i = N-1;											if(grid_j >= N)							grid_j = N-1;										index = (grid_i)+(N*(grid_j)); //index into computation grid												if(x->mode == 0) {							x->dens[index] = ip[0];							x->dens_prev[index] = ip[1];						} else if (x->mode == 1) {							x->dens_prev[index] = 0;							x->dens[index]=ip[1];						} else if( x->mode == 2) {							x->dens[index] = ip[1];							x->dens_prev[index] = ip[1];									}					}								}				 /*********************** VELOCITY INPUT *******************************************/												if(x->mode == 0 || x->mode == 1) { //if want to pay attention to user input						//test for NaN by using [0,2000] bounds.... couldn't find jitter isNan call ...								    if(x->button == 1 && x->shift==1 && x->mouse_x >0 && x->mouse_x <2000 && x->mouse_y >0 && x->mouse_y <2000 ) {			        				    	if(x->oldButtonDown==0) {				    		x->omx = x->mouse_x;				    		x->omy = x->mouse_y;				    		x->oldButtonDown = 1;				    	}				    				    	grid_i = (int)(x->mouse_x/(width/N));				    	grid_j = (int)(x->mouse_y/(height/N));				    	index = (grid_i)+(N*(grid_j));						x->u_prev[index] = x->force * ((x->mouse_x)-(x->omx));					    x->v_prev[index] = x->force * ((x->mouse_y)-(x->omy));						//x->v_prev[index] = x->force * ((x->omy)-(x->mouse_y));												//update for the next iteration						x->omx = x->mouse_x;						x->omy = x->mouse_y;				    } else {				    	x->oldButtonDown = 0;				    	// clear u and v				    	for(i=0;i<x->datasize; i++) { x->u_prev[i]=0; x->v_prev[i]=0;}				    }				 } else if(x->mode ==2) { // if want to define own vector field				 		for(i=0;i<x->datasize; i++) { 				 			if(x->dens[i]>0){				 				x->u_prev[i]=-1; 				 				x->v_prev[i]=-.1;				 			}else {				 				x->u_prev[i]=0; 				 				x->v_prev[i]=0;				 			}				 	}				 }				 				/*********************** APPLY NAVIER STOKES EQUATIONS *******************************************/						//calculate fluidimage equations				vel_step (x->N, x->u, x->v, x->u_prev, x->v_prev, x->visc, x->dt );				dens_step (x->N, x->dens, x->dens_prev, x->u, x->v, x->diff, x->dt );									//post("width %i, height %i, N %i, h/N %f, w/N %f, diff %f",width,height,x->N,(height/N),(width/N),x->diff);				//post("diff %f,visc %f, source %f, dt %f,force %f",x->diff,x->visc,x->source,x->dt,x->force);				//post("mouse x %f, mouse y %f, button %f, shift %f, ctr %f",x->mouse_x,x->mouse_y,x->button,x->shift,x->ctr);												/*********************** SET OUTPUT MATRIX *******************************************/				for (i=0; i<width; i++){					long *opp = bop  + i*out_minfo->dimstride[1];										grid_i = (int)(i/(width/N));										for(j=0; j<height; j++, opp++){												op = opp;						grid_j = (int)(j/(height/N));												if(grid_i >= N)							grid_i = N-1;													if(grid_j >= N)							grid_j = N-1;												index = (grid_i)+(N*(grid_j));												//because jitter wraps around						if(x->dens[index] < 255)			    					op[0] = x->dens[index];	    				else	    					op[0]=254;	    						    				op[1] = x->dens_prev[index];						op[2] = x->u[index];						op[3] = x->v[index];					}   				}								return 1;				break;								post("warning: plane count .. 4");				return 1;								break;			default:				post("warning: plane count .. default");				return 1;				break;			}		}		break;			default:		break;			}	return 0;}t_jit_fluidimage *jit_fluidimage_new(void){   	t_jit_fluidimage *x;	long i;	long j;	int index;			if (x=(t_jit_fluidimage *)jit_object_alloc(_jit_fluidimage_class)) {	  	   x->firstIteration = 1;	   x->N = 120; 	   x->oldButtonDown = 0;	   x->datasize=(x->N+2)*(x->N+2);	   x->u = (float *)jit_getbytes(sizeof(float)*x->datasize);	   x->v = (float *)jit_getbytes(sizeof(float)*x->datasize);	   x->u_prev = (float *)jit_getbytes(sizeof(float)*x->datasize);	   x->v_prev = (float *)jit_getbytes(sizeof(float)*x->datasize);	   x->dens = (float *)jit_getbytes(sizeof(float)*x->datasize);	   	   x->dens_prev = (float *)jit_getbytes(sizeof(float)*x->datasize);	   for(i=0; i<x->datasize; i++) {x->u[i] = 0; x->v[i]=0;x->u_prev[i] = 0; x->v_prev[i]=0;x->dens[i] = 0;}	   	   for(i=(x->N)/2; i< ((x->N)*3/4); i++) {		   for(j=(x->N)/2;j< ((x->N)*3/4); j++) {		   		index = (i)+(j)*((x->N)+2);	   			x->dens_prev[index]=100.0;	   		}	   	}	   	} else {		x = NULL;	}		return x;}void jit_fluidimage_free(t_jit_fluidimage *x){	if(x->u) jit_freebytes(x->u,sizeof(float)*x->datasize);	if(x->v) jit_freebytes(x->v,sizeof(float)*x->datasize);	if(x->u_prev) jit_freebytes(x->u_prev,sizeof(float)*x->datasize);	if(x->v_prev) jit_freebytes(x->v_prev,sizeof(float)*x->datasize);	if(x->dens) jit_freebytes(x->dens,sizeof(float)*x->datasize);	if(x->dens_prev) jit_freebytes(x->dens_prev,sizeof(float)*x->datasize);			}