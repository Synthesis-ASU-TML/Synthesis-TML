/* 
	xray.jit.levelsetseg
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 13-7-2006
*/

#include "DoubleLinkList.h"
#include "jit.common.h"

#define BORDER		100

#define	EXTERIOR	3
#define	L_OUT		1
#define	L_IN		-1
#define	INTERIOR	-3
#define PI			3.14159

float sqrtTwoPi;

typedef struct _RegionStats
{
	long			count;
	
	double			sum;
	double			sumSq;
	
	long			countTemp;
	double			sumTemp;
	double			sumSqTemp;
	
	double			mean;
	double			varianceSq;	
} t_RegionStats;

typedef struct _xray_jit_levelsetseg 
{
	t_object			ob;
	
	char				evolve;
	char				smooth;
	
	long				radius;
	
	long				point[6];
	long				pointcount;
	
	long				cycles;
	long				Na;
	long				Ng;
	long				Ns;
	long				*gaussKernel;
	
	t_List				*L_in;
	t_List				*L_out;
	
	t_RegionStats		*inside;
	t_RegionStats		*outside;
	
	t_symbol		 	*phiName;
	void 				*phi;
} t_xray_jit_levelsetseg;

void *_xray_jit_levelsetseg_class;

//jitter object/MOP methods
t_jit_err xray_jit_levelsetseg_init(void);
t_xray_jit_levelsetseg *xray_jit_levelsetseg_new(void);
void xray_jit_levelsetseg_free(t_xray_jit_levelsetseg *x);
t_jit_err xray_jit_levelsetseg_matrix_calc(t_xray_jit_levelsetseg *x, void *inputs, void *outputs);

void xray_jit_levelsetseg_calculate_ndim(t_xray_jit_levelsetseg *obj, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *phi_minfo, char *phi_bp, 
		t_jit_matrix_info *out1_minfo, char *bop1, 
		t_jit_matrix_info *out2_minfo, char *bop2);

//attribute methods
void xray_jit_levelsetseg_Ng(t_xray_jit_levelsetseg *x, void *attr, long argc, t_atom *argv);
void xray_jit_levelsetseg_point(t_xray_jit_levelsetseg *x, void *attr, long argc, t_atom *argv);

//region methods
void createCircle(t_xray_jit_levelsetseg *obj, long x, long y, t_List *L_in, t_List *L_out, 
	char *phi_bp, t_jit_matrix_info* phi_minfo);
void clearRegionDistribution(t_RegionStats *list);
inline void calcRegionStats(t_RegionStats *list);
inline void adjustRegionStats(t_RegionStats *inside, t_RegionStats *outside);

//level set evolution methods
void switch_in(t_List *L_in, t_List *L_out, t_Node *node, 
	char *phi_bp, t_jit_matrix_info* phi_minfo);
void switch_out(t_List *L_in, t_List *L_out, t_Node *node, 
	char *phi_bp, t_jit_matrix_info* phi_minfo);

inline void evolveCurve(t_List *L_in, t_List *L_out, t_RegionStats *inside, t_RegionStats *outside, 
		char *bip1, t_jit_matrix_info* in1_minfo, 
		char *phi_bp, t_jit_matrix_info* phi_minfo);
inline void smoothCurve(t_List *L_in, t_List *L_out, t_RegionStats *inside, t_RegionStats *outside, 
		char *bip1, t_jit_matrix_info* in1_minfo, 
		char *phi_bp, t_jit_matrix_info* phi_minfo, 
		long Ng, long *gaussKernel);

//linked list management methods
void addPixelToList(t_List *list, long x, long y, char val, 
		char *phi_bp, t_jit_matrix_info* phi_minfo);
void cleanListInterior(t_List *list, 
		char *phi_bp, t_jit_matrix_info* phi_minfo);
void cleanListExterior(t_List *list,
		char *phi_bp, t_jit_matrix_info* phi_minfo);

//statistics methods
inline float calcProb(t_RegionStats *inside, t_RegionStats *outside, uchar pixelValue);
inline long calcCurve(long x, long y, long Ng, long *gaussKernel, char *phi, t_jit_matrix_info* phi_minfo);

inline char stoppingConditions(t_List *L_in, t_List *L_out, t_RegionStats *inside, t_RegionStats *outside, 
	char *bip1, t_jit_matrix_info* in1_minfo, char *phi_bp, t_jit_matrix_info* phi_minfo);


t_jit_err xray_jit_levelsetseg_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_levelsetseg_class = jit_class_new("xray_jit_levelsetseg",(method)xray_jit_levelsetseg_new,(method)xray_jit_levelsetseg_free,
		sizeof(t_xray_jit_levelsetseg),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,2);
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_attr_setlong(o,_jit_sym_dimlink,0);
	jit_attr_setlong(o,_jit_sym_planelink,0);
		
	jit_class_addadornment(_xray_jit_levelsetseg_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_levelsetseg_class, (method)xray_jit_levelsetseg_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;

	//evolve
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset,"evolve",_jit_sym_char,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_levelsetseg, evolve));	
	jit_class_addattr(_xray_jit_levelsetseg_class,attr);
	
	//smooth
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset,"smooth",_jit_sym_char,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_levelsetseg, smooth));	
	jit_class_addattr(_xray_jit_levelsetseg_class,attr);
	
	//radius
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset,"radius",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_levelsetseg, radius));	
	jit_class_addattr(_xray_jit_levelsetseg_class,attr);
	
	//point
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset_array,"point",_jit_sym_long,6,attrflags,
		(method)0L,(method)xray_jit_levelsetseg_point,calcoffset(t_xray_jit_levelsetseg,pointcount),calcoffset(t_xray_jit_levelsetseg,point));
	jit_class_addattr(_xray_jit_levelsetseg_class,attr);
	
	//Na
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset,"Na",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_levelsetseg,Na));
	jit_class_addattr(_xray_jit_levelsetseg_class,attr);
	
	//Ng
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset,"Ng",_jit_sym_long,attrflags,
		(method)0L,(method)xray_jit_levelsetseg_Ng,calcoffset(t_xray_jit_levelsetseg,Ng));
	jit_class_addattr(_xray_jit_levelsetseg_class,attr);
	
	//Ns
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset,"Ns",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_levelsetseg,Ns));
	jit_class_addattr(_xray_jit_levelsetseg_class,attr);
	
	//cycles
	attr = (t_jit_object*)jit_object_new(_jit_sym_jit_attr_offset,"cycles",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_levelsetseg,cycles));
	jit_class_addattr(_xray_jit_levelsetseg_class,attr);
	
	jit_class_register(_xray_jit_levelsetseg_class);

	return JIT_ERR_NONE;
}

void xray_jit_levelsetseg_Ng(t_xray_jit_levelsetseg *x, void *attr, long argc, t_atom *argv)
{
	float dx, dy, val;
	long i, j;

	if(x->gaussKernel) {
		jit_freebytes((void *)(x->gaussKernel), (x->Ng)*(x->Ng)*sizeof(long));
		x->gaussKernel = NULL;
	}

	x->Ng = jit_atom_getlong(argv);
	x->gaussKernel = (long *)jit_getbytes( (x->Ng)*(x->Ng)*sizeof(long) );
	
	dx = 2.0f/(x->Ng - 1);
	dy = dx;
	
	for(j=0; j < x->Ng; j++) {
		for(i=0; i < x->Ng; i++) {
			val = 41.0f*jit_math_exp(-2*( (-1.0f+i*dx)*(-1.0f+i*dx) + (-1.0f+j*dy)*(-1.0f+j*dy) ));
			
			if(val < 1)
				x->gaussKernel[ (x->Ng)*j + i ] = 1;
			else
				x->gaussKernel[ (x->Ng)*j + i ] = (long)val;
		}
	}
}

void xray_jit_levelsetseg_point(t_xray_jit_levelsetseg *x, void *attr, long argc, t_atom *argv)
{
	long i;
	
	for(i=0; i < MIN(argc, 6); i++) {
		x->point[i] = jit_atom_getlong(argv+i);
	}
	
	x->pointcount = MIN(argc, 6);
}


t_jit_err xray_jit_levelsetseg_matrix_calc(t_xray_jit_levelsetseg *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, out1_savelock, out2_savelock;
	t_jit_matrix_info in1_minfo, out1_minfo, out2_minfo;
	char *in1_bp, *out1_bp, *out2_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *out1_matrix, *out2_matrix;
	
	long phi_savelock;
	t_jit_matrix_info phi_minfo;
	char *phi_bp;
	
	t_atom a;
	
	in1_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out1_matrix = jit_object_method(outputs,_jit_sym_getindex,0);
	out2_matrix = jit_object_method(outputs,_jit_sym_getindex,1);

	if (x&&in1_matrix&&out1_matrix&&out2_matrix) {
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		out1_savelock = (long) jit_object_method(out1_matrix,_jit_sym_lock,1);
		out2_savelock = (long) jit_object_method(out2_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(out1_matrix,_jit_sym_getinfo,&out1_minfo);
		jit_object_method(out2_matrix,_jit_sym_getinfo,&out2_minfo);
		
		
		out1_minfo.dim[0] = in1_minfo.dim[0];
		out1_minfo.dim[1] = in1_minfo.dim[1];
		out1_minfo.planecount = 1;
		out1_minfo.type = _jit_sym_float32;
		
		jit_object_method(out1_matrix,_jit_sym_setinfo,&out1_minfo);
		jit_object_method(out1_matrix,_jit_sym_getinfo,&out1_minfo);
		jit_object_method(out1_matrix,_jit_sym_getdata,&out1_bp);
		
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(out2_matrix,_jit_sym_getdata,&out2_bp);
		
		phi_savelock = (long) jit_object_method(x->phi,_jit_sym_lock,1);
		jit_object_method(x->phi,_jit_sym_getinfo,&phi_minfo);

		if( !(x->evolve) ) {
			phi_minfo.dim[0] = in1_minfo.dim[0];
			phi_minfo.dim[1] = in1_minfo.dim[1];
			phi_minfo.planecount = 1;
			phi_minfo.type = _jit_sym_char;
			
			jit_object_method(x->phi,_jit_sym_setinfo,&phi_minfo);
			jit_object_method(x->phi,_jit_sym_getinfo,&phi_minfo);
			
			//init phi to have all pixels as exterior pixels
			jit_atom_setlong(&a, EXTERIOR);
			jit_object_method(x->phi, _jit_sym_setall, _jit_sym_setall, 1, &a);
		}
		
		jit_object_method(x->phi,_jit_sym_getdata,&phi_bp);
		
		if (!in1_bp)		{ err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out2_bp)		{ err=JIT_ERR_INVALID_OUTPUT; goto out;}
			
		//get dimensions/planecount
		dimcount   = out1_minfo.dimcount;
		planecount = out1_minfo.planecount;			
		
		for (i=0;i<dimcount;i++) {
			dim[i] = out1_minfo.dim[i];
		}
		
		xray_jit_levelsetseg_calculate_ndim(x, dimcount, dim, planecount, &in1_minfo, in1_bp, 
			&phi_minfo, phi_bp, &out1_minfo, out1_bp, &out2_minfo, out2_bp);
			
		
		
		//makeLines(x, out1_minfo, out1_bp);
		
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(x->phi,gensym("lock"),phi_savelock);
	jit_object_method(out2_matrix,gensym("lock"),out2_savelock);
	jit_object_method(out1_matrix,gensym("lock"),out1_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	return err;
}

void createCircle(t_xray_jit_levelsetseg *obj, long x, long y, t_List *L_in, t_List *L_out, 
		char *phi_bp, t_jit_matrix_info* phi_minfo)
{
	t_Node *node, *tempNode;
	long i;
	
	//interior
	*(phi_bp + x + y*(phi_minfo->dimstride[1])) = INTERIOR;

	//inside ring
	addPixelToList(L_in, x-1, y-1, L_IN, phi_bp, phi_minfo);
	addPixelToList(L_in, x, y-1, L_IN, phi_bp, phi_minfo);
	addPixelToList(L_in, x+1, y-1, L_IN, phi_bp, phi_minfo);
	
	addPixelToList(L_in, x-1, y, L_IN, phi_bp, phi_minfo);
	addPixelToList(L_in, x+1, y, L_IN, phi_bp, phi_minfo);
	
	addPixelToList(L_in, x-1, y+1, L_IN, phi_bp, phi_minfo);
	addPixelToList(L_in, x, y+1, L_IN, phi_bp, phi_minfo);
	addPixelToList(L_in, x+1, y+1, L_IN, phi_bp, phi_minfo);
	
	//outside ring
	addPixelToList(L_out, x-1, y-2, L_OUT, phi_bp, phi_minfo);
	addPixelToList(L_out, x, y-2, L_OUT, phi_bp, phi_minfo);
	addPixelToList(L_out, x+1, y-2, L_OUT, phi_bp, phi_minfo);
	
	addPixelToList(L_out, x-2, y-1, L_OUT, phi_bp, phi_minfo);
	addPixelToList(L_out, x-2, y, L_OUT, phi_bp, phi_minfo);
	addPixelToList(L_out, x-2, y+1, L_OUT, phi_bp, phi_minfo);
	
	addPixelToList(L_out, x+2, y-1, L_OUT, phi_bp, phi_minfo);
	addPixelToList(L_out, x+2, y, L_OUT, phi_bp, phi_minfo);
	addPixelToList(L_out, x+2, y+1, L_OUT, phi_bp, phi_minfo);
	
	addPixelToList(L_out, x-1, y+2, L_OUT, phi_bp, phi_minfo);
	addPixelToList(L_out, x, y+2, L_OUT, phi_bp, phi_minfo);
	addPixelToList(L_out, x+1, y+2, L_OUT, phi_bp, phi_minfo);

	for(i=2; i < obj->radius; i++) {
		//extend radius
		node = L_out->lastNode;

		while(node) {
			tempNode = node->prev;
			switch_in(L_in, L_out, node, phi_bp, phi_minfo);
			
			node = tempNode;
		}
	}
	
	cleanListInterior(L_in, phi_bp, phi_minfo);
}


//switches a pixel from L_out to L_in and adds all of its
//neighboring exterior pixels to L_out
void switch_in(t_List *L_in, t_List *L_out, t_Node *node, 
		char *phi_bp, t_jit_matrix_info* phi_minfo)
{
	long phiRowspan;
	long *pixel;
	
	phiRowspan = phi_minfo->dimstride[1];
	pixel = node->pixel;
	
	//add node to L_in
	DLLunhook(L_out, node);
	DLLinsertEnd(L_in, node);
	*(phi_bp + pixel[0] + pixel[1]*phiRowspan) = L_IN;
	
	//check 4-hood
	//pixel above
	if( *(phi_bp + pixel[0] + (pixel[1]-1)*phiRowspan) == EXTERIOR ) {
		addPixelToList(L_out, pixel[0], pixel[1]-1, L_OUT, phi_bp, phi_minfo);
		*(phi_bp + pixel[0] + (pixel[1]-1)*phiRowspan) = L_OUT;
	}
	
	//pixel left
	if( *(phi_bp + pixel[0]-1 + pixel[1]*phiRowspan) == EXTERIOR ) {
		addPixelToList(L_out, pixel[0]-1, pixel[1], L_OUT, phi_bp, phi_minfo);
		*(phi_bp + pixel[0]-1 + pixel[1]*phiRowspan) = L_OUT;
	}
	
	//pixel right
	if( *(phi_bp + pixel[0]+1 + pixel[1]*phiRowspan) == EXTERIOR ) {
		addPixelToList(L_out, pixel[0]+1, pixel[1], L_OUT, phi_bp, phi_minfo);
		*(phi_bp + pixel[0]+1 + pixel[1]*phiRowspan) = L_OUT;
	}
	
	//pixel below
	if( *(phi_bp + pixel[0] + (pixel[1]+1)*phiRowspan) == EXTERIOR ) {
		addPixelToList(L_out, pixel[0], pixel[1]+1, L_OUT, phi_bp, phi_minfo);
		*(phi_bp + pixel[0] + (pixel[1]+1)*phiRowspan) = L_OUT;
	}
}

void cleanListInterior(t_List *list, 
		char *phi_bp, t_jit_matrix_info* phi_minfo)
{
	long phiRowspan;
	long *pixel;
	t_Node *node, *tempNode;
	char edge, region;
	
	edge = L_IN;
	region = INTERIOR;
	
	phiRowspan = phi_minfo->dimstride[1];	
	node = list->firstNode;
	
	while(node) {
		tempNode = node->next;
		pixel = node->pixel;
		
		//check 4-hood for pixels from other list
		//if doesn't border pixels from the other list, remove
		//and set as part of region
		if( *(phi_bp + pixel[0] + (pixel[1]-1)*phiRowspan) <= edge &&		//top
			*(phi_bp + pixel[0]-1 + pixel[1]*phiRowspan) <= edge &&		//left
			*(phi_bp + pixel[0]+1 + pixel[1]*phiRowspan) <= edge &&		//right
			*(phi_bp + pixel[0] + (pixel[1]+1)*phiRowspan) <= edge )		//top
		{
			*(phi_bp + pixel[0] + pixel[1]*phiRowspan) = region;
			DLLremove(list, node);
		}
		
		node = tempNode;
	}
}


//switches a pixel from L_in to L_out and adds all of its
//neoghboring interior pixels to L_in
void switch_out(t_List *L_in, t_List *L_out, t_Node *node, 
		char *phi_bp, t_jit_matrix_info* phi_minfo)
{
	long phiRowspan;
	long *pixel;
	
	phiRowspan = phi_minfo->dimstride[1];
	pixel = node->pixel;
	
	//add node to L_out
	DLLunhook(L_in, node);
	DLLinsertEnd(L_out, node);
	*(phi_bp + pixel[0] + pixel[1]*phiRowspan) = L_OUT;
	
	//check 4-hood
	//pixel above
	if( *(phi_bp + pixel[0] + (pixel[1]-1)*phiRowspan) == INTERIOR ) {
		addPixelToList(L_in, pixel[0], pixel[1]-1, L_IN, phi_bp, phi_minfo);
		*(phi_bp + pixel[0] + (pixel[1]-1)*phiRowspan) = L_IN;
	}
	
	//pixel left
	if( *(phi_bp + pixel[0]-1 + pixel[1]*phiRowspan) == INTERIOR ) {
		addPixelToList(L_in, pixel[0]-1, pixel[1], L_IN, phi_bp, phi_minfo);
		*(phi_bp + pixel[0]-1 + pixel[1]*phiRowspan) = L_IN;
	}
	
	//pixel right
	if( *(phi_bp + pixel[0]+1 + pixel[1]*phiRowspan) == INTERIOR ) {
		addPixelToList(L_in, pixel[0]+1, pixel[1], L_IN, phi_bp, phi_minfo);
		*(phi_bp + pixel[0]+1 + pixel[1]*phiRowspan) = L_IN;
	}
	
	//pixel below
	if( *(phi_bp + pixel[0] + (pixel[1]+1)*phiRowspan) == INTERIOR ) {
		addPixelToList(L_in, pixel[0], pixel[1]+1, L_IN, phi_bp, phi_minfo);
		*(phi_bp + pixel[0] + (pixel[1]+1)*phiRowspan) = L_IN;
	}
}

void cleanListExterior(t_List *list, 
		char *phi_bp, t_jit_matrix_info* phi_minfo)
{
	long phiRowspan;
	long *pixel;
	t_Node *node, *tempNode;
	char edge, region;
	
	edge = L_OUT;
	region = EXTERIOR;
	
	phiRowspan = phi_minfo->dimstride[1];	
	node = list->firstNode;
	
	while(node) {
		tempNode = node->next;
		pixel = node->pixel;
		
		//check 4-hood for pixels from other list
		//if doesn't border pixels from the other list, remove
		//and set as part of region
		if( *(phi_bp + pixel[0] + (pixel[1]-1)*phiRowspan) >= edge &&		//top
			*(phi_bp + pixel[0]-1 + pixel[1]*phiRowspan) >= edge &&		//left
			*(phi_bp + pixel[0]+1 + pixel[1]*phiRowspan) >= edge &&		//right
			*(phi_bp + pixel[0] + (pixel[1]+1)*phiRowspan) >= edge )		//top
		{
			*(phi_bp + pixel[0] + pixel[1]*phiRowspan) = region;
			DLLremove(list, node);
		}
		
		node = tempNode;
	}

}

void addPixelToList(t_List *list, long x, long y, char val, 
		char *phi_bp, t_jit_matrix_info* phi_minfo)
{
	t_Node *node;
	
	if(x > 0 && x < phi_minfo->dim[0]-1 && y > 0 && y < phi_minfo->dim[1]-1) {
		node = (t_Node *)jit_getbytes( sizeof(t_Node) );
		node->pixel[0] = x;
		node->pixel[1] = y;
		DLLinsertEnd(list, node);
		
		*(phi_bp + x + y*(phi_minfo->dimstride[1])) = val;
	}
}

void clearRegionDistribution(t_RegionStats *list)
{
	list->count = 0;
	list->sum = 0.0f;
	list->sumSq = 0.0f;
	list->mean = 0.0f;
	list->varianceSq = 0.0f;
}

inline void calcRegionStats(t_RegionStats *list)
{
	list->mean = (double)(list->sum)/(double)(list->count);
	list->varianceSq = ((double)(list->sumSq) - (double)(list->count)*(list->mean)*(list->mean))/((double)((list->count)-1));	
	
	//post("sum: %f", list->sum);
	
	list->countTemp = list->count;
	list->sumTemp = list->sum;
	list->sumSqTemp = list->sumSq;
}

inline float calcProb(t_RegionStats *inside, t_RegionStats *outside, uchar pixelValue)
{
	float insideProb, outsideProb;
	
	if(inside->varianceSq > 0) {
		//calculate probability in gaussian distribution
		insideProb = (1/(jit_math_sqrt(inside->varianceSq)*sqrtTwoPi))*
			jit_math_exp( -((float)pixelValue - (inside->mean))*((float)pixelValue - (inside->mean))/(2*(inside->varianceSq)));
	}
	else {		
		if( (float)pixelValue == inside->mean)
			insideProb = 1.0f;
		else
			insideProb = 0.0f;
	}
	
	if(outside->varianceSq > 0) {
		//calculate probability in gaussian distribution
		outsideProb = (1/(jit_math_sqrt(outside->varianceSq)*sqrtTwoPi))*
			jit_math_exp( -((float)pixelValue - (outside->mean))*((float)pixelValue - (outside->mean))/(2*(outside->varianceSq)));
	}
	else {
		if( (float)pixelValue == outside->mean)
			outsideProb = 1.0f;
		else
			outsideProb = 0.0f;
	}
	
	//post("mean: %f %f", inside->mean, outside->mean);
	//post("varSQ: %f %f", inside->varianceSq, outside->varianceSq);

	//not returning the real probability but just what's needed
	//to make a decision to switch_in or switch_out
	return (insideProb > outsideProb) ? 1.1f : 0.9f;
	
}

inline void evolveCurve(t_List *L_in, t_List *L_out, t_RegionStats *inside, t_RegionStats *outside, 
		char *bip1, t_jit_matrix_info* in1_minfo, 
		char *phi_bp, t_jit_matrix_info* phi_minfo)
{
	t_Node *nodeOut, *nodeIn, *tempNode;
	uchar val;

	nodeOut = L_out->lastNode;

	//evolve outside			
	while(nodeOut) {
		tempNode = nodeOut->prev;
		val = *(uchar *)(bip1 + nodeOut->pixel[0] + (nodeOut->pixel[1])*in1_minfo->dimstride[1]);
		
	//	post("swOut: %f", calcProb(inside, outside, val));
		
		if( calcProb(inside, outside, val) > 1.0f) {
			switch_in(L_in, L_out, nodeOut, phi_bp, phi_minfo);
			
			outside->countTemp--;
			outside->sumTemp -= (double)val;
			outside->sumSqTemp -= (double)val*(double)val;
			
			inside->countTemp++;
			inside->sumTemp += (double)val;
			inside->sumSqTemp += (double)val*(double)val;
		}
		
		nodeOut = tempNode;
	}
	
	cleanListInterior(L_in, phi_bp, phi_minfo);
	
	nodeIn = L_in->lastNode;
	
	//evolve inside
	while(nodeIn) {
		tempNode = nodeIn->prev;
		val = *(uchar *)(bip1 + nodeIn->pixel[0] + (nodeIn->pixel[1])*in1_minfo->dimstride[1]);
		
		//post("swIn: %f", calcProb(inside, outside, val));
		
		if( calcProb(inside, outside, val) < 1.0f) {
			switch_out(L_in, L_out, nodeIn, phi_bp, phi_minfo);
			
			outside->countTemp++;
			outside->sumTemp += (double)val;
			outside->sumSqTemp += (double)val*(double)val;
			
			inside->countTemp--;
			inside->sumTemp -= (double)val;
			inside->sumSqTemp -= (double)val*(double)val;
		}
		
		nodeIn = tempNode;
	}
	
	cleanListExterior(L_out, phi_bp, phi_minfo);
}

inline void smoothCurve(t_List *L_in, t_List *L_out, t_RegionStats *inside, t_RegionStats *outside, 
		char *bip1, t_jit_matrix_info* in1_minfo, 
		char *phi_bp, t_jit_matrix_info* phi_minfo, 
		long Ng, long *gaussKernel)
{
	t_Node *nodeOut, *nodeIn, *tempNode;
	uchar val;
	long swin=0, swout=0;

	nodeOut = L_out->lastNode;

	//evolve outside			
	while(nodeOut) {
		tempNode = nodeOut->prev;
		val = *(uchar *)(bip1 + nodeOut->pixel[0] + (nodeOut->pixel[1])*in1_minfo->dimstride[1]);
		
		//post("swI: (%d, %d): %d", nodeOut->pixel[0], nodeOut->pixel[1], calcCurve(nodeOut->pixel[0], nodeOut->pixel[1], Ng, gaussKernel, phi_bp, phi_minfo));
		
		if( calcCurve(nodeOut->pixel[0], nodeOut->pixel[1], Ng, gaussKernel, phi_bp, phi_minfo) < 0) {
			switch_in(L_in, L_out, nodeOut, phi_bp, phi_minfo);
			
			swin++;
			
			outside->countTemp--;
			outside->sumTemp -= (double)val;
			outside->sumSqTemp -= (double)val*(double)val;
			
			inside->countTemp++;
			inside->sumTemp += (double)val;
			inside->sumSqTemp += (double)val*(double)val;
		}
		
		nodeOut = tempNode;
	}
	
	cleanListInterior(L_in, phi_bp, phi_minfo);
	
	nodeIn = L_in->lastNode;
	
	//evolve inside
	while(nodeIn) {
		tempNode = nodeIn->prev;
		val = *(uchar *)(bip1 + nodeIn->pixel[0] + (nodeIn->pixel[1])*in1_minfo->dimstride[1]);
	
		if( calcCurve(nodeIn->pixel[0], nodeIn->pixel[1], Ng, gaussKernel, phi_bp, phi_minfo) > 0) {
			switch_out(L_in, L_out, nodeIn, phi_bp, phi_minfo);
			
			swout++;
			
			outside->countTemp++;
			outside->sumTemp += (double)val;
			outside->sumSqTemp += (double)val*(double)val;
			
			inside->countTemp--;
			inside->sumTemp -= (double)val;
			inside->sumSqTemp -= (double)val*(double)val;
		}
		
		nodeIn = tempNode;
	}
	
	cleanListExterior(L_out, phi_bp, phi_minfo);
}

inline long calcCurve(long x, long y, long Ng, long *gaussKernel, 
		char *phi, t_jit_matrix_info* phi_minfo)
{
	long i, j;
	long curveVelocity=0;
	long range;
	
	//e.g. for 5, go from -2 to + 2 (not taking into account even kernels)
	range = (long)jit_math_floor( ((float)Ng)/2.0f );
	
	//don't handle boundary conditions right now
	for(j=-range; j <= range; j++) {
		for(i=-range; i <= range; i++) {
			curveVelocity += (long)(*(phi + x+i + (y+j)*phi_minfo->dimstride[1])) * gaussKernel[ i+range + (j+range)*Ng ];			
		}
	}
	
	return curveVelocity;
}

inline char stoppingConditions(t_List *L_in, t_List *L_out, t_RegionStats *inside, t_RegionStats *outside, 
		char *bip1, t_jit_matrix_info* in1_minfo, 
		char *phi_bp, t_jit_matrix_info* phi_minfo)
{
	t_Node *nodeOut, *nodeIn, *tempNode;
	uchar val;
	char stop = 1;

	nodeOut = L_out->lastNode;

	//evolve outside			
	while(nodeOut) {
		tempNode = nodeOut->prev;
		val = *(uchar *)(bip1 + nodeOut->pixel[0] + (nodeOut->pixel[1])*in1_minfo->dimstride[1]);
		
		if( calcProb(inside, outside, val) > 1.0f) {
			stop = 0;
			break;
		}
		
		nodeOut = tempNode;
	}
	
	if(!stop) {
		return stop;
	}
	
	nodeIn = L_in->lastNode;
	
	//evolve inside
	while(nodeIn) {
		tempNode = nodeIn->prev;
		val = *(uchar *)(bip1 + nodeIn->pixel[0] + (nodeIn->pixel[1])*in1_minfo->dimstride[1]);
		
		if( calcProb(inside, outside, val) < 1.0f) {
			stop = 0;
			break;
		}
		
		nodeIn = tempNode;
	}
	
	return stop;
}


inline void adjustRegionStats(t_RegionStats *inside, t_RegionStats *outside)
{
	inside->count = inside->countTemp;
	inside->sum = inside->sumTemp;
	inside->sumSq = inside->sumSqTemp;
	calcRegionStats(inside);
	
	outside->count = outside->countTemp;
	outside->sum = outside->sumTemp;
	outside->sumSq = outside->sumSqTemp;
	calcRegionStats(outside);
}

void xray_jit_levelsetseg_calculate_ndim(t_xray_jit_levelsetseg *obj, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *phi_minfo, char *phi_bp, 
		t_jit_matrix_info *out1_minfo, char *bop1, 
		t_jit_matrix_info *out2_minfo, char *bop2)
{
	long x, y;
	uchar *ip1, *op2;
	char *phi;
	long height,width;
	long inrowspan, phi_rowspan;
	long out2rowspan;
	t_RegionStats *inside, *outside;
	float *fop1;
	
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
		width  = in1_minfo->dim[0];
		height = in1_minfo->dim[1];
		
		inrowspan = in1_minfo->dimstride[1];
		phi_rowspan = phi_minfo->dimstride[1];
		out2rowspan = out2_minfo->dimstride[1];
		
		if (out2_minfo->type==_jit_sym_char) {

			inside = obj->inside;
			outside = obj->outside;
			
			if( !(obj->evolve) ) {
				DLLfreeListNodes(obj->L_in);
				DLLfreeListNodes(obj->L_out);
			
				clearRegionDistribution(inside);
				clearRegionDistribution(outside);
				
				for(x=0; x < obj->pointcount/2; x++) {
					createCircle(obj, obj->point[2*x], obj->point[2*x+1], obj->L_in, obj->L_out, phi_bp, phi_minfo);
				}

			
				for(y=0; y < in1_minfo->dim[1]; y++) {
					ip1 = (uchar *)(bip1 + y*inrowspan);
					phi = (phi_bp + y*phi_rowspan);
				
					for(x=0; x < in1_minfo->dim[0]; x++) {					
						if(phi[x] >= L_OUT) {
							outside->sum += (double)ip1[x];
							outside->sumSq += (double)ip1[x]*(double)ip1[x];
							outside->count++;
						}
						else {
							inside->sum += (double)ip1[x];
							inside->sumSq += (double)ip1[x]*(double)ip1[x];
							inside->count++;
						}
					}
				}
			
				calcRegionStats(inside);
				calcRegionStats(outside);
			}
			
			for(y=0; y < obj->cycles; y++) {			
				for(x=0; x < obj->Na; x++) {
					evolveCurve(obj->L_in, obj->L_out, inside, outside, bip1, in1_minfo, phi_bp, phi_minfo);
					adjustRegionStats(inside, outside);
				}
				
				for(x=0; x < obj->Ns; x++) {
					smoothCurve(obj->L_in, obj->L_out, inside, outside, bip1, in1_minfo, phi_bp, phi_minfo, obj->Ng, obj->gaussKernel);
					adjustRegionStats(inside, outside);
				}
				
				if( stoppingConditions(obj->L_in, obj->L_out, inside, outside, bip1, in1_minfo, phi_bp, phi_minfo) ) {
					break;
				}
			}
			
			for(y=0; y < out2_minfo->dim[1]; y++) {
				ip1 = (uchar *)(phi_bp + y*(phi_minfo->dimstride[1]));
				op2 = (uchar *)(bop2 + y*(out2_minfo->dimstride[1]));
			
				for(x=0; x < out2_minfo->dim[0]; x++) {
					op2[x] = ip1[x];
				}
			}
			
			for(y=0; y < out2_minfo->dim[1]; y++) {
				ip1 = (uchar *)(bip1 + y*(in1_minfo->dimstride[1]));
				fop1 = (float *)(bop1 + y*(out1_minfo->dimstride[1]));
			
				for(x=0; x < out2_minfo->dim[0]; x++) {
					//fop1[x] = calcProb(inside, outside, ip1[x]);
				}
			}
		}
		
		break;
	default:
		;
	}
}

t_xray_jit_levelsetseg *xray_jit_levelsetseg_new(void)
{
	t_xray_jit_levelsetseg *x;
	void *m;
	t_jit_matrix_info info;
	t_atom a;
		
	if (x=(t_xray_jit_levelsetseg *)jit_object_alloc(_xray_jit_levelsetseg_class)) {		
		x->evolve = 0;
		x->smooth = 0;
		x->point[0] = 160;
		x->point[1] = 120;
		x->pointcount = 2;
		x->radius = 4;
		x->cycles = 7;
		x->Na = 7;
		x->Ng = 3;
		x->Ns = 5;
		x->gaussKernel = NULL;
		
		jit_atom_setlong(&a, 5);
		
		xray_jit_levelsetseg_Ng(x, 0L, 1, &a);
		
		//allocate and initialize linked-list
		DLLcreateList( &(x->L_in) );
		DLLcreateList( &(x->L_out) );
		
		x->inside = (t_RegionStats *)jit_getbytes(sizeof(t_RegionStats));
		x->outside = (t_RegionStats *)jit_getbytes(sizeof(t_RegionStats));

		sqrtTwoPi = jit_math_sqrt(2*jit_math_acos(-1));

		//setup backgFloat matrix
		jit_matrix_info_default(&info);
		info.type = _jit_sym_char;
		info.planecount = 1;
		x->phiName = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->phiName);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->phiName, x);
		x->phi = m;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_levelsetseg_free(t_xray_jit_levelsetseg *x)
{
	jit_object_detach(x->phiName, x); //Detach matrix from object
	jit_object_free(x->phi); //Free matrix memory	
	
	DLLfreeList( &(x->L_in) );
	DLLfreeList( &(x->L_out) );
	
	jit_freebytes((void *)(x->inside), sizeof(t_RegionStats));
	jit_freebytes((void *)(x->outside), sizeof(t_RegionStats));
	
	if(x->gaussKernel) {
		jit_freebytes((void *)(x->gaussKernel), (x->Ng)*(x->Ng)*sizeof(long));
		x->gaussKernel = NULL;
	}
} 