max v2;#N vpatcher 220 79 960 680;#P comment 452 358 104 196626 armangle;#P comment 555 358 143 196617 Yoichiro Serita � 2003 Topological Media Lab;#P comment 625 309 49 196617 direction;#P comment 524 309 49 196617 data plot;#P user jit.pwindow 603 205 102 102 0 1 0 0 1 0;#P user jit.pwindow 500 205 102 102 0 1 0 0 1 0;#P button 291 31 47 0;#P outlet 174 522 15 0;#P comment 215 486 120 196617 angle between two arms;#P newex 244 455 164 196617 if $f1 < -3.1416 then $f2 else $f1;#P newex 174 424 182 196617 if $f1 > 3.1416 then $f2 else out2 $f1;#P flonum 174 484 35 12 0 0 0 2040 0 0 0 255 227 23 222 222 222 0 0 0;#P newex 346 401 43 196617 - 6.283;#P newex 398 401 44 196617 + 6.283;#P flonum 195 327 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 174 375 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 174 351 31 196617 - 0.;#P comment 427 252 35 196617 scaled;#P comment 484 191 31 196617 theta;#P comment 498 101 66 196617 set direction;#P button 562 117 15 0;#P flonum 402 232 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P flonum 454 232 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P newex 402 208 62 196617 unpack 0. 0.;#P flonum 442 172 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P flonum 482 172 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P message 513 117 29 196617 calib;#P message 430 117 32 196617 reset;#P newex 402 89 66 196617 pack 0. 0.;#P newex 402 145 170 196617 compass_visual;#B color 5;#P flonum 458 62 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P flonum 402 62 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P newex 458 39 43 196617 r p4-s5;#B color 12;#P newex 402 39 43 196617 r p4-s4;#B color 12;#P comment 579 119 78 196617 clear lcd screen;#P comment 67 250 35 196617 scaled;#P comment 124 189 31 196617 theta;#P comment 286 297 49 196617 direction;#P comment 185 297 49 196617 data plot;#P comment 484 417 90 133693452 Yoichiro Serita 04.21.2003;#P comment 481 390 82 133693458 armangle;#P comment 138 99 66 196617 set direction;#P button 202 115 15 0;#P flonum 42 230 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P flonum 94 230 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P newex 42 206 62 196617 unpack 0. 0.;#P flonum 82 170 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P flonum 122 170 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P message 153 115 29 196617 calib;#P message 70 115 32 196617 reset;#P user jit.pwindow 264 193 102 102 0 1 0 0 1 0;#P user jit.pwindow 161 193 102 102 0 1 0 0 1 0;#P newex 42 87 66 196617 pack 0. 0.;#P newex 42 143 170 196617 compass_visual;#B color 5;#P flonum 98 60 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P flonum 42 60 35 12 0 0 0 2040 0 0 0 74 156 97 222 222 222 0 0 0;#P newex 98 37 43 196617 r p2-s5;#B color 12;#P newex 42 37 43 196617 r p2-s4;#B color 12;#P comment 219 117 78 196617 clear lcd screen;#P connect 1 0 3 0;#P connect 3 0 6 0;#P connect 6 0 5 0;#P connect 9 0 5 0;#P connect 10 0 5 0;#P connect 5 0 13 0;#P connect 13 0 15 0;#P connect 5 1 12 0;#P connect 13 1 14 0;#P connect 2 0 4 0;#P connect 4 0 6 1;#P connect 5 2 11 0;#P connect 52 0 10 0;#P connect 5 3 7 0;#P connect 11 0 42 0;#P connect 42 0 43 0;#P connect 43 0 48 0;#P fasten 49 0 47 0 249 477 179 477;#P connect 48 0 47 0;#P connect 47 0 51 0;#P connect 33 0 44 0;#P connect 44 0 42 1;#P connect 16 0 5 2;#P fasten 48 1 49 0 351 448 249 448;#P connect 5 4 8 0;#P fasten 43 0 46 0 179 393 351 393;#P connect 46 0 48 1;#P fasten 43 0 45 0 179 393 403 393;#P connect 45 0 49 1;#P connect 25 0 27 0;#P connect 27 0 30 0;#P connect 32 0 29 0;#P connect 31 0 29 0;#P connect 30 0 29 0;#P connect 29 0 35 0;#P connect 35 0 37 0;#P connect 29 1 34 0;#P connect 35 1 36 0;#P connect 26 0 28 0;#P connect 28 0 30 1;#P connect 29 2 33 0;#P connect 29 3 53 0;#P connect 52 0 32 0;#P connect 38 0 29 2;#P connect 29 4 54 0;#P pop;