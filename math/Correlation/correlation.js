/*-------------------------------------------------------------------------
                    _      _   _             _    
 __ ___ _ _ _ _ ___| |__ _| |_(_)___ _ _    (_)___
/ _/ _ \ '_| '_/ -_) / _` |  _| / _ \ ' \ _ | (_-<
\__\___/_| |_| \___|_\__,_|\__|_\___/_||_(_)/ /__/
                                          |__/  
Version: 2.0 Nov 7th 2014;

Change Log:
  Version: 2.0 Nov 7th 2014
    Implement Quaternion Correlation and clean up text file.
  Version 1.1a, Nov 02 2014
    Implement Complex Correlation, rewrite and optimize everything.
    Implement a Decimation in Freq FFT to avoid bit-reversal.

-------------------------------------------------------------------------*/
/*
Perform complex signal correlation on control-rate data.

arguments: <int>sample size <float>overlap percent <symbol> window function

inlet 0 : signal a. <float> for real-valued signal or 
                    <list>  (real, imag) for complex signal
                    <list>  (x, y, x)    for pure quaternion
                    <list>  (w, x, y, z) for general quaternion

inlet 1 : signal b. <float> for real-valued signal or 
                    <list>  (real, imag) for complex signal
                    <list>  (x, y, x)    for pure quaternion
                    <list>  (w, x, y, z) for general quaternion

outlet 0: <list> real part of correlation

outlet 1: <list> imag part of correlation

outlet 2 <list> (real, imag) time-lag

outlet 3 <list> (real, imag) correlation strength

outlet 4 <list> sample rate.

public methods:

set_window_function <symbol> ('hamming' | 'hann' | 'blackman' | 'rectangle')
  set the analysis window function. rectangle by default.

set_overlap <float> (0 ~ 100) 
  the percent that each analysis frame should overlap the previous frame.
  default 87.5% (7/8).

set_should_normalize <int> (0 ~ 1) 
  if 1, each analysis frame of each signal will be normalized prior to 
  correlation. this is done by subtracting out the mean and multiplying 
  by the standard deviation. default 0.

set_should_produce_polar_output <int> (0 ~ 1) 
  if 1, output will be in polar rather than rectangular form. default 1.

clear
  zero the input buffers (so you dont correlate with old data)

Discussion:
This makes use of the convolution property which says 
the the Fourier Transform converts convolution
into multiplication, and correlation into cojugation
and multiplication. So, the signals are windowed, 
transformed, multiplied, and inverse-transformed.

This implementation is optimized to avoid explicit bit-
reversal by using a decimation-in-frequency form of fft
for forward transform and a decimation-in-time form for
inverse. The signal multiplication is done in bit-reversed
order.

The Max / Javascript implementation of sin() is more efficient
than anything that can be implemented in javascript. It was
tested to run 50,000 times with arguments ranging from 0 
to 2pi in about 32 milliseconds. An unrolled Taylor-series
js implementation calculating 5 terms (including x^9 / 9!) 
tested under the same conditions ran in about 45 milliseconds.
A table lookup in 4096-point array using 32-bit fixed-point 
angle ran in about 34 milliseconds. Those functions are
included at the bottom of this file for reference.

Made by Michael Krzyzaniak at the Synthesis Center
Under the direction of Sha Xin Wei, at Arizona State
University's School of Arts, Media + Engineering 
in Fall of 2014.

mkrzyzan@asu.edu
*/

/*------_-_---_------_-_---------_---_-------------------------------------        
(_)_ _ (_) |_(_)__ _| (_)_____ _| |_(_)___ _ _  
| | ' \| |  _| / _` | | |_ / _` |  _| / _ \ ' \ 
|_|_||_|_|\__|_\__,_|_|_/__\__,_|\__|_\___/_||_|
-------------------------------------------------------------------------*/
var SIGNAL_A_INLET             = 0;
var SIGNAL_B_INLET             = 1;
var NUM_INLETS                 = 2;

var R_OUTLET                   = 0;
var I_OUTLET                   = 1;
var CORRELATION_VECTOR_OUTLET  = 2;
var LAG_OUTLET                 = 3;
var SAMPLE_INTERVAL_OUTLET     = 4;
var NUM_OUTLETS                = 5;

inlets  = NUM_INLETS ;
outlets = NUM_OUTLETS;

setinletassist (SIGNAL_A_INLET, "signal A -- float{real}, list{real, imag}, list{xi, yj, zk} or list{w, xi, yj, zk}");
setinletassist (SIGNAL_B_INLET, "signal B -- float{real}, list{real, imag}, list{xi, yj, zk} or list{w, xi, yj, zk}");
setoutletassist(R_OUTLET      , "correlation real or magnitude");
setoutletassist(I_OUTLET      , "correlation imag or angles");
setoutletassist(LAG_OUTLET    , "time lag");
setoutletassist(CORRELATION_VECTOR_OUTLET,   "correlation vector");
setoutletassist(SAMPLE_INTERVAL_OUTLET   ,   "signal A sample interval");

var input_size           = 64;
var overlap_percent      = 87.5;
var window_function_name = "rectangle";

if(jsarguments.length > 1) input_size           = jsarguments[1];
if(jsarguments.length > 2) overlap_percent      = jsarguments[2];
if(jsarguments.length > 3) window_function_name = jsarguments[3];

var input_counter        = 0;
var complex_input_a      = new fft_complex_signal    (input_size);
var complex_input_b      = new fft_complex_signal    (input_size);
var quaternion_input_a   = new fft_quaternion_signal (input_size);
var quaternion_input_b   = new fft_quaternion_signal (input_size);
var analysis_window      = new Array                 (input_size);
var should_normalize     = false;
var should_polar_output  = true;
var sample_interval      = 0;
var prev_sample_time     = 0;
var fft_size             = nearest_power_of_two(2 * input_size);
var one_minus_overlap_num_samples;

set_window_function(window_function_name);
set_overlap(overlap_percent);

/*---------_------_------_-----_------------__-----------------------------      
 _ __ _  _| |__| (_)__  (_)_ _| |_ ___ _ _ / _|__ _ __ ___ 
| '_ \ || | '_ \ | / _| | | ' \  _/ -_) '_|  _/ _` / _/ -_)
| .__/\_,_|_.__/_|_\__| |_|_||_\__\___|_| |_| \__,_\__\___|
|_| 
-------------------------------------------------------------------------*/
function bang(n)
{

}

/*-----------------------------------------------------------------------*/
function msg_int(n)
{
  msg_float(n);
}

/*-----------------------------------------------------------------------*/
function msg_float(n)
{
  list(n);
}

/*-----------------------------------------------------------------------*/
function list()
{
  var a = arrayfromargs(arguments);
  var input_signals, input;
  
  switch(a.length)
    {
      case 1:
        a.push(0);
        //cascade
  	  case 2:
  	    input_signals = [complex_input_a, complex_input_b];
  	    input = input_signals[inlet];
  	    input.real.shift();
  	    input.imag.shift();
  	    input.real.push(a[0]);
  	    input.imag.push(a[1]);
  	    break;
      case 3:
        a.unshift(0);
        //cascade
  	  case 4:
  	    input_signals = [quaternion_input_a, quaternion_input_b];
  	    input = input_signals[inlet];
  	    input.simplex.real.shift();
        input.perplex.real.shift();
  	    input.simplex.imag.shift();
        input.perplex.imag.shift();

  	    input.simplex.real.push(a[0]);
        input.simplex.imag.push(a[1]);
  	    input.perplex.real.push(a[2]);
        input.perplex.imag.push(a[3]);
        break;
  	  default: break
    }
  
  if(inlet == SIGNAL_A_INLET)
    {
	  //update sample rate
      var t  = max.time;
      var dt = t - prev_sample_time;
      if(dt < 500) sample_interval = (sample_interval * 0.9) + (dt * 0.1);
      prev_sample_time = t;
      ++input_counter; input_counter %= one_minus_overlap_num_samples;

      if (input_counter == 0)
        {
  	      var result = input_signals[0].correlate(input_signals[1]);
          var lag_index = result.rho.index_of_largest_item();
          outlet(SAMPLE_INTERVAL_OUTLET, sample_interval);
          outlet(LAG_OUTLET, ((lag_index) - (fft_size * 0.5)) * sample_interval);

          if(input_signals[0].simplex === undefined)//complex correlation
            {
              outlet(CORRELATION_VECTOR_OUTLET, result.rho[lag_index], result.theta[lag_index]);
              outlet(I_OUTLET,   result.theta);
            }
          else
            {
              outlet(CORRELATION_VECTOR_OUTLET, result.rho[lag_index], result.phi[lag_index], result.theta[lag_index], result.psi[lag_index]);
              outlet(I_OUTLET, result.phi, result.theta, result.psi);
            }
          outlet(R_OUTLET,   result.rho);
        }
  	}
}

/*-----------------------------------------------------------------------*/
function set_should_produce_polar_output(n)
{
  should_polar_output = (n != 0);
}

/*-----------------------------------------------------------------------*/
function set_window_function(name_of_function /*rectangle, hann, hamming, blackman*/)
{
  var window_funct;

  switch(name_of_function)
    {
      case "hann"     : window_funct = fft_make_hann_window     ; break;
      case "hamming"  : window_funct = fft_make_hamming_window  ; break;
      case "blackman" : window_funct = fft_make_blackman_window ; break;
      default         : window_funct = fft_make_rect_window     ; break;
    }

  window_funct(analysis_window, input_size);
}

/*-----------------------------------------------------------------------*/
function set_should_normalize(n)
{
  should_normalize = (n != 0);
}

/*-----------------------------------------------------------------------*/
function set_overlap(n)
{
  if(n > 100) n = 100;
  if(n < 0)   n = 0;
  n *= 0.01;
  n = 1.0 - n;
  n *= input_size;
  
  if(n < 1) n = 1;
  if(n > input_size) n = input_size;
  
  one_minus_overlap_num_samples = parseInt(n);
}

/*-----------------------------------------------------------------------*/
function clear()
{
  input_counter        = 0;
  complex_input_a      = new fft_complex_signal    (input_size);
  complex_input_b      = new fft_complex_signal    (input_size);
  quaternion_input_a   = new fft_quaternion_signal (input_size);
  quaternion_input_b   = new fft_quaternion_signal (input_size); 
}
/*-----------------_------------__--__-_-----------------------------------
 __ ___ _ __  _ __| |_____ __  / _|/ _| |_ 
/ _/ _ \ '  \| '_ \ / -_) \ / |  _|  _|  _|
\__\___/_|_|_| .__/_\___/_\_\ |_| |_|  \__|
             |_|      
-------------------------------------------------------------------------*/
function fft_complex_signal(N)
{
  this.real  = new Array(N);
  this.imag  = new Array(N);
  this.rho   = this.real;
  this.theta = this.imag;
  
  for(var i=0; i<N; i++)
    this.real[i] = this.imag[i] = 0;
}

/*-----------------------------------------------------------------------*/
fft_complex_signal.prototype.correlate = function(signal_b)
{
  // this function is the link between the public interface
  // and the under-the-hood fft implementation. as such, it
  // uses several 'global' instance variables that are declared 
  // in the public interface below.

  var temp;
  var a = this.copy();
  var b = signal_b.copy();  

  if(should_normalize)
    {
      a.normalize();
      b.normalize();	
    }

  //Fourier transform
  a.apply_window(analysis_window);
  b.apply_window(analysis_window);
  a.zero_pad(fft_size);
  b.zero_pad(fft_size);
  a.fft_decimation_in_frequency(false);
  b.fft_decimation_in_frequency(false); 

  //multiply a by conjugate of b
  var i, temp;
  for(i=0; i<fft_size; i++)
    {
      temp      = (a.real[i] * b.real[i]) + (a.imag[i] * b.imag[i]);
      a.imag[i] = (b.real[i] * a.imag[i]) - (a.real[i] * b.imag[i]);  
      a.real[i] = temp;
    }

  //inverse transform
  a.fft_decimation_in_time(true); 
    
  //rotate so t=0 occurs in the centre of the data
  for(i=0; i<(fft_size * 0.5); i++)
    {
      a.real.push(a.real.shift());
      a.imag.push(a.imag.shift());
    }

  if(should_polar_output)
    a.cartesian_to_polar();

  return a;
}

/*-----------------------------------------------------------------------*/
fft_complex_signal.prototype.fft_decimation_in_time = function(is_inverse)
{ 
  //takes input in bit-reversed order
  var N = this.real.length;
  var two_pi_over_N = Math.TWO_PI / N;
  var omega_two_pi_over_n;
  var sub_transform, butterfly;
  var num_sub_transforms = N, num_butterflies = 1, omega;
  var wr, wi, r=this.real, i=this.imag, tempr, tempi;
  var top_index = 0, bottom_index;
  
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
              wr                  =  Math.cos(omega_two_pi_over_n);
              wi                  = -Math.sin(omega_two_pi_over_n);
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
fft_complex_signal.prototype.fft_decimation_in_frequency = function(is_inverse)
{
  //produces output in bit-reversed order
  var N = this.real.length;
  var two_pi_over_N = Math.TWO_PI / N;
  var omega_two_pi_over_n;
  var sub_transform, butterfly;
  var num_sub_transforms = 1, num_butterflies = N/2, omega;
  var wr, wi, r=this.real, i=this.imag, tempr, tempi;
  var top_index = 0, bottom_index;
  
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
              wr                  =  Math.cos(omega_two_pi_over_n);
              wi                  = -Math.sin(omega_two_pi_over_n);
              if(is_inverse) wi    = -wi;
              tempr               = r[top_index];
              tempi               = i[top_index];
              r[top_index]       += r[bottom_index];
              i[top_index]       += i[bottom_index];
              r[bottom_index]     = tempr - r[bottom_index];
              i[bottom_index]     = tempi - i[bottom_index];
              tempr = (r[bottom_index] * wr) - (i[bottom_index] * wi);
              tempi = (r[bottom_index] * wi) + (i[bottom_index] * wr)
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
fft_complex_signal.prototype.copy = function()
{
  var c = new fft_complex_signal(0);
  c.real = this.real.slice(0, this.real.length);
  c.imag = this.imag.slice(0, this.imag.length);
  c.rho   = c.real;
  c.theta = c.imag;
  return c;
}

/*-----------------------------------------------------------------------*/
fft_complex_signal.prototype.cartesian_to_polar = function()
{
  var i, rho, theta;
  for(i=0; i<this.real.length; i++)
    {
      rho =   Math.hypot(this.real[i], this.imag[i]);
      theta = Math.atan2(this.imag[i], this.real[i]);
      this.real[i] = rho;
      this.imag[i] = theta;
    }
}

/*-----------------------------------------------------------------------*/
fft_complex_signal.prototype.polar_to_cartesian = function(signal)
{
  var i, real, imag;
  for(i=0; i<this.rho.length; i++)
    {
      real = this.rho[i] * Math.cos(this.theta[i]);
      imag = this.rho[i] * Math.sin(this.theta[i]);
      this.rho[i]   = real;
      this.theta[i] = imag;
    }
}

/*-----------------------------------------------------------------------*/
fft_complex_signal.prototype.normalize = function()
{
  real_normalize_signal(this.real);
  real_normalize_signal(this.imag);
}

/*-----------------------------------------------------------------------*/
fft_complex_signal.prototype.zero_pad = function(length)
{
  while(this.real.length < length)
    {
      this.real.push(0);
      this.imag.push(0);	
    }
}

/*-----------------------------------------------------------------------*/
fft_complex_signal.prototype.apply_window = function(window)
{
  for(i=0; i<window.length; i++)
    {
      this.real[i] *= window[i];
      this.imag[i] *= window[i];
    }
  for(i=window.length; i<this.real.length; i++)
    {
      this.real[i] = 0;
      this.imag[i] = 0;
    }
}

/*--------------_----------------_-------------__--__-_--------------------
 __ _ _  _ __ _| |_ ___ _ _ _ _ (_)___ _ _    / _|/ _| |_
/ _` | || / _` |  _/ -_) '_| ' \| / _ \ ' \  |  _|  _|  _|
\__, |\_,_\__,_|\__\___|_| |_||_|_\___/_||_| |_| |_|  \__|
   |_|                                                    
-------------------------------------------------------------------------*/
function fft_quaternion_signal(N)
{
  //Cayley-Dickson form: (a is 'simplex' and b is 'perplex')
  //q=a+bj where a=w+xi; b=y+zk;
  this.simplex = new fft_complex_signal(N);
  this.perplex = new fft_complex_signal(N);

  //for my convenience in producing polar form
  this.rho   = this.simplex.rho;
  this.psi   = this.simplex.theta;
  this.theta = this.perplex.rho;
  this.phi   = this.perplex.theta;
}

/*-----------------------------------------------------------------------*/
fft_quaternion_signal.prototype.correlate = function(signal_b)
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
  // (a + bi  + cj + dk) (e - fi - gj - hk)
  // = 
  // +ae  - afi - agj - ahk
  // +bei + bf  - bgk + bhj
  // +cej + cfk + cg  - chi
  // +dek - dfj + dgi + dh
  // =
  // (+ae + bf + cg + dh)  +
  // (-af + be - ch + dg)i + 
  // (-ag + bh + ce - df)j + 
  // (-ah - bg + cf + de)k
  
  var w, x, y, z;
  var sig_a = this.copy();
  var sig_b = signal_b.copy();  

  //outlet(R_OUTLET,   this.perplex);

  if(should_normalize)
    {
      sig_a.simplex.normalize();
      sig_a.perplex.normalize();
      sig_b.simplex.normalize();
      sig_b.perplex.normalize();	
    }

  //Fourier transform
  sig_a.simplex.apply_window(analysis_window);
  sig_a.perplex.apply_window(analysis_window);
  sig_b.simplex.apply_window(analysis_window);
  sig_b.perplex.apply_window(analysis_window);
  sig_a.simplex.zero_pad(fft_size);
  sig_a.perplex.zero_pad(fft_size);
  sig_b.simplex.zero_pad(fft_size);
  sig_b.perplex.zero_pad(fft_size);
  sig_a.fft_decimation_in_frequency(false);
  sig_b.fft_decimation_in_frequency(false); 

  //multiply a by conjugate of b
  var i, temp;
  var a, b, c, d, e, f, g, h;
  for(i=0; i<fft_size; i++)
    {
      a = sig_a.simplex.real[i];
      b = sig_a.simplex.imag[i];
      c = sig_a.perplex.real[i];
      d = sig_a.perplex.imag[i];
      e = sig_b.simplex.real[i];
      f = sig_b.simplex.imag[i];
      g = sig_b.perplex.real[i];
      h = sig_b.perplex.imag[i];

      //there may exist a faster implementation
      sig_a.simplex.real[i] =  a*e + b*f + c*g + d*h;
      sig_a.simplex.imag[i] = -a*f + b*e - c*h + d*g;
      sig_a.perplex.real[i] = -a*g + b*h + c*e - d*f;
      sig_a.perplex.imag[i] = -a*h - b*g + c*f + d*e;
    }

  //inverse transform
  sig_a.fft_decimation_in_time(true); 
    
  //rotate so t=0 occurs in the centre of the data
  for(i=0; i<(fft_size * 0.5); i++)
    {
      sig_a.simplex.real.push(sig_a.simplex.real.shift());
      sig_a.simplex.imag.push(sig_a.simplex.imag.shift());
      sig_a.perplex.real.push(sig_a.perplex.real.shift());
      sig_a.perplex.imag.push(sig_a.perplex.imag.shift());
    }

  if(should_polar_output)
    sig_a.cartesian_to_polar();

  return sig_a;
}

/*-----------------------------------------------------------------------*/
fft_quaternion_signal.prototype.fft_decimation_in_time = function(is_inverse)
{
  //Decomposition of 2D Hypercomplex Fourier Transforms into Pairs of 
  //Complex Fourier Transforms.
  //Todd A. Ell, Stephen J. Sangwine (2000)
  //
  //Here we reduce to a 1D case by dropping outer sum and choose
  //µ1=i; µ2=j;
  //(x' = V(q) dot µ1 = V(q) dot i = x); likewise y'=y, z'=z; w'=S(q)=w in any case. 
  //thus explicit decomposition does not need to be performed.
  //in this case there is no reason to use
  //µ1 = i + j + k / sqrt(3);
  
  this.simplex.fft_decimation_in_time(is_inverse);
  this.perplex.fft_decimation_in_time(is_inverse);
}

/*-----------------------------------------------------------------------*/
fft_quaternion_signal.prototype.fft_decimation_in_frequency = function(is_inverse)
{
  //cf fft_decimation_in_time...
  this.simplex.fft_decimation_in_frequency(is_inverse);
  this.perplex.fft_decimation_in_frequency(is_inverse);
}

/*-----------------------------------------------------------------------*/
fft_quaternion_signal.prototype.copy = function()
{
  var c = new fft_quaternion_signal(0);
  c.simplex = this.simplex.copy();
  c.perplex = this.perplex.copy();

  //for my convenience in producing polar form
  c.rho   = c.simplex.rho;
  c.psi   = c.simplex.theta;
  c.theta = c.perplex.rho;
  c.phi   = c.perplex.theta;  

  return c;
}

/*-----------------------------------------------------------------------*/
fft_quaternion_signal.prototype.cartesian_to_polar = function()
{
  var i;
  var q0, q1, q2, q3;

  for(i=0; i<this.rho.length; i++)
    {
	  q0 = this.simplex.real[i];
	  q1 = this.simplex.imag[i];
	  q2 = this.perplex.real[i];
	  q3 = this.perplex.imag[i];
	
	  //Euler angles
      this.rho[i]   = Math.sqrt((q0*q0) + (q1*q1) + (q2*q2) + (q3*q3));
      this.phi[i]   = Math.atan2 (2*(q0*q1 + q2*q3), 1 - 2*(q1*q1 + q2*q2));
      this.theta[i] = Math.asin  (2*(q0*q2 - q3*q1));
      this.psi[i]   = Math.atan2 (2*(q0*q3 + q1*q2), 1 - 2*(q2*q2 + q3*q3));
    }
}

/*------_---------_--------------------------------------------------------
__ __ _(_)_ _  __| |_____ __ _____
\ V  V / | ' \/ _` / _ \ V  V (_-<
 \_/\_/|_|_||_\__,_\___/\_/\_//__/
-------------------------------------------------------------------------*/
function fft_make_rect_window(buffer, n)
{
  var i;
  for(i=0; i<n; i++)
    buffer[i] = 0.5;
}

/*-----------------------------------------------------------------------*/
function fft_make_hann_window(buffer, n)
{
  var i;
  var phase = 0;
  var phase_increment = Math.TWO_PI / n;
  for(i=0; i<n; i++)
    {
      buffer[i] = 0.5 * (1-Math.cos(phase));
      phase += phase_increment;
    }  
}

/*-----------------------------------------------------------------------*/
function fft_make_hamming_window(buffer, n)
{
  var i;
  var phase = 0;
  var phase_increment = Math.TWO_PI / n;
  for(i=0; i<n; i++)
    {
      buffer[i] = 0.54 - (0.46 * Math.cos(phase));
      phase += phase_increment;
    }  
}

/*-----------------------------------------------------------------------*/
function fft_make_blackman_window(buffer, n)
{
  var i;
  var phase = 0;
  var phase_increment = Math.TWO_PI / n;
  var a = 0.16;
  var a0 = (1-a)/2.0;
  var a1 = 1/2.0;
  var a2 = a/2.0;
  
  for(i=0; i<n; i++)
    {
      buffer[i] = a0 - (a1 * Math.cos(phase)) + (a2 * Math.cos(2*phase));
      phase += phase_increment;
    }  
}

/*--------_----------------------------------------------------------------
| |_  ___| |_ __  ___ _ _ ___
| ' \/ -_) | '_ \/ -_) '_(_-<
|_||_\___|_| .__/\___|_| /__/
           |_|   
-------------------------------------------------------------------------*/
Math.TWO_PI = 2 * Math.PI;
Math.hypot =  function(x, y){return Math.sqrt((x*x)+(y*y))};

/*-----------------------------------------------------------------------*/
Array.prototype.index_of_largest_item = function()
{
  var largest = this[0];
  var result = 0;
  var i;

  for(i=1; i<this.length; i++)
    {
      if(this[i] > largest)
        {
          result = i;
          largest = this[i];
        }
    }
  return result;
}

/*-----------------------------------------------------------------------*/
function nearest_power_of_two(n)
{
  var result = 1;
  while(result < n)
    result <<= 1;
  return result;
}

/*-----------------------------------------------------------------------*/
function real_normalize_signal(signal)
{
  var mean=0, standard_deviation=0;
  var i;
  
  for(i=0; i<signal.length; i++)
    mean += signal[i];
  mean /= signal.length;  

  for(i=0; i<signal.length; i++)
    {
      signal[i] -= mean;
      standard_deviation += signal[i] * signal[i];
    }
  //there are N-1 independent observarions aside from the mean
  standard_deviation /= signal.length - 1;
  standard_deviation = Math.sqrt(standard_deviation);

  if(standard_deviation != 0)
    {
      for(i=0; i<signal.length; i++)
        signal[i] /= standard_deviation;
    }
}

/*----------_----------------------------------------------_---------------
 __ ___  __| |___   __ _ _ _ __ ___ _____ _  _ __ _ _ _ __| |
/ _/ _ \/ _` / -_) / _` | '_/ _` \ V / -_) || / _` | '_/ _` |
\__\___/\__,_\___| \__, |_| \__,_|\_/\___|\_, \__,_|_| \__,_|
                   |___/                  |__/  
-------------------------------------------------------------------------*/                   
/*
STFT.prototype.findFundamental = function()
{
  //assumes polar coords;
  var highest     =-1, secondHighest     =-1;
  var highestIndex= 0, secondHighestIndex= 0;
  var i;

  //don't consider the DC component a frequency
  for(i=1; i<(this.numSamples/2.0); i++)
    {
      if(this.real[i] > highest)
        {
	      secondHighest = highest;
	      highest = this.real[i];
	      secondHighestIndex = highestIndex;
	      highestIndex = i;
        }
      else if(this.real[i] > secondHighest)
        {
	      secondHighest = this.real[i];
	      secondHighestIndex = i;
        }
    }
  return vertexOfParabolaPassingThroughPoints(highestIndex, highest, secondHighestIndex, secondHighest);
}
*/

/*-----------------------------------------------------------------------*/
/*
function vertexOfParabolaPassingThroughPoints(x1, y1, x2, y2)
{
  if(y1 == 0) return 0;  

  //should be y1 / y2 but this inverts points to find correct frequency  
  v =  Math.sqrt(y2) / Math.sqrt(y1);

  return (x1 + (v*x2)) / (1 + v);
}
*/

/*-----------------------------------------------------------------------*/
/*
STFT.prototype.scaleMagnitudes = function(min, max)
{
  var minSample = new Number(1000000);
  var maxSample = 0;
  var i;
  
  for(i=0; i<this.N; i++)
    {
      if(this.realeal[i] < minSample)
        minSample = this.realeal[i];
      if(this.realeal[i] > maxSample)
        maxSample = this.realeal[i];
    }
    
  for(i=0; i<this.N; i++)
    this.realeal[i] = scalef(this.realeal[i], minSample, maxSample, min, max);
}

function scalef(x, in_min, in_max, out_min, out_max)
{
  return (((x - in_min) * (out_max - out_min)) / (in_max - in_min)) + out_min;
}

fft_complex_signal.prototype.bit_reverse_indices = function()
{
  var N = this.real.length;
  var N_minus_1 = N-1;
  var highest_bit = N >> 1;
  var n, next_bit, n_reversed=0;
  var temp;
  
  for(n=1; n<N; n++)
    {
      next_bit = highest_bit;
      while((next_bit + n_reversed) > N_minus_1) next_bit >>= 1;  //find highest unpopulated bit
      n_reversed &= next_bit - 1;                                 //clear all higher bits
      n_reversed |= next_bit;                                     //set new bit
      
      if(n_reversed > n)
        {
          temp                  = this.real[n]         ;
          this.real[n]          = this.real[n_reversed];
          this.real[n_reversed] = temp                 ;
          temp                  = this.imag[n]         ;
          this.imag[n]          = this.imag[n_reversed];
          this.imag[n_reversed] = temp                 ;          
        }
    }
}
*/

/*-------_-----------------------------_-----------------------------------            
| |_ _ _(_)__ _ ___ _ _  ___ _ __  ___| |_ _ _ _  _ 
|  _| '_| / _` / _ \ ' \/ _ \ '  \/ -_)  _| '_| || |
 \__|_| |_\__, \___/_||_\___/_|_|_\___|\__|_|  \_, |
          |___/                                |__/
-------------------------------------------------------------------------*/
/*

---------------------------------------------------------------------------
function taylor_sin(angle)
{
  var numerator;
  var result;
  var angle_squared;

  while(angle < -Math.PI)
    angle += (2*Math.PI);  
  while(angle > Math.PI)
    angle -= (2*Math.PI); 

  angle_squared = angle * angle;
  
  //small angle approximation
  result = angle;

  // -x^3 / 3!
  numerator = angle * angle_squared;
  result -= numerator * (1.0/6.0);//0.1666666667;

  // +x^5 / 5!
  numerator *= angle_squared;
  result += numerator * (1.0/120.0);//0.0083333333;

  // -x^7 / 7!
  numerator *= angle_squared;
  result -= numerator * (1.0/5040.0);//0.0001984137;

  // +x^9 / 9!
  numerator *= angle_squared;
  result += numerator * (1.0/362880.0);//0.0000027557;
  
  return result;
}


---------------------------------------------------------------------------
var  SIN_NUM_SAMPLES =       4096;
var  SIN_TWO_PI      =       0xFFFFFFFF;
var  SIN_PI          =       0x7FFFFFFF;
var  SIN_HALF_PI     =       0x3FFFFFFF;
var  SIN_QUARTER_PI  =       0x1FFFFFFF;

function table_lookup_sin(angle) 
{
  return sin_table[(angle >> 20) % SIN_NUM_SAMPLES];
}

var sin_table = 
[
  0.000000,  0.001534,  0.003068,  0.004602,  0.006136,  0.007670,  0.009204,  0.010738,  0.012272,  0.013805,  
  0.015339,  0.016873,  0.018407,  0.019940,  0.021474,  0.023008,  0.024541,  0.026075,  0.027608,  0.029142,  
  0.030675,  0.032208,  0.033741,  0.035274,  0.036807,  0.038340,  0.039873,  0.041406,  0.042938,  0.044471,  
  0.046003,  0.047535,  0.049068,  0.050600,  0.052132,  0.053664,  0.055195,  0.056727,  0.058258,  0.059790,  
  0.061321,  0.062852,  0.064383,  0.065913,  0.067444,  0.068974,  0.070505,  0.072035,  0.073565,  0.075094,  
  0.076624,  0.078153,  0.079682,  0.081211,  0.082740,  0.084269,  0.085797,  0.087326,  0.088854,  0.090381,  
  0.091909,  0.093436,  0.094963,  0.096490,  0.098017,  0.099544,  0.101070,  0.102596,  0.104122,  0.105647,  
  0.107172,  0.108697,  0.110222,  0.111747,  0.113271,  0.114795,  0.116319,  0.117842,  0.119365,  0.120888,  
  0.122411,  0.123933,  0.125455,  0.126977,  0.128498,  0.130019,  0.131540,  0.133061,  0.134581,  0.136101,  
  0.137620,  0.139139,  0.140658,  0.142177,  0.143695,  0.145213,  0.146730,  0.148248,  0.149765,  0.151281,  
  0.152797,  0.154313,  0.155828,  0.157343,  0.158858,  0.160372,  0.161886,  0.163400,  0.164913,  0.166426,  
  0.167938,  0.169450,  0.170962,  0.172473,  0.173984,  0.175494,  0.177004,  0.178514,  0.180023,  0.181532,  
  0.183040,  0.184548,  0.186055,  0.187562,  0.189069,  0.190575,  0.192080,  0.193586,  0.195090,  0.196595,  
  0.198098,  0.199602,  0.201105,  0.202607,  0.204109,  0.205610,  0.207111,  0.208612,  0.210112,  0.211611,  
  0.213110,  0.214609,  0.216107,  0.217604,  0.219101,  0.220598,  0.222094,  0.223589,  0.225084,  0.226578,  
  0.228072,  0.229565,  0.231058,  0.232550,  0.234042,  0.235533,  0.237024,  0.238514,  0.240003,  0.241492,  
  0.242980,  0.244468,  0.245955,  0.247442,  0.248928,  0.250413,  0.251898,  0.253382,  0.254866,  0.256349,  
  0.257831,  0.259313,  0.260794,  0.262275,  0.263755,  0.265234,  0.266713,  0.268191,  0.269668,  0.271145,  
  0.272621,  0.274097,  0.275572,  0.277046,  0.278520,  0.279993,  0.281465,  0.282937,  0.284408,  0.285878,  
  0.287347,  0.288816,  0.290285,  0.291752,  0.293219,  0.294685,  0.296151,  0.297616,  0.299080,  0.300543,  
  0.302006,  0.303468,  0.304929,  0.306390,  0.307850,  0.309309,  0.310767,  0.312225,  0.313682,  0.315138,  
  0.316593,  0.318048,  0.319502,  0.320955,  0.322408,  0.323859,  0.325310,  0.326760,  0.328210,  0.329658,  
  0.331106,  0.332553,  0.334000,  0.335445,  0.336890,  0.338334,  0.339777,  0.341219,  0.342661,  0.344101,  
  0.345541,  0.346980,  0.348419,  0.349856,  0.351293,  0.352729,  0.354164,  0.355598,  0.357031,  0.358463,  
  0.359895,  0.361326,  0.362756,  0.364185,  0.365613,  0.367040,  0.368467,  0.369892,  0.371317,  0.372741,  
  0.374164,  0.375586,  0.377007,  0.378428,  0.379847,  0.381266,  0.382683,  0.384100,  0.385516,  0.386931,  
  0.388345,  0.389758,  0.391170,  0.392582,  0.393992,  0.395401,  0.396810,  0.398218,  0.399624,  0.401030,  
  0.402435,  0.403838,  0.405241,  0.406643,  0.408044,  0.409444,  0.410843,  0.412241,  0.413638,  0.415034,  
  0.416430,  0.417824,  0.419217,  0.420609,  0.422000,  0.423390,  0.424780,  0.426168,  0.427555,  0.428941,  
  0.430326,  0.431711,  0.433094,  0.434476,  0.435857,  0.437237,  0.438616,  0.439994,  0.441371,  0.442747,  
  0.444122,  0.445496,  0.446869,  0.448241,  0.449611,  0.450981,  0.452350,  0.453717,  0.455084,  0.456449,  
  0.457813,  0.459177,  0.460539,  0.461900,  0.463260,  0.464619,  0.465977,  0.467333,  0.468689,  0.470043,  
  0.471397,  0.472749,  0.474100,  0.475450,  0.476799,  0.478147,  0.479494,  0.480839,  0.482184,  0.483527,  
  0.484869,  0.486210,  0.487550,  0.488889,  0.490226,  0.491563,  0.492898,  0.494232,  0.495565,  0.496897,  
  0.498228,  0.499557,  0.500885,  0.502212,  0.503538,  0.504863,  0.506187,  0.507509,  0.508830,  0.510150,  
  0.511469,  0.512786,  0.514103,  0.515418,  0.516732,  0.518045,  0.519356,  0.520666,  0.521975,  0.523283,  
  0.524590,  0.525895,  0.527199,  0.528502,  0.529804,  0.531104,  0.532403,  0.533701,  0.534998,  0.536293,  
  0.537587,  0.538880,  0.540171,  0.541462,  0.542751,  0.544039,  0.545325,  0.546610,  0.547894,  0.549177,  
  0.550458,  0.551738,  0.553017,  0.554294,  0.555570,  0.556845,  0.558119,  0.559391,  0.560662,  0.561931,  
  0.563199,  0.564466,  0.565732,  0.566996,  0.568259,  0.569521,  0.570781,  0.572040,  0.573297,  0.574553,  
  0.575808,  0.577062,  0.578314,  0.579565,  0.580814,  0.582062,  0.583309,  0.584554,  0.585798,  0.587040,  
  0.588282,  0.589521,  0.590760,  0.591997,  0.593232,  0.594467,  0.595699,  0.596931,  0.598161,  0.599389,  
  0.600616,  0.601842,  0.603067,  0.604290,  0.605511,  0.606731,  0.607950,  0.609167,  0.610383,  0.611597,  
  0.612810,  0.614022,  0.615232,  0.616440,  0.617647,  0.618853,  0.620057,  0.621260,  0.622461,  0.623661,  
  0.624860,  0.626056,  0.627252,  0.628446,  0.629638,  0.630829,  0.632019,  0.633207,  0.634393,  0.635578,  
  0.636762,  0.637944,  0.639124,  0.640303,  0.641481,  0.642657,  0.643832,  0.645005,  0.646176,  0.647346,  
  0.648514,  0.649681,  0.650847,  0.652011,  0.653173,  0.654334,  0.655493,  0.656651,  0.657807,  0.658961,  
  0.660114,  0.661266,  0.662416,  0.663564,  0.664711,  0.665856,  0.667000,  0.668142,  0.669283,  0.670422,  
  0.671559,  0.672695,  0.673829,  0.674962,  0.676093,  0.677222,  0.678350,  0.679476,  0.680601,  0.681724,  
  0.682846,  0.683965,  0.685084,  0.686200,  0.687315,  0.688429,  0.689541,  0.690651,  0.691759,  0.692866,  
  0.693971,  0.695075,  0.696177,  0.697277,  0.698376,  0.699473,  0.700569,  0.701663,  0.702755,  0.703845,  
  0.704934,  0.706021,  0.707107,  0.708191,  0.709273,  0.710353,  0.711432,  0.712509,  0.713585,  0.714659,  
  0.715731,  0.716801,  0.717870,  0.718937,  0.720003,  0.721066,  0.722128,  0.723188,  0.724247,  0.725304,  
  0.726359,  0.727413,  0.728464,  0.729514,  0.730563,  0.731609,  0.732654,  0.733697,  0.734739,  0.735779,  
  0.736817,  0.737853,  0.738887,  0.739920,  0.740951,  0.741980,  0.743008,  0.744034,  0.745058,  0.746080,  
  0.747101,  0.748119,  0.749136,  0.750152,  0.751165,  0.752177,  0.753187,  0.754195,  0.755201,  0.756206,  
  0.757209,  0.758210,  0.759209,  0.760207,  0.761202,  0.762196,  0.763188,  0.764179,  0.765167,  0.766154,  
  0.767139,  0.768122,  0.769103,  0.770083,  0.771061,  0.772036,  0.773010,  0.773983,  0.774953,  0.775922,  
  0.776888,  0.777853,  0.778817,  0.779778,  0.780737,  0.781695,  0.782651,  0.783605,  0.784557,  0.785507,  
  0.786455,  0.787402,  0.788346,  0.789289,  0.790230,  0.791169,  0.792107,  0.793042,  0.793975,  0.794907,  
  0.795837,  0.796765,  0.797691,  0.798615,  0.799537,  0.800458,  0.801376,  0.802293,  0.803208,  0.804120,  
  0.805031,  0.805940,  0.806848,  0.807753,  0.808656,  0.809558,  0.810457,  0.811355,  0.812251,  0.813144,  
  0.814036,  0.814926,  0.815814,  0.816701,  0.817585,  0.818467,  0.819348,  0.820226,  0.821102,  0.821977,  
  0.822850,  0.823721,  0.824589,  0.825456,  0.826321,  0.827184,  0.828045,  0.828904,  0.829761,  0.830616,  
  0.831470,  0.832321,  0.833170,  0.834018,  0.834863,  0.835706,  0.836548,  0.837387,  0.838225,  0.839060,  
  0.839894,  0.840725,  0.841555,  0.842383,  0.843208,  0.844032,  0.844854,  0.845673,  0.846491,  0.847307,  
  0.848120,  0.848932,  0.849742,  0.850549,  0.851355,  0.852159,  0.852961,  0.853760,  0.854558,  0.855354,  
  0.856147,  0.856939,  0.857729,  0.858516,  0.859302,  0.860085,  0.860867,  0.861646,  0.862424,  0.863199,  
  0.863973,  0.864744,  0.865514,  0.866281,  0.867046,  0.867809,  0.868571,  0.869330,  0.870087,  0.870842,  
  0.871595,  0.872346,  0.873095,  0.873842,  0.874587,  0.875329,  0.876070,  0.876809,  0.877545,  0.878280,  
  0.879012,  0.879743,  0.880471,  0.881197,  0.881921,  0.882643,  0.883363,  0.884081,  0.884797,  0.885511,  
  0.886223,  0.886932,  0.887640,  0.888345,  0.889048,  0.889750,  0.890449,  0.891146,  0.891841,  0.892534,  
  0.893224,  0.893913,  0.894599,  0.895284,  0.895966,  0.896646,  0.897325,  0.898001,  0.898674,  0.899346,  
  0.900016,  0.900683,  0.901349,  0.902012,  0.902673,  0.903332,  0.903989,  0.904644,  0.905297,  0.905947,  
  0.906596,  0.907242,  0.907886,  0.908528,  0.909168,  0.909806,  0.910441,  0.911075,  0.911706,  0.912335,  
  0.912962,  0.913587,  0.914210,  0.914830,  0.915449,  0.916065,  0.916679,  0.917291,  0.917901,  0.918508,  
  0.919114,  0.919717,  0.920318,  0.920917,  0.921514,  0.922109,  0.922701,  0.923291,  0.923880,  0.924465,  
  0.925049,  0.925631,  0.926210,  0.926787,  0.927363,  0.927935,  0.928506,  0.929075,  0.929641,  0.930205,  
  0.930767,  0.931327,  0.931884,  0.932440,  0.932993,  0.933544,  0.934093,  0.934639,  0.935184,  0.935726,  
  0.936266,  0.936803,  0.937339,  0.937872,  0.938404,  0.938932,  0.939459,  0.939984,  0.940506,  0.941026,  
  0.941544,  0.942060,  0.942573,  0.943084,  0.943593,  0.944100,  0.944605,  0.945107,  0.945607,  0.946105,  
  0.946601,  0.947094,  0.947586,  0.948075,  0.948561,  0.949046,  0.949528,  0.950008,  0.950486,  0.950962,  
  0.951435,  0.951906,  0.952375,  0.952842,  0.953306,  0.953768,  0.954228,  0.954686,  0.955141,  0.955594,  
  0.956045,  0.956494,  0.956940,  0.957385,  0.957826,  0.958266,  0.958703,  0.959139,  0.959572,  0.960002,  
  0.960431,  0.960857,  0.961280,  0.961702,  0.962121,  0.962538,  0.962953,  0.963366,  0.963776,  0.964184,  
  0.964590,  0.964993,  0.965394,  0.965793,  0.966190,  0.966584,  0.966976,  0.967366,  0.967754,  0.968139,  
  0.968522,  0.968903,  0.969281,  0.969657,  0.970031,  0.970403,  0.970772,  0.971139,  0.971504,  0.971866,  
  0.972227,  0.972584,  0.972940,  0.973293,  0.973644,  0.973993,  0.974339,  0.974684,  0.975025,  0.975365,  
  0.975702,  0.976037,  0.976370,  0.976700,  0.977028,  0.977354,  0.977677,  0.977998,  0.978317,  0.978634,  
  0.978948,  0.979260,  0.979570,  0.979877,  0.980182,  0.980485,  0.980785,  0.981083,  0.981379,  0.981673,  
  0.981964,  0.982253,  0.982539,  0.982824,  0.983105,  0.983385,  0.983662,  0.983937,  0.984210,  0.984480,  
  0.984748,  0.985014,  0.985278,  0.985539,  0.985798,  0.986054,  0.986308,  0.986560,  0.986809,  0.987057,  
  0.987301,  0.987544,  0.987784,  0.988022,  0.988258,  0.988491,  0.988722,  0.988950,  0.989177,  0.989400,  
  0.989622,  0.989841,  0.990058,  0.990273,  0.990485,  0.990695,  0.990903,  0.991108,  0.991311,  0.991511,  
  0.991710,  0.991906,  0.992099,  0.992291,  0.992480,  0.992666,  0.992850,  0.993032,  0.993212,  0.993389,  
  0.993564,  0.993737,  0.993907,  0.994075,  0.994240,  0.994404,  0.994565,  0.994723,  0.994879,  0.995033,  
  0.995185,  0.995334,  0.995481,  0.995625,  0.995767,  0.995907,  0.996045,  0.996180,  0.996313,  0.996443,  
  0.996571,  0.996697,  0.996820,  0.996941,  0.997060,  0.997176,  0.997290,  0.997402,  0.997511,  0.997618,  
  0.997723,  0.997825,  0.997925,  0.998023,  0.998118,  0.998211,  0.998302,  0.998390,  0.998476,  0.998559,  
  0.998640,  0.998719,  0.998795,  0.998870,  0.998941,  0.999011,  0.999078,  0.999142,  0.999205,  0.999265,  
  0.999322,  0.999378,  0.999431,  0.999481,  0.999529,  0.999575,  0.999619,  0.999660,  0.999699,  0.999735,  
  0.999769,  0.999801,  0.999831,  0.999858,  0.999882,  0.999905,  0.999925,  0.999942,  0.999958,  0.999971,  
  0.999981,  0.999989,  0.999995,  0.999999,  1.000000,  0.999999,  0.999995,  0.999989,  0.999981,  0.999971,  
  0.999958,  0.999942,  0.999925,  0.999905,  0.999882,  0.999858,  0.999831,  0.999801,  0.999769,  0.999735,  
  0.999699,  0.999660,  0.999619,  0.999575,  0.999529,  0.999481,  0.999431,  0.999378,  0.999322,  0.999265,  
  0.999205,  0.999142,  0.999078,  0.999011,  0.998941,  0.998870,  0.998795,  0.998719,  0.998640,  0.998559,  
  0.998476,  0.998390,  0.998302,  0.998211,  0.998118,  0.998023,  0.997925,  0.997825,  0.997723,  0.997618,  
  0.997511,  0.997402,  0.997290,  0.997176,  0.997060,  0.996941,  0.996820,  0.996697,  0.996571,  0.996443,  
  0.996313,  0.996180,  0.996045,  0.995907,  0.995767,  0.995625,  0.995481,  0.995334,  0.995185,  0.995033,  
  0.994879,  0.994723,  0.994565,  0.994404,  0.994240,  0.994075,  0.993907,  0.993737,  0.993564,  0.993389,  
  0.993212,  0.993032,  0.992850,  0.992666,  0.992480,  0.992291,  0.992099,  0.991906,  0.991710,  0.991511,  
  0.991311,  0.991108,  0.990903,  0.990695,  0.990485,  0.990273,  0.990058,  0.989841,  0.989622,  0.989400,  
  0.989177,  0.988950,  0.988722,  0.988491,  0.988258,  0.988022,  0.987784,  0.987544,  0.987301,  0.987057,  
  0.986809,  0.986560,  0.986308,  0.986054,  0.985798,  0.985539,  0.985278,  0.985014,  0.984748,  0.984480,  
  0.984210,  0.983937,  0.983662,  0.983385,  0.983105,  0.982824,  0.982539,  0.982253,  0.981964,  0.981673,  
  0.981379,  0.981083,  0.980785,  0.980485,  0.980182,  0.979877,  0.979570,  0.979260,  0.978948,  0.978634,  
  0.978317,  0.977998,  0.977677,  0.977354,  0.977028,  0.976700,  0.976370,  0.976037,  0.975702,  0.975365,  
  0.975025,  0.974684,  0.974339,  0.973993,  0.973644,  0.973293,  0.972940,  0.972584,  0.972227,  0.971866,  
  0.971504,  0.971139,  0.970772,  0.970403,  0.970031,  0.969657,  0.969281,  0.968903,  0.968522,  0.968139,  
  0.967754,  0.967366,  0.966976,  0.966584,  0.966190,  0.965793,  0.965394,  0.964993,  0.964590,  0.964184,  
  0.963776,  0.963366,  0.962953,  0.962538,  0.962121,  0.961702,  0.961280,  0.960857,  0.960431,  0.960002,  
  0.959572,  0.959139,  0.958703,  0.958266,  0.957826,  0.957385,  0.956940,  0.956494,  0.956045,  0.955594,  
  0.955141,  0.954686,  0.954228,  0.953768,  0.953306,  0.952842,  0.952375,  0.951906,  0.951435,  0.950962,  
  0.950486,  0.950008,  0.949528,  0.949046,  0.948561,  0.948075,  0.947586,  0.947094,  0.946601,  0.946105,  
  0.945607,  0.945107,  0.944605,  0.944100,  0.943593,  0.943084,  0.942573,  0.942060,  0.941544,  0.941026,  
  0.940506,  0.939984,  0.939459,  0.938932,  0.938404,  0.937872,  0.937339,  0.936803,  0.936266,  0.935726,  
  0.935184,  0.934639,  0.934093,  0.933544,  0.932993,  0.932440,  0.931884,  0.931327,  0.930767,  0.930205,  
  0.929641,  0.929075,  0.928506,  0.927935,  0.927363,  0.926787,  0.926210,  0.925631,  0.925049,  0.924465,  
  0.923880,  0.923291,  0.922701,  0.922109,  0.921514,  0.920917,  0.920318,  0.919717,  0.919114,  0.918508,  
  0.917901,  0.917291,  0.916679,  0.916065,  0.915449,  0.914830,  0.914210,  0.913587,  0.912962,  0.912335,  
  0.911706,  0.911075,  0.910441,  0.909806,  0.909168,  0.908528,  0.907886,  0.907242,  0.906596,  0.905947,  
  0.905297,  0.904644,  0.903989,  0.903332,  0.902673,  0.902012,  0.901349,  0.900683,  0.900016,  0.899346,  
  0.898674,  0.898001,  0.897325,  0.896646,  0.895966,  0.895284,  0.894599,  0.893913,  0.893224,  0.892534,  
  0.891841,  0.891146,  0.890449,  0.889750,  0.889048,  0.888345,  0.887640,  0.886932,  0.886223,  0.885511,  
  0.884797,  0.884081,  0.883363,  0.882643,  0.881921,  0.881197,  0.880471,  0.879743,  0.879012,  0.878280,  
  0.877545,  0.876809,  0.876070,  0.875329,  0.874587,  0.873842,  0.873095,  0.872346,  0.871595,  0.870842,  
  0.870087,  0.869330,  0.868571,  0.867809,  0.867046,  0.866281,  0.865514,  0.864744,  0.863973,  0.863199,  
  0.862424,  0.861646,  0.860867,  0.860085,  0.859302,  0.858516,  0.857729,  0.856939,  0.856147,  0.855354,  
  0.854558,  0.853760,  0.852961,  0.852159,  0.851355,  0.850549,  0.849742,  0.848932,  0.848120,  0.847307,  
  0.846491,  0.845673,  0.844854,  0.844032,  0.843208,  0.842383,  0.841555,  0.840725,  0.839894,  0.839060,  
  0.838225,  0.837387,  0.836548,  0.835706,  0.834863,  0.834018,  0.833170,  0.832321,  0.831470,  0.830616,  
  0.829761,  0.828904,  0.828045,  0.827184,  0.826321,  0.825456,  0.824589,  0.823721,  0.822850,  0.821977,  
  0.821102,  0.820226,  0.819348,  0.818467,  0.817585,  0.816701,  0.815814,  0.814926,  0.814036,  0.813144,  
  0.812251,  0.811355,  0.810457,  0.809558,  0.808656,  0.807753,  0.806848,  0.805940,  0.805031,  0.804120,  
  0.803208,  0.802293,  0.801376,  0.800458,  0.799537,  0.798615,  0.797691,  0.796765,  0.795837,  0.794907,  
  0.793975,  0.793042,  0.792107,  0.791169,  0.790230,  0.789289,  0.788346,  0.787402,  0.786455,  0.785507,  
  0.784557,  0.783605,  0.782651,  0.781695,  0.780737,  0.779778,  0.778817,  0.777853,  0.776888,  0.775922,  
  0.774953,  0.773983,  0.773010,  0.772036,  0.771061,  0.770083,  0.769103,  0.768122,  0.767139,  0.766154,  
  0.765167,  0.764179,  0.763188,  0.762196,  0.761202,  0.760207,  0.759209,  0.758210,  0.757209,  0.756206,  
  0.755201,  0.754195,  0.753187,  0.752177,  0.751165,  0.750152,  0.749136,  0.748119,  0.747101,  0.746080,  
  0.745058,  0.744034,  0.743008,  0.741980,  0.740951,  0.739920,  0.738887,  0.737853,  0.736817,  0.735779,  
  0.734739,  0.733697,  0.732654,  0.731609,  0.730563,  0.729514,  0.728464,  0.727413,  0.726359,  0.725304,  
  0.724247,  0.723188,  0.722128,  0.721066,  0.720003,  0.718937,  0.717870,  0.716801,  0.715731,  0.714659,  
  0.713585,  0.712509,  0.711432,  0.710353,  0.709273,  0.708191,  0.707107,  0.706021,  0.704934,  0.703845,  
  0.702755,  0.701663,  0.700569,  0.699473,  0.698376,  0.697277,  0.696177,  0.695075,  0.693971,  0.692866,  
  0.691759,  0.690651,  0.689541,  0.688429,  0.687315,  0.686200,  0.685084,  0.683965,  0.682846,  0.681724,  
  0.680601,  0.679476,  0.678350,  0.677222,  0.676093,  0.674962,  0.673829,  0.672695,  0.671559,  0.670422,  
  0.669283,  0.668142,  0.667000,  0.665856,  0.664711,  0.663564,  0.662416,  0.661266,  0.660114,  0.658961,  
  0.657807,  0.656651,  0.655493,  0.654334,  0.653173,  0.652011,  0.650847,  0.649681,  0.648514,  0.647346,  
  0.646176,  0.645005,  0.643832,  0.642657,  0.641481,  0.640303,  0.639124,  0.637944,  0.636762,  0.635578,  
  0.634393,  0.633207,  0.632019,  0.630829,  0.629638,  0.628446,  0.627252,  0.626056,  0.624860,  0.623661,  
  0.622461,  0.621260,  0.620057,  0.618853,  0.617647,  0.616440,  0.615232,  0.614022,  0.612810,  0.611597,  
  0.610383,  0.609167,  0.607950,  0.606731,  0.605511,  0.604290,  0.603067,  0.601842,  0.600616,  0.599389,  
  0.598161,  0.596931,  0.595699,  0.594467,  0.593232,  0.591997,  0.590760,  0.589521,  0.588282,  0.587040,  
  0.585798,  0.584554,  0.583309,  0.582062,  0.580814,  0.579565,  0.578314,  0.577062,  0.575808,  0.574553,  
  0.573297,  0.572040,  0.570781,  0.569521,  0.568259,  0.566996,  0.565732,  0.564466,  0.563199,  0.561931,  
  0.560662,  0.559391,  0.558119,  0.556845,  0.555570,  0.554294,  0.553017,  0.551738,  0.550458,  0.549177,  
  0.547894,  0.546610,  0.545325,  0.544039,  0.542751,  0.541462,  0.540171,  0.538880,  0.537587,  0.536293,  
  0.534998,  0.533701,  0.532403,  0.531104,  0.529804,  0.528502,  0.527199,  0.525895,  0.524590,  0.523283,  
  0.521975,  0.520666,  0.519356,  0.518045,  0.516732,  0.515418,  0.514103,  0.512786,  0.511469,  0.510150,  
  0.508830,  0.507509,  0.506187,  0.504863,  0.503538,  0.502212,  0.500885,  0.499557,  0.498228,  0.496897,  
  0.495565,  0.494232,  0.492898,  0.491563,  0.490226,  0.488889,  0.487550,  0.486210,  0.484869,  0.483527,  
  0.482184,  0.480839,  0.479494,  0.478147,  0.476799,  0.475450,  0.474100,  0.472749,  0.471397,  0.470043,  
  0.468689,  0.467333,  0.465977,  0.464619,  0.463260,  0.461900,  0.460539,  0.459177,  0.457813,  0.456449,  
  0.455084,  0.453717,  0.452350,  0.450981,  0.449611,  0.448241,  0.446869,  0.445496,  0.444122,  0.442747,  
  0.441371,  0.439994,  0.438616,  0.437237,  0.435857,  0.434476,  0.433094,  0.431711,  0.430326,  0.428941,  
  0.427555,  0.426168,  0.424780,  0.423390,  0.422000,  0.420609,  0.419217,  0.417824,  0.416430,  0.415034,  
  0.413638,  0.412241,  0.410843,  0.409444,  0.408044,  0.406643,  0.405241,  0.403838,  0.402435,  0.401030,  
  0.399624,  0.398218,  0.396810,  0.395401,  0.393992,  0.392582,  0.391170,  0.389758,  0.388345,  0.386931,  
  0.385516,  0.384100,  0.382683,  0.381266,  0.379847,  0.378428,  0.377007,  0.375586,  0.374164,  0.372741,  
  0.371317,  0.369892,  0.368467,  0.367040,  0.365613,  0.364185,  0.362756,  0.361326,  0.359895,  0.358463,  
  0.357031,  0.355598,  0.354164,  0.352729,  0.351293,  0.349856,  0.348419,  0.346980,  0.345541,  0.344101,  
  0.342661,  0.341219,  0.339777,  0.338334,  0.336890,  0.335445,  0.334000,  0.332553,  0.331106,  0.329658,  
  0.328210,  0.326760,  0.325310,  0.323859,  0.322408,  0.320955,  0.319502,  0.318048,  0.316593,  0.315138,  
  0.313682,  0.312225,  0.310767,  0.309309,  0.307850,  0.306390,  0.304929,  0.303468,  0.302006,  0.300543,  
  0.299080,  0.297616,  0.296151,  0.294685,  0.293219,  0.291752,  0.290285,  0.288816,  0.287347,  0.285878,  
  0.284408,  0.282937,  0.281465,  0.279993,  0.278520,  0.277046,  0.275572,  0.274097,  0.272621,  0.271145,  
  0.269668,  0.268191,  0.266713,  0.265234,  0.263755,  0.262275,  0.260794,  0.259313,  0.257831,  0.256349,  
  0.254866,  0.253382,  0.251898,  0.250413,  0.248928,  0.247442,  0.245955,  0.244468,  0.242980,  0.241492,  
  0.240003,  0.238514,  0.237024,  0.235533,  0.234042,  0.232550,  0.231058,  0.229565,  0.228072,  0.226578,  
  0.225084,  0.223589,  0.222094,  0.220598,  0.219101,  0.217604,  0.216107,  0.214609,  0.213110,  0.211611,  
  0.210112,  0.208612,  0.207111,  0.205610,  0.204109,  0.202607,  0.201105,  0.199602,  0.198098,  0.196595,  
  0.195090,  0.193586,  0.192080,  0.190575,  0.189069,  0.187562,  0.186055,  0.184548,  0.183040,  0.181532,  
  0.180023,  0.178514,  0.177004,  0.175494,  0.173984,  0.172473,  0.170962,  0.169450,  0.167938,  0.166426,  
  0.164913,  0.163400,  0.161886,  0.160372,  0.158858,  0.157343,  0.155828,  0.154313,  0.152797,  0.151281,  
  0.149765,  0.148248,  0.146730,  0.145213,  0.143695,  0.142177,  0.140658,  0.139139,  0.137620,  0.136101,  
  0.134581,  0.133061,  0.131540,  0.130019,  0.128498,  0.126977,  0.125455,  0.123933,  0.122411,  0.120888,  
  0.119365,  0.117842,  0.116319,  0.114795,  0.113271,  0.111747,  0.110222,  0.108697,  0.107172,  0.105647,  
  0.104122,  0.102596,  0.101070,  0.099544,  0.098017,  0.096490,  0.094963,  0.093436,  0.091909,  0.090381,  
  0.088854,  0.087326,  0.085797,  0.084269,  0.082740,  0.081211,  0.079682,  0.078153,  0.076624,  0.075094,  
  0.073565,  0.072035,  0.070505,  0.068974,  0.067444,  0.065913,  0.064383,  0.062852,  0.061321,  0.059790,  
  0.058258,  0.056727,  0.055195,  0.053664,  0.052132,  0.050600,  0.049068,  0.047535,  0.046003,  0.044471,  
  0.042938,  0.041406,  0.039873,  0.038340,  0.036807,  0.035274,  0.033741,  0.032208,  0.030675,  0.029142,  
  0.027608,  0.026075,  0.024541,  0.023008,  0.021474,  0.019940,  0.018407,  0.016873,  0.015339,  0.013805,  
  0.012272,  0.010738,  0.009204,  0.007670,  0.006136,  0.004602,  0.003068,  0.001534,  -0.000000,  -0.001534,  
  -0.003068,  -0.004602,  -0.006136,  -0.007670,  -0.009204,  -0.010738,  -0.012272,  -0.013805,  -0.015339,  -0.016873,  
  -0.018407,  -0.019940,  -0.021474,  -0.023008,  -0.024541,  -0.026075,  -0.027608,  -0.029142,  -0.030675,  -0.032208,  
  -0.033741,  -0.035274,  -0.036807,  -0.038340,  -0.039873,  -0.041406,  -0.042938,  -0.044471,  -0.046003,  -0.047535,  
  -0.049068,  -0.050600,  -0.052132,  -0.053664,  -0.055195,  -0.056727,  -0.058258,  -0.059790,  -0.061321,  -0.062852,  
  -0.064383,  -0.065913,  -0.067444,  -0.068974,  -0.070505,  -0.072035,  -0.073565,  -0.075094,  -0.076624,  -0.078153,  
  -0.079682,  -0.081211,  -0.082740,  -0.084269,  -0.085797,  -0.087326,  -0.088854,  -0.090381,  -0.091909,  -0.093436,  
  -0.094963,  -0.096490,  -0.098017,  -0.099544,  -0.101070,  -0.102596,  -0.104122,  -0.105647,  -0.107172,  -0.108697,  
  -0.110222,  -0.111747,  -0.113271,  -0.114795,  -0.116319,  -0.117842,  -0.119365,  -0.120888,  -0.122411,  -0.123933,  
  -0.125455,  -0.126977,  -0.128498,  -0.130019,  -0.131540,  -0.133061,  -0.134581,  -0.136101,  -0.137620,  -0.139139,  
  -0.140658,  -0.142177,  -0.143695,  -0.145213,  -0.146730,  -0.148248,  -0.149765,  -0.151281,  -0.152797,  -0.154313,  
  -0.155828,  -0.157343,  -0.158858,  -0.160372,  -0.161886,  -0.163400,  -0.164913,  -0.166426,  -0.167938,  -0.169450,  
  -0.170962,  -0.172473,  -0.173984,  -0.175494,  -0.177004,  -0.178514,  -0.180023,  -0.181532,  -0.183040,  -0.184548,  
  -0.186055,  -0.187562,  -0.189069,  -0.190575,  -0.192080,  -0.193586,  -0.195090,  -0.196595,  -0.198098,  -0.199602,  
  -0.201105,  -0.202607,  -0.204109,  -0.205610,  -0.207111,  -0.208612,  -0.210112,  -0.211611,  -0.213110,  -0.214609,  
  -0.216107,  -0.217604,  -0.219101,  -0.220598,  -0.222094,  -0.223589,  -0.225084,  -0.226578,  -0.228072,  -0.229565,  
  -0.231058,  -0.232550,  -0.234042,  -0.235533,  -0.237024,  -0.238514,  -0.240003,  -0.241492,  -0.242980,  -0.244468,  
  -0.245955,  -0.247442,  -0.248928,  -0.250413,  -0.251898,  -0.253382,  -0.254866,  -0.256349,  -0.257831,  -0.259313,  
  -0.260794,  -0.262275,  -0.263755,  -0.265234,  -0.266713,  -0.268191,  -0.269668,  -0.271145,  -0.272621,  -0.274097,  
  -0.275572,  -0.277046,  -0.278520,  -0.279993,  -0.281465,  -0.282937,  -0.284408,  -0.285878,  -0.287347,  -0.288816,  
  -0.290285,  -0.291752,  -0.293219,  -0.294685,  -0.296151,  -0.297616,  -0.299080,  -0.300543,  -0.302006,  -0.303468,  
  -0.304929,  -0.306390,  -0.307850,  -0.309309,  -0.310767,  -0.312225,  -0.313682,  -0.315138,  -0.316593,  -0.318048,  
  -0.319502,  -0.320955,  -0.322408,  -0.323859,  -0.325310,  -0.326760,  -0.328210,  -0.329658,  -0.331106,  -0.332553,  
  -0.334000,  -0.335445,  -0.336890,  -0.338334,  -0.339777,  -0.341219,  -0.342661,  -0.344101,  -0.345541,  -0.346980,  
  -0.348419,  -0.349856,  -0.351293,  -0.352729,  -0.354164,  -0.355598,  -0.357031,  -0.358463,  -0.359895,  -0.361326,  
  -0.362756,  -0.364185,  -0.365613,  -0.367040,  -0.368467,  -0.369892,  -0.371317,  -0.372741,  -0.374164,  -0.375586,  
  -0.377007,  -0.378428,  -0.379847,  -0.381266,  -0.382683,  -0.384100,  -0.385516,  -0.386931,  -0.388345,  -0.389758,  
  -0.391170,  -0.392582,  -0.393992,  -0.395401,  -0.396810,  -0.398218,  -0.399624,  -0.401030,  -0.402435,  -0.403838,  
  -0.405241,  -0.406643,  -0.408044,  -0.409444,  -0.410843,  -0.412241,  -0.413638,  -0.415034,  -0.416430,  -0.417824,  
  -0.419217,  -0.420609,  -0.422000,  -0.423390,  -0.424780,  -0.426168,  -0.427555,  -0.428941,  -0.430326,  -0.431711,  
  -0.433094,  -0.434476,  -0.435857,  -0.437237,  -0.438616,  -0.439994,  -0.441371,  -0.442747,  -0.444122,  -0.445496,  
  -0.446869,  -0.448241,  -0.449611,  -0.450981,  -0.452350,  -0.453717,  -0.455084,  -0.456449,  -0.457813,  -0.459177,  
  -0.460539,  -0.461900,  -0.463260,  -0.464619,  -0.465977,  -0.467333,  -0.468689,  -0.470043,  -0.471397,  -0.472749,  
  -0.474100,  -0.475450,  -0.476799,  -0.478147,  -0.479494,  -0.480839,  -0.482184,  -0.483527,  -0.484869,  -0.486210,  
  -0.487550,  -0.488889,  -0.490226,  -0.491563,  -0.492898,  -0.494232,  -0.495565,  -0.496897,  -0.498228,  -0.499557,  
  -0.500885,  -0.502212,  -0.503538,  -0.504863,  -0.506187,  -0.507509,  -0.508830,  -0.510150,  -0.511469,  -0.512786,  
  -0.514103,  -0.515418,  -0.516732,  -0.518045,  -0.519356,  -0.520666,  -0.521975,  -0.523283,  -0.524590,  -0.525895,  
  -0.527199,  -0.528502,  -0.529804,  -0.531104,  -0.532403,  -0.533701,  -0.534998,  -0.536293,  -0.537587,  -0.538880,  
  -0.540171,  -0.541462,  -0.542751,  -0.544039,  -0.545325,  -0.546610,  -0.547894,  -0.549177,  -0.550458,  -0.551738,  
  -0.553017,  -0.554294,  -0.555570,  -0.556845,  -0.558119,  -0.559391,  -0.560662,  -0.561931,  -0.563199,  -0.564466,  
  -0.565732,  -0.566996,  -0.568259,  -0.569521,  -0.570781,  -0.572040,  -0.573297,  -0.574553,  -0.575808,  -0.577062,  
  -0.578314,  -0.579565,  -0.580814,  -0.582062,  -0.583309,  -0.584554,  -0.585798,  -0.587040,  -0.588282,  -0.589521,  
  -0.590760,  -0.591997,  -0.593232,  -0.594467,  -0.595699,  -0.596931,  -0.598161,  -0.599389,  -0.600616,  -0.601842,  
  -0.603067,  -0.604290,  -0.605511,  -0.606731,  -0.607950,  -0.609167,  -0.610383,  -0.611597,  -0.612810,  -0.614022,  
  -0.615232,  -0.616440,  -0.617647,  -0.618853,  -0.620057,  -0.621260,  -0.622461,  -0.623661,  -0.624860,  -0.626056,  
  -0.627252,  -0.628446,  -0.629638,  -0.630829,  -0.632019,  -0.633207,  -0.634393,  -0.635578,  -0.636762,  -0.637944,  
  -0.639124,  -0.640303,  -0.641481,  -0.642657,  -0.643832,  -0.645005,  -0.646176,  -0.647346,  -0.648514,  -0.649681,  
  -0.650847,  -0.652011,  -0.653173,  -0.654334,  -0.655493,  -0.656651,  -0.657807,  -0.658961,  -0.660114,  -0.661266,  
  -0.662416,  -0.663564,  -0.664711,  -0.665856,  -0.667000,  -0.668142,  -0.669283,  -0.670422,  -0.671559,  -0.672695,  
  -0.673829,  -0.674962,  -0.676093,  -0.677222,  -0.678350,  -0.679476,  -0.680601,  -0.681724,  -0.682846,  -0.683965,  
  -0.685084,  -0.686200,  -0.687315,  -0.688429,  -0.689541,  -0.690651,  -0.691759,  -0.692866,  -0.693971,  -0.695075,  
  -0.696177,  -0.697277,  -0.698376,  -0.699473,  -0.700569,  -0.701663,  -0.702755,  -0.703845,  -0.704934,  -0.706021,  
  -0.707107,  -0.708191,  -0.709273,  -0.710353,  -0.711432,  -0.712509,  -0.713585,  -0.714659,  -0.715731,  -0.716801,  
  -0.717870,  -0.718937,  -0.720003,  -0.721066,  -0.722128,  -0.723188,  -0.724247,  -0.725304,  -0.726359,  -0.727413,  
  -0.728464,  -0.729514,  -0.730563,  -0.731609,  -0.732654,  -0.733697,  -0.734739,  -0.735779,  -0.736817,  -0.737853,  
  -0.738887,  -0.739920,  -0.740951,  -0.741980,  -0.743008,  -0.744034,  -0.745058,  -0.746080,  -0.747101,  -0.748119,  
  -0.749136,  -0.750152,  -0.751165,  -0.752177,  -0.753187,  -0.754195,  -0.755201,  -0.756206,  -0.757209,  -0.758210,  
  -0.759209,  -0.760207,  -0.761202,  -0.762196,  -0.763188,  -0.764179,  -0.765167,  -0.766154,  -0.767139,  -0.768122,  
  -0.769103,  -0.770083,  -0.771061,  -0.772036,  -0.773010,  -0.773983,  -0.774953,  -0.775922,  -0.776888,  -0.777853,  
  -0.778817,  -0.779778,  -0.780737,  -0.781695,  -0.782651,  -0.783605,  -0.784557,  -0.785507,  -0.786455,  -0.787402,  
  -0.788346,  -0.789289,  -0.790230,  -0.791169,  -0.792107,  -0.793042,  -0.793975,  -0.794907,  -0.795837,  -0.796765,  
  -0.797691,  -0.798615,  -0.799537,  -0.800458,  -0.801376,  -0.802293,  -0.803208,  -0.804120,  -0.805031,  -0.805940,  
  -0.806848,  -0.807753,  -0.808656,  -0.809558,  -0.810457,  -0.811355,  -0.812251,  -0.813144,  -0.814036,  -0.814926,  
  -0.815814,  -0.816701,  -0.817585,  -0.818467,  -0.819348,  -0.820226,  -0.821102,  -0.821977,  -0.822850,  -0.823721,  
  -0.824589,  -0.825456,  -0.826321,  -0.827184,  -0.828045,  -0.828904,  -0.829761,  -0.830616,  -0.831470,  -0.832321,  
  -0.833170,  -0.834018,  -0.834863,  -0.835706,  -0.836548,  -0.837387,  -0.838225,  -0.839060,  -0.839894,  -0.840725,  
  -0.841555,  -0.842383,  -0.843208,  -0.844032,  -0.844854,  -0.845673,  -0.846491,  -0.847307,  -0.848120,  -0.848932,  
  -0.849742,  -0.850549,  -0.851355,  -0.852159,  -0.852961,  -0.853760,  -0.854558,  -0.855354,  -0.856147,  -0.856939,  
  -0.857729,  -0.858516,  -0.859302,  -0.860085,  -0.860867,  -0.861646,  -0.862424,  -0.863199,  -0.863973,  -0.864744,  
  -0.865514,  -0.866281,  -0.867046,  -0.867809,  -0.868571,  -0.869330,  -0.870087,  -0.870842,  -0.871595,  -0.872346,  
  -0.873095,  -0.873842,  -0.874587,  -0.875329,  -0.876070,  -0.876809,  -0.877545,  -0.878280,  -0.879012,  -0.879743,  
  -0.880471,  -0.881197,  -0.881921,  -0.882643,  -0.883363,  -0.884081,  -0.884797,  -0.885511,  -0.886223,  -0.886932,  
  -0.887640,  -0.888345,  -0.889048,  -0.889750,  -0.890449,  -0.891146,  -0.891841,  -0.892534,  -0.893224,  -0.893913,  
  -0.894599,  -0.895284,  -0.895966,  -0.896646,  -0.897325,  -0.898001,  -0.898674,  -0.899346,  -0.900016,  -0.900683,  
  -0.901349,  -0.902012,  -0.902673,  -0.903332,  -0.903989,  -0.904644,  -0.905297,  -0.905947,  -0.906596,  -0.907242,  
  -0.907886,  -0.908528,  -0.909168,  -0.909806,  -0.910441,  -0.911075,  -0.911706,  -0.912335,  -0.912962,  -0.913587,  
  -0.914210,  -0.914830,  -0.915449,  -0.916065,  -0.916679,  -0.917291,  -0.917901,  -0.918508,  -0.919114,  -0.919717,  
  -0.920318,  -0.920917,  -0.921514,  -0.922109,  -0.922701,  -0.923291,  -0.923880,  -0.924465,  -0.925049,  -0.925631,  
  -0.926210,  -0.926787,  -0.927363,  -0.927935,  -0.928506,  -0.929075,  -0.929641,  -0.930205,  -0.930767,  -0.931327,  
  -0.931884,  -0.932440,  -0.932993,  -0.933544,  -0.934093,  -0.934639,  -0.935184,  -0.935726,  -0.936266,  -0.936803,  
  -0.937339,  -0.937872,  -0.938404,  -0.938932,  -0.939459,  -0.939984,  -0.940506,  -0.941026,  -0.941544,  -0.942060,  
  -0.942573,  -0.943084,  -0.943593,  -0.944100,  -0.944605,  -0.945107,  -0.945607,  -0.946105,  -0.946601,  -0.947094,  
  -0.947586,  -0.948075,  -0.948561,  -0.949046,  -0.949528,  -0.950008,  -0.950486,  -0.950962,  -0.951435,  -0.951906,  
  -0.952375,  -0.952842,  -0.953306,  -0.953768,  -0.954228,  -0.954686,  -0.955141,  -0.955594,  -0.956045,  -0.956494,  
  -0.956940,  -0.957385,  -0.957826,  -0.958266,  -0.958703,  -0.959139,  -0.959572,  -0.960002,  -0.960431,  -0.960857,  
  -0.961280,  -0.961702,  -0.962121,  -0.962538,  -0.962953,  -0.963366,  -0.963776,  -0.964184,  -0.964590,  -0.964993,  
  -0.965394,  -0.965793,  -0.966190,  -0.966584,  -0.966976,  -0.967366,  -0.967754,  -0.968139,  -0.968522,  -0.968903,  
  -0.969281,  -0.969657,  -0.970031,  -0.970403,  -0.970772,  -0.971139,  -0.971504,  -0.971866,  -0.972227,  -0.972584,  
  -0.972940,  -0.973293,  -0.973644,  -0.973993,  -0.974339,  -0.974684,  -0.975025,  -0.975365,  -0.975702,  -0.976037,  
  -0.976370,  -0.976700,  -0.977028,  -0.977354,  -0.977677,  -0.977998,  -0.978317,  -0.978634,  -0.978948,  -0.979260,  
  -0.979570,  -0.979877,  -0.980182,  -0.980485,  -0.980785,  -0.981083,  -0.981379,  -0.981673,  -0.981964,  -0.982253,  
  -0.982539,  -0.982824,  -0.983105,  -0.983385,  -0.983662,  -0.983937,  -0.984210,  -0.984480,  -0.984748,  -0.985014,  
  -0.985278,  -0.985539,  -0.985798,  -0.986054,  -0.986308,  -0.986560,  -0.986809,  -0.987057,  -0.987301,  -0.987544,  
  -0.987784,  -0.988022,  -0.988258,  -0.988491,  -0.988722,  -0.988950,  -0.989177,  -0.989400,  -0.989622,  -0.989841,  
  -0.990058,  -0.990273,  -0.990485,  -0.990695,  -0.990903,  -0.991108,  -0.991311,  -0.991511,  -0.991710,  -0.991906,  
  -0.992099,  -0.992291,  -0.992480,  -0.992666,  -0.992850,  -0.993032,  -0.993212,  -0.993389,  -0.993564,  -0.993737,  
  -0.993907,  -0.994075,  -0.994240,  -0.994404,  -0.994565,  -0.994723,  -0.994879,  -0.995033,  -0.995185,  -0.995334,  
  -0.995481,  -0.995625,  -0.995767,  -0.995907,  -0.996045,  -0.996180,  -0.996313,  -0.996443,  -0.996571,  -0.996697,  
  -0.996820,  -0.996941,  -0.997060,  -0.997176,  -0.997290,  -0.997402,  -0.997511,  -0.997618,  -0.997723,  -0.997825,  
  -0.997925,  -0.998023,  -0.998118,  -0.998211,  -0.998302,  -0.998390,  -0.998476,  -0.998559,  -0.998640,  -0.998719,  
  -0.998795,  -0.998870,  -0.998941,  -0.999011,  -0.999078,  -0.999142,  -0.999205,  -0.999265,  -0.999322,  -0.999378,  
  -0.999431,  -0.999481,  -0.999529,  -0.999575,  -0.999619,  -0.999660,  -0.999699,  -0.999735,  -0.999769,  -0.999801,  
  -0.999831,  -0.999858,  -0.999882,  -0.999905,  -0.999925,  -0.999942,  -0.999958,  -0.999971,  -0.999981,  -0.999989,  
  -0.999995,  -0.999999,  -1.000000,  -0.999999,  -0.999995,  -0.999989,  -0.999981,  -0.999971,  -0.999958,  -0.999942,  
  -0.999925,  -0.999905,  -0.999882,  -0.999858,  -0.999831,  -0.999801,  -0.999769,  -0.999735,  -0.999699,  -0.999660,  
  -0.999619,  -0.999575,  -0.999529,  -0.999481,  -0.999431,  -0.999378,  -0.999322,  -0.999265,  -0.999205,  -0.999142,  
  -0.999078,  -0.999011,  -0.998941,  -0.998870,  -0.998795,  -0.998719,  -0.998640,  -0.998559,  -0.998476,  -0.998390,  
  -0.998302,  -0.998211,  -0.998118,  -0.998023,  -0.997925,  -0.997825,  -0.997723,  -0.997618,  -0.997511,  -0.997402,  
  -0.997290,  -0.997176,  -0.997060,  -0.996941,  -0.996820,  -0.996697,  -0.996571,  -0.996443,  -0.996313,  -0.996180,  
  -0.996045,  -0.995907,  -0.995767,  -0.995625,  -0.995481,  -0.995334,  -0.995185,  -0.995033,  -0.994879,  -0.994723,  
  -0.994565,  -0.994404,  -0.994240,  -0.994075,  -0.993907,  -0.993737,  -0.993564,  -0.993389,  -0.993212,  -0.993032,  
  -0.992850,  -0.992666,  -0.992480,  -0.992291,  -0.992099,  -0.991906,  -0.991710,  -0.991511,  -0.991311,  -0.991108,  
  -0.990903,  -0.990695,  -0.990485,  -0.990273,  -0.990058,  -0.989841,  -0.989622,  -0.989400,  -0.989177,  -0.988950,  
  -0.988722,  -0.988491,  -0.988258,  -0.988022,  -0.987784,  -0.987544,  -0.987301,  -0.987057,  -0.986809,  -0.986560,  
  -0.986308,  -0.986054,  -0.985798,  -0.985539,  -0.985278,  -0.985014,  -0.984748,  -0.984480,  -0.984210,  -0.983937,  
  -0.983662,  -0.983385,  -0.983105,  -0.982824,  -0.982539,  -0.982253,  -0.981964,  -0.981673,  -0.981379,  -0.981083,  
  -0.980785,  -0.980485,  -0.980182,  -0.979877,  -0.979570,  -0.979260,  -0.978948,  -0.978634,  -0.978317,  -0.977998,  
  -0.977677,  -0.977354,  -0.977028,  -0.976700,  -0.976370,  -0.976037,  -0.975702,  -0.975365,  -0.975025,  -0.974684,  
  -0.974339,  -0.973993,  -0.973644,  -0.973293,  -0.972940,  -0.972584,  -0.972227,  -0.971866,  -0.971504,  -0.971139,  
  -0.970772,  -0.970403,  -0.970031,  -0.969657,  -0.969281,  -0.968903,  -0.968522,  -0.968139,  -0.967754,  -0.967366,  
  -0.966976,  -0.966584,  -0.966190,  -0.965793,  -0.965394,  -0.964993,  -0.964590,  -0.964184,  -0.963776,  -0.963366,  
  -0.962953,  -0.962538,  -0.962121,  -0.961702,  -0.961280,  -0.960857,  -0.960431,  -0.960002,  -0.959572,  -0.959139,  
  -0.958703,  -0.958266,  -0.957826,  -0.957385,  -0.956940,  -0.956494,  -0.956045,  -0.955594,  -0.955141,  -0.954686,  
  -0.954228,  -0.953768,  -0.953306,  -0.952842,  -0.952375,  -0.951906,  -0.951435,  -0.950962,  -0.950486,  -0.950008,  
  -0.949528,  -0.949046,  -0.948561,  -0.948075,  -0.947586,  -0.947094,  -0.946601,  -0.946105,  -0.945607,  -0.945107,  
  -0.944605,  -0.944100,  -0.943593,  -0.943084,  -0.942573,  -0.942060,  -0.941544,  -0.941026,  -0.940506,  -0.939984,  
  -0.939459,  -0.938932,  -0.938404,  -0.937872,  -0.937339,  -0.936803,  -0.936266,  -0.935726,  -0.935184,  -0.934639,  
  -0.934093,  -0.933544,  -0.932993,  -0.932440,  -0.931884,  -0.931327,  -0.930767,  -0.930205,  -0.929641,  -0.929075,  
  -0.928506,  -0.927935,  -0.927363,  -0.926787,  -0.926210,  -0.925631,  -0.925049,  -0.924465,  -0.923880,  -0.923291,  
  -0.922701,  -0.922109,  -0.921514,  -0.920917,  -0.920318,  -0.919717,  -0.919114,  -0.918508,  -0.917901,  -0.917291,  
  -0.916679,  -0.916065,  -0.915449,  -0.914830,  -0.914210,  -0.913587,  -0.912962,  -0.912335,  -0.911706,  -0.911075,  
  -0.910441,  -0.909806,  -0.909168,  -0.908528,  -0.907886,  -0.907242,  -0.906596,  -0.905947,  -0.905297,  -0.904644,  
  -0.903989,  -0.903332,  -0.902673,  -0.902012,  -0.901349,  -0.900683,  -0.900016,  -0.899346,  -0.898674,  -0.898001,  
  -0.897325,  -0.896646,  -0.895966,  -0.895284,  -0.894599,  -0.893913,  -0.893224,  -0.892534,  -0.891841,  -0.891146,  
  -0.890449,  -0.889750,  -0.889048,  -0.888345,  -0.887640,  -0.886932,  -0.886223,  -0.885511,  -0.884797,  -0.884081,  
  -0.883363,  -0.882643,  -0.881921,  -0.881197,  -0.880471,  -0.879743,  -0.879012,  -0.878280,  -0.877545,  -0.876809,  
  -0.876070,  -0.875329,  -0.874587,  -0.873842,  -0.873095,  -0.872346,  -0.871595,  -0.870842,  -0.870087,  -0.869330,  
  -0.868571,  -0.867809,  -0.867046,  -0.866281,  -0.865514,  -0.864744,  -0.863973,  -0.863199,  -0.862424,  -0.861646,  
  -0.860867,  -0.860085,  -0.859302,  -0.858516,  -0.857729,  -0.856939,  -0.856147,  -0.855354,  -0.854558,  -0.853760,  
  -0.852961,  -0.852159,  -0.851355,  -0.850549,  -0.849742,  -0.848932,  -0.848120,  -0.847307,  -0.846491,  -0.845673,  
  -0.844854,  -0.844032,  -0.843208,  -0.842383,  -0.841555,  -0.840725,  -0.839894,  -0.839060,  -0.838225,  -0.837387,  
  -0.836548,  -0.835706,  -0.834863,  -0.834018,  -0.833170,  -0.832321,  -0.831470,  -0.830616,  -0.829761,  -0.828904,  
  -0.828045,  -0.827184,  -0.826321,  -0.825456,  -0.824589,  -0.823721,  -0.822850,  -0.821977,  -0.821102,  -0.820226,  
  -0.819348,  -0.818467,  -0.817585,  -0.816701,  -0.815814,  -0.814926,  -0.814036,  -0.813144,  -0.812251,  -0.811355,  
  -0.810457,  -0.809558,  -0.808656,  -0.807753,  -0.806848,  -0.805940,  -0.805031,  -0.804120,  -0.803208,  -0.802293,  
  -0.801376,  -0.800458,  -0.799537,  -0.798615,  -0.797691,  -0.796765,  -0.795837,  -0.794907,  -0.793975,  -0.793042,  
  -0.792107,  -0.791169,  -0.790230,  -0.789289,  -0.788346,  -0.787402,  -0.786455,  -0.785507,  -0.784557,  -0.783605,  
  -0.782651,  -0.781695,  -0.780737,  -0.779778,  -0.778817,  -0.777853,  -0.776888,  -0.775922,  -0.774953,  -0.773983,  
  -0.773010,  -0.772036,  -0.771061,  -0.770083,  -0.769103,  -0.768122,  -0.767139,  -0.766154,  -0.765167,  -0.764179,  
  -0.763188,  -0.762196,  -0.761202,  -0.760207,  -0.759209,  -0.758210,  -0.757209,  -0.756206,  -0.755201,  -0.754195,  
  -0.753187,  -0.752177,  -0.751165,  -0.750152,  -0.749136,  -0.748119,  -0.747101,  -0.746080,  -0.745058,  -0.744034,  
  -0.743008,  -0.741980,  -0.740951,  -0.739920,  -0.738887,  -0.737853,  -0.736817,  -0.735779,  -0.734739,  -0.733697,  
  -0.732654,  -0.731609,  -0.730563,  -0.729514,  -0.728464,  -0.727413,  -0.726359,  -0.725304,  -0.724247,  -0.723188,  
  -0.722128,  -0.721066,  -0.720003,  -0.718937,  -0.717870,  -0.716801,  -0.715731,  -0.714659,  -0.713585,  -0.712509,  
  -0.711432,  -0.710353,  -0.709273,  -0.708191,  -0.707107,  -0.706021,  -0.704934,  -0.703845,  -0.702755,  -0.701663,  
  -0.700569,  -0.699473,  -0.698376,  -0.697277,  -0.696177,  -0.695075,  -0.693971,  -0.692866,  -0.691759,  -0.690651,  
  -0.689541,  -0.688429,  -0.687315,  -0.686200,  -0.685084,  -0.683965,  -0.682846,  -0.681724,  -0.680601,  -0.679476,  
  -0.678350,  -0.677222,  -0.676093,  -0.674962,  -0.673829,  -0.672695,  -0.671559,  -0.670422,  -0.669283,  -0.668142,  
  -0.667000,  -0.665856,  -0.664711,  -0.663564,  -0.662416,  -0.661266,  -0.660114,  -0.658961,  -0.657807,  -0.656651,  
  -0.655493,  -0.654334,  -0.653173,  -0.652011,  -0.650847,  -0.649681,  -0.648514,  -0.647346,  -0.646176,  -0.645005,  
  -0.643832,  -0.642657,  -0.641481,  -0.640303,  -0.639124,  -0.637944,  -0.636762,  -0.635578,  -0.634393,  -0.633207,  
  -0.632019,  -0.630829,  -0.629638,  -0.628446,  -0.627252,  -0.626056,  -0.624860,  -0.623661,  -0.622461,  -0.621260,  
  -0.620057,  -0.618853,  -0.617647,  -0.616440,  -0.615232,  -0.614022,  -0.612810,  -0.611597,  -0.610383,  -0.609167,  
  -0.607950,  -0.606731,  -0.605511,  -0.604290,  -0.603067,  -0.601842,  -0.600616,  -0.599389,  -0.598161,  -0.596931,  
  -0.595699,  -0.594467,  -0.593232,  -0.591997,  -0.590760,  -0.589521,  -0.588282,  -0.587040,  -0.585798,  -0.584554,  
  -0.583309,  -0.582062,  -0.580814,  -0.579565,  -0.578314,  -0.577062,  -0.575808,  -0.574553,  -0.573297,  -0.572040,  
  -0.570781,  -0.569521,  -0.568259,  -0.566996,  -0.565732,  -0.564466,  -0.563199,  -0.561931,  -0.560662,  -0.559391,  
  -0.558119,  -0.556845,  -0.555570,  -0.554294,  -0.553017,  -0.551738,  -0.550458,  -0.549177,  -0.547894,  -0.546610,  
  -0.545325,  -0.544039,  -0.542751,  -0.541462,  -0.540171,  -0.538880,  -0.537587,  -0.536293,  -0.534998,  -0.533701,  
  -0.532403,  -0.531104,  -0.529804,  -0.528502,  -0.527199,  -0.525895,  -0.524590,  -0.523283,  -0.521975,  -0.520666,  
  -0.519356,  -0.518045,  -0.516732,  -0.515418,  -0.514103,  -0.512786,  -0.511469,  -0.510150,  -0.508830,  -0.507509,  
  -0.506187,  -0.504863,  -0.503538,  -0.502212,  -0.500885,  -0.499557,  -0.498228,  -0.496897,  -0.495565,  -0.494232,  
  -0.492898,  -0.491563,  -0.490226,  -0.488889,  -0.487550,  -0.486210,  -0.484869,  -0.483527,  -0.482184,  -0.480839,  
  -0.479494,  -0.478147,  -0.476799,  -0.475450,  -0.474100,  -0.472749,  -0.471397,  -0.470043,  -0.468689,  -0.467333,  
  -0.465977,  -0.464619,  -0.463260,  -0.461900,  -0.460539,  -0.459177,  -0.457813,  -0.456449,  -0.455084,  -0.453717,  
  -0.452350,  -0.450981,  -0.449611,  -0.448241,  -0.446869,  -0.445496,  -0.444122,  -0.442747,  -0.441371,  -0.439994,  
  -0.438616,  -0.437237,  -0.435857,  -0.434476,  -0.433094,  -0.431711,  -0.430326,  -0.428941,  -0.427555,  -0.426168,  
  -0.424780,  -0.423390,  -0.422000,  -0.420609,  -0.419217,  -0.417824,  -0.416430,  -0.415034,  -0.413638,  -0.412241,  
  -0.410843,  -0.409444,  -0.408044,  -0.406643,  -0.405241,  -0.403838,  -0.402435,  -0.401030,  -0.399624,  -0.398218,  
  -0.396810,  -0.395401,  -0.393992,  -0.392582,  -0.391170,  -0.389758,  -0.388345,  -0.386931,  -0.385516,  -0.384100,  
  -0.382683,  -0.381266,  -0.379847,  -0.378428,  -0.377007,  -0.375586,  -0.374164,  -0.372741,  -0.371317,  -0.369892,  
  -0.368467,  -0.367040,  -0.365613,  -0.364185,  -0.362756,  -0.361326,  -0.359895,  -0.358463,  -0.357031,  -0.355598,  
  -0.354164,  -0.352729,  -0.351293,  -0.349856,  -0.348419,  -0.346980,  -0.345541,  -0.344101,  -0.342661,  -0.341219,  
  -0.339777,  -0.338334,  -0.336890,  -0.335445,  -0.334000,  -0.332553,  -0.331106,  -0.329658,  -0.328210,  -0.326760,  
  -0.325310,  -0.323859,  -0.322408,  -0.320955,  -0.319502,  -0.318048,  -0.316593,  -0.315138,  -0.313682,  -0.312225,  
  -0.310767,  -0.309309,  -0.307850,  -0.306390,  -0.304929,  -0.303468,  -0.302006,  -0.300543,  -0.299080,  -0.297616,  
  -0.296151,  -0.294685,  -0.293219,  -0.291752,  -0.290285,  -0.288816,  -0.287347,  -0.285878,  -0.284408,  -0.282937,  
  -0.281465,  -0.279993,  -0.278520,  -0.277046,  -0.275572,  -0.274097,  -0.272621,  -0.271145,  -0.269668,  -0.268191,  
  -0.266713,  -0.265234,  -0.263755,  -0.262275,  -0.260794,  -0.259313,  -0.257831,  -0.256349,  -0.254866,  -0.253382,  
  -0.251898,  -0.250413,  -0.248928,  -0.247442,  -0.245955,  -0.244468,  -0.242980,  -0.241492,  -0.240003,  -0.238514,  
  -0.237024,  -0.235533,  -0.234042,  -0.232550,  -0.231058,  -0.229565,  -0.228072,  -0.226578,  -0.225084,  -0.223589,  
  -0.222094,  -0.220598,  -0.219101,  -0.217604,  -0.216107,  -0.214609,  -0.213110,  -0.211611,  -0.210112,  -0.208612,  
  -0.207111,  -0.205610,  -0.204109,  -0.202607,  -0.201105,  -0.199602,  -0.198098,  -0.196595,  -0.195090,  -0.193586,  
  -0.192080,  -0.190575,  -0.189069,  -0.187562,  -0.186055,  -0.184548,  -0.183040,  -0.181532,  -0.180023,  -0.178514,  
  -0.177004,  -0.175494,  -0.173984,  -0.172473,  -0.170962,  -0.169450,  -0.167938,  -0.166426,  -0.164913,  -0.163400,  
  -0.161886,  -0.160372,  -0.158858,  -0.157343,  -0.155828,  -0.154313,  -0.152797,  -0.151281,  -0.149765,  -0.148248,  
  -0.146730,  -0.145213,  -0.143695,  -0.142177,  -0.140658,  -0.139139,  -0.137620,  -0.136101,  -0.134581,  -0.133061,  
  -0.131540,  -0.130019,  -0.128498,  -0.126977,  -0.125455,  -0.123933,  -0.122411,  -0.120888,  -0.119365,  -0.117842,  
  -0.116319,  -0.114795,  -0.113271,  -0.111747,  -0.110222,  -0.108697,  -0.107172,  -0.105647,  -0.104122,  -0.102596,  
  -0.101070,  -0.099544,  -0.098017,  -0.096490,  -0.094963,  -0.093436,  -0.091909,  -0.090381,  -0.088854,  -0.087326,  
  -0.085797,  -0.084269,  -0.082740,  -0.081211,  -0.079682,  -0.078153,  -0.076624,  -0.075094,  -0.073565,  -0.072035,  
  -0.070505,  -0.068974,  -0.067444,  -0.065913,  -0.064383,  -0.062852,  -0.061321,  -0.059790,  -0.058258,  -0.056727,  
  -0.055195,  -0.053664,  -0.052132,  -0.050600,  -0.049068,  -0.047535,  -0.046003,  -0.044471,  -0.042938,  -0.041406,  
  -0.039873,  -0.038340,  -0.036807,  -0.035274,  -0.033741,  -0.032208,  -0.030675,  -0.029142,  -0.027608,  -0.026075,  
  -0.024541,  -0.023008,  -0.021474,  -0.019940,  -0.018407,  -0.016873,  -0.015339,  -0.013805,  -0.012272,  -0.010738,  
  -0.009204,  -0.007670,  -0.006136,  -0.004602,  -0.003068,  -0.001534,  
];
*/