/*
 *  jit.fluid.h
 *  jit.tml.fluid2
 *
 */

typedef struct jitFluid jitFluid;

void addData(jitFluid *o, unsigned char*d, float *v, int vw, int vh, float vb, float db);

void getData(jitFluid *o, unsigned char*d);

jitFluid *fluidInit();
void fluidStop(jitFluid*a);

void fluidFrameEnd(jitFluid*a);
void fluidFrameStart(jitFluid*a);

void paramMess(jitFluid*o, float visc, float vort, float time, float dfade, float vfade,
				float gangle, float gmag, float tmag, int outWidth, int outHeight, int outSY,
				float pScale[], float dScale[], float pMult[],
				float vMult[], float vScale[],
				float ivMult[], float ivScale[], float ipMult[], float ipScale[]);

int fluidVelWidth(jitFluid *a);
int fluidVelHeight(jitFluid *a);
float *fluidVelData(jitFluid *a);
