//
//	jit.tml.fluid2.c
//						06.06.03	by Yoichiro Serita	(pixelWeight)
//						2007-04-04	Michael Fortin		(same code base)

#include "jit.common.h"
#include <dispatch/dispatch.h>

typedef struct _jit_tml_lPlant t_jit_tml_lPlant;

typedef struct dispatchMessage
{
	int message;
	
	t_jit_tml_lPlant *o;
} dispatchMessage;

struct _jit_tml_lPlant 
{
    t_object				ob;
	
	//LPlant stuff
	float scale;
	float ampDistance;
	float pRigid;
	float distAng;
	float ampMode;
	float targetX, targetY;
	float angleMix;
	float mad;
	float da;				//Change in angle
	float ampAngle;
	float startX, startY;	//Where the L-Plant starts to grow...
	float maxRecursion;
	float startAngle;
	
	//Immediate vars
	int curInd;
	int mLDim;		//LSystem dimension and data
	unsigned char *mLDat;
	int curOut; float *mODat;
};


void x_init();
void mpInit(int in_workers);		//# of worker threads
void mpTerminate();


void *_jit_tml_lPlant_class;
void jit_tml_lPlant_allocate(t_jit_tml_lPlant *x, int in_width, int in_height);
t_jit_tml_lPlant *jit_tml_lPlant_new(void);
void jit_tml_lPlant_free(t_jit_tml_lPlant *x);
t_jit_err jit_tml_lPlant_matrix_calc(t_jit_tml_lPlant *x, void *inputs, void *outputs);

t_jit_err jit_tml_lPlant_init(void);


t_jit_err jit_tml_lPlant_set(t_jit_tml_lPlant *x, void *attr, long argc, t_atom *argv);


t_jit_err jit_tml_lPlant_init(void) 
{
    long attrflags=0;
    t_jit_object *attr;
    t_jit_object *mop, *o;
	
	
    _jit_tml_lPlant_class = jit_class_new("jit_tml_lPlant",(method)jit_tml_lPlant_new,(method)jit_tml_lPlant_free,
						 sizeof(t_jit_tml_lPlant),A_CANT,0L); //A_CANT = untyped

    // add mop
    mop = jit_object_new(_jit_sym_jit_mop,1,1);	// 1 matrix input / 1 matrix output

    // need this for getting correct matrix_info from 2nd input matrix....  (see jit.concat.c...)
    
//	int i;
//	for (i=0; i<T; i++)
//	{
//		jit_mop_input_nolink(mop,2+i);
//		o= jit_object_method(mop,_jit_sym_getinput,2+i);
//		jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt);
//	}
	
	
    jit_class_addadornment(_jit_tml_lPlant_class,mop);
	
    // add methods
    jit_class_addmethod(_jit_tml_lPlant_class, (method)jit_tml_lPlant_matrix_calc, "matrix_calc", A_CANT, 0L);
	
	//Add attributes
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"startAngle",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,startAngle));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"maxRecursion",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,maxRecursion));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"scale",_jit_sym_float32,
							attrflags,(method)0L,(method)0L,
							calcoffset(t_jit_tml_lPlant,scale));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"changeInAngle",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,da));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"amplifyMode",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,ampMode));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"amplifyAngle",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,ampAngle));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"distanceAngle",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,distAng));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"ampDistance",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,ampDistance));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"rigidity",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,pRigid));
	jit_class_addattr(_jit_tml_lPlant_class,attr);

	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"maxChangeInAngle",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,mad));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"targetX",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,targetX));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"targetY",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,targetY));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"targetMix",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,angleMix));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"startX",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,startX));
	jit_class_addattr(_jit_tml_lPlant_class,attr);
	
	attr = jit_object_new(	_jit_sym_jit_attr_offset,"startY",_jit_sym_float32,
						  attrflags,(method)0L,(method)0L,
						  calcoffset(t_jit_tml_lPlant,startY));
	jit_class_addattr(_jit_tml_lPlant_class,attr);

		
    jit_class_register(_jit_tml_lPlant_class);

    return JIT_ERR_NONE;
}


inline float frand()
{
	return ((float)(rand()%10000000))/10000000.0f;
}


void recurseDraw(	float nPosX, float nPosY,
							float posX, float posY,
							float angle,
							float nDX, float nDY,
							float rec,
							t_jit_tml_lPlant *x,
							int r,
							int lastEdge)
{
	float tangle = angle;
	
	int myEdge = lastEdge;
	
	for (;;)
	{
		x->curInd++;
		if (x->curInd >= x->mLDim)
		{
			return;
		}
		
		unsigned char cd = x->mLDat[x->curInd];
		
		
		//Controls amount of growing (recursion)
		float RecAmt = x->maxRecursion -r;
		if (RecAmt < 0)	RecAmt = 0;
		if (RecAmt > 1) RecAmt = 1;
		
		
		if (cd == 'F' || cd == 'G')
		{
			float pX = posX;
			float pY = posY;
			
			if (myEdge != -1)
			{
				x->mODat[myEdge*3+2]++;
			}
			
			x->mODat[x->curOut*3+0] = posX;
			x->mODat[x->curOut*3+1] = posY;
			x->mODat[x->curOut*3+2] = 1;
			x->curOut++;
			
			nPosX += nDX *(x->scale + rec*x->ampDistance);
			nPosY += nDY *(x->scale + rec*x->ampDistance);
			
			posX = (x->pRigid)*nPosX + (1.0-x->pRigid)*(posX);
			posY = (x->pRigid)*nPosY + (1.0-x->pRigid)*(posY);
			
			posX = RecAmt * posX + (1-RecAmt)*pX;
			posY = RecAmt * posY + (1-RecAmt)*pY;
			
			x->mODat[x->curOut*3+0] = (posX + pX)/2.0f;
			x->mODat[x->curOut*3+1] = (posY + pY)/2.0f;
			x->mODat[x->curOut*3+2] = 0;
			x->curOut++;
			
			myEdge = x->curOut-1;
			
			//if (angle == tangle)
			{
				float rangle = atan2(x->targetY-posY, x->targetX-posX);
				
				
				if (rangle - tangle < -M_PI/2)
					rangle += M_PI/2;
				
				if (rangle - tangle > M_PI/2)
					rangle -= M_PI/2;
				
				tangle = x->angleMix*rangle + (1-x->angleMix)*tangle;
			}
			
			{
				if (angle < tangle)
				{
					angle += x->mad;
					if (angle > tangle)
						angle = tangle;
				}
				
				if (angle > tangle)
				{
					angle -= x->mad;
					if (angle < tangle)
						angle = tangle;
				}
				nDX = cosf(angle);
				nDY = sinf(angle);
			}
		}
		else if (cd == '-')
		{
			tangle -= x->da + rec*x->ampAngle;
			if (fabs(x->da + rec*x->ampAngle) > x->mad)
				angle -= x->mad;
			else
				angle = tangle;
			
			nDX = cosf(angle);
			nDY = sinf(angle);
		}
		else if (cd == '+')
		{
			tangle += x->da + rec*x->ampAngle;
			if (fabs(x->da + rec*x->ampAngle) > x->mad)
				angle += x->mad;
			else
				angle = tangle;
			
			nDX = cosf(angle);
			nDY = sinf(angle);
		}
		else if (cd == '[')
		{
			if (r+1 >= x->maxRecursion)
			{
				int rb = 1;
				while (rb >= 1)
				{
					x->curInd++;
					if (x->curInd >= x->mLDim)
					{
						return;
					}
					
					cd = x->mLDat[x->curInd];
					
					if (cd == '[')
						rb++;
					else if (cd == ']')
						rb--;
					else if (cd == 'F' || cd == 'G')
					{
						x->mODat[x->curOut*3+0] = x->mODat[0];
						x->mODat[x->curOut*3+1] = x->mODat[1];
						x->mODat[x->curOut*3+2] = 0;
						x->curOut++;
						
						x->mODat[x->curOut*3+0] = x->mODat[0];
						x->mODat[x->curOut*3+1] = x->mODat[1];
						x->mODat[x->curOut*3+2] = 0;
						x->curOut++;
					}
				}
			}
			else
			{
				recurseDraw(nPosX, nPosY, posX, posY, angle, nDX, nDY,
						(x->ampMode)*rec*rec + (1-x->ampMode)*(rec+1),
						x, r+1, myEdge);
			}
		}
		else if (cd == ']')
		{
			return;
		}
		
		tangle += rec * x->distAng;
	}
}


t_jit_err jit_tml_lPlant_matrix_calc(t_jit_tml_lPlant *x, void *inputs, void *outputs)
{
    t_jit_err err=JIT_ERR_NONE;
    long vel_savelock,ov_savelock;
    t_jit_matrix_info vel_minfo, ov_minfo;
    void *vel_matrix, *ov_matrix;
	unsigned char *vel_bp = NULL;
	float *ov_bp;
	
    vel_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	ov_matrix	= jit_object_method(outputs,_jit_sym_getindex,0);

    if (x)
	{

		vel_savelock = (long) jit_object_method(vel_matrix,_jit_sym_lock,1);
		ov_savelock = (long)jit_object_method(ov_matrix, _jit_sym_lock,1);
		
		jit_object_method(vel_matrix,_jit_sym_getinfo,&vel_minfo);
		jit_object_method(ov_matrix, _jit_sym_getinfo, &ov_minfo);

		
		//Validate the LSystem - 1 char N
		if (vel_minfo.dimcount != 1 || vel_minfo.planecount != 1
			|| vel_minfo.type != _jit_sym_char || vel_minfo.dim[0] < 1)
		{
			error("For input 0, found (expected) dim=%i (1), planes=%i (1), type=char, "
				  " width=%i (>=8), height=%i (>=8)",
				  vel_minfo.dimcount, vel_minfo.planecount, vel_minfo.dim[0], vel_minfo.dim[1]);
			err = JIT_ERR_MISMATCH_PLANE;
			goto out;
		}
		
		
		//Count the number of F's and G's...  2x is width...
		jit_object_method(vel_matrix,_jit_sym_getdata,&vel_bp);
		int i;
		int FGCount = 0;
		for (i=0; i<vel_minfo.dim[0]; i++)
		{
			if (vel_bp[i] == 'F' || vel_bp[i] == 'G')
				FGCount++;
		}
		
		
		//Coerce the output velocity field to match the internal velocity field!
		if (1 != ov_minfo.dimcount
			|| 3 != ov_minfo.planecount
			|| _jit_sym_float32 != ov_minfo.type
			|| FGCount*2 != ov_minfo.dim[0])
		{
			ov_minfo.dimcount = 1;
			ov_minfo.planecount = 3;
			ov_minfo.type = _jit_sym_float32;
			ov_minfo.dim[0] = FGCount*2;
			
			if (jit_object_method(ov_matrix, _jit_sym_setinfo, &(ov_minfo) ))
			{
				error("Unable to resize output matrix %i to match input!", 1+i);
				err = JIT_ERR_GENERIC;
				goto out;
			}
			jit_object_method(ov_matrix,_jit_sym_getinfo,&(ov_minfo) );
		}
		
		
		//Obtain the latest values from the jitter matrices...
		
		//If we have data... output it!
		
		jit_object_method(ov_matrix,_jit_sym_getdata,&ov_bp);
		
		x->curInd = 0;
		x->curOut = 0;
		
		x->mLDim = vel_minfo.dim[0];
		x->mLDat = vel_bp;
		
		x->mODat = ov_bp;
		
		float sa = x->startAngle;
		recurseDraw(x->startX, x->startY, x->startX, x->startY, sa, sinf(sa), cosf(sa), 2, x, 1, -1);

		
		
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
    }
	
 out:
    
	jit_object_method(vel_matrix,_jit_sym_lock,vel_savelock);
    jit_object_method(ov_matrix,_jit_sym_lock,ov_savelock);
    return err;
}



t_jit_tml_lPlant *jit_tml_lPlant_new(void)
{
    t_jit_tml_lPlant *x;
    //long i;
	
	
    if (x=(t_jit_tml_lPlant *)jit_object_alloc(_jit_tml_lPlant_class)) {
		//Setup defaults
		x->startX = 0.0f;
		x->startY = -0.8f;
		x->da = 0.5f;
		x->scale = 0.01f;
		x->ampMode = 0.2f;
		x->ampAngle = 0.0f;
		x->distAng = 0.0f;
		x->ampDistance = 0.0f;
		x->pRigid = 0.9f;
		x->mad = 0.16f;
		x->targetX = 0;
		x->targetY = 0;
		x->angleMix = 0;
		x->maxRecursion = 5.5f;
		x->startAngle = M_PI/2;

    } else {
	x = NULL;
    }	
    return x;
}

void jit_tml_lPlant_free(t_jit_tml_lPlant *x)
{
}
