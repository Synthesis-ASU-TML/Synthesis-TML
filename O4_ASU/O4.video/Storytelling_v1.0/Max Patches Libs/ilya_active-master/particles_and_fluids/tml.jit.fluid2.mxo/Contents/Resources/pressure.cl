//CL implementation of pressure
kernel void main(	read_only image2d_t	in_pressure,
					read_only image2d_t in_velX,
					read_only image2d_t in_velY,
					write_only image2d_t out_pressure)
{
	int2 p = (int2)(get_global_id(0), get_global_id(1));
	
	int2 shiftX = (int2)(1,0);
	int2 shiftY = (int2)(0,1);
	
	sampler_t s	=	CLK_FILTER_NEAREST |
					CLK_ADDRESS_NONE |
					CLK_NORMALIZED_COORDS_FALSE;
	
	//General case first...
	float4 curVelX = read_imagef(in_velX, s, p);
	float4 curVelY = read_imagef(in_velY, s, p);
	float4 curPressure = read_imagef(in_pressure, s, p);
	
	//Top/bottom (simply negate)
	float4 prevVelY, nextVelY;
	float4 prevPressure;

	nextVelY = read_imagef(in_velY, s, p+shiftY);
	nextVelY -= read_imagef(in_velY, s, p-shiftY);
	prevPressure = read_imagef(in_pressure, s, p-shiftY);


	prevPressure += read_imagef(in_pressure, s, p+shiftY);
	
	float4 leftVelX, rightVelX;
	float4 leftPressure;

	leftVelX.x = read_imagef(in_velX, s, p-shiftX).w;
	leftPressure.x = read_imagef(in_pressure, s, p-shiftX).w;
	leftPressure.yzw = curPressure.xyz;
	prevPressure += leftPressure;


	rightVelX.w = read_imagef(in_velX, s, p+shiftX).x;
	leftPressure.w = read_imagef(in_pressure, s, p+shiftX).x;
	leftPressure.xyz = curPressure.yzw;
	prevPressure += leftPressure;
	
	leftVelX.yzw = curVelX.xyz;
	
	rightVelX.xyz = curVelX.yzw;
	
	//Finally the math...
	curPressure = (prevPressure
					- (rightVelX - leftVelX + nextVelY)) * 0.25f;
	
	//Don't forget to write it all out!
	write_imagef(out_pressure, p, curPressure);
}
