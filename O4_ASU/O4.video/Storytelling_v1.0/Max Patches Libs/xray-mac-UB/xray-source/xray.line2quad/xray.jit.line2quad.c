/* 
	xray.jit.line2quad
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_line2quad 
{
	t_object				ob;
	char					mode;
	float					scale[2];
	long					scalecount;
	char					normalize[2];
	long					normalizecount;
} t_xray_jit_line2quad;

void *_xray_jit_line2quad_class;

//jitter object/MOP methods
t_jit_err xray_jit_line2quad_init(void);
t_xray_jit_line2quad *xray_jit_line2quad_new(void);
void xray_jit_line2quad_free(t_xray_jit_line2quad *x);
t_jit_err xray_jit_line2quad_matrix_calc(t_xray_jit_line2quad *x, void *inputs, void *outputs);

//data processing functions
void xray_jit_line2quad_calculate_ndim(t_xray_jit_line2quad *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop);
	
//utility functions
void xray_jit_line2quad_make_tex_coords(t_xray_jit_line2quad *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *out2_minfo, char *bop2);
void TransformPoint(float *p_in, float *p_out, float *X, float *Y, float *Z);
void InvTransformPoint(float *p_in, float *p_out, float *X, float *Y, float *Z);
void Vadd(float *p1, float *p2, float *p_out);

t_jit_err xray_jit_line2quad_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop,*o;
	t_symbol *atsym;
	t_atom a[2];
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_line2quad_class = jit_class_new("xray_jit_line2quad",(method)xray_jit_line2quad_new,(method)xray_jit_line2quad_free,
		sizeof(t_xray_jit_line2quad),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,2);
	jit_atom_setsym(a,_jit_sym_float32);
	jit_atom_setsym(a+1,_jit_sym_float64);
	o = jit_object_method(mop,_jit_sym_getoutput,1);
	jit_object_method(o,_jit_sym_types,2,a);
	
	jit_class_addadornment(_xray_jit_line2quad_class,mop);
	
	//add methods
	jit_class_addmethod(_xray_jit_line2quad_class, (method)xray_jit_line2quad_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);
	
	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	//mode
	attr = jit_object_new(atsym,"mode",_jit_sym_char,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_line2quad,mode));
	jit_class_addattr(_xray_jit_line2quad_class,attr);
	
	//scale
	attr = jit_object_new(_jit_sym_jit_attr_offset_array,"scale",_jit_sym_float32,2,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_line2quad,scalecount),calcoffset(t_xray_jit_line2quad,scale));
	jit_class_addattr(_xray_jit_line2quad_class,attr);
	
	//normalize
	attr = jit_object_new(_jit_sym_jit_attr_offset_array,"normalize",_jit_sym_char,2,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_line2quad,normalizecount),calcoffset(t_xray_jit_line2quad,normalize));
	jit_class_addattr(_xray_jit_line2quad_class,attr);
	
	jit_class_register(_xray_jit_line2quad_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_line2quad_matrix_calc(t_xray_jit_line2quad *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in1_savelock, out_savelock, out2_savelock;
	t_jit_matrix_info in1_minfo, out_minfo, out2_minfo;
	char *in1_bp,*out_bp, *out2_bp;
	long i,dimcount,planecount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in1_matrix, *out_matrix, *out2_matrix;
	
	in1_matrix 	= jit_object_method(inputs,_jit_sym_getindex,0);
	out_matrix 	= jit_object_method(outputs,_jit_sym_getindex,0);
	out2_matrix = jit_object_method(outputs,_jit_sym_getindex,1);

	if (x&&in1_matrix&&out_matrix&&out2_matrix)
	{
		in1_savelock = (long) jit_object_method(in1_matrix,_jit_sym_lock,1);
		out_savelock = (long) jit_object_method(out_matrix,_jit_sym_lock,1);
		out2_savelock = (long) jit_object_method(out2_matrix,_jit_sym_lock,1);
		
		jit_object_method(in1_matrix,_jit_sym_getinfo,&in1_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		jit_object_method(out2_matrix,_jit_sym_getinfo,&out2_minfo);
		
		out_minfo.dim[0] = 4;
		out_minfo.dim[1] = in1_minfo.dim[1];
		out_minfo.planecount = in1_minfo.planecount;
		
		jit_object_method(out_matrix,_jit_sym_setinfo,&out_minfo);
		jit_object_method(out_matrix,_jit_sym_getinfo,&out_minfo);
		
		out2_minfo.dim[0] = 4;
		out2_minfo.dim[1] = in1_minfo.dim[1];
		out2_minfo.planecount = 2;
		
		jit_object_method(out2_matrix,_jit_sym_setinfo,&out2_minfo);
		jit_object_method(out2_matrix,_jit_sym_getinfo,&out2_minfo);
		
		jit_object_method(in1_matrix,_jit_sym_getdata,&in1_bp);
		jit_object_method(out_matrix,_jit_sym_getdata,&out_bp);
		jit_object_method(out2_matrix,_jit_sym_getdata,&out2_bp);
		
		if (!in1_bp) { err=JIT_ERR_INVALID_INPUT; goto out;}
		if (!out_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		if (!out2_bp) { err=JIT_ERR_INVALID_OUTPUT; goto out;}
		
		//compatible planes?
		if (in1_minfo.planecount!=out_minfo.planecount)
		{ 
			err=JIT_ERR_MISMATCH_PLANE; 
			goto out;
		}		
			
		//get dimensions/planecount
		dimcount   = in1_minfo.dimcount;
		planecount = in1_minfo.planecount;			
		
		for (i=0;i<dimcount;i++)
		{
			dim[i] = in1_minfo.dim[i];
		}
				
		xray_jit_line2quad_calculate_ndim(x, dimcount, dim, planecount, 
				&in1_minfo, in1_bp, 
				&out_minfo, out_bp);
				
		xray_jit_line2quad_make_tex_coords(x, dimcount, dim, planecount, 
				&out2_minfo, out2_bp);
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out2_matrix,gensym("lock"),out_savelock);
	jit_object_method(out_matrix,gensym("lock"),out_savelock);
	jit_object_method(in1_matrix,gensym("lock"),in1_savelock);
	return err;
}

void TransformPoint(float *p_in, float *p_out, float *X, float *Y, float *Z)
{
	p_out[0] = p_in[0]*X[0] + p_in[1]*X[1] + p_in[2]*X[2];
	p_out[1] = p_in[0]*Y[0] + p_in[1]*Y[1] + p_in[2]*Y[2];  
	p_out[2] = p_in[0]*Z[0] + p_in[1]*Z[1] + p_in[2]*Z[2];  
}

void InvTransformPoint(float *p_in, float *p_out, float *X, float *Y, float *Z)
{
	p_out[0] = p_in[0]*X[0] + p_in[1]*Y[0] + p_in[2]*Z[0];
	p_out[1] = p_in[0]*X[1] + p_in[1]*Y[1] + p_in[2]*Z[1];  
	p_out[2] = p_in[0]*X[2] + p_in[1]*Y[2] + p_in[2]*Z[2];  
}

void Vadd(float *p1, float *p2, float *p_out)
{
	p_out[0] = p1[0] + p2[0];
	p_out[1] = p1[1] + p2[1];
	p_out[2] = p1[2] + p2[2];
}


void xray_jit_line2quad_calculate_ndim(t_xray_jit_line2quad *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out_minfo, char *bop)
{
	long i;
	float *fip,*fop;
	long height,width;
	long inrowstride, outrowstride;
	float vectNorm[3], xlength, ylength, distance;
	float scaleWidth, scaleHeight;
	float centerPoint[3];
	float D;
	float X[3], Y[3], Z[3];
	float planePoint[3];
	float LLt[3], ULt[3], URt[3], LRt[3];
	
	if (dimcount<1) return; //safety
	
	switch(dimcount) {
	case 1:
		dim[1]=1;
	case 2:
	default:			
		width  = dim[0];
		height = dim[1];
		
		inrowstride = in1_minfo->dimstride[1];
		outrowstride = out_minfo->dimstride[1];
		
		scaleWidth = x->scale[0]/2;
		scaleHeight = x->scale[1]/2;
		
		if (in1_minfo->type==_jit_sym_float32) {
			//mode == 1 (calculation using homogeneous coordinates)
			if(x->mode) {
				//set x-coordinate of point in plane to always be 0
				planePoint[0] = 0.0f;
				
				if(x->normalize[0]) {
					for(i=0; i < height; i++) {
					fip = (float *)(bip1 + i*inrowstride);
					fop = (float *)(bop + i*outrowstride);					
					
					//calculate normalized vector direction
					X[0] = fip[3]-fip[0];
					X[1] = fip[4]-fip[1];
					X[2] = fip[5]-fip[2];
					
					xlength = jit_math_sqrt(X[0]*X[0] + X[1]*X[1] + X[2]*X[2]);
					
					if(xlength != 0.0f) {
						X[0] /= xlength;
						X[1] /= xlength;
						X[2] /= xlength;
					}
					
					//calculate plane offset from origin
					D = -(X[0]*fip[0] + X[1]*fip[1] + X[2]*fip[2]);
					
					
					//check to see if vector is only in XY-plane
					//calculate a point in the plane defined by X as its normal
					if(X[2] != 0.0f) {
						planePoint[1] = 1.0f;						
						planePoint[2] = -(D + X[0]*planePoint[0] + X[1]*planePoint[1])/X[2];
					}
					else {
						planePoint[2] = 0.0f;
						
						//check for divide by zero
						if(X[1] != 0.0) {
							planePoint[1] = -(D + X[0]*planePoint[0] + X[2]*planePoint[2])/X[1];
						}
						else {
							planePoint[1] = 0.0f;
						}
					}
					
					//make planePoint - p1 the Y-axis
					//calculate normalized vector direction
					Y[0] = planePoint[0]-fip[0];
					Y[1] = planePoint[1]-fip[1];
					Y[2] = planePoint[2]-fip[2];
					
					ylength = jit_math_sqrt(Y[0]*Y[0] + Y[1]*Y[1] + Y[2]*Y[2]);
					
					if(ylength != 0.0f) {
						Y[0] /= ylength;
						Y[1] /= ylength;
						Y[2] /= ylength;
					}
					
					//get Z-axis from X x Y
					Z[0] = (X[1] * Y[2]) - (X[2] * Y[1]);
					Z[1] = (X[2] * Y[0]) - (X[0] * Y[2]);
					Z[2] = (X[0] * Y[1]) - (X[1] * Y[0]);
					
					//the quad will be in the XY-plane in the transformed space
					LLt[0] = (0.5f-scaleHeight)*xlength;
					LLt[1] = scaleWidth;
					LLt[2] = 0.0;
					
					ULt[0] = (0.5f+scaleHeight)*xlength;
					ULt[1] = scaleWidth;
					ULt[2] = 0.0;
					
					URt[0] = (0.5f+scaleHeight)*xlength;
					URt[1] = -scaleWidth;
					URt[2] = 0.0;
					
					LRt[0] = (0.5f-scaleHeight)*xlength;
					LRt[1] = -scaleWidth;
					LRt[2] = 0.0;
					
					//transform quad points into line coordinate space
					InvTransformPoint(LLt, fop, X, Y, Z);
					InvTransformPoint(ULt, fop+3, X, Y, Z);
					InvTransformPoint(URt, fop+6, X, Y, Z);
					InvTransformPoint(LRt, fop+9, X, Y, Z);
					
					//shift coordinates to have the same origin as the start of the line
					Vadd(fip, fop, fop);
					Vadd(fip, fop+3, fop+3);
					Vadd(fip, fop+6, fop+6);
					Vadd(fip, fop+9, fop+9);
				}
				}
				else {				
					for(i=0; i < height; i++) {
						fip = (float *)(bip1 + i*inrowstride);
						fop = (float *)(bop + i*outrowstride);					
						
						//calculate normalized vector direction
						X[0] = fip[3]-fip[0];
						X[1] = fip[4]-fip[1];
						X[2] = fip[5]-fip[2];
						
						xlength = jit_math_sqrt(X[0]*X[0] + X[1]*X[1] + X[2]*X[2]);
						
						if(xlength != 0.0f) {
							X[0] /= xlength;
							X[1] /= xlength;
							X[2] /= xlength;
						}
						
						//calculate plane offset from origin
						D = -(X[0]*fip[0] + X[1]*fip[1] + X[2]*fip[2]);
						
						
						//check to see if vector is only in XY-plane
						//calculate a point in the plane defined by X as its normal
						if(X[2] != 0.0f) {
							planePoint[1] = 1.0f;						
							planePoint[2] = -(D + X[0]*planePoint[0] + X[1]*planePoint[1])/X[2];
						}
						else {
							planePoint[2] = 0.0f;
							
							//check for divide by zero
							if(X[1] != 0.0) {
								planePoint[1] = -(D + X[0]*planePoint[0] + X[2]*planePoint[2])/X[1];
							}
							else {
								planePoint[1] = 0.0f;
							}
						}
						
						//make planePoint - p1 the Y-axis
						//calculate normalized vector direction
						Y[0] = planePoint[0]-fip[0];
						Y[1] = planePoint[1]-fip[1];
						Y[2] = planePoint[2]-fip[2];
						
						ylength = jit_math_sqrt(Y[0]*Y[0] + Y[1]*Y[1] + Y[2]*Y[2]);
						
						if(ylength != 0.0f) {
							Y[0] /= ylength;
							Y[1] /= ylength;
							Y[2] /= ylength;
						}
						
						//get Z-axis from X x Y
						Z[0] = (X[1] * Y[2]) - (X[2] * Y[1]);
						Z[1] = (X[2] * Y[0]) - (X[0] * Y[2]);
						Z[2] = (X[0] * Y[1]) - (X[1] * Y[0]);
						
						xlength *= 0.5f;
						
						//the quad will be in the XY-plane in the transformed space
						LLt[0] = (xlength-scaleHeight);
						LLt[1] = scaleWidth;
						LLt[2] = 0.0;
						
						ULt[0] = (xlength+scaleHeight);
						ULt[1] = scaleWidth;
						ULt[2] = 0.0;
						
						URt[0] = (xlength+scaleHeight);
						URt[1] = -scaleWidth;
						URt[2] = 0.0;
						
						LRt[0] = (xlength-scaleHeight);
						LRt[1] = -scaleWidth;
						LRt[2] = 0.0;
						
						//transform quad points into line coordinate space
						InvTransformPoint(LLt, fop, X, Y, Z);
						InvTransformPoint(ULt, fop+3, X, Y, Z);
						InvTransformPoint(URt, fop+6, X, Y, Z);
						InvTransformPoint(LRt, fop+9, X, Y, Z);
						
						//shift coordinates to have the same origin as the start of the line
						Vadd(fip, fop, fop);
						Vadd(fip, fop+3, fop+3);
						Vadd(fip, fop+6, fop+6);
						Vadd(fip, fop+9, fop+9);
					}
				}
			}
			//mode == 0 (calculation in 2D)
			else {
				if(x->normalize[0] == 0 && x->normalize[1] == 0) {
					for(i=0; i < height; i++) {
						fip = (float *)(bip1 + i*inrowstride);
						fop = (float *)(bop + i*outrowstride);
						
						//calculate normalized vector direction
						vectNorm[0] = fip[3]-fip[0];
						vectNorm[1] = fip[4]-fip[1];
						
						centerPoint[0] = (fip[0] + fip[3])/2.0f;
						centerPoint[1] = (fip[1] + fip[4])/2.0f;
						
						/*
							widthOffset = { -vectNorm[1]*scaleWidth, vectNorm[0]*scaleWidth }
							heightOffset = { vectNorm[0]*scaleHeight, vectNorm[1]*scaleHeight }
						*/
						
						//CP + widthOffset - heightOffset
						fop[0] = centerPoint[0] - vectNorm[1]*scaleWidth - vectNorm[0]*scaleHeight;
						fop[1] = centerPoint[1] + vectNorm[0]*scaleWidth - vectNorm[1]*scaleHeight;
						fop[2] = fip[5];
						
						//P2 - widthOffset - heightOffset
						fop[3] = centerPoint[0] + vectNorm[1]*scaleWidth - vectNorm[0]*scaleHeight;
						fop[4] = centerPoint[1] - vectNorm[0]*scaleWidth - vectNorm[1]*scaleHeight;
						fop[5] = fip[5];
						
						//P1 - widthOffset + heightOffset
						fop[6] = centerPoint[0] + vectNorm[1]*scaleWidth + vectNorm[0]*scaleHeight;
						fop[7] = centerPoint[1] - vectNorm[0]*scaleWidth + vectNorm[1]*scaleHeight;
						fop[8] = fip[2];
						
						//P1 + widthOffset + heightOffset
						fop[9] = centerPoint[0] - vectNorm[1]*scaleWidth + vectNorm[0]*scaleHeight;
						fop[10] = centerPoint[1] + vectNorm[0]*scaleWidth + vectNorm[1]*scaleHeight;
						fop[11] = fip[2];
					}
				}
				else if(x->normalize[0] == 1 && x->normalize[1] == 0) {
					for(i=0; i < height; i++) {
						fip = (float *)(bip1 + i*inrowstride);
						fop = (float *)(bop + i*outrowstride);
						
						//calculate normalized vector direction
						vectNorm[0] = fip[3]-fip[0];
						vectNorm[1] = fip[4]-fip[1];
						
						distance = jit_math_sqrt( vectNorm[0]*vectNorm[0] + vectNorm[1]*vectNorm[1] );
						vectNorm[0] /= distance;
						
						centerPoint[0] = (fip[0] + fip[3])/2.0f;
						centerPoint[1] = (fip[1] + fip[4])/2.0f;
						
						/*
							widthOffset = { -vectNorm[1]*scaleWidth, vectNorm[0]*scaleWidth }
							heightOffset = { vectNorm[0]*scaleHeight, vectNorm[1]*scaleHeight }
						*/
						
						//CP + widthOffset - heightOffset
						fop[0] = centerPoint[0] - vectNorm[1]*scaleWidth - vectNorm[0]*scaleHeight;
						fop[1] = centerPoint[1] + vectNorm[0]*scaleWidth - vectNorm[1]*scaleHeight;
						fop[2] = fip[5];
						
						//P2 - widthOffset - heightOffset
						fop[3] = centerPoint[0] + vectNorm[1]*scaleWidth - vectNorm[0]*scaleHeight;
						fop[4] = centerPoint[1] - vectNorm[0]*scaleWidth - vectNorm[1]*scaleHeight;
						fop[5] = fip[5];
						
						//P1 - widthOffset + heightOffset
						fop[6] = centerPoint[0] + vectNorm[1]*scaleWidth + vectNorm[0]*scaleHeight;
						fop[7] = centerPoint[1] - vectNorm[0]*scaleWidth + vectNorm[1]*scaleHeight;
						fop[8] = fip[2];
						
						//P1 + widthOffset + heightOffset
						fop[9] = centerPoint[0] - vectNorm[1]*scaleWidth + vectNorm[0]*scaleHeight;
						fop[10] = centerPoint[1] + vectNorm[0]*scaleWidth + vectNorm[1]*scaleHeight;
						fop[11] = fip[2];
					}
				}
				else if(x->normalize[0] == 0 && x->normalize[1] == 1) {
					for(i=0; i < height; i++) {
						fip = (float *)(bip1 + i*inrowstride);
						fop = (float *)(bop + i*outrowstride);
						
						//calculate normalized vector direction
						vectNorm[0] = fip[3]-fip[0];
						vectNorm[1] = fip[4]-fip[1];
						
						distance = jit_math_sqrt( vectNorm[0]*vectNorm[0] + vectNorm[1]*vectNorm[1] );
						vectNorm[1] /= distance;
						
						centerPoint[0] = (fip[0] + fip[3])/2.0f;
						centerPoint[1] = (fip[1] + fip[4])/2.0f;
						
						/*
							widthOffset = { -vectNorm[1]*scaleWidth, vectNorm[0]*scaleWidth }
							heightOffset = { vectNorm[0]*scaleHeight, vectNorm[1]*scaleHeight }
						*/
						
						//CP + widthOffset - heightOffset
						fop[0] = centerPoint[0] - vectNorm[1]*scaleWidth - vectNorm[0]*scaleHeight;
						fop[1] = centerPoint[1] + vectNorm[0]*scaleWidth - vectNorm[1]*scaleHeight;
						fop[2] = fip[5];
						
						//P2 - widthOffset - heightOffset
						fop[3] = centerPoint[0] + vectNorm[1]*scaleWidth - vectNorm[0]*scaleHeight;
						fop[4] = centerPoint[1] - vectNorm[0]*scaleWidth - vectNorm[1]*scaleHeight;
						fop[5] = fip[5];
						
						//P1 - widthOffset + heightOffset
						fop[6] = centerPoint[0] + vectNorm[1]*scaleWidth + vectNorm[0]*scaleHeight;
						fop[7] = centerPoint[1] - vectNorm[0]*scaleWidth + vectNorm[1]*scaleHeight;
						fop[8] = fip[2];
						
						//P1 + widthOffset + heightOffset
						fop[9] = centerPoint[0] - vectNorm[1]*scaleWidth + vectNorm[0]*scaleHeight;
						fop[10] = centerPoint[1] + vectNorm[0]*scaleWidth + vectNorm[1]*scaleHeight;
						fop[11] = fip[2];
					}
				}
				else {
					for(i=0; i < height; i++) {
						fip = (float *)(bip1 + i*inrowstride);
						fop = (float *)(bop + i*outrowstride);
						
						//calculate normalized vector direction
						vectNorm[0] = fip[3]-fip[0];
						vectNorm[1] = fip[4]-fip[1];
						
						distance = jit_math_sqrt( vectNorm[0]*vectNorm[0] + vectNorm[1]*vectNorm[1] );
						vectNorm[0] /= distance;
						vectNorm[1] /= distance;
						
						centerPoint[0] = (fip[0] + fip[3])/2.0f;
						centerPoint[1] = (fip[1] + fip[4])/2.0f;
						
						/*
							widthOffset = { -vectNorm[1]*scaleWidth, vectNorm[0]*scaleWidth }
							heightOffset = { vectNorm[0]*scaleHeight, vectNorm[1]*scaleHeight }
						*/
						
						//CP + widthOffset - heightOffset
						fop[0] = centerPoint[0] - vectNorm[1]*scaleWidth - vectNorm[0]*scaleHeight;
						fop[1] = centerPoint[1] + vectNorm[0]*scaleWidth - vectNorm[1]*scaleHeight;
						fop[2] = fip[5];
						
						//P2 - widthOffset - heightOffset
						fop[3] = centerPoint[0] + vectNorm[1]*scaleWidth - vectNorm[0]*scaleHeight;
						fop[4] = centerPoint[1] - vectNorm[0]*scaleWidth - vectNorm[1]*scaleHeight;
						fop[5] = fip[5];
						
						//P1 - widthOffset + heightOffset
						fop[6] = centerPoint[0] + vectNorm[1]*scaleWidth + vectNorm[0]*scaleHeight;
						fop[7] = centerPoint[1] - vectNorm[0]*scaleWidth + vectNorm[1]*scaleHeight;
						fop[8] = fip[2];
						
						//P1 + widthOffset + heightOffset
						fop[9] = centerPoint[0] - vectNorm[1]*scaleWidth + vectNorm[0]*scaleHeight;
						fop[10] = centerPoint[1] + vectNorm[0]*scaleWidth + vectNorm[1]*scaleHeight;
						fop[11] = fip[2];
					}
				}
			}
		}
		break;
	}
}

void xray_jit_line2quad_make_tex_coords(t_xray_jit_line2quad *x, long dimcount, long *dim, long planecount, 
		t_jit_matrix_info *out2_minfo, char *bop2)
{
	long i;
	float *fop2;
	long out2_rowspan;
	
	//post("texturing");
	out2_rowspan = out2_minfo->dimstride[1];
	
	for(i=0; i < dim[1]; i++) {
		fop2 = (float *)(bop2 + i*out2_rowspan);
		
		fop2[0] = 1.0;
		fop2[1] = 1.0;
		
		fop2[2] = 1.0;
		fop2[3] = 0.0;
		
		fop2[4] = 0.0;
		fop2[5] = 0.0;
		
		fop2[6] = 0.0;
		fop2[7] = 1.0;
	}
}

t_xray_jit_line2quad *xray_jit_line2quad_new(void)
{
	t_xray_jit_line2quad *x;
		
	if (x=(t_xray_jit_line2quad *)jit_object_alloc(_xray_jit_line2quad_class)) {
		x->mode = 0;
		x->scale[0] = 0.2;
		x->scale[1] = 1.0;
		x->scalecount = 2;
		x->normalize[0] = 0;
		x->normalize[1] = 0;
		x->normalizecount = 2;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_line2quad_free(t_xray_jit_line2quad *x)
{
	//nada
}
