/*-----------------------------------------_-----------_-------------------_--------
 _ _ ___ __ _  _ _ _ _ _ ___ _ _  __ ___  | |_ _____ _| |_ _  _ _ _ ___   (_)___
| '_/ -_) _| || | '_| '_/ -_) ' \/ _/ -_) |  _/ -_) \ /  _| || | '_/ -_)_ | (_-<
|_| \___\__|\_,_|_| |_| \___|_||_\__\___|  \__\___/_\_\\__|\_,_|_| \___(_)/ /__/
                                                                        |__/   
Recurrence Texture

Version 1.2 April 13 2014

Visualize movement patterns. Written by Kuldeep Kulkarni at Arizona State
University's School of Electrical, Energy and Computer Engineering and School of 
Arts, Media + Engineering. Ported to Max Javascript by Michael Krzyzaniak in
spring of 2014.

mkrzyzan@asu.edu
----------------------------------------------------------------------------------*/

inlets = 1;
outlets = 1;

setinletassist(0, "'timepoint x y z' sets the location of the next sample. " + 
                  "'clear' clears the matrix");
setoutletassist(0, "matrix containing visualization of the movement");

var NUM_TIMEPOINTS_PER_GESTURE = 100;
var SENSITIVITY = 0.01;

var timepoints = new Array();
var matrix = new JitterMatrix(1, "char", 
    NUM_TIMEPOINTS_PER_GESTURE, NUM_TIMEPOINTS_PER_GESTURE);
var should_animate = false;

/*--------------------------------------------------------------------------------*/
function clear()
{
  matrix.clear();
  delete timepoints;
  timepoints = new Array();

  outlet(0, "jit_matrix", matrix.name);
}

/*--------------------------------------------------------------------------------*/
function set_num_timepoints_per_gesture(n)
{
  if(n < 10)   n = 10;
  if(n > 1000) n = 1000;

  NUM_TIMEPOINTS_PER_GESTURE = n;
  
  delete matrix;
  matrix = new JitterMatrix(1, "char", 
    NUM_TIMEPOINTS_PER_GESTURE, NUM_TIMEPOINTS_PER_GESTURE);

  clear();
}

/*--------------------------------------------------------------------------------*/
function set_sensitivity(s)
{
  SENSITIVITY = s;
  redraw_everything();
}

/*--------------------------------------------------------------------------------*/
function bang()
{
  if(should_animate)
    outlet(0, "jit_matrix", matrix.name);
}

/*--------------------------------------------------------------------------------*/
function timepoint(x, y, z)
{
  var point = arrayfromargs(arguments);
  var current_index = timepoints.length;

  if(current_index < NUM_TIMEPOINTS_PER_GESTURE)
    {
      var i, dist;
      timepoints.push(point);
      should_animate = true;
      	
      draw_row_and_column(current_index);
    }
  else
    should_animate = false; 
}

/*--------------------------------------------------------------------------------*/
function draw_row_and_column(index)
{
  var i;
  for(i=0; i<=index; i++)
    {	   
      var xx = timepoints[i][0] - timepoints[index][0];
      var yy = timepoints[i][1] - timepoints[index][1];
      var zz = timepoints[i][2] - timepoints[index][2];
      dist = Math.sqrt(xx*xx + yy*yy + zz*zz);
      dist *= SENSITIVITY;

      matrix.setcell2d(i, index, dist);
      matrix.setcell2d(index, i, dist);
    }  
}

/*--------------------------------------------------------------------------------*/
function redraw_everything()
{
  var i;
  for(i=0; i<timepoints.length; i++)
    draw_row_and_column(i);
  outlet(0, "jit_matrix", matrix.name);
}