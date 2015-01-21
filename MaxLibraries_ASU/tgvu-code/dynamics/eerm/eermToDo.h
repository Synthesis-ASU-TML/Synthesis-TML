
#ifdef NotDefined


==============
Recent changes
==============

--some bugs / malformed assertions removed.

--multiple instantiation works.

--added MTraceForce define for tracing details of
  the force calculations at each timestep.
  see eermDefines.h  

--increased the default value for expscale.

  expscale sets the scale for the influence of
  the sensornode coupling on the token force.
  if it is too small, then sensor-node energies
  which differ by a large amount will give rise
  to force coefficients which do not differ by
  very much.


--changed default damping.

--fixed a sort bug.  simplex nodelists should
  now be self-sorting (pass list in whatever order
  you like)


==========
Known bugs
==========

Try to reproduce:

--NodeSetMean sX f1 f2 when sX dne crashes

--TokenSetSimplex tokenX simplexY when tokenX dne 
and/or simplexY dne crashes.

--SimplexNew nodeX when nodeX dne crashes.  

--other references to a simplex when simplex dne crash?


========
EermToDo
========
	
[ ]Add assertion to insure that the velocity is tangent!	
	
[ ]Sort simplex contents (eermI.h line 876):
   need to debug isort(N, *n) in graphModelUtilI.h

[ ]Test util functions (sort etcetera):
  tightly specify the behavior and add assertions.

[ ]Work out the correct scalings for the following: mass, damping, expscale.

[ ]Make room script

  [ ]Add disconnected component on which room token lives.
	[ ]Other stuff related to above.

[ ]Fix inverse-square force.

[ ]Clarify "potential" usage.

[ ]Reproduce bugs above.

[x]Work on player script	
	
	[ ]Parameter controls
	
[ ]ForceMeter f1 f2 .. f_Nf	

[ ]Internal clocking -- scheduling bug.

[ ]Check Todos and MInvalids inlined.

[-]Consider default naming for nodes etc.

[-]Permit transitions changing the simplex dimension.

[x]Get rid of the globals.  
[ ]Make them struct members.

[ ]Rename ForceConvex.  Move ForceConvex and Project
   Tangent to GraphModelUtilI.h (and anything else
   which belongs there).

[ ]Move everything possible, including string handling,
   to eermI.h
   
[ ]On TokenOutput, if NullStr, output the NodeIndex
   On TokenOutput, if NullStr, suppress?



=========
EermOther
=========


Optimization:
-------------

--Make a release project.
--Compile for release.
--Profile.
--Inline where it is important to do so.
  (presumably impossible at msg entry, etc).
--Examine the TokenEvolve stuff for special optimizations.
--It might make sense to preallocate in certain places.


Addl Max Patches:
-----------------

--New monitoring patches?


Eerm Graphics:
--------------

--Jitter SDK - GL / Matrix setup
--OpenGL stuff


Other Libraries:
----------------

--Higher-level GL
--Boost / POOMA / Other numerical.


For Later
---------

--port to flext layer

--Consider XML-based design language:

	> Pros: Formally nice. Generic. 
	        Portable. Can extend existing ML.
	        Might be able to adapt XML based graph design tools.
	        Could evolve into a txoom-wide XML.

	> Cons: More Parsing. More work. Too Static(?).

--Save functionality through same.


#endif
