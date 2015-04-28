/*
 *  fluid_cpu.h
 *  FluidApp
 *
 */

#ifndef FLUID_CPU_H
#define FLUID_CPU_H
#include "fluid_pvt.h"
#include <math.h>

#define ADVECT_DIST		64

////////////////////////////////////////////////////////////////////////////////
//
//			The actual simulation method prototypes
//

void fluid_advection_stam_velocity(fluid *in_f, int rowID, pvt_fluidMode *mode);

void fluid_advection_mccormack_repos(fluid *in_f, int rowID, pvt_fluidMode *mode);

void fluid_gatherVel(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_scatterVel(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_repos(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_reposVel(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_advection_stam_repos(fluid *in_f, const int y, pvt_fluidMode *mode);
void fluid_genPressure(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_genPressure_red(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_genPressure_black(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_genPressure_dens(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_genPressure_densfix(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_applyPressure(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_viscosity(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_viscosity_rb(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_vorticity_apply(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_vorticity_curl(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_dampen(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_video_dens2char(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_video_dens2char_x(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_video_temp2char(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_input_vel2float(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_input_vel2float_scale(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_input_char2dens_scale(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_input_char2dens(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_input_float2vel_scale(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_input_float2vel(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_advection_fwd_velocity(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_advection_fwd_dens(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_advection_stam_velocity_npt(fluid *in_f, int y, pvt_fluidMode *mode);


void fluid_advection_fwd_generate_repos(fluid *in_f, int y, pvt_fluidMode *mode);
void fluid_advection_fwd_repos(fluid *in_f, int y, pvt_fluidMode *mode);

void fluid_force_heat(fluid *in_f, int y, pvt_fluidMode *mode);
#endif
