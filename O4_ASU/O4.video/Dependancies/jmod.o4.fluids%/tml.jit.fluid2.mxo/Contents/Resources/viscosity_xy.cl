//Computes the viscosity... yet again!
kernel void main(	read_only image2d_t in_velX,
					write_only image2d_t out_velX,
					read_only image2d_t in_velY,
					write_only image2d_t out_velY,
					float alpha,
					float beta)
{
	int2 p = (int2)(get_global_id(0), get_global_id(1));
	
	int2 shiftX = (int2)(1,0);
	int2 shiftY = (int2)(0,1);
	
	sampler_t s =	CLK_FILTER_NEAREST |
					CLK_ADDRESS_NONE |
					CLK_NORMALIZED_COORDS_FALSE;
	
	//All hail swizzles?!  Actually, reformatting the data seems like the
	//best course of action...
	
	//General case first...
	float4 curVel = read_imagef(in_velX, s, p);
	
	//Top/bottom (simply negate)
	float4 prevVel, nextVel;

	prevVel = read_imagef(in_velX, s, p-shiftY);


	nextVel = read_imagef(in_velX, s, p+shiftY);
	
	//Left and right are special...
	float4 leftVel, rightVel;

	leftVel.x = read_imagef(in_velX, s, p-shiftX).w;
	leftVel.yzw = curVel.xyz;

	rightVel.w = read_imagef(in_velX, s, p+shiftX).x;
	rightVel.xyz = curVel.yzw;
	leftVel += rightVel;
	
	
	//And do the kernel...
	curVel = (curVel*alpha + prevVel + nextVel + leftVel + rightVel)*beta;
	write_imagef(out_velX, p, curVel);
	
	
	//All hail swizzles?!  Actually, reformatting the data seems like the
	//best course of action...
	
	//General case first...
	curVel = read_imagef(in_velY, s, p);
	
	//Top/bottom (simply negate)

	prevVel = read_imagef(in_velY, s, p-shiftY);


	nextVel = read_imagef(in_velY, s, p+shiftY);
	
	//Left and right are special...

	leftVel.x = read_imagef(in_velY, s, p-shiftX).w;


	rightVel.w = read_imagef(in_velY, s, p+shiftX).x;
	
	//Assume compiler is somewhat smart...
	leftVel.yzw = curVel.xyz;
	rightVel.xyz = curVel.yzw;
	
	//And do the kernel...
	curVel = (curVel*alpha + prevVel + nextVel + leftVel)*beta;
	write_imagef(out_velY, p, curVel);
}
