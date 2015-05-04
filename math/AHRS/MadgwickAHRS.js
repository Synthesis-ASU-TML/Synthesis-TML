/*---------------------------------------------------------------------
 __  __         _             _    _      _   _  _ ___  ___    _    
|  \/  |__ _ __| |__ ___ __ _(_)__| |__  /_\ | || | _ \/ __|  (_)___
| |\/| / _` / _` / _` \ V  V / / _| / / / _ \| __ |   /\__ \_ | (_-<
|_|  |_\__,_\__,_\__, |\_/\_/|_\__|_\_\/_/ \_\_||_|_|_\|___(_)/ /__/
                 |___/                                      |__/  

Implementation of Madgwick's IMU and AHRS algorithms.
See: http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms
Date			Author          Notes

29/09/2011	SOH Madgwick    Initial release
02/10/2011	SOH Madgwick	Optimised for reduced CPU load
19/02/2012	SOH Madgwick	Magnetometer measurement is normalised
02/05/2015	M Krzyzaniak	Ported to Max/Javascript

Made by Michael Krzyzaniak at the Synthesis Center
Under the direction of Sha Xin Wei, at Arizona State
University's School of Arts, Media + Engineering 
in Fall of 2014.

mkrzyzan@asu.edu
----------------------------------------------------------------------*/
inlets = 9;
outlets = 4;

var raw = [0,0,0,0,0,0,0,0,0];

var INLET_GYRO_X  = 0;
var INLET_GYRO_Y  = 1;
var INLET_GYRO_Z  = 2;
var INLET_ACCEL_X = 3;
var INLET_ACCEL_Y = 4;
var INLET_ACCEL_Z = 5;
var INLET_MAG_X   = 6;
var INLET_MAG_Y   = 7;
var INLET_MAG_Z   = 8;

var OUTLET_Q_0    = 0;
var OUTLET_Q_1    = 1;
var OUTLET_Q_2    = 2;
var OUTLET_Q_3    = 3;

setinletassist (INLET_ACCEL_X, "Gyroscope X (radians /sec)");
setinletassist (INLET_ACCEL_Y, "Gyroscope Y (radians /sec)");
setinletassist (INLET_ACCEL_Z, "Gyroscope Z (radians /sec)");
setinletassist (INLET_GYRO_X , "Accelerometer X");
setinletassist (INLET_GYRO_Y , "Accelerometer Y");
setinletassist (INLET_GYRO_Z , "Accelerometer Z");
setinletassist (INLET_MAG_X  , "Magnetometer X");
setinletassist (INLET_MAG_Y  , "Magnetometer Y");
setinletassist (INLET_MAG_Z  , "Magnetometer Z");

setoutletassist(OUTLET_Q_0   , "Real part of quaternion");
setoutletassist(OUTLET_Q_1   , "i part of quaternion");
setoutletassist(OUTLET_Q_2   , "j part of quaternion");
setoutletassist(OUTLET_Q_3   , "k part of quaternion");

var q0=1.0, q1=0.0, q2=0.0, q3=0.0;
var sample_interval      = 0.01;
var sampleFreq           = 1.0/sample_interval;
var prev_sample_time     = 0;
var beta                 = 0.1; // 2 * proportional gain (Kp)

/*--------------------------------------------------------------------*/
function reset()
{
  q0=1.0, q1=0.0, q2=0.0, q3=0.0;
}

/*--------------------------------------------------------------------*/
function msg_int(n)
{
  msg_float(n);
}

/*--------------------------------------------------------------------*/
function msg_float(n)
{
  raw[inlet] = n;
  if(inlet == 0)
    {
	  //update sample frequency;
      var t  = max.time;
      var dt = t - prev_sample_time;
      if(dt < 500) sample_interval = (dt * 0.05) + (sample_interval * 0.95);
      prev_sample_time = t;
      sampleFreq = 1000.0 / sample_interval;

      MadgwickAHRSupdate(raw[0], raw[1], raw[2], raw[3], raw[4], raw[5], raw[6], raw[7], raw[8]);
      outlet(OUTLET_Q_3, q3);
      outlet(OUTLET_Q_2, q2);
      outlet(OUTLET_Q_1, q1);
      outlet(OUTLET_Q_0, q0);
    }
}

/*--------------------------------------------------------------------*/
function MadgwickAHRSupdate(gx, gy, gz, ax, ay, az, mx, my, mz)
{
	var recipNorm;
	var s0, s1, s2, s3;
	var qDot1, qDot2, qDot3, qDot4;
	var hx, hy;
	var _2q0mx, _2q0my, _2q0mz, _2q1mx, _2bx, _2bz, _4bx, _4bz, _2q0, _2q1, _2q2, _2q3, _2q0q2, _2q2q3, q0q0, q0q1, q0q2, q0q3, q1q1, q1q2, q1q3, q2q2, q2q3, q3q3;

	// Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
	if((mx == 0.0) && (my == 0.0) && (mz == 0.0)) {
		MadgwickAHRSupdateIMU(gx, gy, gz, ax, ay, az);
		return;
	}

	// Rate of change of quaternion from gyroscope
	qDot1 = 0.5 * (-q1 * gx - q2 * gy - q3 * gz);
	qDot2 = 0.5 * (q0 * gx + q2 * gz - q3 * gy);
	qDot3 = 0.5 * (q0 * gy - q1 * gz + q3 * gx);
	qDot4 = 0.5 * (q0 * gz + q1 * gy - q2 * gx);

	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if(!((ax == 0.0) && (ay == 0.0) && (az == 0.0))) {

		// Normalise accelerometer measurement
		recipNorm = invSqrt(ax * ax + ay * ay + az * az);
		ax *= recipNorm;
		ay *= recipNorm;
		az *= recipNorm;   

		// Normalise magnetometer measurement
		recipNorm = invSqrt(mx * mx + my * my + mz * mz);
		mx *= recipNorm;
		my *= recipNorm;
		mz *= recipNorm;

		// Auxiliary variables to avoid repeated arithmetic
		_2q0mx = 2.0 * q0 * mx;
		_2q0my = 2.0 * q0 * my;
		_2q0mz = 2.0 * q0 * mz;
		_2q1mx = 2.0 * q1 * mx;
		_2q0 = 2.0 * q0;
		_2q1 = 2.0 * q1;
		_2q2 = 2.0 * q2;
		_2q3 = 2.0 * q3;
		_2q0q2 = 2.0 * q0 * q2;
		_2q2q3 = 2.0 * q2 * q3;
		q0q0 = q0 * q0;
		q0q1 = q0 * q1;
		q0q2 = q0 * q2;
		q0q3 = q0 * q3;
		q1q1 = q1 * q1;
		q1q2 = q1 * q2;
		q1q3 = q1 * q3;
		q2q2 = q2 * q2;
		q2q3 = q2 * q3;
		q3q3 = q3 * q3;

		// Reference direction of Earth's magnetic field
		hx = mx * q0q0 - _2q0my * q3 + _2q0mz * q2 + mx * q1q1 + _2q1 * my * q2 + _2q1 * mz * q3 - mx * q2q2 - mx * q3q3;
		hy = _2q0mx * q3 + my * q0q0 - _2q0mz * q1 + _2q1mx * q2 - my * q1q1 + my * q2q2 + _2q2 * mz * q3 - my * q3q3;
		_2bx = Math.sqrt(hx * hx + hy * hy);
		_2bz = -_2q0mx * q2 + _2q0my * q1 + mz * q0q0 + _2q1mx * q3 - mz * q1q1 + _2q2 * my * q3 - mz * q2q2 + mz * q3q3;
		_4bx = 2.0 * _2bx;
		_4bz = 2.0 * _2bz;

		// Gradient decent algorithm corrective step
		s0 = -_2q2 * (2.0 * q1q3 - _2q0q2 - ax) + _2q1 * (2.0 * q0q1 + _2q2q3 - ay) - _2bz * q2 * (_2bx * (0.5 - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (-_2bx * q3 + _2bz * q1) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + _2bx * q2 * (_2bx * (q0q2 + q1q3) + _2bz * (0.5 - q1q1 - q2q2) - mz);
		s1 = _2q3 * (2.0 * q1q3 - _2q0q2 - ax) + _2q0 * (2.0 * q0q1 + _2q2q3 - ay) - 4.0 * q1 * (1 - 2.0 * q1q1 - 2.0 * q2q2 - az) + _2bz * q3 * (_2bx * (0.5 - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (_2bx * q2 + _2bz * q0) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + (_2bx * q3 - _4bz * q1) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5 - q1q1 - q2q2) - mz);
		s2 = -_2q0 * (2.0 * q1q3 - _2q0q2 - ax) + _2q3 * (2.0 * q0q1 + _2q2q3 - ay) - 4.0 * q2 * (1 - 2.0 * q1q1 - 2.0 * q2q2 - az) + (-_4bx * q2 - _2bz * q0) * (_2bx * (0.5 - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (_2bx * q1 + _2bz * q3) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + (_2bx * q0 - _4bz * q2) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5 - q1q1 - q2q2) - mz);
		s3 = _2q1 * (2.0 * q1q3 - _2q0q2 - ax) + _2q2 * (2.0 * q0q1 + _2q2q3 - ay) + (-_4bx * q3 + _2bz * q1) * (_2bx * (0.5 - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (-_2bx * q0 + _2bz * q2) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + _2bx * q1 * (_2bx * (q0q2 + q1q3) + _2bz * (0.5 - q1q1 - q2q2) - mz);
		recipNorm = invSqrt(s0 * s0 + s1 * s1 + s2 * s2 + s3 * s3); // normalise step magnitude
		s0 *= recipNorm;
		s1 *= recipNorm;
		s2 *= recipNorm;
		s3 *= recipNorm;

		// Apply feedback step
		qDot1 -= beta * s0;
		qDot2 -= beta * s1;
		qDot3 -= beta * s2;
		qDot4 -= beta * s3;
	}

	// Integrate rate of change of quaternion to yield quaternion
	q0 += qDot1 * (1.0 / sampleFreq);
	q1 += qDot2 * (1.0 / sampleFreq);
	q2 += qDot3 * (1.0 / sampleFreq);
	q3 += qDot4 * (1.0 / sampleFreq);

	// Normalise quaternion
	recipNorm = invSqrt(q0 * q0 + q1 * q1 + q2 * q2 + q3 * q3);
	q0 *= recipNorm;
	q1 *= recipNorm;
	q2 *= recipNorm;
	q3 *= recipNorm;
}

/*--------------------------------------------------------------------*/
// IMU algorithm update

function MadgwickAHRSupdateIMU(gx, gy, gz, ax, ay, az)
{
	var recipNorm;
	var s0, s1, s2, s3;
	var qDot1, qDot2, qDot3, qDot4;
	var _2q0, _2q1, _2q2, _2q3, _4q0, _4q1, _4q2 ,_8q1, _8q2, q0q0, q1q1, q2q2, q3q3;

	// Rate of change of quaternion from gyroscope
	qDot1 = 0.5 * (-q1 * gx - q2 * gy - q3 * gz);
	qDot2 = 0.5 * (q0 * gx + q2 * gz - q3 * gy);
	qDot3 = 0.5 * (q0 * gy - q1 * gz + q3 * gx);
	qDot4 = 0.5 * (q0 * gz + q1 * gy - q2 * gx);

	// Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
	if(!((ax == 0.0) && (ay == 0.0) && (az == 0.0))) {

		// Normalise accelerometer measurement
		recipNorm = invSqrt(ax * ax + ay * ay + az * az);
		ax *= recipNorm;
		ay *= recipNorm;
		az *= recipNorm;   

		// Auxiliary variables to avoid repeated arithmetic
		_2q0 = 2.0 * q0;
		_2q1 = 2.0 * q1;
		_2q2 = 2.0 * q2;
		_2q3 = 2.0 * q3;
		_4q0 = 4.0 * q0;
		_4q1 = 4.0 * q1;
		_4q2 = 4.0 * q2;
		_8q1 = 8.0 * q1;
		_8q2 = 8.0 * q2;
		q0q0 = q0 * q0;
		q1q1 = q1 * q1;
		q2q2 = q2 * q2;
		q3q3 = q3 * q3;

		// Gradient decent algorithm corrective step
		s0 = _4q0 * q2q2 + _2q2 * ax + _4q0 * q1q1 - _2q1 * ay;
		s1 = _4q1 * q3q3 - _2q3 * ax + 4.0 * q0q0 * q1 - _2q0 * ay - _4q1 + _8q1 * q1q1 + _8q1 * q2q2 + _4q1 * az;
		s2 = 4.0 * q0q0 * q2 + _2q0 * ax + _4q2 * q3q3 - _2q3 * ay - _4q2 + _8q2 * q1q1 + _8q2 * q2q2 + _4q2 * az;
		s3 = 4.0 * q1q1 * q3 - _2q1 * ax + 4.0 * q2q2 * q3 - _2q2 * ay;
		recipNorm = invSqrt(s0 * s0 + s1 * s1 + s2 * s2 + s3 * s3); // normalise step magnitude
		s0 *= recipNorm;
		s1 *= recipNorm;
		s2 *= recipNorm;
		s3 *= recipNorm;

		// Apply feedback step
		qDot1 -= beta * s0;
		qDot2 -= beta * s1;
		qDot3 -= beta * s2;
		qDot4 -= beta * s3;
	}

	// Integrate rate of change of quaternion to yield quaternion
	q0 += qDot1 * (1.0 / sampleFreq);
	q1 += qDot2 * (1.0 / sampleFreq);
	q2 += qDot3 * (1.0 / sampleFreq);
	q3 += qDot4 * (1.0 / sampleFreq);

	// Normalise quaternion
	recipNorm = invSqrt(q0 * q0 + q1 * q1 + q2 * q2 + q3 * q3);
	q0 *= recipNorm;
	q1 *= recipNorm;
	q2 *= recipNorm;
	q3 *= recipNorm;
}

/*--------------------------------------------------------------------*/
function invSqrt(x)
{
	//is there a faster way to do this in Javascript?
	return 1.0 / Math.sqrt(x);
}