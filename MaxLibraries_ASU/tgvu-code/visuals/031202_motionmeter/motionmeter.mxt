max v2;#N vpatcher 73 73 1045 720;#P origin -2 23;#P button 11 93 15 0;#P newex 0 68 69 196617 route reset 0;#N comlet f instantaneous;#P outlet 715 439 30 0;#N comlet f accumulated;#P outlet 645 440 30 0;#P flonum 645 407 50 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 627 384 14 196617 0;#P newex 645 356 30 196617 t b f;#P newex 645 384 50 196617 accum 0.;#P comment 733 291 100 196617 2. Scale output;#N comlet video input;#P inlet 0 36 26 0;#N vpreset 1;#X append 1 2 8 135 235 flonum float 0. \; 9 135 163 flonum float 0. \; 10 135 298 flonum float 0. \; 15 219 153 number int 0 \; 19 458 188 multiSlider list 255 0 0 0 0 0 0;#X append 1 2 0 0 0 0 255 237 197 178 131 126 92 77 81 83 58 48 55 45 39 31 36 29 12 16 22 12 21 11 15 16 4 4 10 5 5 1 3 7 10 1;#X append 1 2 2 4 4 3 4 1 2 3 2 3 3 1 1 1 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;#X append 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;#X append 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;#X append 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;#X append 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;#X append 1 2 0 0 0 0 0 0 \; 22 478 58 number int 2087 \; 26 499 82 flonum float 0. \; 27 547 58 number int 208 \; 29 598 58 number int 408 \; 30 511 188 multiSlider list;#X append 1 2 408 \; 31 551 133 number int 0 \; 33 290 680 flonum float 0. \; 47 407 645 flonum float 214.710007 \;;#P preset 393 33 47 27;#P comment 95 32 132 196626 motionmeter;#P comment 226 32 143 196617 modified by SXW from motionsound Yoichiro Serita � 2003 Topological Media Lab;#P newex 58 331 40 196617 t b l b;#P newex 149 388 27 196617 + 1;#P message 130 432 53 196617 set \$2 \$1;#P newex 130 410 29 196617 pack;#P newex 560 265 55 196617 ys.window;#P flonum 680 290 52 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 645 313 45 196617 * 0.002;#P number 133 551 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user multiSlider 188 511 317 33 0. 1000. 1 3433 47;#M frgb 107 137 207;#M brgb 150 250 150;#M rgb2 127 127 127;#P number 58 598 50 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 58 573 85 196617 mavg 100;#P number 58 547 50 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 82 499 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 58 521 34 196617 * 0.1;#P newex 73 420 48 196617 gate;#P newex 73 398 27 196617 != 0;#P number 58 478 63 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 29 361 32 196617 set 0;#P newex 58 454 40 196617 accum;#P user multiSlider 188 458 317 33 0. 255. 253 2921 47;#M frgb 50 150 50;#M brgb 150 250 150;#M rgb2 127 127 127;#P newex 73 361 40 196617 jit.iter;#P user jit.pwindow 57 296 370 29 0 1 0 0 1 0;#P newex 58 275 181 196617 jit.histogram 1 long 256 @autoclear 1;#B color 5;#P number 153 219 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user jit.pwindow 559 20 322 242 0 1 0 0 1 0;#P newex 58 242 105 196617 jit.op @op >p @val 10;#P newex 58 128 27 196617 t l l;#P newex 58 155 88 196617 jit.op @op absdiff;#P flonum 298 135 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 163 135 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 235 135 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 298 159 69 196617 saturation \$1;#P message 163 159 70 196617 brightness \$1;#P message 235 159 61 196617 contrast \$1;#P newex 58 183 53 196617 jit.brcosa;#P newex 58 211 65 196617 jit.rgb2luma;#P comment 162 116 100 196617 1. Tune video input;#P comment 591 384 33 196617 reset;#P comment 95 57 135 196617 measures accumulated optical change;#P connect 42 0 50 0;#P connect 50 1 51 0;#P connect 50 0 51 0;#P connect 38 2 21 0;#P connect 50 2 12 0;#P connect 12 1 11 0;#P connect 11 0 4 0;#P connect 7 0 4 0;#P connect 5 0 4 0;#P connect 6 0 4 0;#P connect 4 0 3 0;#P connect 3 0 13 0;#P connect 13 0 16 0;#P connect 16 0 17 0;#P connect 17 0 38 0;#P connect 21 0 20 0;#P connect 38 0 20 0;#P connect 20 0 22 0;#P connect 22 0 25 0;#P connect 25 0 27 0;#P connect 27 0 28 0;#P connect 28 0 29 0;#P connect 38 1 18 0;#P connect 18 1 23 0;#P connect 23 0 24 0;#P connect 24 0 20 1;#P connect 26 0 25 1;#P connect 18 0 24 1;#P connect 18 0 35 0;#P connect 35 0 36 0;#P connect 31 0 28 1;#P connect 12 0 11 1;#P connect 18 1 37 0;#P connect 37 0 35 1;#P connect 15 0 13 1;#P connect 9 0 6 0;#P connect 36 0 19 0;#P connect 29 0 30 0;#P connect 8 0 5 0;#P connect 10 0 7 0;#P fasten 13 0 14 0 63 264 548 264 548 14 565 14;#P connect 14 0 34 0;#P hidden fasten 51 0 46 0 16 111 493 111 493 379 632 379;#P lcolor 5;#P fasten 29 0 32 0 63 617 574 617 574 290 650 290;#P connect 32 0 45 0;#P hidden connect 46 0 44 0;#P connect 45 0 44 0;#P connect 44 0 47 0;#P connect 47 0 48 0;#P connect 45 1 44 1;#P connect 33 0 32 1;#P fasten 45 1 49 0 670 380 720 380;#P pop;