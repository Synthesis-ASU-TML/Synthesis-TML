max v2;#N vpatcher 246 176 763 477;#P origin 0 -29;#P button 100 198 15 0;#P newex 335 104 27 196617 gate;#P newex 278 105 27 196617 gate;#P newex 215 105 27 196617 gate;#P newex 154 105 27 196617 gate;#P newex 95 105 27 196617 gate;#P toggle 57 50 15 0;#N comlet t data in;#P inlet 57 21 23 0;#P newex 35 105 27 196617 gate;#P newex 346 172 39 196617 * 100.;#P newex 356 83 45 196617 r $1-s6;#P newex 232 172 39 196617 * 100.;#P newex 290 172 39 196617 * 100.;#P newex 295 83 45 196617 r $1-s5;#P newex 232 83 45 196617 r $1-s4;#P newex 105 223 100 196617 pack 0. 0. 0. 0. 0. 0.;#N comlet l (i i i i i i) sensor data list;#P outlet 99 254 24 0;#P newex 52 172 39 196617 * 100.;#P newex 112 172 39 196617 * 100.;#P inlet 13 23 21 0;#P newex 170 172 39 196617 * 100.;#P newex 170 84 45 196617 r $1-s3;#P newex 112 84 45 196617 r $1-s2;#P newex 52 84 45 196617 r $1-s1;#P fasten 17 0 15 0 62 70 40 70;#P connect 0 0 15 1;#P connect 15 0 6 0;#P fasten 16 0 17 0 62 46 62 46;#P fasten 4 0 6 1 18 160 86 160;#P fasten 17 0 18 0 62 70 100 70;#P connect 8 0 7 0;#P connect 14 0 23 0;#P connect 12 0 23 0;#P connect 11 0 23 0;#P connect 5 0 23 0;#P connect 3 0 23 0;#P connect 23 0 8 0;#P connect 6 0 8 0;#P connect 1 0 18 1;#P connect 18 0 5 0;#P connect 5 0 8 1;#P fasten 4 0 5 1 18 160 146 160;#P connect 3 0 8 2;#P fasten 17 0 19 0 62 70 159 70;#P connect 12 0 8 3;#P connect 19 0 3 0;#P connect 2 0 19 1;#P connect 11 0 8 4;#P connect 14 0 8 5;#P fasten 4 0 3 1 18 160 204 160;#P fasten 17 0 20 0 62 70 220 70;#P connect 9 0 20 1;#P connect 20 0 12 0;#P fasten 4 0 12 1 18 160 266 160;#P fasten 17 0 21 0 62 70 283 70;#P connect 21 0 11 0;#P connect 10 0 21 1;#P fasten 4 0 11 1 18 160 324 160;#P fasten 17 0 22 0 62 70 340 70;#P connect 22 0 14 0;#P connect 13 0 22 1;#P fasten 4 0 14 1 18 160 380 160;#P pop;