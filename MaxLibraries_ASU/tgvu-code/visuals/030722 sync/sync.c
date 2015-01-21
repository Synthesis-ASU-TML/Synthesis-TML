#include <stdio.h>
#include <math.h>

typedef struct {
    float freq;
    float phase;
} Osc;

int main()
{



    return 0;
}

int forceStep(Osc *so, Osc *fo, float cpl)
{
    float dp;

    // calculate phase shift
    dp = so->freq + cpl * sin(so->phase - fo->phase);
    
    // phase increment
    so->phase += dp;
    fo->phase += fo->freq;

    // phase adjustment
    if(so->phase < 0) so->phase += M_PI;
    else if(so->phase > M_PI) so->phase -= M_PI;

    // return 1(phase locked), 0(phase unlocked)
    return ((dp - fo->freq) == 0.0) ? 1 : 0;
}
