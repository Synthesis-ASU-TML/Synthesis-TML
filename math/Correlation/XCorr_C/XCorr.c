#include "XCorr.h"
#include "fastsin.h"
#include <Math.h>
#include <stdio.h>
#include <stdlib.h>

/*-----------------------------------------------------------------------*/
typedef struct xcorr_quaternion_signal_struct
{
  xcorr_sample_t *w, *x, *y, *z;
}xcorr_quaternion_signal_t;

/*-----------------------------------------------------------------------*/
xcorr_quaternion_signal_t* xcorr_new_quternion_signal(unsigned n);
xcorr_quaternion_signal_t* xcorr_destroy_quaternion_signal(xcorr_quaternion_signal_t* self);

/*-----------------------------------------------------------------------*/
struct opaque_xcorr_struct
{
  unsigned input_size;
  double   overlap_percent;
  unsigned input_counter;
  unsigned overlap_counter;
  int      should_normalize;
  int      should_polar_output;
  double   sample_interval;
  unsigned prev_sample_time;
  unsigned analysis_size;
  unsigned one_minus_overlap_num_samples;
  xcorr_sample_type_t sample_type;

  xcorr_quaternion_signal_t* input_a;
  xcorr_quaternion_signal_t* input_b;
  xcorr_quaternion_signal_t* analysis_a;
  xcorr_quaternion_signal_t* analysis_b;
  
  xcorr_result_t correlation_result;
};

/*-----------------------------------------------------------------------*/
void xcorr_correlate(XCorr* self);
void xcorr_complex_frequency_domain_correlate(XCorr* self);
void xcorr_quaternion_frequency_domain_correlate(XCorr* self);
void xcorr_rotate_output(XCorr* self);
void xcorr_fft_decimation_in_time(xcorr_sample_t* r, xcorr_sample_t* i, unsigned N, int is_inverse);
void xcorr_fft_decimation_in_frequency(xcorr_sample_t* r, xcorr_sample_t* i, unsigned N, int is_inverse);
void xcorr_copy_inputs_to_analysis_buffers(XCorr* self);
void xcorr_output_cartesian_to_polar(XCorr* self);
void xcorr_normalize_independently(XCorr* self);
void xcorr_real_normalize_signal(xcorr_sample_t* signal, unsigned n);
unsigned xcorr_nearest_power_of_two(unsigned n);
unsigned xcorr_array_index_of_largest_item(xcorr_sample_t* array, unsigned n);

/*-----------------------------------------------------------------------*/
xcorr_quaternion_signal_t* xcorr_new_quternion_signal(unsigned n)
{
  xcorr_quaternion_signal_t* self;
  self = calloc(1, sizeof(*self));
  if(self != NULL)
    {
      self->w = calloc(n, sizeof(*(self->w)));
      if(self->w == NULL) return xcorr_destroy_quaternion_signal(self);

      self->x = calloc(n, sizeof(*(self->x)));
      if(self->x == NULL) return xcorr_destroy_quaternion_signal(self);
      
      self->y = calloc(n, sizeof(*(self->y)));
      if(self->y == NULL) return xcorr_destroy_quaternion_signal(self);
      
      self->z = calloc(n, sizeof(*(self->z)));
      if(self->z == NULL) return xcorr_destroy_quaternion_signal(self);
    }
  return self;
}

/*-----------------------------------------------------------------------*/
xcorr_quaternion_signal_t* xcorr_destroy_quaternion_signal(xcorr_quaternion_signal_t* self)
{
  if(self != NULL)
    {
      if(self->w != NULL)
        free(self->w);
      if(self->x != NULL)
        free(self->x);
      if(self->y != NULL)
        free(self->y);
      if(self->z != NULL)
        free(self->z);
      free(self);
    }
  return (xcorr_quaternion_signal_t*) NULL;
}

/*-----------------------------------------------------------------------*/
XCorr*          xcorr_new                            (unsigned input_size, double overlap_percent)
{
  XCorr* self = calloc(1, sizeof(*self));
  if(self != NULL)
    {
      self->input_size          = input_size;
      self->analysis_size       = xcorr_nearest_power_of_two(self->input_size);
      self->should_normalize    = 0;
      self->should_polar_output = 1;

      self->input_a    = xcorr_new_quternion_signal(self->input_size);
      self->input_b    = xcorr_new_quternion_signal(self->input_size);
      self->analysis_a = xcorr_new_quternion_signal(self->analysis_size);
      self->analysis_b = xcorr_new_quternion_signal(self->analysis_size);

      if((self->input_a    == NULL) ||
         (self->input_b    == NULL) || 
         (self->analysis_a == NULL) ||
         (self->analysis_b == NULL))
        return xcorr_destroy(self); 
      
      xcorr_set_overlap(self, overlap_percent);
    }
}

/*-----------------------------------------------------------------------*/
XCorr*          xcorr_destroy                        (XCorr* self)
{
  if(self != NULL)
    {
      if(self->input_a    != NULL)
        xcorr_destroy_quaternion_signal(self->input_a);
      if(self->input_b    != NULL)
        xcorr_destroy_quaternion_signal(self->input_b);
      if(self->analysis_a != NULL)
        xcorr_destroy_quaternion_signal(self->analysis_a);
      if(self->analysis_b != NULL)
        xcorr_destroy_quaternion_signal(self->analysis_b);
        
      free(self);
    }
  return (XCorr*) NULL;  
}

/*-----------------------------------------------------------------------*/
xcorr_result_t* xcorr_feed_samples(XCorr* self, xcorr_sample_t* sample_a, xcorr_sample_t* sample_b, xcorr_sample_type_t sample_type)
{
  xcorr_result_t* result = NULL;
  unsigned i = self->input_counter;
  
  switch(sample_type)
    {
      case XCORR_TYPE_QUATERNION:
  	    self->input_a->z[i] = sample_a[3];
        self->input_b->z[i] = sample_b[3];
        //cascade
  	  case XCORR_TYPE_PURE_QUATERNION:
  	    self->input_a->y[i] = sample_a[2];
        self->input_b->y[i] = sample_b[2];
  	    //cascade
      case XCORR_TYPE_COMPLEX:
  	    self->input_a->x[i] = sample_a[1];
        self->input_b->x[i] = sample_b[1];
        //cascade
  	  case XCORR_TYPE_REAL:
  	    self->input_a->w[i] = sample_a[0];
        self->input_b->w[i] = sample_b[0];
        break;
  	  default: break;
    }
  

	  //update sample rate
    //var t  = max.time;
    //var dt = t - prev_sample_time;
    //if(dt < 500) sample_interval = (sample_interval * 0.9) + (dt * 0.1);
    //prev_sample_time = t;
    
    ++self->input_counter  ; self->input_counter   %= self->input_size;
    ++self->overlap_counter; self->overlap_counter %= self->one_minus_overlap_num_samples;

    if(self->input_counter == 0)
      {
        result = &(self->correlation_result);
        self->sample_type = result->sample_type = sample_type;
        
        xcorr_correlate(self);
        result->sample_interval = self->sample_interval;
        result->frequency = 0;
        result->lag_time = xcorr_array_index_of_largest_item(result->samples[0], self->analysis_size);
        result->lag_time = ((result->lag_time) - (self->analysis_size * 0.5)) * result->sample_interval;
      }
    return result;
}

/*-----------------------------------------------------------------------*/
unsigned        xcorr_get_input_size                 (XCorr* self)
{
  return self->input_size;
}

/*-----------------------------------------------------------------------*/
unsigned        xcorr_get_result_size                (XCorr* self)
{
  return self->analysis_size;
}

/*-----------------------------------------------------------------------*/
void            xcorr_set_should_produce_polar_output(XCorr* self, int should)
{
  self->should_polar_output = (should != 0);
} 
/*-----------------------------------------------------------------------*/
int             xcorr_get_should_produce_polar_output(XCorr* self)
{
  return self->should_polar_output;
} 

/*-----------------------------------------------------------------------*/
void            xcorr_set_should_normalize           (XCorr* self, int should)
{
  self->should_normalize = (should != 0);
} 

/*-----------------------------------------------------------------------*/
int             xcorr_get_should_normalize           (XCorr* self)
{
  return self->should_normalize;
} 

/*-----------------------------------------------------------------------*/
void            xcorr_set_overlap                    (XCorr* self, double percent)
{
  if(percent > 100) percent = 100;
  if(percent < 0)   percent = 0;
  percent *= 0.01;
  percent = 1.0 - percent;
  percent *= self->input_size;
  
  if(percent < 1) percent = 1;
  if(percent > self->input_size) percent = self->input_size;
  
  self->one_minus_overlap_num_samples = (unsigned)percent;
} 

/*-----------------------------------------------------------------------*/
double          xcorr_get_overlap                    (XCorr* self)
{
  return (1 - (self->one_minus_overlap_num_samples / self->input_size)) * 100;
} 

/*-----------------------------------------------------------------------*/
void            xcorr_clear                          (XCorr* self)
{
  unsigned i;
  
  xcorr_quaternion_signal_t* a = self->input_a;
  xcorr_quaternion_signal_t* b = self->input_b;
  
  for(i=0; i<self->input_size; i++)
    {
      a->w[i] = 
      a->x[i] = 
      a->y[i] = 
      a->z[i] =
      b->w[i] = 
      b->x[i] = 
      b->y[i] = 
      b->z[i] = 0;
    }
} 

/*-----------------------------------------------------------------------*/
void xcorr_correlate(XCorr* self)
{
  //copy
  xcorr_copy_inputs_to_analysis_buffers(self);

  //normalize
  if(self->should_normalize)
    xcorr_normalize_independently(self);

  //forward Fourier transform
  xcorr_fft_decimation_in_frequency(self->analysis_a->w, self->analysis_a->x, self->analysis_size, 0);
  xcorr_fft_decimation_in_frequency(self->analysis_b->w, self->analysis_b->x, self->analysis_size,0);
  if(self->sample_type >= XCORR_TYPE_PURE_QUATERNION)
    {
      xcorr_fft_decimation_in_frequency(self->analysis_a->y, self->analysis_a->z, self->analysis_size, 0);
      xcorr_fft_decimation_in_frequency(self->analysis_b->y, self->analysis_b->z, self->analysis_size, 0);    
    }
  
  //perform correlation
  if(self->sample_type <= XCORR_TYPE_COMPLEX)
   xcorr_complex_frequency_domain_correlate(self);
  else //XCORR_TYPE_QUATERNION
    xcorr_quaternion_frequency_domain_correlate(self);

  //inverse Fourier transform
  xcorr_fft_decimation_in_time(self->analysis_a->w, self->analysis_a->x, self->analysis_size, 1);
  if(self->sample_type >= XCORR_TYPE_PURE_QUATERNION)
    xcorr_fft_decimation_in_time(self->analysis_a->y, self->analysis_a->z, self->analysis_size, 1);
    
  //rotate so t=0 occurs in the centre of the data
  xcorr_rotate_output(self);

  if(self->should_polar_output)
    xcorr_output_cartesian_to_polar(self);
}

/*-----------------------------------------------------------------------*/
void xcorr_complex_frequency_domain_correlate(XCorr* self)
{
  // multiply a by conjugate of b
  // (a + bi) * (c - di) = 
  // ac - adi + bci + bd =
  // (ac + bd) + (bc - ad)i
  
  unsigned i;
  xcorr_sample_t temp;
  xcorr_sample_t *a_w = self->analysis_a->w;
  xcorr_sample_t *a_x = self->analysis_a->x;
  xcorr_sample_t *b_w = self->analysis_b->w;
  xcorr_sample_t *b_x = self->analysis_b->x;
  
  for(i=0; i<self->analysis_size; i++)
    {
      temp      = (*a_w * *b_w) + (*a_x * *b_x);
      *a_x = (*b_w * *a_x) - (*a_w * *b_x);  
      *a_w = temp;
      
      ++a_w; ++a_x; 
      ++b_w; ++b_x;
    }  
}

/*-----------------------------------------------------------------------*/
void xcorr_quaternion_frequency_domain_correlate(XCorr* self)
{
  //Efficient Implementation of Quaternion Fourier Transform, 
  //Convolution, and Correlation by 2-D Complex FFT
  //Soo-Chang Pei, Jian-Jiun Ding, Ja-Han Chang (2001)
  //
  //Section IIIA: (47), (48), (49)
  //Extended from convolution to correlation using (113), (117)
  //Here we reduce to 1D case. Note that their Type-2
  //QFT corresponds to the one implemented here,
  //and equation (47) is the decomposition into 
  //Cayley-Dickson form. 
  //
  // (a + bi)(c - di - ej - fk) + ((u + vi)j)(w - xi - yj - zk)
  // = 
  // (a + bi)(c - di - ej - fk) + (uj + vk)(w - xi - yj - zk)
  // = 
  // + ac  - adi - aej - afk
  // + bci + bd  - bek + bfj
  // + uwj + uxk + uy  - uzi
  // + vwk - vxj + vyi + vz
  // =
  // (+ac + bd + uy + vz)  + 
  // (-ad + bc - uz + vy)i +
  // (-ae + bf + uw - vx)j +
  // (-af - be + ux + vw)k 
  //
  // Note that the signals are here in bit-reversed
  // order. Interestingly, it dosen't matter.

  unsigned i;
  unsigned analysis_size_minus_one = self->analysis_size - 1;
  xcorr_sample_t a, b, c, d, e, f, u, v, w, x, y, z;
  xcorr_quaternion_signal_t* sig_a = self->analysis_a;
  xcorr_quaternion_signal_t* sig_b = self->analysis_b;
  
  for(i=0; i<self->analysis_size; i++)
    {
      a = sig_a->w[i];
      b = sig_a->x[i];
      c = sig_b->w[i];
      d = sig_b->x[i];
      e = sig_b->y[analysis_size_minus_one - i];
      f = sig_b->z[analysis_size_minus_one - i];

      u = sig_a->y[i];
      v = sig_a->z[i];
      w = sig_b->w[analysis_size_minus_one - i];
      x = sig_b->x[analysis_size_minus_one - i];
      y = sig_b->y[i];
      z = sig_b->z[i];

      sig_a->w[i] =  (a*c) + (b*d) + (u*y) + (v*z);
      sig_a->x[i] = -(a*d) + (b*c) - (u*z) + (v*y);
      sig_a->y[i] = -(a*e) + (b*f) + (u*w) - (v*x);
      sig_a->z[i] = -(a*f) - (b*e) + (u*x) + (v*w);
    }  
}

/*-----------------------------------------------------------------------*/
void xcorr_rotate_output(XCorr* self)
{
  unsigned i;
  unsigned n = self->analysis_size / 2;
  xcorr_sample_t temp;
  xcorr_quaternion_signal_t* a = self->analysis_a;
  
  for(i=0; i<n; i++)
    {
      temp = a->w[i];
      a->w[i] = a->w[i+n];
      a->w[i+n] = temp;

      temp = a->x[i];
      a->x[i] = a->x[i+n];
      a->x[i+n] = temp;
    }

  if(self->sample_type <= XCORR_TYPE_COMPLEX) return;
  
  for(i=0; i<n; i++)
    {
      temp = a->y[i];
      a->y[i] = a->y[i+n];
      a->y[i+n] = temp;

      temp = a->z[i];
      a->z[i] = a->z[i+n];
      a->z[i+n] = temp;
    }  
}

/*-----------------------------------------------------------------------*/
void xcorr_fft_decimation_in_time(xcorr_sample_t* r, xcorr_sample_t* i, unsigned N, int is_inverse)
{ 
  //takes input in bit-reversed order
  uint32_t two_pi_over_N = SIN_TWO_PI / N;
  uint32_t omega_two_pi_over_n;
  unsigned sub_transform, butterfly;
  unsigned num_sub_transforms = N, num_butterflies = 1, omega;
  xcorr_sample_t wr, wi, tempr, tempi;
  unsigned top_index = 0, bottom_index;
  
  while((num_sub_transforms >>= 1) > 0)
    {
	  top_index = 0;
      for(sub_transform=0; sub_transform<num_sub_transforms; sub_transform++)
        {
          omega = 0;
          for(butterfly=0; butterfly<num_butterflies; butterfly++)
            {
	          bottom_index        = num_butterflies + top_index;
              omega_two_pi_over_n = omega * two_pi_over_N;
              wr                  =  fastcos(omega_two_pi_over_n);
              wi                  = -fastsin(omega_two_pi_over_n);
              if(is_inverse) wi    = -wi;
              tempr = (r[bottom_index] * wr) - (i[bottom_index] * wi);
              tempi = (r[bottom_index] * wi) + (i[bottom_index] * wr);
              wr                  = r[top_index]; 
              wi                  = i[top_index];
              r[top_index]       += tempr;
              i[top_index]       += tempi;
              r[bottom_index]     = wr - tempr;
              i[bottom_index]     = wi - tempi;
              omega              += num_sub_transforms;
              top_index++;
            }
            top_index += num_butterflies;
        }
      num_butterflies <<= 1;
    }
 
    if(is_inverse)
      {
	    tempr = 1.0/N;
        for(omega=0; omega<N; omega++)
          {
            r[omega] *= tempr;
            i[omega] *= tempr;
          }
      }
}

/*-----------------------------------------------------------------------*/
void xcorr_fft_decimation_in_frequency(xcorr_sample_t* r, xcorr_sample_t* i, unsigned N, int is_inverse)
{
  //produces output in bit-reversed order
  uint32_t two_pi_over_N = SIN_TWO_PI / N;
  uint32_t omega_two_pi_over_n;
  unsigned sub_transform, butterfly;
  unsigned num_sub_transforms = 1, num_butterflies = N/2, omega;
  xcorr_sample_t wr, wi, tempr, tempi;
  unsigned top_index = 0, bottom_index;
  
  while(num_sub_transforms < N)
    {
	  top_index = 0;
      for(sub_transform=0; sub_transform<num_sub_transforms; sub_transform++)
        {
          omega = 0;
          for(butterfly=0; butterfly<num_butterflies; butterfly++)
            {
	          bottom_index        = num_butterflies + top_index;
              omega_two_pi_over_n = omega * two_pi_over_N;
              wr                  =  fastcos(omega_two_pi_over_n);
              wi                  = -fastsin(omega_two_pi_over_n);
              if(is_inverse) wi    = -wi;
              tempr               = r[top_index];
              tempi               = i[top_index];
              r[top_index]       += r[bottom_index];
              i[top_index]       += i[bottom_index];
              r[bottom_index]     = tempr - r[bottom_index];
              i[bottom_index]     = tempi - i[bottom_index];
              tempr = (r[bottom_index] * wr) - (i[bottom_index] * wi);
              tempi = (r[bottom_index] * wi) + (i[bottom_index] * wr);
              r[bottom_index]     = tempr;
              i[bottom_index]     = tempi;
              omega              += num_sub_transforms;
              top_index++;
            }
            top_index += num_butterflies;
        }
      num_sub_transforms <<= 1;
      num_butterflies    >>= 1;
    }
 
    if(is_inverse)
      {
	    tempr = 1.0/N;
        for(omega=0; omega<N; omega++)
          {
            r[omega] *= tempr;
            i[omega] *= tempr;
          }
      }
}

/*-----------------------------------------------------------------------*/
void xcorr_copy_inputs_to_analysis_buffers(XCorr* self)
{
  unsigned i, j = self->input_counter;
  unsigned n = self->input_size;
  xcorr_quaternion_signal_t* in_a = self->input_a;
  xcorr_quaternion_signal_t* in_b = self->input_b;
  xcorr_quaternion_signal_t* an_a = self->analysis_a;
  xcorr_quaternion_signal_t* an_b = self->analysis_b;
  
  for(i=0; i<n; i++)
    {
      an_a->w[i] = in_a->w[j];
      an_a->x[i] = in_a->x[j];
      an_b->w[i] = in_b->w[j];
      an_b->x[i] = in_b->x[j];
      ++j; j %= n;
    }

  if(self->sample_type <= XCORR_TYPE_COMPLEX) return;
  
  for(i=0; i<n; i++)
    {
      an_a->y[i] = in_a->y[j];
      an_a->z[i] = in_a->z[j];
      an_b->y[i] = in_b->y[j];
      an_b->z[i] = in_b->z[j];
      ++j; j %= n;
    }  
}

/*-----------------------------------------------------------------------*/
void xcorr_output_cartesian_to_polar(XCorr* self)
{
  if(self->sample_type <= XCORR_TYPE_COMPLEX)
    {
      unsigned i;
      xcorr_sample_t rho, theta;
      for(i=0; i<self->analysis_size; i++)
        {
          rho =   hypot(self->analysis_a->w[i], self->analysis_a->x[i]);
          theta = atan2(self->analysis_a->x[i], self->analysis_a->w[i]);
          self->analysis_a->w[i] = rho;
          self->analysis_a->x[i] = theta;
        }
    }
    
  else //XCORR_TYPE_QUATERNION
    {
      unsigned i;
      xcorr_sample_t q0, q1, q2, q3;

      for(i=0; i<self->analysis_size; i++)
        {
	        q0 = self->analysis_a->w[i];
          q1 = self->analysis_a->x[i];
          q2 = self->analysis_a->y[i];
          q3 = self->analysis_a->z[i];
	
	        //Euler angles
          self->analysis_a->w[i] =  sqrt  ((q0*q0) + (q1*q1) + (q2*q2) + (q3*q3));
          self->analysis_a->x[i] = -atan2 (2*(q2*q3 + q0*q1), -(q0*q0) + (q1*q1) + (q2*q2) - (q3*q3));
          self->analysis_a->y[i] = -asin  (2*(q0*q2 - q1*q3));
          self->analysis_a->z[i] =  atan2 (2*(q1*q2 + q0*q3), (q0*q0) + (q1*q1) - (q2*q2) - (q3*q3));      
          /*
          this.phi[i]   = Math.atan2 (2*(q0*q1 + q2*q3), 1 - 2*(q1*q1 + q2*q2));
          this.theta[i] = Math.asin  (2*(q0*q2 - q3*q1));
          this.psi[i]   = Math.atan2 (2*(q0*q3 + q1*q2), 1 - 2*(q2*q2 + q3*q3));
          */
        }
    }
}

/*-----------------------------------------------------------------------*/
void xcorr_normalize_independently(XCorr* self)
{
  //the input data is now in the first half of the analysis buffers
  xcorr_real_normalize_signal(self->analysis_a->w, self->input_size);
  xcorr_real_normalize_signal(self->analysis_a->x, self->input_size);
  xcorr_real_normalize_signal(self->analysis_b->w, self->input_size);
  xcorr_real_normalize_signal(self->analysis_b->x, self->input_size);

  if(self->sample_type <= XCORR_TYPE_COMPLEX) return;

  xcorr_real_normalize_signal(self->analysis_a->y, self->input_size);
  xcorr_real_normalize_signal(self->analysis_a->z, self->input_size);
  xcorr_real_normalize_signal(self->analysis_b->y, self->input_size);
  xcorr_real_normalize_signal(self->analysis_b->z, self->input_size);
}


/*-----------------------------------------------------------------------*/
void xcorr_real_normalize_signal(xcorr_sample_t* signal, unsigned n)
{
  double mean=0, standard_deviation=0;
  unsigned i;
  
  for(i=0; i<n; i++)
    mean += signal[i];
  mean /= (double)n;  

  for(i=0; i<n; i++)
    {
      signal[i] -= mean;
      standard_deviation += signal[i] * signal[i];
    }
  //there are N-1 independent observarions aside from the mean
  standard_deviation /= n - 1;
  standard_deviation = sqrt(standard_deviation);

  if(standard_deviation != 0)
    {
      for(i=0; i<n; i++)
        signal[i] /= standard_deviation;
    }
}

/*-----------------------------------------------------------------------*/
unsigned xcorr_nearest_power_of_two(unsigned n)
{
  unsigned result = 1;
  while(result < n)
    result <<= 1;
  return result;
}

/*-----------------------------------------------------------------------*/
unsigned xcorr_array_index_of_largest_item(xcorr_sample_t* array, unsigned n)
{
  xcorr_sample_t largest = array[0];
  unsigned result = 0;
  unsigned i;

  for(i=1; i<n; i++)
    {
      if(array[i] > largest)
        {
          result = i;
          largest = array[i];
        }
    }
  return result;
}

