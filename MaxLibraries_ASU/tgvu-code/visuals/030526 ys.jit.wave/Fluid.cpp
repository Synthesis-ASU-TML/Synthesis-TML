struct Vector3D {
    float x, y, z;
    Vector3D& set(float r, float s, float t){
	x = r;
	y = s;
	z = t;
	return (*this);
    }
};

// Fluid
class Fluid {
  private:
    long width;
    long height;
    Vector3D *buffer[2];
    long renderBuffer;
    Vector3D *normal;
    Vector3D *tangent;
    float k1, k2, k3;

  public:
    Fluid(long n, long m, float d, float t, float c, float mu);
    ~Fluid();
    void Evaluate();
};

Fluid::Fluid(long n, long m, float d, float t, float c, float mu){
    width = n;
    height = m;
    long count = n * m;
    buffer[0] = new Vector3D[count];
    buffer[1] = new Vector3D[count];
    renderBuffer = 0;
    normal = new Vector3D[count];
    tangent = new Vector3D[count];

    // precompute constants for Equation
    float f1 = c * c * t * t / (d * d);
    float f2 = 1.0f / (mu * t + 2);
    k1 = (4.0f - 8.0f * f1) * f2;
    k2 = (mu * t - 2) * f2;
    k3 = 2.0f * f1 * f2;

    // initialize Buffers
    long a = 0;
    for(long j=0; j<m; j++){
	float y = d * j;
	for(long i=0; i<n; i++){
	    buffer[0][a].set(d*i, y, 0.0f);
	    buffer[1][a] = buffer[0][a];
	    normal[a].set(0.0f, 0.0f, 2.0f*d);
    	    tangent[a].set(2.0f*d, 0.0f, 0.0f);
	    a++;
	}
    }
}

Fluid::~Fluid(){
    delete [] tangent;
    delete [] normal;
    delete [] buffer[0];
    delete [] buffer[1];
}

void Fluid::Evaluate(){
    // apply equation
    for(long j=1; j<height-1; j++){
	const Vector3D *crnt = buffer[renderBuffer] + j * width;
	Vector3D *prev = buffer[1-renderBuffer] + j * width;

	for(long i=1; i<width; i++){
	    prev[i].z = k1*crnt[i].z + k2*prev[i].z +
		k3*(crnt[i+1].z + crnt[i-1].z +
		    crnt[i+width].z + crnt[i-width].z);
	}
    }

    // swap buffers
    renderBuffer = 1 - renderBuffer;

    // calcurate normals and tangents
    for(long j=1; j<height; j++){
	const Vector3D *next = buffer[renderBuffer] + j * width;
	Vector3D *nrml = normal + j * width;
	Vector3D *tang = tangent + j * width;
	for(long i=1; i<width-1; i++){
	    nrml[i].x = next[i-1].z - next[i+1].z;
	    nrml[i].y = next[i-width].z - next[i+width].z;
	    tang[i].z = next[i+1].z - next[i-1].z;
	}
    }
}
