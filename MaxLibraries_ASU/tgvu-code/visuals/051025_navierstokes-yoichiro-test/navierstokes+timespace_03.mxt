max v2;#N vpatcher 162 44 1105 692;#P origin 40 169;#P user gswitch 576 57 41 32 0 0;#P button 548 57 15 0;#P window setfont "Sans Serif" 9.;#N vpatcher 66 89 448 556;#P window setfont "Sans Serif" 9.;#P number 173 281 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#N counter 0 1 5;#X flags 0 0;#P newobj 173 240 71 196617 counter 0 1 5;#P button 94 248 15 0;#P outlet 88 305 37 0;#N comlet t bonk detection;#P inlet 63 28 26 0;#P message 113 168 28 196617 read;#P message 113 150 33 196617 write;#P message 113 123 64 196617 forget;#P message 113 104 64 196617 learn 0;#P message 113 84 64 196617 learn 10;#P message 113 64 65 196617 minvel 10;#P message 113 43 65 196617 thresh 6 50;#P toggle 63 158 15 0;#P newex 63 180 29 196617 adc~;#B color 5;#P window setfont "Sans Serif" 18.;#P newex 63 206 66 196626 bonk~;#B color 5;#P window setfont "Sans Serif" 9.;#P comment 7 137 68 196617 � start DSP.;#P connect 11 0 3 0;#P fasten 3 0 2 0 68 176 68 176;#P connect 2 0 1 0;#P fasten 10 0 1 0 118 202 68 202;#P fasten 9 0 1 0 118 202 68 202;#P fasten 8 0 1 0 118 202 68 202;#P fasten 7 0 1 0 118 202 68 202;#P fasten 6 0 1 0 118 202 68 202;#P fasten 5 0 1 0 118 202 68 202;#P fasten 4 0 1 0 118 203 68 203;#P fasten 14 0 12 0 178 271 93 271;#P connect 1 1 13 0;#P connect 13 0 14 0;#P connect 14 0 15 0;#P pop;#P newobj 547 31 68 196617 p bonkswitch;#P newex 279 676 38 196617 r vout;#P newex 698 142 38 196617 s vout;#P toggle 626 20 27 0;#N vpatcher 72 89 672 489;#P window setfont "Sans Serif" 9.;#P message 222 63 14 196617 1;#P newex 182 39 48 196617 loadbang;#N vpreset 1;#X append 1 2 2 56 48 toggle int 1 \; 3 160 75 number int 6 \; 4 62 111 number int 5900 \;;#P preset 206 86 47 27;#P outlet 75 204 15 0;#P inlet 75 29 15 0;#P number 111 62 51 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 75 160 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P toggle 48 56 15 0;#N counter 0 1 5;#X flags 0 0;#P newobj 75 128 71 196617 counter 0 1 5;#P newex 75 101 58 196617 metro 200;#P connect 5 0 0 0;#P connect 2 0 0 0;#P connect 0 0 1 0;#P connect 1 0 3 0;#P connect 1 0 6 0;#P connect 4 0 0 1;#P connect 9 0 7 0;#P connect 8 0 9 0;#P pop;#P newobj 626 51 46 196617 p looper;#P newex 992 53 47 196617 r vblues;#P newex 838 371 47 196617 s vblues;#P newex 919 47 69 196617 r vtimespace;#P newex 52 528 84 196617 send vtimespace;#P newex 258 507 60 196617 send vgray;#P newex 862 47 52 196617 r vsmoke;#P newex 806 47 45 196617 r vgray;#P newex 389 225 67 196617 send vsmoke;#P newex 401 140 60 196617 send vgray;#N vpreset 4;#X append 1 2 1 43 143 toggle int 1 \; 22 348 320 number int 0 \; 28 374 460 flonum float 0.24 \; 29 357 460 flonum float 0.21 \; 30 394 460 flonum float 0.04 \; 45 249 275 GSwitch int;#X append 1 2 0 \; 46 326 228 GSwitch2 int 1 \; 60 78 632 incdec int 0 \; 61 75 653 number int 1 \; 75 20 626 toggle int 1 \;;#X append 4 2 1 43 143 toggle int 1 \; 22 348 320 number int 0 \; 28 374 460 flonum float 0. \; 29 357 460 flonum float 0. \; 30 394 460 flonum float 0. \; 45 249 275 GSwitch int;#X append 4 2 0 \; 46 326 228 GSwitch2 int 1 \; 60 78 632 incdec int 0 \; 61 75 653 number int 5 \; 75 20 626 toggle int 0 \; 80 57 576 GSwitch int 0 \;;#P preset 442 42 47 27;#P newex 718 47 80 196617 receive vdirect;#P newex 149 102 66 196617 send vdirect;#P window setfont "Sans Serif" 18.;#P number 653 75 35 18 0 6 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user incdec 632 78 15 15 0 0;#P newex 695 109 341 196626 switch 6;#P window setfont "Sans Serif" 9.;#P newex 688 506 51 196617 to_Sound;#P newex 87 209 53 196617 jit.3m;#P newex 81 228 50 196617 jit.peek~;#P newex 64 263 44 196617 jit.peek;#P window setfont Skia 12.;#P window linecount 3;#P comment 598 674 120 133693452 utility to cut the top and the bottom for projection;#P window linecount 1;#P comment 164 366 45 133693452 border;#B frgb 0 116 96;#P comment 357 349 62 133693452 threshold;#B frgb 0 116 96;#P comment 148 331 86 133693452 discrete index;#B frgb 248 0 41;#P comment 265 330 86 133693452 gradient index;#B frgb 248 0 41;#P comment 306 258 74 133693452 navierstokes;#B frgb 248 0 41;#P window linecount 2;#P comment 259 217 115 133693452 index for timespace coming from..;#B frgb 248 0 41;#P window linecount 1;#P comment 221 257 74 133693452 pixelweight;#B frgb 248 0 41;#P user gswitch2 228 326 39 32 1 0;#P user gswitch 275 249 41 32 0 0;#P window setfont "Sans Serif" 9.;#P newex 488 693 85 196617 ys.windowcutter;#P message 488 634 69 196617 size 640 480;#P user jit.fpsgui 75 118 60 196617 3;#P newex 257 294 175 196617 jit.matrix 1 char 320 240 @interp 1;#P message 297 51 65 196617 dim 640 480;#P message 297 34 65 196617 dim 320 240;#P user jit.fpsgui 153 655 60 196617 3;#P user jit.fpsgui 168 431 60 196617 3;#P newex 488 668 103 196617 ys.windowcutter640;#P message 185 382 14 196617 1;#P message 168 403 58 196617 x \$1 \, y \$1;#P message 168 382 14 196617 0;#P newex 228 402 95 196617 jit.avg4 @x 1 @y 1;#P message 602 146 32 196617 clear;#P flonum 460 394 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 460 357 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 460 374 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 500 394 69 196617 saturation \$1;#P message 500 357 70 196617 brightness \$1;#P message 500 374 61 196617 contrast \$1;#P user jit.pwindow 492 422 82 62 0 1 0 0 1 0;#P newex 579 397 123 196617 jit.brcosa @brightness 2.;#P number 320 348 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user jit.pwindow 259 431 82 62 0 1 0 0 1 0;#P newex 228 370 102 196617 jit.op @op > @val 14;#P user jit.pwindow 142 529 82 62 0 1 0 0 1 0;#P newex 579 514 62 196617 jit.op @op -;#P newex 143 475 95 196617 ys.jit.timespace;#P newex 740 273 64 196617 jit.op @op *;#P newex 579 217 175 196617 jit.matrix 4 char 320 240 @interp 1;#P newex 304 703 55 196617 ys.window;#P user jit.pwindow 346 595 82 62 0 1 0 0 1 0;#P newex 304 558 63 196617 jit.op @op +;#P user jit.pwindow 741 378 82 62 0 1 0 0 1 0;#P newex 740 337 53 196617 jit.pack;#P newex 740 300 115 196617 pixelweight-instrument;#P user jit.pwindow 468 223 82 62 0 1 0 0 1 0;#P newex 579 169 121 196617 navierstokes-instrument;#P user jit.pwindow 468 144 82 62 0 1 0 0 1 0;#P message 194 43 32 196617 close;#P user jit.fpsgui 81 652 60 196617 0;#P message 163 41 29 196617 open;#P newex 579 115 65 196617 jit.rgb2luma;#P toggle 143 43 15 0;#P newex 143 69 45 196617 ys.video;#P connect 17 0 70 0;#P connect 0 0 42 0;#P connect 12 0 4 0;#P connect 39 0 0 0;#P connect 5 0 0 0;#P connect 3 0 0 0;#P connect 1 0 0 0;#P connect 40 0 0 0;#P connect 0 0 17 0;#P connect 17 0 19 0;#P connect 0 0 62 0;#P connect 12 0 38 0;#P connect 33 0 34 0;#P connect 35 0 34 0;#P connect 32 0 37 0;#P connect 46 0 20 0;#P connect 34 0 32 0;#P connect 20 0 32 0;#P connect 32 0 17 1;#P connect 46 1 17 1;#P connect 40 0 41 0;#P connect 39 0 41 0;#P connect 45 0 41 0;#P connect 41 0 46 1;#P connect 32 0 69 0;#P connect 9 0 45 1;#P connect 17 0 12 0;#P connect 77 0 14 0;#P connect 44 0 14 0;#P connect 43 0 14 0;#P connect 36 0 14 0;#P connect 7 0 45 2;#P connect 22 0 20 1;#P connect 12 0 13 0;#P connect 18 0 12 1;#P connect 7 0 66 0;#P connect 2 0 65 0;#P connect 29 0 26 0;#P connect 28 0 25 0;#P connect 30 0 27 0;#P connect 78 0 79 0;#P connect 0 0 2 0;#P connect 2 0 7 0;#P connect 31 0 7 0;#P connect 7 0 15 0;#P connect 15 0 23 0;#P connect 26 0 23 0;#P connect 25 0 23 0;#P connect 27 0 23 0;#P connect 23 0 18 0;#P connect 78 0 80 1;#P connect 74 0 80 2;#P connect 75 0 74 0;#P connect 10 0 18 1;#P connect 60 0 61 0;#P connect 80 0 61 0;#P connect 7 0 58 0;#P connect 61 0 59 0;#P connect 59 0 76 0;#P connect 15 0 16 0;#P connect 16 0 9 0;#P connect 16 1 9 0;#P connect 9 0 10 0;#P connect 63 0 59 1;#P connect 9 0 10 3;#P connect 15 0 16 1;#P connect 67 0 59 2;#P connect 10 0 72 0;#P connect 68 0 59 3;#P connect 71 0 59 4;#P connect 73 0 59 5;#P pop;