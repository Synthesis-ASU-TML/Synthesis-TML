max v2;#N vpatcher 627 327 859 639;#P newex 90 241 75 196617 expr sqrt($f1);#P flonum 112 263 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P inlet 121 54 15 0;#P inlet 46 53 15 0;#P outlet 90 279 15 0;#P newex 90 216 27 196617 +;#P newex 132 177 35 196617 pow 2;#P newex 46 178 35 196617 pow 2;#P newex 132 140 27 196617 -;#P newex 46 141 27 196617 -;#P newex 121 103 38 196617 unpack;#P newex 46 103 38 196617 unpack;#P message 90 68 23 196617 3 3;#P message 18 68 23 196617 1 1;#P connect 10 0 2 0;#P connect 0 0 2 0;#P connect 2 0 4 0;#P connect 4 0 6 0;#P connect 3 0 4 1;#P connect 6 0 8 0;#P connect 8 0 13 0;#P connect 13 0 9 0;#P connect 7 0 8 1;#P connect 13 0 12 0;#P connect 11 0 3 0;#P connect 1 0 3 0;#P connect 2 1 5 0;#P connect 5 0 7 0;#P connect 3 1 5 1;#P pop;