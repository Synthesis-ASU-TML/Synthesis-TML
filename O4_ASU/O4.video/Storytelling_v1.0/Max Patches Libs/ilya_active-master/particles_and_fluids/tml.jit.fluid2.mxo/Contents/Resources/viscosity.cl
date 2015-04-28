//Computes the viscosity... yet again!
kernel void main(	read_only image2d_t in_velX,
					write_only image2d_t out_velX,
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
	float4 curVelX = read_imagef(in_velX, s, p);
	
	//Top/bottom (simply negate)
	float4 prevVelX, nextVelX;
	if (p.y == 0)
		prevVelX = -curVelX;
	else
		prevVelX = read_imagef(in_velX, s, p-shiftY);
	
	if (p.y == get_image_height(in_velX)-1)
		nextVelX = -curVelX;
	else
		nextVelX = read_imagef(in_velX, s, p+shiftY);
	
	//Left and right are special...
	float4 leftVelX, rightVelX;
	if (p.x == 0)
		leftVelX.x = -curVelX.x;
	else
		leftVelX.x = read_imagef(in_velX, s, p-shiftX).w;
	
	if (p.x == get_image_width(in_velX)-1)
		rightVelX.w = -curVelX.w;
	else
		rightVelX.w = read_imagef(in_velX, s, p+shiftX).x;
	
	//Assume compiler is somewhat smart...
	leftVelX.yzw = curVelX.xyz;
	rightVelX.xyz = curVelX.yzw;
	
	//And do the kernel...
	curVelX = (curVelX*alpha + prevVelX + nextVelX + leftVelX + rightVelX)*beta;
	write_imagef(out_velX, p, curVelX);
}
