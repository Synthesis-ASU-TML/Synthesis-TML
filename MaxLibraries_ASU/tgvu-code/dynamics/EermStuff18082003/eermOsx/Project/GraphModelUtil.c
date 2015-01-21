// GraphModelUtil.c

#include "math.h"
#include <stdlib.h>
#include <stdio.h>
#include "ext.h"
#include <assert.h>
#include "eermDefines.h"
#include "GraphModelUtil.h"

//====================== Implementations

//---------------------- VectorIsPositive

void VectorIsPositive(float *w, int n)
{
	int i;
	MTraceCall("eerm:\tVectorIsPositive..");
	
	if (n == 0) 
	{
		MTraceCall("eerm:\tVectorIsPositive finished.");
		return;
	}
	MAssertVoid(w != NULL, "VectorIsPositive: Invalid weight ptr");
	for (i = 0; i < n; i++)
		MAssertVoid(w[i] > 0.0, "VectorIsPositive: Invalid weight");
	MTraceCall("eerm:\tVectorIsPositive finished.");
	
}

//---------------------- VectorIsNonNegative

void VectorIsNonNegative(float *w, int n)
{
	int i;
	MTraceCall("eerm:\tVectorIsNonnegative..");
	
	if (n == 0) 
	{
		MTraceCall("eerm:\tVectorIsNonnegative finished.");
		return;
	}
	MAssertVoid(w != NULL, "VectorIsNonNegative: Invalid weight ptr");
	for (i = 0; i < n; i++)
		MAssertVoid(w[i] >= 0.0, "VectorIsNonNegative: Invalid weight");
	MTraceCall("eerm:\tVectorIsNonnegative finished.");
	
}

//---------------------- WeightIsValid

// Todo : delete use of this function.

void WeightIsValid(float *w, int n)
{
	VectorIsConvex(w,n);
}


//---------------------- VectorIsTangent

void VectorIsTangent(float *w, int n)
// w is tangent to the prototype n-simplex if components sum to zero
{
	int i;
	double sum = 0.0;
	
	MTraceCall("eerm:\tVectorIsTangent..");
	if (n == 0) 
	{
		MTraceCall("eerm:\tVectorIsTangent finished.");
		return;
	}
	MAssertVoid(w != NULL, "VectorIsTangent: Invalid vec ptr");
	for (i = 0; i < n; i++)
	{
		sum = sum + (double)w[i];
	}
	MAssertVoid(((float)sum) <= (KEpsilon), "VectorIsTangent: nonzero sum");
	MTraceCall("eerm:\tVectorIsTangent finished.");
}


//---------------------- VectorIsConvex

void VectorIsConvex(float *w, int n)
{
	int i;
	double sum = 0.0;
	
	MTraceCall("eerm:\tVectorIsConvex..");
	if (n == 0) 
	{
		MTraceCall("eerm:\tVectorIsConvex finished.");
		return;
	}
	MAssertVoid(w != NULL, "VectorIsConvex: Invalid weight ptr");
	for (i = 0; i < n; i++)
	{
		MAssertVoid(w[i] >= 0.0, "VectorIsConvex: negative weight.");
		sum = sum + (double)w[i];
	}
	MAssertVoid( (((float)sum - 1.0f) <= KEpsilon) , "VectorIsConvex: nonconvex sum");
	MTraceCall("eerm:\tVectorIsConvex finished.");
}


//---------------------- ProjectTangentToSimplex

void	ProjectTangentToSimplex(float *f, int n)
{
	int i;
	double sum = 0.0;
	MMemEntry;

	MTraceCall("eerm:\tProjectTangentToSimplex..");

	for (i = 0; i < n; i++)
	{
		sum = sum + (double)(f[i]);
	}
	sum = sum / (double)n;
	for (i = 0; i < n; i++)
	{
		f[i] = f[i] - sum;
	}	
	MVectorIsTangent(f,n);  // assert on non-tangent.

	MMemExit;
	MTraceCall("eerm:\tProjectTangentToSimplex finished.");
}


//---------------------- ForceConvex

void	ForceConvex(float *f, int n)
{
	int i;
	double s = 0.0;
	MMemEntry;
	
	for (i = 0; i < n; i++)
	{
		// zero any negative parts:
		if (f[i] < 0.0) f[i] = 0.0;
		// accumulate the sum:
		s = s + f[i];
	}
	s = 1.0 / s;
	// Normalize the sum
	for (i = 0; i < n; i++)
	{
		f[i] = f[i] * s;
	}
	MVectorIsConvex(f,n);
	MMemExit;
}



//----------------------- graphmodelutiltests

void graphmodelutiltests()
{
	isorttest();
}


//----------------------- obsmix

int obsmix(int nmix, float *weights)
{
	double rval, wacc = 0.0;
	int i, omix = 0;
	if (nmix == 0) return(-1);
	rval = (double)rand() / (double)RAND_MAX;
	for (i=0; i<nmix; i++) 
	{
		wacc += weights[i];
		if (rval < wacc) return(i);
	}
	return(omix);		
}

//----------------------- obsmixnn

int obsmixnn(int nmix, float *weights, int numnn, int *neighbors)
{
	double rval, wacc = 0.0;
	int i, obs=-1;
	float *tweights;
	
	if ((nmix == 0) || (numnn == 0)) return(-1);
	if (numnn < nmix) {
		tweights = (float *)getmem(nmix * sizeof(float));
		for (i=0; i<numnn; i++) 
		{
			tweights[i] = weights[neighbors[i]];
		}
		rval = (double)rand() / (double)RAND_MAX;
		for (i=0; i<numnn; i++) 
		{
			wacc += tweights[i];
			if (rval < wacc) 
			{
				obs = i; 
				break;
			}
		}
		freemem(tweights,(nmix * sizeof(float)));
		return(obs);
	} 
	else 
	{
		rval = (double)rand() / (double)RAND_MAX;
		for (i=0; i<nmix; i++) 
		{
			wacc += weights[i];
			if (rval < wacc) {return(i);}
		}
	}
	return(obs);
}



//----------------------- isort

void isort(int n,int *arr)  // insertion sort a vector of ints into ascending order
{
	int i,j;
	int a;

	MError(n > 0, "Bad array length.");
	MAssert(arr != NULL, "null ptr received");

	for (j=1; j<n; j++) 
	{
		a = arr[j];
		i=j-1;
		while (i>=0 && arr[i] > a) 
		{
			arr[i+1] = arr[i];
			i--;
		}
		arr[i+1] = a;
	}
}

//----------------------- isorttest

void isorttest() 
{
	int i;
	int arr[] = {5,3,4,1,2};
	int sarr[] = {1,2,3,4,5};
	
	isort(5,arr);
	
	for (i=0; i < 5; i++)
	{
		MAssert(arr[i] == sarr[i], "Incorrect sort.");
	}
}


//----------------------- isort2

void isort2(int n,int *v, int *w)  // insertion sort a vector v of ints into ascending order
{									// while making corresponding rearrangement of w.
	int a,b,i,j;

	for (j=1; j<n; j++) 
	{
		a = v[j];
		b = w[j];
		i=j-1;
		while (i>=0 && v[i] > a) 
		{
			v[i+1] = v[i];
			w[i+1] = w[i];
			i--;
		}
		v[i+1] = a;
		w[i+1] = b;
	}
}

//----------------------- findsortedsub

// Finds the substitution by which two sorted vectors 
//  are assumed to differ, returning the indices of the 
//  items which were exchanged.
void findsortedsub(int *v1, int *v2, int n, int *i1, int *i2)
{
	int i, Nmiss = 0;
	*i1 = -1;
	
	for (i = 0; i < n; i++)
	{
		if (v1[i] != v2[i])
		{
			Nmiss++;
			if (*i1 == -1) *i1 = i; 
		}
	}
	
	*i2 = *i1 + Nmiss - 1;	
	if (*i1 == -1) *i2 = -1;
}

//---------------------- SortedCompareCount

int SortedCompareCount(int *s1, int n1, int *s2, int n2)
// does the obvious thing: returns the number of matching ints,
// or something MInvalid of they are different sizes.
{
	int i1=0; 
	int i2=0;
	int count=0;
	int inc=0;
	
	if (n1 != n2) return -1;

	// Note: this is && to avoid obvious problem looking up 
	// invalid index.
	while ((i1 < n1) && (i2 < n2))
	{
		count += (s1[i1] == s2[i2]);
		inc = (s1[i1] <= s2[i2]);
		i1 += inc;
		i2 += !(inc);
	}
	
	return count;	
}

//---------------------- SortedComparePermute

int SortedComparePermute(int *s1, int n1, int *s2, int n2, int *p, int np)
// does the same thing, but returns the permutation
// connecting them.
{
	int i1=0;
	int i2=0; 
	int count=0;
	int inc=0;

	MAssertInt(np == n1, "invalid perm size");

	if (n1 != n2) return -1;
	initvec(p, -1, np);

	// Note: this is && to avoid obvious problem looking up 
	// invalid index.
	while ((i1 < n1) && (i2 < n2))
	{
		if (s1[i1] == s2[i2])
		{
			count++;
			p[i1] = i2;
		}			
		inc = (s1[i1] <= s2[i2]);
		i1 += inc;
		i2 += !(inc);
	}

	#ifdef MDebug
	for (i1 = 0; i1 < n1; i1++)
	{
		MAssert((p[i1] >= -1) && (p[i1] < n2), "Invalid permutation."); 
	}
	#endif
	
	return count;	
}


//----------------------- gauss

double gauss(double mean, double var)  // jacobian trick to produce gaussian-
{									   // distributed random values (from NR)
	double u1, u2, v1, g;
	u1 = (double)rand() / (double)RAND_MAX;
	u1 = sqrt(-2.0 * log(MFloor(u1, 0.000000001)));
	u2 = (double)rand() / (double)RAND_MAX;
	u2 = cos(2*KPi*u2);	
	v1 = u1*u2;
	g = v1*sqrt(var) + mean;
	//post("u1 = %f, u2 = %f",u1,u2);
	//post("g_0 = %f, g_mv = %f",v1,g);
	return(g);
}

//----------------------- gaussn

void gaussn(double mean, double var, double *gaussvec, int n)  
{							
	int i;

	MAssertVoid(gaussvec != NULL, "null ptr");
	MAssertVoid(var > 0.0, "invalid var");
	MAssertVoid(n > 0, "invalid n");
			   
	for (i = 0; i < n; i++)
	{
		gaussvec[i] = gauss(mean, var);
	}
	return;
}

//----------------------- gaussn

void gaussnv(double *mean, double *var, double *gaussvec, int n)  
{							
	int i;
	MAssertVoid((gaussvec != NULL) && (mean != NULL) && (var != NULL), "null ptr");
	MAssertVoid(n > 0, "invalid n");
			   
	for (i = 0; i < n; i++)
	{
		MAssertVoid(var[i] > 0.0, "invalid var");
		gaussvec[i] = gauss(mean[i], var[i]);
	}
	return;
}

//----------------------- CompactPtrArray

int CompactPtrArray(void **PtrArray, int Size)
{
	int i, j=0;
	for (i = 0; i < Size; i++)
	{
		if  (PtrArray[i] != NULL)
		{
			PtrArray[j] = PtrArray[i];
			j++;
		}
	}
// Todo : 1. Check that this works as advertised.
//        2. Check its usage in  TokenDelete . 
	return j;
}


//====================== Forces

//---------------------- SpringForce

float SpringForce(float Coupling, float Distance)
{
	return -1.0 * Coupling * Distance;
}


//---------------------- GravityForce

float GravityForce(float Coupling, float Mass1, float Mass2, float Distance)
{
	return -1.0 * Coupling * (Mass1 * Mass2) / (Distance * Distance);
}




//#endif

