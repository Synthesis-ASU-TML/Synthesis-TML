/*
 *	tml.ode.core
 *		Core ODE stuff!!!!
 */
 
#include "jit.common.h"
#include "ext_strings.h"
#include "ode/ode.h"

#define MAX_RIGID_BODY		10000

//This defines where all the items are located in the matrix.  For easier changing
//later on.		Spaces show where the optional sections start/end.
#define ID_PARTICLE_ID		0
#define ID_CHANGE			1
#define ID_MASS				2
#define ID_LOCATION_X		3
#define ID_LOCATION_Y		4
#define ID_LOCATION_Z		5

#define ID_FORCE_X			6
#define ID_FORCE_Y			7
#define ID_FORCE_Z			8

#define ID_QUATERNION_A		9
#define ID_QUATERNION_X		10
#define ID_QUATERNION_Y		11
#define ID_QUATERNION_Z		12

#define ID_LINEAR_X			13
#define ID_LINEAR_Y			14
#define ID_LINEAR_Z			15

#define ID_ANGLE_X			16
#define ID_ANGLE_Y			17
#define ID_ANGLE_Z			18


//Various arguments for collision detection
#define CD_PARTICLE_ID		0
#define CD_CHANGE			1
#define CD_TYPE				2
#define CD_RADIUS			3
#define CD_WIDTH			3
#define CD_HEIGHT			4
#define CD_DEPTH			5
#define CD_ARG_COUNT		6

typedef struct _tml_ode_core
{
	//Common.
	t_object	ob;
	
	//Param specific...
	long gravityCount;
	float gravity[3];
	
	//ODE specific.
	dWorldID			ode_world;
	dSpaceID			ode_space;	//Use this for collisions
	
	//The bounds of the world, so we can pass in a matrix that affects
	//all the objects in that bounds.  A bit limited, but oh-well.
	long 	limitCount;
	float	limits[6];		//x-min, x-max, y-min, y-max, z-min, z-max
	float	stepSize;
	long 	useQuickStep;	//1=true, 0=false
	
	//The bodies...
	long bodyCount;
	dBodyID *bodies;
	
	//And the associated geometry
	dGeomID *geoms;
	
	double *lastGeomValues;
	
} t_tml_ode_core;


void *_tml_ode_core_class;

//Init functions
t_jit_err tml_ode_core_init(void);
void tml_ode_core_quit(void *param);

//Construction/Destruction
t_tml_ode_core *tml_ode_core_new(void);
void tml_ode_core_delete(t_tml_ode_core*);


//Methods
t_jit_err tml_ode_core_calc(t_tml_ode_core *x, void *inputs, void *outputs);


//Getters/setters
t_jit_err tml_ode_core_gravity_set(t_tml_ode_core *x, void *attr, long argc, t_atom *argv);
t_jit_err tml_ode_core_limits_set(t_tml_ode_core *x, void *attr, long argc, t_atom *argv);
t_jit_err tml_ode_core_stepSize_set(t_tml_ode_core *x, void *attr, long argc, t_atom *argv);
t_jit_err tml_ode_core_useQuickStep_set(t_tml_ode_core *x, void *attr, long argc, t_atom *argv);


t_jit_err tml_ode_core_init(void)
{
	//int err;
	long attrflags=0;
	t_jit_object *mop, *o, *attr;


	//Init class
	_tml_ode_core_class = jit_class_new("tml_ode_core",
										(method)tml_ode_core_new,
										(method)tml_ode_core_delete,
										sizeof(t_tml_ode_core),
										A_CANT,
										0L);
										
	//Matrix ops
	mop = jit_object_new(_jit_sym_jit_mop,3,1);
	jit_mop_input_nolink(mop,2);
	jit_mop_input_nolink(mop,3);
	jit_mop_output_nolink(mop,1);
	o = jit_object_method(mop,_jit_sym_getinput,2);
	jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 
	
	o = jit_object_method(mop,_jit_sym_getinput,3);
	jit_object_method(o,_jit_sym_ioproc,jit_mop_ioproc_copy_adapt); 

	jit_class_addadornment(_tml_ode_core_class,mop);
	
	//Methods
	jit_class_addmethod(_tml_ode_core_class, (method)tml_ode_core_calc, "matrix_calc", A_CANT, 0L);
	
	//Attributes	
	attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_USURP_LOW;
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "gravity", _jit_sym_float32, 3, attrflags,
							(method)0L, (method)tml_ode_core_gravity_set, calcoffset(t_tml_ode_core, gravityCount),
							calcoffset(t_tml_ode_core, gravity));
	jit_class_addattr(_tml_ode_core_class, attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset_array, "limits", _jit_sym_float32, 6, attrflags,
							(method)0L, (method)tml_ode_core_limits_set, calcoffset(t_tml_ode_core, limitCount),
							calcoffset(t_tml_ode_core, limits));
	jit_class_addattr(_tml_ode_core_class, attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset, "stepSize", _jit_sym_float32, attrflags,
							(method)0L, (method)tml_ode_core_stepSize_set, calcoffset(t_tml_ode_core, stepSize));
	jit_class_addattr(_tml_ode_core_class, attr);
	
	attr = jit_object_new(_jit_sym_jit_attr_offset, "useQuickStep", _jit_sym_long, attrflags,
							(method)0L, (method)tml_ode_core_useQuickStep_set, calcoffset(t_tml_ode_core, useQuickStep));
	jit_class_addattr(_tml_ode_core_class, attr);
	
	
	
	//Finalize
	jit_class_register(_tml_ode_core_class);
	
	
	//Make sure we release the bridge...
	quittask_install((method)tml_ode_core_quit, NULL);
	
	return 0;
}



void tml_ode_core_quit(void *param)
{
}


t_tml_ode_core *tml_ode_core_new(void)
{
	t_tml_ode_core *toRet;
	int i;
	
	toRet = (t_tml_ode_core*)jit_object_alloc(_tml_ode_core_class);
	
	toRet->bodies = malloc(sizeof(dBodyID) * MAX_RIGID_BODY);
	toRet->geoms = malloc(sizeof(dGeomID) * MAX_RIGID_BODY);
	toRet->lastGeomValues = malloc(sizeof(double) * MAX_RIGID_BODY);
	
	//Zero gravity...
	toRet->gravityCount = 3;
	toRet->gravity[0] = 0;
	toRet->gravity[1] = 0;
	toRet->gravity[2] = 0;
	
	//Default the limits
	toRet->limitCount = 6;
	toRet->limits[0] = -1;
	toRet->limits[1] = 1;
	toRet->limits[2] = -1;
	toRet->limits[3] = 1;
	toRet->limits[4] = -1;
	toRet->limits[5] = 1;
	
	//Default the step size
	toRet->stepSize = 1;
	toRet->useQuickStep = 0;
	
	//Clear rigid bodies
	for (i=0;i<MAX_RIGID_BODY;i++)
	{
		toRet->bodies[i] = NULL;
		toRet->geoms[i] = NULL;
		toRet->lastGeomValues[i] = 0;
	}
	
	//Create a new ODE world...
	toRet->ode_world = dWorldCreate();
	if (toRet->ode_world == NULL)
		post("TML_ODE_BRIDGE: Error, ODE world not instanced!");
	else
		post("TML_ODE_BRIDGE: Created new ODE world!");
	
	toRet->ode_space = dHashSpaceCreate(0);
	if (toRet->ode_space == NULL)
		post("TML_ODE_BRIDGE: Error, ODE space not instanced!");
	else
	{
		post("TML_ODE_BRIDGE: Created new ODE space!");
	}
	
	return toRet;
}


void tml_ode_core_delete(t_tml_ode_core*toDel)
{
	//Release the ODE world...
	post("TML_ODE_BRIDGE: Released the ODE world");
	if (toDel->ode_world != NULL)
		dWorldDestroy(toDel->ode_world);
	
	if (toDel->ode_space != NULL)
		dSpaceDestroy(toDel->ode_space);
	
	post("TML_ODE_BRIDGE: Free'ing malloc'ed memory");
	if (toDel->bodies != NULL)
		free(toDel->bodies);
	
	if (toDel->geoms != NULL)
		free(toDel->geoms);
	
	if (toDel->lastGeomValues != NULL)
		free(toDel->lastGeomValues);
	
	post("TML_ODE_BRIDGE: NULLifying pointers for malloc'ed memory");
	toDel->bodies = NULL;
	toDel->geoms = NULL;
	toDel->lastGeomValues = NULL;
}


//Called when two objects are near.
void nearCallBack(void *data, dGeomID o1, dGeomID o2)
{
	dContactGeom cts;
	if (dCollide(o1, o2, 0, &cts, sizeof(dContactGeom)) != 0)
	{
		//Do something...
		post("COLLIDE");
	}
}


//Called when it is time to handle the collisions (calc is already over-encumbered...)
t_jit_err tml_ode_core_collide(t_tml_ode_core *x, void *inputs, void *outputs)
{
	void *inMatrix;
	
	double *inData;
	
	t_jit_matrix_info inMatrixInfo;
	
	t_jit_err err = JIT_ERR_NONE;
	
	inMatrix = jit_object_method(inputs, _jit_sym_getindex, 2);
	
	if (x && inMatrix)
	{
		jit_object_method(inMatrix, _jit_sym_getinfo, &inMatrixInfo);
		jit_object_method(inMatrix, _jit_sym_getdata, &inData);
	}
	else
	{
		//Nothing to do here...
		return JIT_ERR_NONE;
	}
	
	
	//Ok, validate the matrix
	if (inData)
	{
		if (inMatrixInfo.type == _jit_sym_float64)
		{
			if (inMatrixInfo.dimcount == 2 && inMatrixInfo.planecount == 1)
			{
				if (inMatrixInfo.dim[0] != CD_ARG_COUNT)
				{
					error("Collision Matrix is not the right size (try about 4/5 width)");
					return JIT_ERR_GENERIC;
				}
			}
			else
			{
				error("Collision Matrix must be 2 dimensional, with 1 plane");
				return JIT_ERR_GENERIC;
			}
		}
		else
		{
			error("Collision matrix must be made of doubles (64bit float)");
			return JIT_ERR_GENERIC;
		}
	}
	else
	{
		error("Something went wrong reading matrix data...");
		return JIT_ERR_GENERIC;
	}
	
	
	//Next; scan the matrix
	long i;
	
	long strides[2];
	strides[0] = inMatrixInfo.dimstride[0]/8;
	strides[1] = inMatrixInfo.dimstride[1]/8;
	
	for (i=0; i<inMatrixInfo.dim[1]; i++)
	{
		long lID = (long)*(inData + CD_PARTICLE_ID * strides[0] + i*strides[1]);
		
		if (lID < 0 || lID >= MAX_RIGID_BODY)
		{
			error("TML_ODE_CORE: Max %n objects supported!!!", MAX_RIGID_BODY);
		}
		else
		{
			if (x->bodies[lID] == NULL)
			{
				error("TML_ODE_CORE: Sorry, object %n is not initialized!", lID);
			}
			else
			{
				if (x->lastGeomValues[lID] < *(inData + CD_CHANGE * strides[0] + i*strides[1]))
				{
					//CHANGE!!!!
					x->lastGeomValues[lID] = *(inData + CD_CHANGE * strides[0] + i*strides[1]) + 0.001;
					
					//Does a GEOM exist?  If so... delete it.
					if (x->geoms[lID])
					{
						dGeomDestroy(x->geoms[lID]);
						x->geoms[lID] = NULL;
					}
					
					//Create the new GEOM and bind it to the BODY.
					// <= 1 = sphere, else cube.
					if (*(inData + CD_TYPE * strides[0] + i*strides[1]) <= 1)
					{
						x->geoms[lID] = dCreateSphere(x->ode_space, *(inData + CD_RADIUS * strides[0] + i*strides[1]));
					}
					else
					{
						x->geoms[lID] = dCreateBox(x->ode_space, *(inData + CD_WIDTH * strides[0] + i*strides[1]),
																*(inData + CD_WIDTH * strides[0] + i*strides[1]),
																*(inData + CD_WIDTH * strides[0] + i*strides[1]));
					}
					
					//Bind them
					dGeomSetBody(x->geoms[lID], x->bodies[lID]);
				}
			}
		}
	}
	
	
	//Call ODE to check all objects for collisions and handle as needed...
	dSpaceCollide(x->ode_space, NULL, nearCallBack);
	
	//Done!!!
	return err;
}


//The left-most matrix is used to maintain the individual particles.  The
//right-most matrix is used to define a set of vectors (forces) to apply to the
//individual items.
//
//We linearly interpoliate the second for best results.
t_jit_err tml_ode_core_calc(t_tml_ode_core *x, void *inputs, void *outputs)
{
	//long inSaveLock, outSaveLock;

	void *inMatrix, *outMatrix, *forceMatrix;
	
	double *inData, *outData, *forceMatrixData;
	
	t_jit_matrix_info inMatrixInfo, outMatrixInfo, forceMatrixInfo;
	
	t_jit_err err;
	
	err = JIT_ERR_NONE;
	
	//post("Got banged!");
	
	inMatrix	= jit_object_method(inputs, _jit_sym_getindex, 0);
	outMatrix	= jit_object_method(outputs, _jit_sym_getindex, 0);
	forceMatrix = jit_object_method(inputs, _jit_sym_getindex, 1);
	
	if (x && inMatrix && outMatrix)
	{
		jit_object_method(inMatrix, _jit_sym_getinfo, &inMatrixInfo);
		jit_object_method(outMatrix, _jit_sym_getinfo, &outMatrixInfo);
		
		jit_object_method(inMatrix, _jit_sym_getdata, &inData);
		jit_object_method(outMatrix, _jit_sym_getdata, &outData);
		
		if (forceMatrix)
		{
			jit_object_method(forceMatrix, _jit_sym_getinfo, &forceMatrixInfo);
			jit_object_method(forceMatrix, _jit_sym_getdata, &forceMatrixData);
			
			//Release the forceMatrix if the matrix is somewhat off...
			if (forceMatrixInfo.dimcount !=3 || forceMatrixInfo.planecount != 3 || forceMatrixInfo.type != _jit_sym_float64)
			{
				if (forceMatrixInfo.dimcount != 1)
					error("tml.ode.core: Second input must have 3 dimensions, with a planecount of 3. (64bit float) %i %i",
							(int)forceMatrixInfo.dimcount, (int)forceMatrixInfo.planecount);
					
				forceMatrix = NULL;
			}
		}
		
		if (x && inData && outData)
		{
			if (inMatrixInfo.type == _jit_sym_float64)
			{
				if (inMatrixInfo.dimcount == 2 && inMatrixInfo.planecount == 1)
				{	
					if (inMatrixInfo.dim[0] == ID_LOCATION_Z + 1
						 || inMatrixInfo.dim[0] == ID_FORCE_Z + 1
						 || inMatrixInfo.dim[0] == ID_QUATERNION_Z + 1
						 || inMatrixInfo.dim[0] == ID_LINEAR_Z + 1 
						 || inMatrixInfo.dim[0] == ID_ANGLE_Z + 1)
					{
						//Make sure that dimcount/planecount equal on both...
						if (inMatrixInfo.dimcount != outMatrixInfo.dimcount ||
							inMatrixInfo.planecount != outMatrixInfo.planecount ||
							inMatrixInfo.dim[0] != outMatrixInfo.dim[0] ||
							inMatrixInfo.dim[1] != outMatrixInfo.dim[1] ||
							inMatrixInfo.type != outMatrixInfo.type)
						{
							outMatrixInfo.dimcount = inMatrixInfo.dimcount;
							outMatrixInfo.planecount = inMatrixInfo.planecount;
							outMatrixInfo.dim[0] = inMatrixInfo.dim[0];
							outMatrixInfo.dim[1] = inMatrixInfo.dim[1];
							outMatrixInfo.type = inMatrixInfo.type;
							
							if (jit_object_method(outMatrix, _jit_sym_setinfo, &outMatrixInfo))
							{
								error("tml.ode.core: Had too much fun resizing matrices.  Now system won't allow me to resize matrices anymore.");
								err = JIT_ERR_GENERIC;
							}
							
							jit_object_method(outMatrix, _jit_sym_getinfo, &outMatrixInfo);
							jit_object_method(outMatrix, _jit_sym_getdata, &outData);
						}
							
						if (err == JIT_ERR_NONE)
						{
							//Do as is needed for each element...
							long /*i1,*/ i2;
							
							//Step the world...
							if (x->useQuickStep != 0)
							{
								dWorldQuickStep(x->ode_world, (dReal)x->stepSize);
							}
							else
							{
								dWorldStep(x->ode_world, (dReal)x->stepSize);
							}
							
							//Loop through every object in the matrix.
							for (i2=0; i2<outMatrixInfo.dim[1]; i2++)
							{
								//Get the obj numb
								double change;
								const double *dOut;
								double fX, fY, fZ;				//To apply an arbitrary force
								struct dMass massObject;
								double mass;					//Mass of the object
								
								long inStride[2];
								long outStride[2];
								long objNumb = (long)*(inData +ID_PARTICLE_ID*inMatrixInfo.dimstride[0]/8 
														+ i2 * inMatrixInfo.dimstride[1]/8);
								
								if (objNumb < 0 || objNumb >= MAX_RIGID_BODY)
								{
									error("tml.ode.core: %n objects supported so far... sorry!", MAX_RIGID_BODY);
									objNumb = 0;
								}
								
								//And the change
								change = (long)*(inData + ID_CHANGE*inMatrixInfo.dimstride[0]/8 + 
												i2 * inMatrixInfo.dimstride[1]/8);
								
								//Pre-compute stride
								inStride[0] = inMatrixInfo.dimstride[0]/8;
								inStride[1] = inMatrixInfo.dimstride[1]/8;
								
								outStride[0] = outMatrixInfo.dimstride[0]/8;
								outStride[1] = outMatrixInfo.dimstride[1]/8;
								
								//Do we set, or just get the data fresh
								if (change > 0.5 || x->bodies[objNumb] == NULL)
								{
									//Extract/apply changing data.
									double posX, posY, posZ;		//Position
									double qt[4];					//Rotation quaternion
									double lX, lY, lZ;				//Linear Velocity
									double aX, aY, aZ;				//Angular Velocity

									posX = *(inData + ID_LOCATION_X*inStride[0] + i2 * inStride[1]);
									posY = *(inData + ID_LOCATION_Y*inStride[0] + i2 * inStride[1]);
									posZ = *(inData + ID_LOCATION_Z*inStride[0] + i2 * inStride[1]);
								
									//if not exist, create...
									if (x->bodies[objNumb] == NULL)
									{
										x->bodies[objNumb] = dBodyCreate(x->ode_world);
									}
									
									//Create mass object
									mass = *(inData + ID_MASS*inStride[0] + i2 * inStride[1]);
									if (mass < 0.000001)
										mass = 1;
									dMassSetSphereTotal(&massObject, mass, 1);
									dBodySetMass(x->bodies[objNumb], &massObject);
									
									//Pass on the data...
									dBodySetPosition(x->bodies[objNumb], posX, posY, posZ);
									
									//Quaternions, and the rest
									if (inMatrixInfo.dim[0] >= ID_QUATERNION_Z + 1)
									{
										qt[0] = *(inData + ID_QUATERNION_A*inStride[0] + i2 * inStride[1]);
										qt[1] = *(inData + ID_QUATERNION_X*inStride[0] + i2 * inStride[1]);
										qt[2] = *(inData + ID_QUATERNION_Y*inStride[0] + i2 * inStride[1]);
										qt[3] = *(inData + ID_QUATERNION_Z*inStride[0] + i2 * inStride[1]);
										
										dBodySetQuaternion(x->bodies[objNumb], qt);
									}
									
									if (inMatrixInfo.dim[0] >= ID_LINEAR_Z + 1)
									{
										lX = *(inData + ID_LINEAR_X*inStride[0] + i2 * inStride[1]);
										lY = *(inData + ID_LINEAR_Y*inStride[0] + i2 * inStride[1]);
										lZ = *(inData + ID_LINEAR_Z*inStride[0] + i2 * inStride[1]);
										
										dBodySetLinearVel(x->bodies[objNumb], lX, lY, lZ);
									}
									
									if (inMatrixInfo.dim[0] >= ID_ANGLE_Z + 1)
									{
										aX = *(inData + ID_ANGLE_X*inStride[0] + i2 * inStride[1]);
										aY = *(inData + ID_ANGLE_Y*inStride[0] + i2 * inStride[1]);
										aZ = *(inData + ID_ANGLE_Z*inStride[0] + i2 * inStride[1]);
										
										dBodySetAngularVel(x->bodies[objNumb], aX, aY, aZ);
									}
								}
								
								
								//Create mass object
								mass = *(inData + ID_MASS*inStride[0] + i2 * inStride[1]);
								if (mass < 0.000001)
									mass = 1;
								*(outData + ID_MASS*outStride[0] + i2*outStride[1]) = mass;
								
								//Apply the forces
								if (inMatrixInfo.dim[0] >= ID_FORCE_Z+1)
								{
									fX = *(inData + ID_FORCE_X*inStride[0] + i2 * inStride[1]);
									fY = *(inData + ID_FORCE_Y*inStride[0] + i2 * inStride[1]);
									fZ = *(inData + ID_FORCE_Z*inStride[0] + i2 * inStride[1]);
									
									//Apply the force
									dBodyAddForce(x->bodies[objNumb], fX, fY, fZ);
								}
								
								//Get data out of ODE...
								dOut = dBodyGetPosition(x->bodies[objNumb]);
								
								//Extract the values, and put into output...
								//post("Updated matrices...");
								*(outData + ID_PARTICLE_ID*outStride[0] + i2*outStride[1]) = (double) objNumb;
								*(outData + ID_CHANGE*outStride[0] + i2*outStride[1]) = 0;
								*(outData + ID_LOCATION_X*outStride[0] + i2*outStride[1]) = dOut[0];
								*(outData + ID_LOCATION_Y*outStride[0] + i2*outStride[1]) = dOut[1];
								*(outData + ID_LOCATION_Z*outStride[0] + i2*outStride[1]) = dOut[2];
								//*(outData + ID_MASS*outStride[0] + i2*outStride[1]) = x->mass[objNumb];
								
								if (inMatrixInfo.dim[0] >= ID_FORCE_Z + 1)
								{
									*(outData + ID_FORCE_X*outStride[0] + i2*outStride[1]) = fX;
									*(outData + ID_FORCE_Y*outStride[0] + i2*outStride[1]) = fY;
									*(outData + ID_FORCE_Z*outStride[0] + i2*outStride[1]) = fZ;
								}
								
								
								if (inMatrixInfo.dim[0] >= ID_QUATERNION_Z + 1)
								{
									dOut = dBodyGetQuaternion(x->bodies[objNumb]);
									
									*(outData + ID_QUATERNION_A*outStride[0] + i2*outStride[1]) = dOut[0];
									*(outData + ID_QUATERNION_X*outStride[0] + i2*outStride[1]) = dOut[1];
									*(outData + ID_QUATERNION_Y*outStride[0] + i2*outStride[1]) = dOut[2];
									*(outData + ID_QUATERNION_Z*outStride[0] + i2*outStride[1]) = dOut[3];
								}
								
								
								if (inMatrixInfo.dim[0] >= ID_LINEAR_Z + 1)
								{
									dOut = dBodyGetLinearVel(x->bodies[objNumb]);
									
									*(outData + ID_LINEAR_X*outStride[0] + i2*outStride[1]) = dOut[0];
									*(outData + ID_LINEAR_Y*outStride[0] + i2*outStride[1]) = dOut[1];
									*(outData + ID_LINEAR_Z*outStride[0] + i2*outStride[1]) = dOut[2];
								}
								
								
								if (inMatrixInfo.dim[0] >= ID_ANGLE_Z + 1)
								{
									dOut = dBodyGetAngularVel(x->bodies[objNumb]);
									
									*(outData + ID_ANGLE_X*outStride[0] + i2*outStride[1]) = dOut[0];
									*(outData + ID_ANGLE_Y*outStride[0] + i2*outStride[1]) = dOut[1];
									*(outData + ID_ANGLE_Z*outStride[0] + i2*outStride[1]) = dOut[2];
								}
								

							}
							
							//Ok, we've gone through each object, now, do we have a second matrix from which
							//we have more processing to do?
							if (forceMatrix)
							{
								//Force each item; find it, and apply the velocity that it is due.
								int i;
								post("Computing force-field");
								for (i=0; i<MAX_RIGID_BODY; i++)
								{
									if (x->bodies[i] != NULL)
									{
										long xDim, yDim, zDim;
										double xMin, xMax, yMin, yMax, zMin, zMax;
										double nX, nY, nZ;
										
										double d1X, d2X;
										double d1Y, d2Y;
										double d1Z, d2Z;
										
										double *force1, *force2;
										double fX, fY, fZ;
										long indX, indY, indZ;
										
										//Stride for x,y,z and for force x,y,z
										long strideX, strideY, strideZ;
									
										const double *dLoc;
										
										//Extract stride
										strideX = forceMatrixInfo.dimstride[0]/8;
										strideY = forceMatrixInfo.dimstride[1]/8;
										strideZ = forceMatrixInfo.dimstride[2]/8;
									
										//Compute location	
										dLoc = dBodyGetPosition(x->bodies[i]);
										
										//Get the mins/maxs
										xMin = x->limits[0];
										xMax = x->limits[1];
										yMin = x->limits[2];
										yMax = x->limits[3];
										zMin = x->limits[4];
										zMax = x->limits[5];
										
										//Extract the dimensions
										xDim = forceMatrixInfo.dim[0];
										yDim = forceMatrixInfo.dim[1];
										zDim = forceMatrixInfo.dim[2];
										
										//Convert the x/y/z to coordinates in the matrix.
										nX = ((dLoc[0] - xMin)/(xMax-xMin)) * ((double)xDim);
										nY = ((dLoc[1] - yMin)/(yMax-yMin)) * ((double)yDim);
										nZ = ((dLoc[2] - zMin)/(zMax-zMin)) * ((double)zDim);
										
										//Figure out how much to take of each force.
										d1X = nX - (long)nX;
										d1Y = nY - (long)nY;
										d1Z = nZ - (long)nZ;
										
										d2X = 1-d1X;
										d2Y = 1-d1Y;
										d2Z = 1-d1Z;
										
										//Compute first force.
										indX = (long)nX;
										indY = (long)nY;
										indZ = (long)nZ;
										
										//Make sure in range.
										if (indX < 0) indX = 0;
										if (indY < 0) indY = 0;
										if (indZ < 0) indZ = 0;
										if (indX >= xDim) indX = xDim-1;
										if (indY >= yDim) indY = yDim-1;
										if (indZ >= zDim) indZ = zDim-1;
										
										//Extract from matrix.
										force1 = forceMatrixData + indX*strideX + indY*strideY + indZ*strideZ;
										
										//Compute second force.
										indX = (long)nX+1;
										indY = (long)nY+1;
										indZ = (long)nZ+1;
										
										//Make sure in range.
										if (indX < 0) indX = 0;
										if (indY < 0) indY = 0;
										if (indZ < 0) indZ = 0;
										if (indX >= xDim) indX = xDim-1;
										if (indY >= yDim) indY = yDim-1;
										if (indZ >= zDim) indZ = zDim-1;
										
										//Extract from matrix.
										force2 = forceMatrixData + indX*strideX + indY*strideY + indZ*strideZ;
										
										//Compute total.
										fX = force1[0]*d2X + force2[0]*d1X;
										fY = force1[1]*d2Y + force2[1]*d1Y;
										fZ = force1[2]*d2Z + force2[2]*d1Z;
										
										//Apply the force.
										dBodyAddForce(x->bodies[i], fX, fY, fZ);
									}
								}
							}
							
							//post("%i %i -- %i %i", outMatrixInfo.dimstride[0], outMatrixInfo.dimstride[1],
							//					outMatrixInfo.dim[0], outMatrixInfo.dim[1]);
						}
					}
					else
					{
						error("tml.ode.core: Not enough data.  Try 6/9/13/16/19 for first dimension!");
						err = JIT_ERR_GENERIC;
					}
				}
				else
				{
					error("tml.ode.core: Exact number of dimensions should be 2, and number of planes should be 1!");
					err = JIT_ERR_GENERIC;
				}
			}
			else
			{
				error("tml.ode.core: Pass in float64 data please.  For inputs & outputs!");
				if (outMatrixInfo.type == _jit_sym_float64)
					error("tml.ode.core: Output is float64");
				else if (outMatrixInfo.type == _jit_sym_float32)
					error("tml.ode.core: Output is float32");
				else if (outMatrixInfo.type == _jit_sym_char)
					error("tml.ode.core: Output is character");
				else if (outMatrixInfo.type == _jit_sym_long)
					error("tml.ode.core: Output is long");
				err = JIT_ERR_GENERIC;
			}
		}
		else
		{
			error("tml.ode.core: A pointer was NULL when it should not have been NULL");
			err= JIT_ERR_GENERIC;
		}
		
		tml_ode_core_collide(x, inputs, outputs);
	}
	else
		return JIT_ERR_INVALID_PTR;
	
	return err;
}



t_jit_err tml_ode_core_gravity_set(t_tml_ode_core *x, void *attr, long argc, t_atom *argv)
{
	//long i;
	
	if (argc != 3)
	{
		error("tml.ode.core: gravity must exactly have 3 inputs... x, y, and z!!!");
		return JIT_ERR_GENERIC;
	}
	
	//This works, simply jit_atom_getfloat doesn't.... go figure.
	jit_atom_arg_getfloat(x->gravity+0, 0, 1, argv);
	jit_atom_arg_getfloat(x->gravity+1, 1, 2, argv);
	jit_atom_arg_getfloat(x->gravity+2, 2, 3, argv);
	
	//post("For your information: %f %f %f", x->gravity[0], x->gravity[1], x->gravity[2]);
	
	//Is the gravity FN ok?
	if (dWorldSetGravity != NULL)
		dWorldSetGravity(x->ode_world, x->gravity[0], x->gravity[1], x->gravity[2]);
	else
		post("ODE Gravity function seems to be missing, so I can't set the gravity.  Your objects are safely free-floating.");
	x->gravityCount = 3;
	
	return JIT_ERR_NONE;
}


t_jit_err tml_ode_core_limits_set(t_tml_ode_core *x, void *attr, long argc, t_atom *argv)
{
	long i;
	
	if (argc != 6)
	{
		error("tml.ode.core: limits must exactly have 6 inputs... x-min, x-max, y-min, y-max, z-min and z-max!!!");
		return JIT_ERR_GENERIC;
	}
	
	//This works, simply jit_atom_getfloat doesn't.... go figure.
	for (i=0;i<6;i++)
		jit_atom_arg_getfloat(x->limits+i, i, i+1, argv);
	
	x->limitCount = 6;
	
	return JIT_ERR_NONE;
}


t_jit_err tml_ode_core_stepSize_set(t_tml_ode_core *x, void *attr, long argc, t_atom *argv)
{
	float ss;

	if (argc != 1)
	{
		error("tml.ode.core: Step size is a scalar");
		return JIT_ERR_GENERIC;
	}
	
	//Make sure that the step size, is a positive number,  greater than 0.1..
	jit_atom_arg_getfloat(&ss, 0, 1, argv);
	
	x->stepSize = ss;
	
	return JIT_ERR_NONE;
}


t_jit_err tml_ode_core_useQuickStep_set(t_tml_ode_core *x, void *attr, long argc, t_atom *argv)
{
	long ss;
	
	if (argc != 1)
	{
		error("tml.ode.core: Quick Step is a scalar!");
		return JIT_ERR_GENERIC;
	}
	
	//Make sure that the quickStep is either 0 or 1.
	jit_atom_arg_getlong(&ss, 0, 1, argv);
	
	if (ss != 0 && ss != 1)
	{
		error("tml.ode.core: Quick step is either 0 or 1.  0=disabled, 1=enabled.");
		return JIT_ERR_GENERIC;
	}
	
	x->useQuickStep = ss;
	
	return JIT_ERR_NONE;

	return JIT_ERR_NONE;
}
