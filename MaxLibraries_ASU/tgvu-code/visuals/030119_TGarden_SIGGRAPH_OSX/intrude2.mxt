max v2;#N vpatcher 42 185 543 657;#P newex 139 142 38 196617 pow 2.;#P newex 73 167 27 196617 + 1;#P newex 73 145 35 196617 > 0.1;#P newex 73 190 50 196617 gate 2;#P comment 135 76 37 196617 image;#P outlet 225 371 15 0;#P newex 260 282 27 196617 b;#P flonum 225 93 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P inlet 225 69 15 0;#P inlet 113 73 15 0;#P newex 139 164 33 196617 * 50.;#P flonum 225 159 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 225 182 48 196617 xfade \$1;#P newex 225 329 45 196617 jit.xfade;#P number 139 187 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 139 210 41 196617 grid \$1;#P newex 113 239 45 196617 jit.hatch;#P newex 260 304 119 196617 jit.noise 4 char 320 240;#P comment 272 73 100 196617 weight of "intrude" (0.0 - 1.0);#P connect 11 0 16 0;#P connect 16 0 17 0;#P connect 17 0 15 0;#P connect 9 0 15 1;#P fasten 3 0 2 0 144 228 118 228;#P connect 15 1 2 0;#P connect 11 0 18 0;#P connect 18 0 8 0;#P connect 8 0 4 0;#P connect 4 0 3 0;#P connect 10 0 11 0;#P connect 11 0 7 0;#P connect 7 0 6 0;#P fasten 15 0 5 0 78 291 230 291;#P fasten 2 0 5 0 118 289 230 289;#P connect 6 0 5 0;#P connect 15 0 13 0;#P connect 2 0 13 0;#P connect 9 0 12 0;#P connect 12 0 1 0;#P connect 1 0 5 1;#P pop;