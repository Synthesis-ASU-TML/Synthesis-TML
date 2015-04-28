//
//	jit.tml.fluid2.c
//						06.06.03	by Yoichiro Serita	(pixelWeight)
//						2007-04-04	Michael Fortin		(same code base)

#include "jit.common.h"
#include <dispatch/dispatch.h>

#define T	4

typedef struct _jit_tml_particleFlow t_jit_tml_particleFlow;

typedef struct dispatchMessage
{
	int message;
	
	t_jit_tml_particleFlow *o;
} dispatchMessage;

struct _jit_tml_particleFlow 
{
    t_object				ob;
	
	float	*vf;			//Vector field (what we work on)
	char	*space[T];		//Space (where particles reside)
	float	*p[T];			//Particles (buffer)
	float	*vel[T];		//Velocity (buffer)
	float	*mass[T];		//Mass (buffer)
	float	*damp[T];		//Dampening (buffer)
	int		c[T];			//Count of # of particles (EVILS)
	int		m[T];			//Maximum # of particles
	
	long speedCount;
	float speed[T];
	
	long respawnCount;
	long respawn[T];
	
	long minMassCount, maxMassCount;
	float minMass[T], maxMass[T];
	
	long minDampCount, maxDampCount;
	float minDamp[T], maxDamp[T];
	
	
	//Width/height of allocated bitmap
	long width;
	long height;
	long allocated;
	
	//Grand Central Queues / groups...
	dispatch_group_t	grpAdvect;		//Move particles around
	dispatch_group_t	grpExplode;		//Provide an updated velocity field (new)
	
	dispatch_queue_t	q;
	dispatch_queue_t	seq;			//Sequential queue to order everything!
	
	dispatchMessage		mAdvect[T];		//One message per advection...
	dispatchMessage		*mRows;			//One message per row...
	
	long paramcount;
	
	
	//Allocated size
	
	//Velocity output (set to less than 8 width/height to disable...)
	long vOutWidth;
	long vOutHeight;
	
	
};


void x_init();
void mpInit(int in_workers);		//# of worker threads
void mpTerminate();


void *_jit_tml_particleFlow_class;
void jit_tml_particleFlow_allocate(t_jit_tml_particleFlow *x, int in_width, int in_height);
t_jit_tml_particleFlow *jit_tml_particleFlow_new(void);
void jit_tml_particleFlow_free(t_jit_tml_particleFlow *x);
t_jit_err jit_tml_particleFlow_matrix_calc(t_jit_tml_particleFlow *x, void *inputs, void *outputs);

t_jit_err jit_tml_particleFlow_init(void);


t_jit_err jit_tml_particleFlow_set(t_jit_tml_particleFlow *x, void *attr, long argc, t_atom *argv);


t_jit_err jit_tml_particleFlow_init(void) 
{
    long attrflags=0;
    t_jit_object *attr;
    t_jit_object *mop, *o;
	
	
    _jit_tml_particleFlow_class = jit_class_new("jit_tml_particleFlow",(method)jit_tml_particleFlow_new,(method)jit_tml_particleFlow_free,
						 sizeof(t_jit_tml_particleFlow),A_CANT,0L); //A_CANT = untyped

    // add mop
    mop = jit_object_new(_jit_sym_jit_mop,T+1,T+1);	// 1 matrix input / 1 matrix output

    // need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
    
	int i;
	for (i=0; i<T; i++)
	{
		jit_mop_input_nolink(mop,2+i);
		o= jit_object_method(mop,_jit_sym_getinput,2+i);
		jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt);
	}
	
	
    jit_class_addadornment(_jit_tml_particleFlow_class,mop);
	
    // add methods
    jit_class_addmethod(_jit_tml_particleFlow_class, (method)jit_tml_particleFlow_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	//Add attributes
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "minMass",
						  _jit_sym_long, T, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_particleFlow, minMassCount),
						  calcoffset(t_jit_tml_particleFlow,minMass));
	jit_class_addattr(_jit_tml_particleFlow_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "maxMass",
						  _jit_sym_long, T, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_particleFlow, maxMassCount),
						  calcoffset(t_jit_tml_particleFlow,maxMass));
	jit_class_addattr(_jit_tml_particleFlow_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "minDampening",
						  _jit_sym_long, T, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_particleFlow, minDampCount),
						  calcoffset(t_jit_tml_particleFlow,minDamp));
	jit_class_addattr(_jit_tml_particleFlow_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "maxDampening",
						  _jit_sym_long, T, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_particleFlow, maxDampCount),
						  calcoffset(t_jit_tml_particleFlow,maxDamp));
	jit_class_addattr(_jit_tml_particleFlow_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "speed",
						  _jit_sym_float32, T, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_particleFlow, speedCount),
						  calcoffset(t_jit_tml_particleFlow,speed));
	jit_class_addattr(_jit_tml_particleFlow_class,attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "respawn",
						  _jit_sym_long, T, 
						  attrflags, (method)0L, (method)0L, calcoffset(t_jit_tml_particleFlow, respawnCount),
						  calcoffset(t_jit_tml_particleFlow,respawn));
	jit_class_addattr(_jit_tml_particleFlow_class,attr);
//	attr = jit_object_new(	_jit_sym_jit_attr_offset,"speed",_jit_sym_float32,
//							attrflags,(method)0L,(method)0L,
//							calcoffset(t_jit_tml_particleFlow,speed));
//	jit_class_addattr(_jit_tml_particleFlow_class,attr);


		
    jit_class_register(_jit_tml_particleFlow_class);

    return JIT_ERR_NONE;
}


inline float frand()
{
	return ((float)(rand()%10000000))/10000000.0f;
}


void dispatchAdvect(void *o)
{
	dispatchMessage *m = (dispatchMessage*)o;
	t_jit_tml_particleFlow *x = m->o;
	
	int sy = x->width*2;
	int sx = 2;
	
	float *vf = x->vf;
	char *s = x->space[m->message];
	float *p = x->p[m->message];
	float *vel = x->vel[m->message];
	float *mass = x->mass[m->message];
	float *damp = x->damp[m->message];
	
	memset(s, 0, sizeof(char)*x->width*x->height);
	if (s == NULL || p == NULL || vf == NULL)
		return;
	
	int i;
	const int M = x->c[m->message];
	
	float speed = x->speed[m->message];
	long rs = x->respawn[m->message];
	
	int c = 0;
	
	for (i=0; i<M; i++)
	{
		int x1 = (int)p[3*i];
		int y1 = (int)p[3*i+1];
		
		float fx1 = p[3*i] - x1;
		float fy1 = p[3*i+1] - y1;
		
		if (x1<= 0 || y1 <= 0 || x1 >= x->width-1 || y1 >= x->height-1)
		{
			if (c < rs)
			{
				p[3*i+0] = frand()*(float)(x->width-1);
				p[3*i+1] = frand()*(float)(x->height-1);
				p[3*i+2] = 0;
				
				vel[2*i+0] = 0;
				vel[2*i+1] = 0;
				
				mass[i] = frand()*(x->maxMass[m->message] - x->minMass[m->message])
								+ x->minMass[m->message];
				
				damp[i] = frand()*(x->maxDamp[m->message] - x->minDamp[m->message])
									+ x->minDamp[m->message];
				
				c++;
			}
			else
			{
				p[3*i+1] = -100;
			}

		}
		else
		{
		
//		if (x1 < 0)	x1 = 0;
//		if (y1 < 0)	y1 = 0;
//		
//		if (x1 >= x->width-1)	x1 = x->width-1;
//		if (y1 >= x->height-1)	y1 = x->height-1;
			
			float vx00 = vf[y1*sy + x1*sx + 0];
			float vy00 = vf[y1*sy + x1*sx + 1];
			
			float vx10 = vf[y1*sy + x1*sx + 2];
			float vy10 = vf[y1*sy + x1*sx + 3];
			
			float vx01 = vf[(y1+1)*sy + x1*sx + 0];
			float vy01 = vf[(y1+1)*sy + x1*sx + 1];
			
			float vx11 = vf[(y1+1)*sy + x1*sx + 2];
			float vy11 = vf[(y1+1)*sy + x1*sx + 3];
			
			float fax = ((1-fy1)*( (1-fx1)*vx00 + fx1* vx10) + (fy1)*((1-fx1)*vx01 + fx1* vx11));
			float fay = ((1-fy1)*( (1-fx1)*vy00 + fx1* vy10) + (fy1)*((1-fx1)*vy01 + fx1* vy11));
						
			if (mass[i] > 0 || mass[i] < 0)
			{
				vel[2*i+0] -= vel[2*i+0]*damp[i]*speed;
				vel[2*i+1] -= vel[2*i+1]*damp[i]*speed;
				
				//F = ma, a = F/m
				vel[2*i+0] += speed*fax/mass[i];
				vel[2*i+1] += speed*fay/mass[i];
				
				p[3*i+0] += speed*vel[2*i+0];
				p[3*i+1] += speed*vel[2*i+1];
				p[3*i+2] += speed;
			}
			else
			{
				p[3*i+0] += speed*fax;
				p[3*i+1] += speed*fay;
				p[3*i+2] += speed;
			}
			
			s[x->width*y1 + x1] = 0xFF;
		}
	}
}


void dispatchVelocity(void *o)
{
	dispatchMessage *m = (dispatchMessage*)o;
	t_jit_tml_particleFlow *x = m->o;
	
	//Fetch the rows; and for each row write out some velocities!
	int i;
	int r = m->message;
	
	char *s[T];
	float *v = x->vf;
	
	for (i=0; i<T; i++)
	{
		s[i] = x->space[i];
	}
	
	for (i=0; i<x->width; i++)
	{
		int c = 0;
		
		int j;
		for (j=0; j<T; j++)
		{
			if (s[j][x->width*r + i])
				c++;
		}
		
		if (c > 1)
		{
			
		}
		else
		{
			v[x->width*r*2 + i*2 + 0] = 0;
			v[x->width*r*2 + i*2 + 1] = 0;
		}
	}
}


void dispatchFunction(void *o)
{
	t_jit_tml_particleFlow *x = (t_jit_tml_particleFlow*)o;
	
	//Move all of the particles & write out their color
	int i;
	for (i=0; i<T; i++)
	{
		x->mAdvect[i].message = i;
		x->mAdvect[i].o = x;
		dispatch_group_async_f(x->grpAdvect, x->q, &x->mAdvect[i], dispatchAdvect);
	}
	dispatch_group_wait(x->grpAdvect, DISPATCH_TIME_FOREVER);
	
	//Rewrite the velocity field to reflect the needed changes
	for (i=0; i<x->height; i++)
	{
		x->mRows[i].message = i;
		x->mRows[i].o = x;
		dispatch_group_async_f(x->grpAdvect, x->q, &x->mRows[i], dispatchVelocity);
	}
	dispatch_group_wait(x->grpAdvect, DISPATCH_TIME_FOREVER);
}


t_jit_err jit_tml_particleFlow_matrix_calc(t_jit_tml_particleFlow *x, void *inputs, void *outputs)
{
	int i;
    t_jit_err err=JIT_ERR_NONE;
    long in_savelock[T],out_savelock[T],vel_savelock,ov_savelock;
    t_jit_matrix_info in_minfo[T],out_minfo[T], vel_minfo, ov_minfo;
    void *in_matrix[T],*out_matrix[T], *vel_matrix, *ov_matrix;
	float *in_bp[T], *out_bp[T];
	float *vel_bp = NULL, *ov_bp;
	
	for (i=0; i<T; i++)
	{
		in_matrix[i] 	= jit_object_method(inputs,_jit_sym_getindex,1+i);				// 1st matrix
		out_matrix[i] 	= jit_object_method(outputs,_jit_sym_getindex,1+i);				// 1st matrix
	}
    vel_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);			// 2nd matrix (parameter)
	ov_matrix	= jit_object_method(outputs,_jit_sym_getindex,0);

    if (x)
	{
		for (i=0; i<T; i++)
		{
			in_savelock[i] = (long) jit_object_method(in_matrix[i],_jit_sym_lock,1); 
			out_savelock[i] = (long) jit_object_method(out_matrix[i],_jit_sym_lock,1);
		}
		vel_savelock = (long) jit_object_method(vel_matrix,_jit_sym_lock,1);
		ov_savelock = (long)jit_object_method(ov_matrix, _jit_sym_lock,1);
		
		for (i=0; i<T; i++)
		{
			jit_object_method(in_matrix[i],_jit_sym_getinfo,&in_minfo[i]);
			jit_object_method(out_matrix[i],_jit_sym_getinfo,&out_minfo[i]);
		}
		jit_object_method(vel_matrix,_jit_sym_getinfo,&vel_minfo);
		jit_object_method(ov_matrix, _jit_sym_getinfo, &ov_minfo);
		
		
		//Validate the particle matrices...
		for (i=0; i<T; i++)
		{
			if (in_minfo[i].dimcount == 2)
			{
				in_minfo[i].dimcount = 1;
				in_minfo[i].planecount = 3;
				in_minfo[i].type = _jit_sym_float32;
				in_minfo[i].dim[0] = 0;
			}
			else if (in_minfo[i].dimcount != 1 || in_minfo[i].planecount != 3
				|| in_minfo[i].type != _jit_sym_float32)
			{
				error("For input %i, found (expected) dim=%i (1) planes=%i(3) type=float32"
						" width=%i",
							i+1,in_minfo[i].dimcount, in_minfo[i].planecount,
							in_minfo[i].dim[i]);
				err = JIT_ERR_MISMATCH_PLANE;
				goto out;
			}
			
			//Coerce the output if needed...
			if (out_minfo[i].dimcount != 1 || out_minfo[i].planecount != 3
				|| out_minfo[i].type != _jit_sym_float32
				|| out_minfo[i].dim[0] != x->c[i])
			{
				out_minfo[i].dimcount = 1;
				out_minfo[i].planecount = 3;
				out_minfo[i].type = _jit_sym_float32;
				out_minfo[i].dim[0] = x->c[i];
				
				if (jit_object_method(out_matrix[i], _jit_sym_setinfo, &(out_minfo[i]) ))
				{
					error("Unable to resize output matrix %i to match input!", 1+i);
					err = JIT_ERR_GENERIC;
					goto out;
				}
				jit_object_method(out_matrix[i],_jit_sym_getinfo,&(out_minfo[i]) );
				//post("New stride: %i", out_minfo[i].dimstride[0]);
			}
		}
		
		//Validate the velocity field (assume this comes from fluid2 - so min 8x8)
		if (vel_minfo.dimcount != 2 || vel_minfo.planecount != 2
			|| vel_minfo.type != _jit_sym_float32 || vel_minfo.dim[0] < 8
			|| vel_minfo.dim[1] < 8)
		{
			error("For input 0, found (expected) dim=%i (2), planes=%i (2), type=float32, "
				  " width=%i (>=8), height=%i (>=8)",
				  vel_minfo.dimcount, vel_minfo.planecount, vel_minfo.dim[0], vel_minfo.dim[1]);
			err = JIT_ERR_MISMATCH_PLANE;
			goto out;
		}
		
		//Coerce the output velocity field to match the internal velocity field!
		if (vel_minfo.dimcount != ov_minfo.dimcount
			|| vel_minfo.planecount != ov_minfo.planecount
			|| vel_minfo.type != ov_minfo.type
			|| x->width != ov_minfo.dim[0]
			|| x->height != ov_minfo.dim[1])
		{
			ov_minfo.dimcount = vel_minfo.dimcount;
			ov_minfo.planecount = vel_minfo.planecount;
			ov_minfo.type = _jit_sym_float32;
			ov_minfo.dim[0] = x->width;
			ov_minfo.dim[1] = x->height;
			
			if (jit_object_method(ov_matrix, _jit_sym_setinfo, &(ov_minfo) ))
			{
				error("Unable to resize output matrix %i to match input!", 1+i);
				err = JIT_ERR_GENERIC;
				goto out;
			}
			jit_object_method(ov_matrix,_jit_sym_getinfo,&(ov_minfo) );
		}
		
		//Wait for libdispatch to complete...
		dispatch_group_wait(x->grpExplode, DISPATCH_TIME_FOREVER);
		
		//If we have data... output it!
		if (x->vf)
		{
			jit_object_method(ov_matrix,_jit_sym_getdata,&ov_bp);
			memcpy(ov_bp, x->vf, x->width*x->height*2*sizeof(float));
		}
		
		for (i=0; i<T; i++)
		{
			if (x->p[i] != NULL && x->c[i] != 0)
			{
				jit_object_method(out_matrix[i],_jit_sym_getdata,&out_bp[i]);
				memcpy(out_bp[i], x->p[i], sizeof(float)*3*x->c[i]);
			}
		}
		
		//Patch up internal velocity buffer to match size of input (if needed)
		if (vel_minfo.dim[0] != x->width || vel_minfo.dim[1] != x->height)
		{
			if (vel_minfo.dim[1] != x->height)
			{
				free(x->mRows);
				x->mRows = malloc(sizeof(dispatchMessage)*vel_minfo.dim[1]);
			}
			
			if (vel_minfo.dim[0] * vel_minfo.dim[1] > x->allocated)
			{
				if (x->vf)		free(x->vf);
				for (i=0; i<T; i++)
				{
					if (x->space[i])	free(x->space[i]);
					x->space[i] = malloc(vel_minfo.dim[0]*vel_minfo.dim[1]);
				}
				x->allocated = vel_minfo.dim[0]*vel_minfo.dim[1];
				x->vf = malloc(sizeof(float)*x->allocated*2);
			}
			
			x->width = vel_minfo.dim[0];
			x->height = vel_minfo.dim[1];
		}
		
		//Patch up the individual particle storage
		for (i=0; i<T; i++)
		{
			if (x->m[i] < in_minfo[i].dim[0])
			{
				if (x->p[i])	free(x->p[i]);
				if (x->vel[i])	free(x->vel[i]);
				if (x->mass[i])	free(x->mass[i]);
				if (x->damp[i])	free(x->damp[i]);
				
				x->m[i] = in_minfo[i].dim[0];
				
				x->p[i] = malloc(x->m[i]*sizeof(float)*3);
				x->vel[i] = malloc(x->m[i]*sizeof(float)*2);
				x->mass[i] = malloc(x->m[i]*sizeof(float));
				x->damp[i] = malloc(x->m[i]*sizeof(float));
			}
			
			if (x->c[i] != in_minfo[i].dim[0])
			{
				
				jit_object_method(in_matrix[i],_jit_sym_getdata,&in_bp[i]);
				memcpy(x->p[i], in_bp[i], sizeof(float)*3*x->c[i]);
				memset(x->vel[i], 0, sizeof(float)*2*x->c[i]);
				
				for (int l = 0; l<x->c[i]; l++)
				{
					x->mass[i][l] = frand()*(x->maxMass[i] - x->minMass[i])
							+ x->minMass[i];
					
					x->damp[i][l] = frand()*(x->maxDamp[i] - x->minDamp[i])
							+ x->minDamp[i];
				}
				
				x->c[i] = in_minfo[i].dim[0];
			}
		}
		
		//Obtain the latest values from the jitter matrices...
		jit_object_method(vel_matrix,_jit_sym_getdata,&vel_bp);
		memcpy(x->vf,vel_bp, sizeof(float)*x->width*x->height*2);
		
		//Start up the concurrent queue EXPLODE!
		if (x->mRows)
			dispatch_group_async_f(x->grpExplode, x->seq, x, dispatchFunction);
		
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
    }
	
 out:
	for (i=0; i<T; i++)
	{
		jit_object_method(out_matrix[i],_jit_sym_lock,out_savelock[i]);
		jit_object_method(in_matrix[i],_jit_sym_lock,in_savelock[i]);
	}
    
	jit_object_method(vel_matrix,_jit_sym_lock,vel_savelock);
    jit_object_method(ov_matrix,_jit_sym_lock,ov_savelock);
    return err;
}



t_jit_tml_particleFlow *jit_tml_particleFlow_new(void)
{
    t_jit_tml_particleFlow *x;
    //long i;
	
	
    if (x=(t_jit_tml_particleFlow *)jit_object_alloc(_jit_tml_particleFlow_class)) {
		
		
		
		//Setup defaults
		int i;
		x->width = 0;
		x->height = 0;
		x->allocated = 0;
		for (i=0; i<T; i++)
		{
			x->space[i] = NULL;
			x->p[i] = NULL;
			x->vel[i] = NULL;
			x->mass[i] = NULL;
			x->damp[i] = NULL;
			x->m[i] = 0;
			x->c[i] = 0;
			x->speed[i] = 0.01f*(float)i;
			x->respawn[i] = 10-i;
			
			x->minMass[i] = 0;
			x->maxMass[i] = 0;
			
			x->minDamp[i] = 0;
			x->maxDamp[i] = 0;
		}
		x->mRows = NULL;
		x->vf = NULL;
		
		//Setup Grand Central
		x->grpAdvect = dispatch_group_create();
		x->grpExplode = dispatch_group_create();
		x->q = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, NULL);
		x->seq = dispatch_queue_create("Seriakl jit.tml.particleFlow", NULL);
    } else {
	x = NULL;
    }	
    return x;
}

void jit_tml_particleFlow_free(t_jit_tml_particleFlow *x)
{
	//Wait for everything to end...
	dispatch_group_wait(x->grpExplode, DISPATCH_TIME_FOREVER);
	dispatch_release(x->grpAdvect);
	dispatch_release(x->grpExplode);
	
	int i;
	for (i=0; i<T; i++)
	{
		if (x->space[i])	free(x->space[i]);
		if (x->p[i])		free(x->p[i]);
		if (x->vel[i])		free(x->vel[i]);
		if (x->mass[i])		free(x->mass[i]);
		if (x->damp[i])		free(x->damp[i]);
	}
	
	if (x->vf)			free(x->vf);
	if (x->mRows)		free(x->mRows);
}
