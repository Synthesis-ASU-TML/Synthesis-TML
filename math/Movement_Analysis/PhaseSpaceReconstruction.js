/*----_-----------------------------------------------------------------_-----------    _   _          
 _ __| |_  __ _ ___ ___   ____ __  __ _ __ ___   _ _ ___ __ ___ _ _  __| |_ _ _ _  _ __| |_(_)___ _ _  
| '_ \ ' \/ _` (_-</ -_) (_-< '_ \/ _` / _/ -_) | '_/ -_) _/ _ \ ' \(_-<  _| '_| || / _|  _| / _ \ ' \ 
| .__/_||_\__,_/__/\___| /__/ .__/\__,_\__\___| |_| \___\__\___/_||_/__/\__|_|  \_,_\__|\__|_\___/_||_|
|_|                         |_|                                                                        
Phase Space Reconstruction

Version 1.2 April 13 2014

Visualize movement patterns. Written by Vinay Venkataraman at Arizona State
University's School of Electrical, Energy and Computer Engineering and School of 
Arts, Media + Engineering. Ported to Max Javascript by Michael Krzyzaniak in
spring of 2014.

mkrzyzan@asu.edu
----------------------------------------------------------------------------------*/

var NUM_TIMEPOINTS_PER_GESTURE = 100;
var POSITION_MIN   = 0;
var POSITION_MAX   = 1000;
var TIMESTEP       = 1;      //relative to sample rate
var USED_DIMENTION = 0;      //x, y, or z

var timepoints     = new Array;
var num_drawn_points;

/*--------------------------------------------------------------------------------*/
var render_context_name = "default_render_context"

if(jsarguments.length > 1)
  render_context_name = jsarguments[1];

var render = new JitterObject("jit.gl.render", render_context_name);
render.erase_color = [0.0, 0.0, 0.0, 1.0];

var sketch = new JitterObject("jit.gl.sketch", render_context_name);
sketch.lighting_enable = 1;

var handle = new JitterObject("jit.gl.handle", render_context_name);
handle.inherit_transform = 1;
handle.auto_rotate = 1;


setinletassist(0, "'timepoint x y z' sets the location of the next sample. " + 
                  "'clear' clears the window");
setoutletassist(0, "3d drawing commands -- connect to jit.gl.sketch");

clear();

/*--------------------------------------------------------------------------------*/
function clear()
{
  delete timepoints;
  timepoints = new Array;
  clear_display_only();
}

/*--------------------------------------------------------------------------------*/
function clear_display_only()
{
  //handle.reset();
  num_drawn_points = 0;
  sketch.reset();
  bang();
  //sketch.glcolor(0.75, 0.75, 1, 1); //r g b a
  sketch.gllinewidth(2);
  sketch.gllightmodel("ambient", 0.3, 0.3, 0.3);
}

/*--------------------------------------------------------------------------------*/
function bang()
{
  render.position = handle.position;
  render.rotate   = handle.rotate;
  render.erase();
  render.drawswap();
}

/*--------------------------------------------------------------------------------*/
function set_num_timepoints_per_gesture(n)
{
  if(n < 10)   n = 10;
  if(n > 1000) n = 1000;

  NUM_TIMEPOINTS_PER_GESTURE = n;

  clear();
}

/*--------------------------------------------------------------------------------*/
function set_position_range(minimum, maximum)
{
  POSITION_MIN = minimum;
  POSITION_MAX = maximum;
  redraw_everything();
}

/*--------------------------------------------------------------------------------*/
function set_timestep(n)
{
  if(n <= 0.1) n = 0.1;
  TIMESTEP = n;
  redraw_everything();
}

/*--------------------------------------------------------------------------------*/
function set_used_dimention(n)
{
  if((n>=0) && (n<=3))
    {
      USED_DIMENTION = n;
      redraw_everything();
    }
}

/*--------------------------------------------------------------------------------*/
function timepoint(x, y, z)
{
  if(timepoints.length < NUM_TIMEPOINTS_PER_GESTURE)
    {	
      var a = [x, y, z];
      timepoints.push(a);

	  draw_points(TIMESTEP * num_drawn_points, timepoints.length-1);
    }
}

/*--------------------------------------------------------------------------------*/
function redraw_everything()
{
  clear_display_only();
  draw_points(0, timepoints.length - 1);
}

/*--------------------------------------------------------------------------------*/
function draw_points(t_initial, t_final)
{  
  var i;
  var timestep_times_two = TIMESTEP * 2;  

  while(t_initial + timestep_times_two <= t_final)
    {
      draw_point(t_initial);
      t_initial += TIMESTEP;
    }
}

/*--------------------------------------------------------------------------------*/
function draw_point(t)
{
  if(  (t < 0) || ((t + TIMESTEP*2) > (timepoints.length-1))  ) 
    return;

  var x, y, z;
  x = get_location_at_time_by_interpolation(t);
  y = get_location_at_time_by_interpolation(t +   TIMESTEP);
  z = get_location_at_time_by_interpolation(t + 2*TIMESTEP);

  x = scalef(x, POSITION_MIN, POSITION_MAX, -0.5, 0.5);
  y = scalef(y, POSITION_MIN, POSITION_MAX, -0.5, 0.5);
  z = scalef(z, POSITION_MIN, POSITION_MAX, -0.5, 0.5);

  //if(t == 0)
  if(num_drawn_points == 0)
    sketch.moveto(x, y, z);
  else
    sketch.lineto(x, y, z);

  sketch.sphere(0.025);
  ++num_drawn_points;
}

/*--------------------------------------------------------------------------------*/
function get_location_at_time_by_interpolation(t)
{
  var result = 0;
  var max_t = timepoints.length-1;

  if(t < 0) t = 0;
  if(t > max_t) t = max_t;

  if(t == max_t) 
    result = timepoints[t][0];
  else
    {
      var index = Math.floor(t);
      var mantissa = t - index;

      var result = timepoints[index+1][USED_DIMENTION] - timepoints[index][USED_DIMENTION];
      result *= mantissa;
      result += timepoints[index][USED_DIMENTION];
    }

  return result;
}

/*--------------------------------------------------------------------------------*/
function scalef(val, in_min, in_max, out_min, out_max)
{
  return (val - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}