kernel void main(	read_only image2d_t in_velX,
					read_only image2d_t in_velY,
					write_only image2d_t out_velX,
					write_only image2d_t out_velY,
					constant float timestep)
{
	sampler_t s =	CLK_FILTER_LINEAR |
					CLK_ADDRESS_CLAMP |
					CLK_NORMALIZED_COORDS_FALSE;
	
	//Essentially, repeat the same op. 4 times to move stuff around...
	float2 p = (float2)(get_global_id(0), get_global_id(1));
	int2 ip = (int2)(get_global_id(0), get_global_id(1));
	
	float4 curVelX = read_imagef(in_velX, s, p);
	float4 curVelY = read_imagef(in_velY, s, p);
	
	float4 oX = (float4)(p.x, p.x, p.x, p.x) + curVelX*timestep;
	float4 oY = (float4)(p.y, p.y, p.y, p.y) + curVelY*timestep;
	
	//Pull out the data...
	float4 rX, rY;
	rX.x = read_imagef(in_velX, s, (float2)(oX.x, oY.x)).x;
	rX.y = read_imagef(in_velX, s, (float2)(oX.y, oY.y)).y;
	rX.z = read_imagef(in_velX, s, (float2)(oX.z, oY.z)).z;
	rX.w = read_imagef(in_velX, s, (float2)(oX.w, oY.w)).w;
	
	rY.x = read_imagef(in_velY, s, (float2)(oX.x, oY.x)).x;
	rY.y = read_imagef(in_velY, s, (float2)(oX.y, oY.y)).y;
	rY.z = read_imagef(in_velY, s, (float2)(oX.z, oY.z)).z;
	rY.w = read_imagef(in_velY, s, (float2)(oX.w, oY.w)).w;
	
	//Write the data
	write_imagef(out_velX, ip, rX);
	write_imagef(out_velY, ip, rY);
}
