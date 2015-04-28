

extern "C" {
	#include "jit.common.h"
}

#include "Particles.h"
#include <pthread.h>

typedef struct _jit_tml_lineJumpers
{
	t_object				ob;
	
	long yVelMin;				//How much error to accept (velocity jitters)
	long yVelMax;
	long xVelMin;				//How much error to accept
	long xVelMax;
	
	long minR, minG, minB;		//Minimum R/G/B values before shooting...
	long dR, dG, dB;			//Color adjustments... (can force white!)
	
	long numParticles;			//Number to shoot per frame...
	long minWeight;
	
	long cpuCount;				//Number of CPUs to use
	long cpuRows;				//Minimum rows before locking
	
	float derivative;

	float shadow;
 
	long width;
	long height;
	
	//All the particles...  (a particle per pixel)
	Particles *particles;
	
	//Mutex protected - lock and increment!
	int curLine;
	pthread_mutex_t curLineMt;
	
	//Second mutex to protect the program.  This one is used once
	//past half-way.
	pthread_mutex_t halfwayMt[6];
} t_jit_tml_lineJumpers;


//This does the per-frame work...
struct jumpThread
{
	t_jit_tml_lineJumpers *o;
	
	int id;
	int partNo;
	
	int dx;
	int dy;
	int counted;
	
	int stdDevX;
	int stdDevY;
	
	unsigned char *in_mtx;
	int inStrideX;
	int inStrideY;
	
	unsigned char *out_mtx;
	int outStrideX;
	int outStrideY;
};


unsigned char clampChar(float inVal)
{
	if (inVal > 255) return 255;
	if (inVal < 0) return 0;
	return (unsigned char) inVal;
}

#include <unistd.h>


//Moves the particles - synchronized!
void *forEachCPU(void *param)
{
	//Lock the mutex...
	jumpThread *dat = (jumpThread*)param;
	int nx, ny;
	int dx = 0;
	int dy = 0;
	int counted = 0;
	int particlesLeft = dat->o->numParticles;
	pthread_mutex_lock(&(dat->o->halfwayMt[dat->id]));
	dat->partNo = 1;	//On next lock, guarantee here!
	while(1)
	{
		pthread_mutex_lock(&(dat->o->curLineMt));
		
		ny = dat->o->curLine;
		(dat->o->curLine)+=dat->o->cpuRows;
		
		pthread_mutex_unlock(&(dat->o->curLineMt));
		
		//Check if we're done!
		if (ny >= dat->o->height)
		{
			dat->dx = dx;
			dat->dy = dy;
			dat->counted = counted;
			goto part2;
		}
		
		int nMax = ny + dat->o->cpuRows;
		if (nMax > dat->o->height) nMax = dat->o->height;
		
		while (ny < nMax)
		{
			//Get pointers...
			unsigned char *ref = dat->in_mtx + ny*dat->inStrideY;
			unsigned char *out = dat->out_mtx + ny*dat->outStrideY;
			Particles *p = dat->o->particles + ny*dat->o->width;
			
			//Do the line!
			for (nx=0; nx<dat->o->width; nx++)
			{			
				//Clear the output... (except for line at the bottom)
				if (ny == dat->o->height-1)
				{
					out[0] = 255;
					out[1] = clampChar(dat->o->dR);
					out[2] = clampChar(dat->o->dG);
					out[3] = clampChar(dat->o->dB);
				}
				else
				{
					out[0] = 0;
					out[1] = 0;
					out[2] = 0;
					out[3] = 0;
					
					//Can we launch a new particle...?
					/*if (p->pos.x >= 0 && p->pos.x < width
						&& p->pos.y>=0 && p->pos.y < height)
					{
						Particles *t2 = x->particles + (int)p->pos.x + (int)p->pos.y*width;
						if (t2->collideWith == p)
							t2->collideWith = NULL;
					}*/
					p->onFrame();
					/*if (p->pos.x >= 0 && p->pos.x < width
						&& p->pos.y>=0 && p->pos.y < height)
					{
						Particles *t2 = x->particles + (int)p->pos.x + (int)p->pos.y*width;
						if (t2->collideWith == NULL)
							t2->collideWith = p;
						else if (!p->isJumping)
						{
							p->onCollide(t2);
						}
					}*/
					
					//In the air?  add to statistics!
					if (p->pos.y > 0 && (p->steps > 0 || (!p->isJumping && p->pos.y >= 0)))
					{
						dx += p->vel.x;
						dy += p->vel.y;
						counted++;
					}
					
					if (particlesLeft > 0 && !(p->isJumping) && p->pos.y <= 0 && 
						(ref[1] >= dat->o->minR || ref[2] >= dat->o->minG || ref[3] >= dat->o->minB))
					{
						p->randomizeAccel(dat->o->xVelMin,dat->o->xVelMax,-dat->o->yVelMax,-dat->o->yVelMin);
						
						p->slowTo(nx, dat->o->height-ny);
						particlesLeft--;
					}
					else if (ref[1] < dat->o->minR && ref[2] < dat->o->minG && ref[3] < dat->o->minB)
					{
						p->isJumping = false;
					}
				}
				
				//Next item...
				ref += dat->inStrideX;
				out += dat->outStrideX;
				p++;
				
			}
			ny++;
		}
	}
	
part2:
	pthread_mutex_unlock(&(dat->o->halfwayMt[dat->id]));
	
	//Wait for stddev stuff
	pthread_mutex_lock(&(dat->o->curLineMt));
	pthread_mutex_lock(&(dat->o->halfwayMt[dat->id]));
	pthread_mutex_unlock(&(dat->o->curLineMt));
	
	pthread_mutex_unlock(&(dat->o->halfwayMt[dat->id]));
	return NULL;
}


void *_jit_tml_lineJumpers_class;

//Various methods
t_jit_tml_lineJumpers*jit_tml_lineJumpers_new(void);
void jit_tml_lineJumpers_allocate(t_jit_tml_lineJumpers*x, long width, long height);
void jit_tml_lineJumpers_free(t_jit_tml_lineJumpers*x);
t_jit_err jit_tml_lineJumpers_matrix_calc(t_jit_tml_lineJumpers*x, void *inputs, void *outputs);
t_jit_err jit_tml_lineJumpers_init(void);

//Getters/setters for members
t_jit_err jit_tml_lineJumpers_setGravity(t_jit_tml_lineJumpers*x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 2)
	{
		error("jit.tml.lineJumpers: gravity requires two values (min/variation)!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss <= 0)
	{
		error("jit.tml.lineJumpers: gravity > 0!");
		return JIT_ERR_GENERIC;
	}
	
	long tmpMin = ss;
	
	jit_atom_arg_getlong(&ss, 0, 1, argv+1);
	
	if (ss < 0)
	{
		error("jit.tml.lineJumpers: gravity >= 0!");
		return JIT_ERR_GENERIC;
	}
	
	x->yVelMin = tmpMin;
	x->yVelMax = x->yVelMin + ss;
	
	return JIT_ERR_NONE;
}

t_jit_err jit_tml_lineJumpers_setAccelJitter(t_jit_tml_lineJumpers*x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 2)
	{
		error("jit.tml.lineJumpers: accel jitter requires two values (min/variation)!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	long tmpMin = ss;
	
	jit_atom_arg_getlong(&ss, 0, 1, argv+1);
	
	if (ss < 0)
	{
		error("jit.tml.lineJumpers: accel jitter variation >= 0!");
		return JIT_ERR_GENERIC;
	}
	
	x->xVelMin = tmpMin;
	x->xVelMax = x->xVelMin + ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_lineJumpers_setMinRGB(t_jit_tml_lineJumpers*x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 3)
	{
		error("jit.tml.lineJumpers: accel jitter requires two values (min/variation)!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	if (ss < 0 || ss >= 256)
	{
		error("jit.tml.lineJumpers: R is between 0 and 255!");
		return JIT_ERR_GENERIC;
	}
	
	x->minR = ss;
	
	jit_atom_arg_getlong(&ss, 0, 1, argv+1);
	if (ss < 0 || ss >= 256)
	{
		error("jit.tml.lineJumpers: G is between 0 and 255!");
		return JIT_ERR_GENERIC;
	}
	
	x->minG = ss;
	
	jit_atom_arg_getlong(&ss, 0, 1, argv+2);
	if (ss < 0 || ss >= 256)
	{
		error("jit.tml.lineJumpers: B is between 0 and 255!");
		return JIT_ERR_GENERIC;
	}
	
	x->minB = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_lineJumpers_setAddRGB(t_jit_tml_lineJumpers*x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 3)
	{
		error("jit.tml.lineJumpers: accel jitter requires two values (min/variation)!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	x->dR = ss;
	
	jit_atom_arg_getlong(&ss, 0, 1, argv+1);
	
	x->dG = ss;
	
	jit_atom_arg_getlong(&ss, 0, 1, argv+2);
	
	x->dB = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_lineJumpers_setShadow(t_jit_tml_lineJumpers*x, void *attr, long argc, t_atom *argv)
{
	float ss;

	if (argc != 1)
	{
		error("jit.tml.lineJumpers: Shadow requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getfloat(&ss, 0, 1, argv);
	
	x->shadow = ss;
	
	
	return JIT_ERR_NONE;
}



t_jit_err jit_tml_lineJumpers_setParticlesPerFrame(t_jit_tml_lineJumpers*x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.lineJumpers: movement requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.lineJumpers: movement threshold must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	x->numParticles = ss;
	
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_lineJumpers_setNumCPUs(t_jit_tml_lineJumpers *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.lineJumpers: cpus requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 1 || ss > 6)
	{
		error("jit.tml.lineJumpers: CPUs can be any number between 1 and 6!");
		return JIT_ERR_GENERIC;
	}
	
	x->cpuCount = ss;
	
	
	return JIT_ERR_NONE;
}


t_jit_err jit_tml_lineJumpers_setRowCPUs(t_jit_tml_lineJumpers *x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.lineJumpers: rows requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 1 || ss > 20000)
	{
		error("jit.tml.lineJumpers: CPUs need to do at least 1 row, max 20000!");
		return JIT_ERR_GENERIC;
	}
	
	x->cpuRows = ss;
	
	
	return JIT_ERR_NONE;
}



t_jit_err jit_tml_lineJumpers_setMinWeight(t_jit_tml_lineJumpers*x, void *attr, long argc, t_atom *argv)
{
	long ss;

	if (argc != 1)
	{
		error("jit.tml.lineJumpers: weight requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.lineJumpers: weight threshold must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	x->minWeight = ss;
	
	
	return JIT_ERR_NONE;
}

t_jit_err jit_tml_lineJumpers_setDerivative(t_jit_tml_lineJumpers*x, void *attr, long argc, t_atom *argv)
{
	float ss;

	if (argc != 1)
	{
		error("jit.tml.lineJumpers: Derivative requires one value!");
		return JIT_ERR_GENERIC;
	}
	
	jit_atom_arg_getfloat(&ss, 0, 1, argv);
	
	if (ss < 0)
	{
		error("jit.tml.lineJumpers: Derivative must be positive!");
		return JIT_ERR_GENERIC;
	}
	
	x->derivative = ss;
	
	
	return JIT_ERR_NONE;
}




t_jit_err jit_tml_lineJumpers_matrix_calc(t_jit_tml_lineJumpers*x, void *inputs, void *outputs)
{
	void *matrix_image;
	void *matrix_output[4];
	
	unsigned char *data_image;
	unsigned char *data_mask;
	unsigned char *data_output[4];
	
	t_jit_matrix_info	info_image, info_output[4];
	
	t_jit_err err = JIT_ERR_NONE;
	
	matrix_image	= jit_object_method(inputs, _jit_sym_getindex, 0);
	
	if (!matrix_image || !matrix_output)
	{
		error("Missing input/output image!");
		return JIT_ERR_GENERIC;
	}
	
	//Get information on matrix.
	jit_object_method(matrix_image, _jit_sym_getinfo, &info_image);
	
	//Validate required matrices...
	if (info_image.dimcount != 2 || info_image.planecount != 4)
	{
		error("Invalid matrix inputs!");
		return JIT_ERR_GENERIC;
	}
	
	if (info_image.type != _jit_sym_char)
	{
		error("Need characters!");
		return JIT_ERR_GENERIC;
	}
	
	//Matrix width/height
	long width = info_image.dim[0];
	long height = info_image.dim[1];
	long strideX = info_image.dimstride[0];
	long strideY = info_image.dimstride[1];
	
	if (width*height < 1)
	{
		error("Input matrix 1 too small in size");
		return JIT_ERR_GENERIC;
	}
	
	if (width != x->width || height != x->height)
	{
		if (x->particles != NULL) delete[] x->particles;
		x->particles = new Particles[width*height];
		
		x->width = width;
		x->height =height;
	}
	
	
	//Fetch the input ptr
	jit_object_method(matrix_image, _jit_sym_getdata, &data_image);
	
	//Coerce output (all optional...)
	
	int k;
	for (k=0; k<2; k++)
	{
		matrix_output[k]	= jit_object_method(outputs, _jit_sym_getindex, k);
		
		if (matrix_output[k] == NULL)
		{
			if (k==0)
			{
				error("First output matrix is required!");
				return JIT_ERR_GENERIC;
			}
			data_output[k] = NULL;
		}
		else
		{
			jit_object_method(matrix_output[k], _jit_sym_getinfo, &info_output[k]);
		
			if (k == 0)
			{	
				if (info_image.dimcount != info_output[k].dimcount ||
					info_image.dim[0]	!= info_output[k].dim[0] ||
					info_image.dim[1]	!= info_output[k].dim[1] ||
					info_image.type		!= info_output[k].type ||
					info_output[k].planecount != 4)
				{
					info_output[k].dimcount= info_image.dimcount;
					info_output[k].dim[0]	= info_image.dim[0];
					info_output[k].dim[1]	= info_image.dim[1];
					info_output[k].type	= info_image.type;
					info_output[k].planecount = 4;
					
					if (jit_object_method(matrix_output[k], _jit_sym_setinfo, &info_output[k]))
					{
						error("Unable to resize output matrix %i to match input!", k);
						return JIT_ERR_GENERIC;
					}
					
					jit_object_method(matrix_output[k], _jit_sym_getinfo, &info_output[k]);
				}
			}
			else if (k==1)
			{
				if (info_output[k].dimcount != 1 ||
					info_output[k].dim[0]	!= 1 ||
					info_output[k].type		!= _jit_sym_float32 ||
					info_output[k].planecount != 4)
				{
					info_output[k].dimcount= 1;
					info_output[k].dim[0]	= 1;
					info_output[k].type	= _jit_sym_float32;
					info_output[k].planecount = 4;
					
					if (jit_object_method(matrix_output[k], _jit_sym_setinfo, &info_output[k]))
					{
						error("Unable to resize statistics matrix!", k);
						return JIT_ERR_GENERIC;
					}
					
					jit_object_method(matrix_output[k], _jit_sym_getinfo, &info_output[k]);
				}
			}
			
			//Get data...
			jit_object_method(matrix_output[k], _jit_sym_getdata, &data_output[k]);
		}
	}
	
	//Copy data!
	long nx,ny;
	
	unsigned char *ref;
	unsigned char *out[4];
	
	float *stats = (float*)data_output[1];
	float dx=0, dy=0;		//Sums of change in x/y
	int counted=0;			//Counted particles (for accuracy)
	
	jumpThread ts[6];
	pthread_t threadObjs[6];
	
	x->curLine = 0;
	
	memset(ts, 0, sizeof(jumpThread)*6);
	
	pthread_mutex_lock(&(x->curLineMt));
	for(k=0; k<x->cpuCount; k++)
	{
		ts[k].o = x;
		ts[k].in_mtx = data_image;
		ts[k].inStrideX = strideX;
		ts[k].inStrideY = strideY;
		ts[k].id = k;
		
		ts[k].out_mtx = data_output[0];
		ts[k].outStrideX = info_output[0].dimstride[0];
		ts[k].outStrideY = info_output[0].dimstride[1];
		
		pthread_create(&threadObjs[k], NULL, forEachCPU, ts+k);
	}
	pthread_mutex_unlock(&(x->curLineMt));
	
	//Wait for each one to complete...
	for(k=0; k<x->cpuCount; k++)
	{
		int last = 0;
		do {
			pthread_mutex_lock(&(x->halfwayMt[k]));
			last = ts[k].partNo;
			pthread_mutex_unlock(&(x->halfwayMt[k]));
		} while (last == 0);
	}
	
	
	pthread_mutex_lock(&(x->curLineMt));
	for(k=0; k<x->cpuCount; k++)
	{		
		counted+= ts[k].counted;
		dx+= ts[k].dx;
		dy+= ts[k].dy;
	}
	
	post("CPU 0: %i, CPU 1: %i, CPU 2: %i, CPU 3: %i, CPU 4: %i, CPU 5: %i",
			ts[0].counted,ts[1].counted,ts[2].counted,ts[3].counted,ts[4].counted,ts[5].counted);
	
	
	if (counted != 0)
	{
		dx /= (float)counted;
		dy /= (float)counted;
	}
	
	for(k=0; k<x->cpuCount; k++)
	{
		ts[k].dx = dx;
		ts[k].dy = dy;
	}
	
	pthread_mutex_unlock(&(x->curLineMt));
	
	float stdDevX = 0;
	float stdDevY = 0;
	
	//Output
	for (ny=0; ny<height; ny++)
	{
		for (nx=0; nx<width; nx++)
		{
			Particles *p = x->particles + nx + ny*width;
			int px = p->pos.x;
			int py = height - p->pos.y;
			
			if (p->pos.y > 0 && (p->steps > 0 || (!p->isJumping && p->pos.y >= 0)))
			{
				float diff = dx - p->vel.x;
				stdDevX += diff*diff;
				
				diff = dy - p->vel.y;
				stdDevY += diff*diff;
			}
			
			if (px >= 0 && px < width && py>=0 && py < height)
			{
			
				//Get required data...
				ref = data_image + nx*strideX + ny*strideY;
				
				for (k=0; k<1; k++)
				{
					if (data_output[k] != NULL)
						out[k] = data_output[k] + px*info_output[k].dimstride[0] + py*info_output[k].dimstride[1];
					else
						out[k] = NULL;
				}
			
				//Update the output
				if (out[0] != NULL)
				{
					out[0][0] = clampChar(ref[0]);
					out[0][1] = clampChar(ref[1]+x->dR);
					out[0][2] = clampChar(ref[2]+x->dG);
					out[0][3] = clampChar(ref[3]+x->dB);
				}
				
			}
		}
	}
	
	for(k=0; k<x->cpuCount; k++)
	{
		pthread_join(threadObjs[k], NULL);
	}
	
	if (counted != 0)
	{
		stdDevX /= (float)counted;
		stdDevY /= (float)counted;
		
		stdDevX = sqrt(stdDevX);
		stdDevY = sqrt(stdDevY);
	}
	
	if (stats != NULL)
	{
		stats[0] = dx;
		stats[1] = dy;
		stats[2] = stdDevX;
		stats[3] = stdDevY;
	}
	
	return err;
}


t_jit_err jit_tml_lineJumpers_init(void) 
{
	long attrflags=0;
	t_jit_object *attr;
	t_jit_object *mop, *o;
	
	//Create class with given constructors & destructors
	_jit_tml_lineJumpers_class = jit_class_new("jit_tml_lineJumpers",(method)jit_tml_lineJumpers_new,(method)jit_tml_lineJumpers_free,
		sizeof(t_jit_tml_lineJumpers),A_CANT,0L); //A_CANT = untyped

	// 2 matrix input / 1 matrix output
	mop = (t_jit_object*)jit_object_new(_jit_sym_jit_mop,1,2);

	// need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
	//jit_mop_input_nolink(mop,2);
	// o= (t_jit_object*)jit_object_method(mop,_jit_sym_getinput,2);
	//jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
	jit_class_addadornment(_jit_tml_lineJumpers_class,mop);
	
	// add methods
	jit_class_addmethod(_jit_tml_lineJumpers_class, (method)jit_tml_lineJumpers_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	
	// Add attribute -- threshold (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "gravity", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setGravity,
							calcoffset(t_jit_tml_lineJumpers, yVelMin));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	// Add attribute -- threshold (error)
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "accelJitter", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setAccelJitter,
							calcoffset(t_jit_tml_lineJumpers, xVelMin));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "minRGB", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setMinRGB,
							calcoffset(t_jit_tml_lineJumpers, minR));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "addRGB", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setAddRGB,
							calcoffset(t_jit_tml_lineJumpers, dR));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	//This attribute controls how much the shadows play a part in this effect...
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "shadows", _jit_sym_float32,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setShadow,
							calcoffset(t_jit_tml_lineJumpers, shadow));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	//Moves stuff around
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "particlesPerFrame", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setParticlesPerFrame,
							calcoffset(t_jit_tml_lineJumpers, numParticles));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	//Number of CPUs to use
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "cpus", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setNumCPUs,
							calcoffset(t_jit_tml_lineJumpers, cpuCount));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	//Min load per CPU
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "loadPerCPU", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setRowCPUs,
							calcoffset(t_jit_tml_lineJumpers, cpuRows));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	
	//Minimum size of the blobs...
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "weight", _jit_sym_long,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setMinWeight,
							calcoffset(t_jit_tml_lineJumpers, minWeight));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	//How much the derivative will affect the final result
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset, "derivative", _jit_sym_float32,
							attrflags, (method)0L,
							(method)jit_tml_lineJumpers_setDerivative,
							calcoffset(t_jit_tml_lineJumpers, derivative));
	jit_class_addattr(_jit_tml_lineJumpers_class, attr);
	
	
	//Done!	
	jit_class_register(_jit_tml_lineJumpers_class);

	return JIT_ERR_NONE;
}


t_jit_tml_lineJumpers*jit_tml_lineJumpers_new(void)
{
	t_jit_tml_lineJumpers*x;
		
	if (x=(t_jit_tml_lineJumpers*)jit_object_alloc(_jit_tml_lineJumpers_class))
	{
		x->yVelMin = 10;
		x->yVelMax = 20;
		
		x->yVelMin = -10;
		x->yVelMax = 10;
		
		x->minR = 3;
		x->minG = 3;
		x->minB = 3;
		
		x->dR = 0;
		x->dG = 0;
		x->dB = 0;
		
		x->width = 0;
		x->height = 0;
		x->shadow = 0.5f;
		x->numParticles = 5*5;
		x->minWeight = 20;
		x->derivative = 20;
		x->particles = NULL;
		
		x->cpuCount = 1;
		x->cpuRows = 9999;
		
		pthread_mutex_init(&x->curLineMt, NULL);
		int i;
		for (i=0; i<6; i++)
			pthread_mutex_init(&x->halfwayMt[i], NULL);
	} else {
		x = NULL;
	}	
	return x;
}

void jit_tml_lineJumpers_free(t_jit_tml_lineJumpers*x)
{
	if (x->particles != NULL)
		delete[] x->particles;
	
	pthread_mutex_destroy(&x->curLineMt);
	
	int i;
	for (i=0; i<6; i++)
		pthread_mutex_destroy(&x->halfwayMt[i]);
}


