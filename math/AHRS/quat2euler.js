/*----------------------------------------------------------------------*/
inlets = 4;
outlets = 4;

var quat = [0,0,0,0];

var INLET_Q_0     = 0;
var INLET_Q_1     = 1;
var INLET_Q_2     = 2;
var INLET_Q_3     = 3;

var OUTLET_RHO    = 0;
var OUTLET_PHI    = 1;
var OUTLET_THETA  = 2;
var OUTLET_PSI    = 3;

setinletassist (INLET_Q_0, "Real part of quaternion");
setinletassist (INLET_Q_1, "i part of quaternion");
setinletassist (INLET_Q_2, "j part of quaternion");
setinletassist (INLET_Q_3, "k part of quaternion");

setoutletassist(OUTLET_RHO   , "ρ");
setoutletassist(OUTLET_PHI   , "φ");
setoutletassist(OUTLET_THETA , "θ");
setoutletassist(OUTLET_PSI   , "ψ");

/*--------------------------------------------------------------------*/
function msg_int(n)
{
  msg_float(n);
}

/*--------------------------------------------------------------------*/
function msg_float(n)
{
  quat[inlet] = n;
  if(inlet == 0)
    {
	  var q0 = quat[0];
	  var q1 = quat[1];
	  var q2 = quat[2];
	  var q3 = quat[3];

	  //Euler angles
      var rho   = Math.sqrt((q0*q0) + (q1*q1) + (q2*q2) + (q3*q3));
      //var phi   = Math.atan2 (2*(q0*q1 + q2*q3), 1 - 2*(q1*q1 + q2*q2));
      //var theta = Math.asin  (2*(q0*q2 - q3*q1));
      //var psi   = Math.atan2 (2*(q0*q3 + q1*q2), 1 - 2*(q2*q2 + q3*q3));
      var phi   = -Math.atan2 (2*(q2*q3 + q0*q1), -(q0*q0) + (q1*q1) + (q2*q2) - (q3*q3));
      var theta = -Math.asin  (2*(q0*q2 - q1*q3));
      var psi   =  Math.atan2 (2*(q1*q2 + q0*q3), (q0*q0) + (q1*q1) - (q2*q2) - (q3*q3));
      outlet(OUTLET_PSI, psi);
      outlet(OUTLET_THETA, theta);
      outlet(OUTLET_PHI, phi);
      outlet(OUTLET_RHO, rho);
    }
}