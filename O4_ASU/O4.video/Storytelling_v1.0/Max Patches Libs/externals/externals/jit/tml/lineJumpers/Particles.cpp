/*
 *  Particles.cpp
 *  jit.tml.lineJumpers
 *
 */

#include "Particles.h"
#include <stdlib.h>

void Particles::onFrame()
{
	if (steps > 0 || (!isJumping && pos.y >= 0))
	{
		steps--;
		pos += vel;
		vel += accl;
	}
}


void Particles::randomizeAccel(int xMin, int xMax, int yMin, int yMax)
{
	int xD = xMax - xMin;
	accl.x = rand()%(xD  * 100);
	accl.x += xMin * 100;
	accl.x /= 1000;
	
	int yD = yMax - yMin;
	accl.y = rand()%(yD  * 100);
	accl.y += yMin * 100;
	accl.y /= 1000;
}


void Particles::onCollide(Particles *with)
{
	if (!isJumping)
	{
		if (!with->isJumping)
		{
			with->vel.x += vel.x*0.5f;
			with->vel.y += vel.y*0.5f;
		}
		
		vel.x *= -0.5f;
		vel.y *= -0.5f;
		
	}
}

void Particles::slowTo(int x, int y)
{
	vel.x = 0;
	vel.y = 0;
	steps = 0;
	
	Vector3 curPt(x,y);
	
	vel.x = 0;
	vel.y = 0;
	
	while (curPt.y > 0 && steps < 1000)
	{
		curPt -= vel;
		vel -= accl;
		steps++;
	}
	
	pos.x = curPt.x;
	pos.y = curPt.y;
	
	isJumping = true;
}
