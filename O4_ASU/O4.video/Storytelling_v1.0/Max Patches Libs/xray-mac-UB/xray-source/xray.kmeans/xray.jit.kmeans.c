/* 
	xray.jit.kmeans
	Wesley Smith
	wesley.hoke@gmail.com
	
	last modified: 12-7-2006
*/

#include "jit.common.h"

typedef struct _xray_jit_kmeans 
{
	t_object	ob;
	long		dimmode;
	long 		clusters;
	
	t_symbol 	*distancename; //Name of the internal matrix
	void 		*distance;
	
	t_symbol 	*centroidname; //Name of the internal matrix
	void 		*centroid;
} t_xray_jit_kmeans;

void *_xray_jit_kmeans_class;

//jitter object/MOP methods
t_jit_err xray_jit_kmeans_init(void);
t_xray_jit_kmeans *xray_jit_kmeans_new(void);
void xray_jit_kmeans_free(t_xray_jit_kmeans *x);
t_jit_err xray_jit_kmeans_matrix_calc(t_xray_jit_kmeans *x, void *inputs, void *outputs);

//data processing methods
void xray_jit_kmeans_precalc(t_xray_jit_kmeans *x, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out2_minfo, char *bop2);
void xray_jit_kmeans_calculate_ndim(t_xray_jit_kmeans *x, long dimcount, long *dim, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out2_minfo, char *bop2, 
		t_jit_matrix_info *out3_minfo, char *bop3, 
		t_jit_matrix_info *distance_minfo, char *bdp, 
		t_jit_matrix_info *centroid_minfo, char *bcp);
void xray_jit_kmeans_postcalc(t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out1_minfo, char *bop1);

t_jit_err xray_jit_kmeans_init(void) 
{
	long attrflags=0;
	t_jit_object *attr,*mop;
	t_symbol *atsym;
	
	atsym = gensym("jit_attr_offset");
	
	_xray_jit_kmeans_class = jit_class_new("xray_jit_kmeans",(method)xray_jit_kmeans_new,(method)xray_jit_kmeans_free,
		sizeof(t_xray_jit_kmeans),0L);

	//add mop
	mop = jit_object_new(_jit_sym_jit_mop,1,3);
	jit_class_addadornment(_xray_jit_kmeans_class,mop);

	//add methods
	jit_class_addmethod(_xray_jit_kmeans_class, (method)xray_jit_kmeans_matrix_calc, 		"matrix_calc", 		A_CANT, 0L);

	//add attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;

	//dimmode
	attr = jit_object_new(atsym,"dimmode",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_kmeans,dimmode));
	jit_class_addattr(_xray_jit_kmeans_class,attr);

	//clusters
	attr = jit_object_new(atsym,"clusters",_jit_sym_long,attrflags,
		(method)0L,(method)0L,calcoffset(t_xray_jit_kmeans,clusters));
	jit_class_addattr(_xray_jit_kmeans_class,attr);
		
	jit_class_register(_xray_jit_kmeans_class);

	return JIT_ERR_NONE;
}

t_jit_err xray_jit_kmeans_matrix_calc(t_xray_jit_kmeans *x, void *inputs, void *outputs)
{
	t_jit_err err=JIT_ERR_NONE;
	long in_savelock, out1_savelock, out2_savelock, out3_savelock;
	t_jit_matrix_info in_minfo, out1_minfo, out2_minfo, out3_minfo;
	char *in_bp, *out1_bp, *out2_bp, *out3_bp;
	long i,dimcount,dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *in_matrix, *out1_matrix, *out2_matrix, *out3_matrix;
	
	long distance_savelock, centroid_savelock;
	t_jit_matrix_info distance_minfo, centroid_minfo;
	char *distance_bp, *centroid_bp;
	
	in_matrix = jit_object_method(inputs,_jit_sym_getindex,0);
	out1_matrix = jit_object_method(outputs,_jit_sym_getindex,0);
	out2_matrix = jit_object_method(outputs,_jit_sym_getindex,1);
	out3_matrix = jit_object_method(outputs,_jit_sym_getindex,2);

	if (x&&in_matrix&&out1_matrix&&out2_matrix&&out3_matrix) {
		in_savelock = (long) jit_object_method(in_matrix,_jit_sym_lock,1);
		out1_savelock = (long) jit_object_method(out1_matrix,_jit_sym_lock,1);
		out2_savelock = (long) jit_object_method(out2_matrix,_jit_sym_lock,1);
		out3_savelock = (long) jit_object_method(out3_matrix,_jit_sym_lock,1);
		
		jit_object_method(in_matrix,_jit_sym_getinfo,&in_minfo);
		jit_object_method(out1_matrix,_jit_sym_getinfo,&out1_minfo);
		jit_object_method(out2_matrix,_jit_sym_getinfo,&out2_minfo);
		jit_object_method(out3_matrix,_jit_sym_getinfo,&out3_minfo);
				
		CLIP(x->clusters, 1, in_minfo.dim[x->dimmode]);
		
		//set centroid matrix
		if(x->dimmode) {
			out2_minfo.dim[0] = in_minfo.dim[0];
			out2_minfo.dim[1] = x->clusters;		
		}
		else {
			out2_minfo.dim[0] = x->clusters;
			out2_minfo.dim[1] = in_minfo.dim[1];
		}
		
		out2_minfo.type = _jit_sym_float32;
		
		jit_object_method(out2_matrix, _jit_sym_setinfo, &out2_minfo);
		jit_object_method(out2_matrix,_jit_sym_getinfo,&out2_minfo);
		
		//set cluster matrix to be a row or column vector (nx1)
		if(x->dimmode) {
			out3_minfo.dim[0] = 1;
			out3_minfo.dim[1] = in_minfo.dim[1];		
		}
		else {
			out3_minfo.dim[0] = in_minfo.dim[0];
			out3_minfo.dim[1] = 1;
		}
		
		out3_minfo.type = _jit_sym_long;
		
		jit_object_method(out3_matrix, _jit_sym_setinfo, &out3_minfo);
		jit_object_method(out3_matrix,_jit_sym_getinfo,&out3_minfo);
		
		jit_object_method(in_matrix,_jit_sym_getdata,&in_bp);
		jit_object_method(out1_matrix,_jit_sym_getdata,&out1_bp);
		jit_object_method(out2_matrix,_jit_sym_getdata,&out2_bp);
		jit_object_method(out3_matrix,_jit_sym_getdata,&out3_bp);
		
		if (!in_bp) {
			err=JIT_ERR_INVALID_INPUT;
			goto out;
		}
		
		if (!out1_bp || !out2_bp || !out3_bp) {
			err=JIT_ERR_INVALID_OUTPUT;
			goto out;
		}
		
		distance_savelock = (long) jit_object_method(x->distance,_jit_sym_lock,1);
		jit_object_method(x->distance,_jit_sym_getinfo,&distance_minfo);
		
		if(x->dimmode) {
			distance_minfo.dim[0] = x->clusters;
			distance_minfo.dim[1] = in_minfo.dim[1];
		}
		else {
			distance_minfo.dim[0] = in_minfo.dim[0];
			distance_minfo.dim[1] = x->clusters;
		}
		
		jit_object_method(x->distance, _jit_sym_setinfo, &distance_minfo);
		jit_object_method(x->distance,_jit_sym_getinfo,&distance_minfo);
		jit_object_method(x->distance,_jit_sym_getdata,&distance_bp);
		
		centroid_savelock = (long) jit_object_method(x->centroid,_jit_sym_lock,1);
		jit_object_method(x->centroid,_jit_sym_getinfo,&centroid_minfo);
		
		if(x->dimmode) {
			centroid_minfo.dim[0] = in_minfo.dim[0];
			centroid_minfo.dim[1] = x->clusters;		
		}
		else {
			centroid_minfo.dim[0] = x->clusters;
			centroid_minfo.dim[1] = in_minfo.dim[1];
		}
		
		jit_object_method(x->centroid, _jit_sym_setinfo, &centroid_minfo);
		jit_object_method(x->centroid,_jit_sym_getinfo,&centroid_minfo);
		jit_object_method(x->centroid,_jit_sym_getdata,&centroid_bp);
		
		//get dimensions/planecount
		dimcount    = in_minfo.dimcount;
		for (i=0;i<dimcount;i++) {
			dim[i] = in_minfo.dim[i];
		}		
		
		//calculate
		xray_jit_kmeans_precalc(x, 
				&in_minfo, in_bp, 
				&out2_minfo, out2_bp);
				
		xray_jit_kmeans_calculate_ndim(x, dimcount, dim, 
				&in_minfo, in_bp, 
				&out2_minfo, out2_bp, 
				&out3_minfo, out3_bp, 
				&distance_minfo, distance_bp, 
				&centroid_minfo, centroid_bp);	

		xray_jit_kmeans_postcalc(&in_minfo, in_bp, 
				&out1_minfo, out1_bp);
	} else {
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(in_matrix,gensym("lock"),in_savelock);
	jit_object_method(out1_matrix,gensym("lock"),out1_savelock);
	jit_object_method(out2_matrix,gensym("lock"),out2_savelock);
	jit_object_method(out3_matrix,gensym("lock"),out3_savelock);
	jit_object_method(x->distance,gensym("lock"),distance_savelock);
	jit_object_method(x->centroid,gensym("lock"),centroid_savelock);
	return err;
}

void xray_jit_kmeans_precalc(t_xray_jit_kmeans *x, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out2_minfo, char *bop2)
{
	long i;
	
	//if(x->dimmode) {
		//initialize centroids matrix (out2) with first k (# clusters) vectors
		//copies by cluster (horizonal vectors)
		for(i=0; i < out2_minfo->dim[1]; i++) {
			jit_copy_bytes((void *)(bop2+i*out2_minfo->dimstride[1]), 
				(void *)(bip1+i*in1_minfo->dimstride[1]), 
				out2_minfo->dimstride[0]*out2_minfo->dim[0]);
		}
	/*}
	else {	
		//initialize centroids matrix (out2) with first k (# clusters) vectors
		//copies by vector dim (vertical vectors)
		for(i=0; i < out2_minfo->dim[1]; i++) {
			jit_copy_bytes((void *)(bop2+i*out2_minfo->dimstride[1]), 
				(void *)(bip1+i*in1_minfo->dimstride[1]), 
				out2_minfo->dimstride[0]*out2_minfo->dim[0]);
		}
	}*/
}

void xray_jit_kmeans_postcalc(t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out1_minfo, char *bop1)
{
	jit_copy_bytes(bop1, bip1, out1_minfo->dim[1]*out1_minfo->dimstride[1]);
}

void xray_jit_kmeans_calculate_ndim(t_xray_jit_kmeans *x, long dimcount, long *dim, 
		t_jit_matrix_info *in1_minfo, char *bip1, 
		t_jit_matrix_info *out2_minfo, char *bop2, 
		t_jit_matrix_info *out3_minfo, char *bop3, 
		t_jit_matrix_info *distance_minfo, char *bdp, 
		t_jit_matrix_info *centroid_minfo, char *bcp) 
{
	long i, j, k, closestCluster;
	long planecount;
	float difference, minDistance, tempDistance;
	long *clusterCount, currentCluster;
	char equal;
	
	clusterCount = (long *)jit_getbytes(out3_minfo->dimstride[0]*x->clusters);
	
	if (dimcount<1) return; //safety
	
	planecount = in1_minfo->planecount;
	
	switch(dimcount)
	{
	case 1:
		dim[1] = 1;
	case 2:	
		if (in1_minfo->type==_jit_sym_float32) {
			if(x->dimmode) {
				equal = 0;
				
				while(equal == 0) {
					for(i=0; i < in1_minfo->dim[1]; i++) {
						for(k=0; k < distance_minfo->dim[0]; k++) {
							*(float *)(bdp + i*distance_minfo->dimstride[1] + k*distance_minfo->dimstride[0]) = 0;
							
							//calculate distance between input vectors and centroids
							for(j=0; j < in1_minfo->dim[0]; j++) {
								difference = *(float *)(bip1+i*in1_minfo->dimstride[1]+j*in1_minfo->dimstride[0]) -
									*(float *)(bop2+k*out2_minfo->dimstride[1]+j*out2_minfo->dimstride[0]);
								difference = ABS(difference);

								*(float *)(bdp + i*distance_minfo->dimstride[1] + k*distance_minfo->dimstride[0]) += difference;
							}
						}
					}
					
					for(i=0; i < distance_minfo->dim[1]; i++) {
						minDistance = *(float *)(bdp + i*distance_minfo->dimstride[1]);
						closestCluster = 0;
						
						for(j=0; j < distance_minfo->dim[0]; j++) {
							tempDistance = *(float *)(bdp + i*distance_minfo->dimstride[1] + j*distance_minfo->dimstride[0]);

							if(tempDistance < minDistance) {
								minDistance = tempDistance;
								closestCluster = j;
							}
						}
						
						*(long *)(bop3 + i*out3_minfo->dimstride[1]) = closestCluster;
					}
					
					//init cluster count
					for(i=0; i < x->clusters; i++) {
						clusterCount[i] = 0;
					}
					
					for(i=0; i < out3_minfo->dim[1]; i++) {
						currentCluster = *(long *)(bop3+i*out3_minfo->dimstride[1]);
						clusterCount[currentCluster]++;
						
						if(clusterCount[currentCluster] == 1) {
							for(j=0; j < out2_minfo->dim[0]; j++) {
								*(float *)(bcp+currentCluster*centroid_minfo->dimstride[1]+j*centroid_minfo->dimstride[0]) = 
									*(float *)(bip1+i*in1_minfo->dimstride[1]+j*in1_minfo->dimstride[0]);
							}
						}
						else {
							for(j=0; j < out2_minfo->dim[0]; j++) {
								*(float *)(bcp+currentCluster*centroid_minfo->dimstride[1]+j*centroid_minfo->dimstride[0]) += 
									*(float *)(bip1+i*in1_minfo->dimstride[1]+j*in1_minfo->dimstride[0]);
							}
						}
					}
					
					equal = 1;
					
					for(i=0; i < centroid_minfo->dim[1]; i++) {
						for(j=0; j < centroid_minfo->dim[0]; j++) {
							*(float *)(bcp+i*centroid_minfo->dimstride[1]+j*centroid_minfo->dimstride[0]) /= (float)(clusterCount[i]);
							
							if(*(float *)(bcp+i*centroid_minfo->dimstride[1]+j*centroid_minfo->dimstride[0]) != *(float *)(bop2+i*out2_minfo->dimstride[1]+j*out2_minfo->dimstride[0]))
								equal = 0;
						}
					}
					
					if(equal == 0)
						jit_copy_bytes(bop2, bcp, out2_minfo->dim[1]*out2_minfo->dimstride[1]);
				}
			}
			else {
				equal = 0;
				
				while(equal == 0) {
					for(i=0; i < in1_minfo->dim[0]; i++) {
						for(k=0; k < distance_minfo->dim[1]; k++) {
							*(float *)(bdp + i*distance_minfo->dimstride[0] + k*distance_minfo->dimstride[1]) = 0;
							
							//calculate distance between input vectors and centroids
							for(j=0; j < in1_minfo->dim[1]; j++) {
								difference = *(float *)(bip1+i*in1_minfo->dimstride[0]+j*in1_minfo->dimstride[1]) -
									*(float *)(bop2+k*out2_minfo->dimstride[0]+j*out2_minfo->dimstride[1]);
								difference = ABS(difference);

								*(float *)(bdp + i*distance_minfo->dimstride[0] + k*distance_minfo->dimstride[1]) += difference;
							}
						}
					}
					
					for(i=0; i < distance_minfo->dim[0]; i++) {
						minDistance = *(float *)(bdp + i*distance_minfo->dimstride[0]);
						closestCluster = 0;
						
						for(j=0; j < distance_minfo->dim[1]; j++) {
							tempDistance = *(float *)(bdp + i*distance_minfo->dimstride[0] + j*distance_minfo->dimstride[1]);

							if(tempDistance < minDistance) {
								minDistance = tempDistance;
								closestCluster = j;
							}
						}
						
						*(long *)(bop3 + i*out3_minfo->dimstride[0]) = closestCluster;
					}
					
					//init cluster count
					for(i=0; i < x->clusters; i++) {
						clusterCount[i] = 0;
					}
					
					for(i=0; i < out3_minfo->dim[0]; i++) {
						currentCluster = *(long *)(bop3+i*out3_minfo->dimstride[0]);
						clusterCount[currentCluster]++;
						
						if(clusterCount[currentCluster] == 1) {
							for(j=0; j < out2_minfo->dim[1]; j++) {
								*(float *)(bcp+currentCluster*centroid_minfo->dimstride[0]+j*centroid_minfo->dimstride[1]) = 
									*(float *)(bip1+i*in1_minfo->dimstride[0]+j*in1_minfo->dimstride[1]);
							}
						}
						else {
							for(j=0; j < out2_minfo->dim[1]; j++) {
								*(float *)(bcp+currentCluster*centroid_minfo->dimstride[0]+j*centroid_minfo->dimstride[1]) += 
									*(float *)(bip1+i*in1_minfo->dimstride[0]+j*in1_minfo->dimstride[1]);
							}
						}
					}
					
					equal = 1;
					
					for(i=0; i < centroid_minfo->dim[0]; i++) {
						for(j=0; j < centroid_minfo->dim[1]; j++) {
							*(float *)(bcp+i*centroid_minfo->dimstride[0]+j*centroid_minfo->dimstride[1]) /= (float)(clusterCount[i]);
							
							if(*(float *)(bcp+i*centroid_minfo->dimstride[0]+j*centroid_minfo->dimstride[1]) != *(float *)(bop2+i*out2_minfo->dimstride[0]+j*out2_minfo->dimstride[1]))
								equal = 0;
						}
					}
					
					if(equal == 0)
						jit_copy_bytes(bop2, bcp, out2_minfo->dim[1]*out2_minfo->dimstride[1]);
				}
			}
		}
		break;
	default:
		break;
	}
	
	jit_freebytes((void *)clusterCount, out3_minfo->dimstride[0]*x->clusters);
}

t_xray_jit_kmeans *xray_jit_kmeans_new(void)
{
	t_xray_jit_kmeans *x;
	void *m;
	t_jit_matrix_info info;
		
	if (x=(t_xray_jit_kmeans *)jit_object_alloc(_xray_jit_kmeans_class)) {
		x->dimmode = 0;
		x->clusters = 1;
		
		//create internal matrix
		jit_matrix_info_default(&info);
		info.type = _jit_sym_float32;
		info.planecount = 1;
		x->distancename = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->distancename);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->distancename, x);
		x->distance = m;
		
		//create internal matrix
		jit_matrix_info_default(&info);
		info.type = _jit_sym_float32;
		info.planecount = 1;
		x->centroidname = jit_symbol_unique();
		m = jit_object_new(_jit_sym_jit_matrix, &info);
		m = jit_object_method(m, _jit_sym_register, x->centroidname);
		
		//Register matrix name
		if(!m) error("could not allocate internal matrix!");
		jit_object_attach(x->centroidname, x);
		x->centroid = m;
	} else {
		x = NULL;
	}	
	return x;
}

void xray_jit_kmeans_free(t_xray_jit_kmeans *x)
{
	jit_object_detach(x->distance, x); //Detach matrix from object
	jit_object_free(x->distance); //Free matrix memory
	
	jit_object_detach(x->centroid, x); //Detach matrix from object
	jit_object_free(x->centroid); //Free matrix memory
}