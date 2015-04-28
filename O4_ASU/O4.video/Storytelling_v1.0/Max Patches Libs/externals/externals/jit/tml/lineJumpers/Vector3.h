/*
 *  Vector3.h
 *  jit.tml.lineJumpers
 *
 */


class Vector3
{
	public:
		Vector3(float x=0, float y=0);
		
		void set(float in_x, float in_y);
		
		Vector3 &operator+=(Vector3 &rhs);
		Vector3 &operator-=(Vector3 &rhs);
	
		float x, y;			//Public... we don't really care...
	private:
};
