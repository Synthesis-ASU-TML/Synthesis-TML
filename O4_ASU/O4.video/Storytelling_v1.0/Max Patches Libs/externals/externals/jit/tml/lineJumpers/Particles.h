/*
 *  Particles.h
 *  jit.tml.lineJumpers
 *
 */
 
 #include "Vector3.h"
 #include <stdio.h>

//Defines the behavior of a single particle.  Also, all the methods needed
//to give a destination, and find the starting point.
class Particles
{
public:
	Particles() : isJumping(false), collideWith(NULL) {}

	//Methods to manipulate the particle
	void onFrame();
	
	//Randomize the forces
	void randomizeAccel(int xMin, int xMax, int yMin, int yMax);

	//Given the current forces, try to get to the current position.
	void slowTo(int x, int y);
	
	//We collided with a particle!?  What do we do!?!
	void onCollide(Particles *with);

	//For easier access
	
	bool isJumping;
	
public:
	Vector3 pos;		//Location of the particle
	Vector3 vel;		//Velocity of the particle
	
	Vector3 accl;		//Sums of all the accelerations on the particle.
						// (per-particle for special effects)
	
	int steps;			//Number of steps until particle is done.
	Vector3 endPos;		//End position for the particle.
	
	//If there is a particle here - then this value is set.  We use this
	//for inter-particle collisions.
	Particles *collideWith;
};
