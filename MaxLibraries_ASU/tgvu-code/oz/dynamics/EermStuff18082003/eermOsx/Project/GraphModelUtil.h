// GraphModelUtil.h//====================== Includes//#ifndef _GraphModelUtil_h//#define _GraphModelUtil_h//#include "math.h"//#include "stdlib.h"//#include "eermDefines.h"//====================== Prototypesvoid VectorIsPositive(float *w, int n);void VectorIsNonNegative(float *w, int n);void WeightIsValid(float *w, int n);void VectorIsTangent(float *w, int n);void VectorIsConvex(float *w, int n);void	ProjectTangentToSimplex(float *f, int n);void	ForceConvex(float *f, int n);void graphmodelutiltests();  // Todo : finish implementing test functions.// discrete random variables:int obsmix(int nmix, float *weights);int obsmixnn(int nmix, float *weights, int numnn, int *neighbors);// insertion sorts:void isort(int n,int *v);void isorttest();void isort2(int n,int *v, int *w);// sorted comparisons:int SortedCompareCount(int *s1, int n1, int *s2, int n2);int SortedComparePermute(int *s1, int n1, int *s2, int n2, int *p, int np);// routine for finding the substitution by which two otherwise// identical sorted vectors differvoid findsortedsub(int *v1, int *v2, int n, int *i1, int *i2);// gaussian-distributed random variables:double gauss(double mean, double var);void gaussn(double mean, double var, double *gaussvec, int n); void gaussnv(double *mean, double *var, double *gaussvec, int n); // routine for compactifying arrays of pointers which contain Null ptrsint CompactPtrArray(void **PtrArray, int Size);// some miscellaneous forcesfloat SpringForce(float Coupling, float Distance);float GravityForce(float Coupling, float Mass1, float Mass2, float Distance);