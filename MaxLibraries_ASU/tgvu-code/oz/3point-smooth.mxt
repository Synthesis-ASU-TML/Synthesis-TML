max v2;#N vpatcher 346 121 571 409;#P newex 26 94 27 196617 i;#P outlet 23 237 15 0;#P inlet 25 43 15 0;#P newex 23 189 50 196617 / 10000.;#P newex 25 74 51 196617 * 10000.;#P newex 23 143 55 196617 pack 0 0 0;#P flonum 23 215 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 25 114 45 196617 bucket 3;#P newex 23 165 29 196617 Lave;#P comment 87 74 111 196617 output moving average over 3 sample points;#P comment 88 110 56 196617 nik@f0.am;#P connect 3 0 5 0;#P connect 5 0 2 0;#P connect 2 0 7 0;#P connect 7 0 4 0;#P connect 4 0 9 0;#P connect 8 0 6 0;#P connect 10 0 3 0;#P connect 6 0 10 0;#P connect 3 1 5 1;#P connect 3 2 5 2;#P pop;