/*
 *  Vector3.cpp
 *  jit.tml.lineJumpers
 *
 */

#include "Vector3.h"

Vector3::Vector3(float in_x, float in_y)
: x(in_x)
, y(in_y)
{
}


void Vector3::set(float in_x, float in_y)
{
	x = in_x;
	y = in_y;
}


Vector3& Vector3::operator+=(Vector3 &rhs)
{
	x += rhs.x;
	y += rhs.y;
	
	return *this;
}

Vector3& Vector3::operator-=(Vector3 &rhs)
{
	x -= rhs.x;
	y -= rhs.y;
	
	return *this;
}