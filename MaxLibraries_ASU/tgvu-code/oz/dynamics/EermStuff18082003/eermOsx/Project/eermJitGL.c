// eermJitGL.c


//====================== Includes

#include <stdlib.h>
#include <stdio.h>
#include "ext.h"
#include <assert.h>
#include "eermDefines.h"
#include "eermDefaults.h"
#include <math.h>
#include "GraphModelUtil.h"
#include "feature.h"
#include "node.h"
#include "simplex.h"
#include "token.h"
#include "jit.common.h"
#include "jit.gl.h"
#include "ext_strings.h"
#include "eerm.h"
#include "eermJitGL.h"

//====================== Implementations

//---------------------- EermJitGLInit

t_jit_err EermJitGLInit()
{
	long attrflags=0;
	long ob3d_flags=0;
	t_jit_object *attr;
	void * ob3d;

	// jit_class_new:
	EermJitGLClass = 
		jit_class_new(
			"EermJitGL", 
			(method)EermJitGLNew, 
			(method)EermJitGLFree,
			sizeof(EermJitGL),
			A_CANT,
			0L); //A_CANT = untyped

	// Set up object extension for 3d object, customized with flags
	ob3d = 
		jit_ob3d_setup(
			EermJitGLClass, 
			calcoffset(EermJitGL, ob3d), 
			ob3d_flags);

	// Add attributes:
	//----------------
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;

	// GeomMode
	attr = jit_object_new(
			_jit_sym_jit_attr_offset,
			"GeomMode",
			_jit_sym_symbol,
			attrflags,
			(method)0L,
			(method)EermJitGLGeomMode,
			calcoffset(EermJitGL, GeomMode));	
			
	jit_class_addattr(EermJitGLClass,attr);	

	// Projection
	attr = jit_object_new(
			_jit_sym_jit_attr_offset,
			"Projection",
			_jit_sym_symbol,
			attrflags,
			(method)0L,
			(method)EermJitGLProjection,
			calcoffset(EermJitGL, Projection));	
			
	jit_class_addattr(EermJitGLClass,attr);	

	// ParticleSize
	attr = jit_object_new(
			_jit_sym_jit_attr_offset,
			"ParticleSize",
			_jit_sym_symbol,
			attrflags,
			(method)0L,
			(method)EermJitGLParticleSize,
			calcoffset(EermJitGL, ParticleSize));	
			
	jit_class_addattr(EermJitGLClass,attr);	

	// NumParticles
	attr = jit_object_new(
			_jit_sym_jit_attr_offset,
			"NumParticles",
			_jit_sym_symbol,
			attrflags,
			(method)0L,
			(method)EermJitGLNumParticles,
			calcoffset(EermJitGL, NumParticles));	
			
	jit_class_addattr(EermJitGLClass,attr);	

	// Displaylist
	attr = jit_object_new(
			_jit_sym_jit_attr_offset,
			"Displaylist",
			_jit_sym_symbol,
			attrflags,
			(method)0L,
			(method)EermJitGLDisplaylist,
			calcoffset(EermJitGL,Displaylist));	
			
	jit_class_addattr(EermJitGLClass,attr);	

	// Add Methods
	// -----------

	// Handle draw method.  

	// Called in automatic mode by jit.gl.render, or otherwise through ob3d when banged.
	// This is A_CANT because draw setup needs to happen in the ob3d beforehand. 
	jit_class_addmethod(
		EermJitGLClass, 
		(method)EermJitGLDraw, 
		"ob3d_draw", 
		A_CANT, 0L);
		

	// Handle dest_changed method:
	//   This method is called by jit.render when the destination context changes: for example,
	//   when the user moves the window from one monitor to another.  Anything your object keeps
	//   in the OpenGL machine -- textures, display lists, vertex shaders, etc. -- will need to
	//   be rebuilt here. 
	jit_class_addmethod(
		EermJitGLClass, 
		(method)EermJitGLDestChanged, 
		"dest_changed", A_CANT, 0L);
		
	// Must register for ob3d	
	jit_class_addmethod(
		EermJitGLClass, 
		(method)jit_object_register, 			
		"register",		
		A_CANT, 
		0L);

	jit_class_addmethod(
		EermJitGLClass, 
		(method)EermJitGLDestClosing, 	
		"dest_closing",	
		A_CANT, 
		0L);

	// Register Class:
	jit_class_register(EermJitGLClass);

	ps_projection = gensym("Projection");
	ps_particlesize = gensym("ParticleSize");
	ps_numparticles = gensym("NumParticles");

	return JIT_ERR_NONE;
}


//---------------------- EermJitGLNew

EermJitGL *EermJitGLNew(t_symbol * dest_name)
{
	EermJitGL *g;
	
	g = (EermJitGL *)jit_object_alloc(EermJitGLClass);

	if (g)
	{	
		// Create And Attach ob3d
		jit_ob3d_new(g, dest_name);
		
		// Set Instance Variable Defaults
		g->e = NULL;
		g->GeomMode = 0;
		g->Projection = 0;
		g->ParticleSize = 1;
		g->NumParticles = 1;

		// In general, the matrix dimensions will be (1, NumParticles)
		g->chunk = jit_glchunk_new(GL_POINTS, 12, 1, 1);

		g->recalc = 1;
		g->displaylist = 0;
	} 
	else 
	{
		g = NULL;
	}	

	return g;
}


//---------------------- EermJitGLFree

void EermJitGLFree(EermJitGL *g)
{
	if (g->chunk)
	{
		jit_gl_chunk_delete(g->chunk);
	}
	
	if (jit_ob3d_set_context(g) == JIT_ERR_NONE)
	{
		if (g->dlref)
		{
			glDeleteLists(g->dlref, 1);
		}
	}

	jit_ob3d_free(g);
}


//---------------------- EermJitGLSetEerm

void EermJitGLSetEerm(EermJitGL *g, Eerm *e)
{
	long argc = 2;
	t_atom argv[2];	
	MAssert(e != NULL, "Invalid Eerm");

	jit_atom_setlong(argv, 1);
	jit_atom_setlong(argv+1,2);
	
	g->e = e;
	g->NumParticles = e->Nt;
	jit_object_method(g->chunk->m_vertex,_jit_sym_dim, argc, argv);

	if (e != NULL) g->recalc = 1;
}


//---------------------- EermJitGLGeomMode

t_jit_err	EermJitGLGeomMode(EermJitGL *g, void *attr, long argc, t_atom *argv)
{
	long val;
	
	MError(argc == 1, "");
	MError(argv, "");
	MError(argv.w_type == A_LONG, "");

	val = jit_atom_getlong(argv);
	MError(val >= 0, "");
	
	if ((val != g->GeomMode) && (val >= 1))
	{
		g->GeomMode = jit_atom_getlong(argv);
		g->recalc = 1;
	}		

	return JIT_ERR_NONE;
}


//---------------------- EermJitGLProjection

t_jit_err	EermJitGLProjection(EermJitGL *g, void *attr, long argc, t_atom *argv)
{
	long val;
	
	MError(argc == 1, "");
	MError(argv, "");
	MError(argv.w_type == A_LONG, "");

	val = jit_atom_getlong(argv);
	MError(val >= 0, "");
	
	if ((val != g->Projection) && (val >= 1))
	{
		g->Projection = jit_atom_getlong(argv);
		g->recalc = 1;
	}		

	return JIT_ERR_NONE;
}


//---------------------- EermJitGLParticleSize

t_jit_err	EermJitGLParticleSize(EermJitGL *g, void *attr, long argc, t_atom *argv)
{
	long val;
	
	MError(argc == 1, "");
	MError(argv, "");
	MError(argv.w_type == A_LONG, "");

	val = jit_atom_getlong(argv);
	MError(val >= 1, "");
	
	if ((val != g->ParticleSize) && (val >= 1))
	{
		g->ParticleSize = jit_atom_getlong(argv);
		g->recalc = 1;
	}		

	return JIT_ERR_NONE;
}


//---------------------- EermJitGLDisplayList

t_jit_err	EermJitGLDisplayList(EermJitGL *g, void *attr, long argc, t_atom *argv)
{
	if (argc && argv)
	{
		g->displaylist = jit_atom_getlong(argv);
		g->recalc = 1;
	}
}


//====================== JitGL Callbacks

//---------------------- EermJitGLDraw

t_jit_err EermJitGLDraw(EermJitGL *g)
{
	t_jit_err result = JIT_ERR_NONE;
	GLenum prim;
	
	prim = GL_POINTS;
	
	if (g->recalc)
	{
		EermJitGLRecalc(g);
		
		if (g->displaylist)
		{
			if (g->dlref)
			{
				glDeleteLists(g->dlref, 1);
				g->dlref = 0;
			}
			
			if (g->dlref = glGenLists(1))
			{
				glNewList(g->displaylist, GL_COMPILE);
				
				if (g->chunk && g->chunk->m_vertex)
				{
					EermJitGLDrawNow(g->chunk->m_vertex, prim);
				}
				
				glEndList();
			}
		}
		g->recalc = 0
	}
	
	// Draw our chunk of OpenGL geometry:
	if (g->chunk && g->chunk->m_vertex)
	{
		if (!jit_attr_getlong(g, gensym("matrixoutput")))
		{
			if (g->displaylist && g->dlref)
			{
				glCallList(g->dlref);
			}
			else
			{
				EermJitGLDrawNow(g->chunk->m_vertex, prim);
			}
		}
		else
		{
			EermJitGLColorSurface(g);

			result = jit_ob3d_draw_chunk(g->ob3d, g->chunk);
		}
	}

	return result;
}


//---------------------- EermJitGLDestChanged

t_jit_err EermJitGLDestChanged(EermJitGL *g)
{
	if (g->dlref)
	{
		g->recalc = 1;
	}
	return JIT_ERR_NONE;
}


//---------------------- EermJitGLGetColor

t_jit_err EermJitGLGetColor(EermJitGL *g, float *red, float *green, float *blue, float *alpha)
{
	long ac = 0;
	t_atom *av = NULL;
	
	jit_object_method(g, gensym("getcolor"), &ac, &av);
	if ((ac == 4) && av)
	{
		*red = jit_atom_getfloat(av);
		*green = jit_atom_getfloat(av+1);
		*blue 	= jit_atom_getfloat(av+2);
		*alpha 	= jit_atom_getfloat(av+3);
		jit_freebytes(av, ac * sizeof(t_atom));
	}
}


//---------------------- EermJitGLRecalc

t_jit_err EermJitGLRecalc(EermJitGL *g)
{
	if (g->chunk && g->chunk->m_vertex)
	{
		EermJitGLCalc(g);
	}

	return JIT_ERR_NONE;
}


//---------------------- EermJitGLDestClosing

t_jit_err EermJitGLDestClosing(EermJitGL *g)
{
	if (g->dlref)
	{
		glDeleteLists(g->dlref,1);
		g->dlref = NULL;
		g->recalc = 1;
	}

	return JIT_ERR_NONE;
}


//====================== Vertex Calculator

//---------------------- EermJitGLCalc

void EermJitGLCalc(EermJitGL *g)
{
	int numvertices = g->e->Nt;
	
	// Declare pointers to data
	float *p;
	char *bp=NULL;
	void *m;
	int i,j,rowstride;
	t_jit_matrix_info info;
	float red,green,blue,alpha;
	Token *t;

	if (!g->chunk)
	{
		return;
	}
	
	m = g->chunk->m_vertex;
	if !(m) return;
	
	// Set Pointers to GL Vertex Data:
	jit_object_method(m, _jit_sym_getinfo, &info);
	jit_object_method(m, _jit_sym_getdata, &bp);
	if (!bp) return;
	
	// Set the Vertex Data row stride
	rowstride = info.dimstride[1];
	MAssert(rowstride == 1, "Invalid Rowstride");
	
	// Get the drawing data:
	EermJitGlGetColor(g, &red, &green, &blue, &alpha);

	//xxxxxxxxxxxxxxxxxxxxxxxxxx temp
	red=1.0f;
	green=1.0f;
	blue=1.0f;
	
	for (i=0; i <= numvertices; i++)
	{
		p = (float *)(bp + i * rowstride);		
		
		t = EermToken(g->e, i);
		MError(t->Nn >= 3, "");
		
		// Vertex
		*p++ = t->coord[0];
		*p++ = t->coord[1];
		*p++ = t->coord[2];
		
		// Texture
		// xxxxxxxxxxxxxxxxx these are not used for now.
		*p++ = 0.0f;		
		*p++ = 0.0f;
		
		// Normals
		// xxxxxxxxxxxxxxxxx these are not used for now.
		*p++ = 0;
		*p++ = 0;
		*p++ = 0;
		
		// Color rgba
		*p++ = red;
		*p++ = green;
		*p++ = blue;
		*p++ = alpha;
	}

}

//---------------------- EermJitGLColorSurface

void EermJitGLColorSurface(EermJitGL *g)
{
	float *p;
	char *bp=NULL;
	void *m;
	int i,j,rowstride;
	t_jit_matrix_info info;
	float red,green,blue,alpha;

	if (!g->chunk)
	{
		return;
	}

	if (!(m = g->chunk->m_vertex))
	{
		return;
	}
	
	jit_object_method(m, _jit_sym_getinfo, &info);
	jit_object_method(m, _jit_sym_getdata, &bp);
	
	if (!bp)
	{
		return;
	}
	
	rowstride = info.dimstride[1];
	MAssert(rowstride == 1, "");
	
	EermJitGLGetColor(g, &red, &green, &blue, &alpha);			

	p = (float *)bp;

	if ((p[8]==red) && (p[9]==green) && (p[10]==blue) && (p[11]==alpha))			
	{
		return;
	}

	for (i=0; i < info.dim[1]; i++) 
	{
		p = (float *)(bp + i*rowstride);
		
		for (j=0; j < info.dim[0]; j++) 
		{   	
		   p += 8; 
			//color rgba
			*p++ = red;
			*p++ = green;
			*p++ = blue;
			*p++ = alpha;			
		}

  }
}

//====================== Draw Callback

//---------------------- EermJitGLDrawNow

// Render Geometry using the Matrix of Vertices:

void EermJitGLDrawNow(t_jit_object *matrix, GLEnum mode)
{
	float *p, *p2;
	char *bp = NULL;
	int i, j, rowstride, width, height, planecount, up = 0;
	t_jit_matrix_info info;
	
	if (!matrix) return;
	
	// Get pointers to matrix and matrix info:
	jit_object_method(matrix, _jit_sym_getinfo, &info);
	jit_object_method(matrix, _jit_sym_getdata, &bp);
	
	if (!bp) return;
	
	planecount = info.planecount;
	rowstride = info.dimstride[1];
	MAssert(rowstride == 1, "");
	
	height = info.dim[1] - 1;
	width = info.dim[0];
	MAssert(width == 1, "");
		
	glBegin(mode);

	// Traverse the matrix of vertex data:
	for (i = 0; i < height; i++)
	{
		p = (float *)(bp + i * rowstride);		
		
		// Plane Organization:
		//
		// 0 1 2 				Vertex
		// 3 4  				Texture
		// 5 6 7 				Normals
		// 8 9 10 11 		RGBA

		for (j = 0; j < width; j++)
		{
			glVertex3f(p[0],p[1],p[2]);

			p += planecount;
		}

	}

	glEnd();		

	}	// End Vertex Data Traversal

}



//=======
//  EOF
//=======
