max v2;#N vpatcher 32 52 995 722;#P origin -20 0;#P comment 20 23 70 196626 mist;#P comment 20 53 143 196617 Yoichiro Serita � 2003 Topological Media Lab;#P newex 419 126 33 196617 * -1.;#P flonum 420 93 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 205 532 27 196617 + 1;#P user ubumenu 205 511 49 196617 0 1 1 0;#X add;#X prefix_set 0 0 <none> 0;#P newex 205 556 45 196617 gate 2 1;#P newex 489 380 65 196617 prepend 255;#P user swatch 489 341 128 32;#P newex 301 481 27 196617 + 1;#P user ubumenu 301 460 49 196617 0 1 1 0;#X add create;#X add wipe;#X prefix_set 0 0 <none> 0;#P newex 301 505 45 196617 gate 2 1;#P newex 457 447 40 196617 sel 0 1;#P user ubumenu 457 424 49 196617 0 1 1 0;#X add black;#X add white;#X prefix_set 0 0 <none> 0;#P message 457 471 42 196617 0 0 0 0;#P message 501 471 90 196617 255 255 255 255;#P newex 457 523 66 196617 jit.unpack;#P newex 457 495 128 196617 jit.matrix 4 char 320 240;#P newex 457 563 53 196617 jit.pack;#P user jit.pwindow 163 207 82 62 0 1 0 0 1 0;#P user jit.pwindow 300 560 82 62 0 1 0 0 1 0;#P newex 336 529 111 196617 jit.op @op !- @val 255;#P newex 457 599 69 196617 jit.alphablend;#P newex 164 283 27 196617 t l l;#P newex 164 309 88 196617 jit.op @op absdiff;#P comment 297 118 84 196617 with live cam;#P comment 297 94 86 196617 diffusion;#P comment 297 70 83 196617 smoke/ripple2;#N vpreset 1;#X append 1 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.8 \; 13 37 516 flonum float 0.05 \; 14 37 669 flonum float -0.72 \; 15 37 585 flonum float;#X append 1 2 10. \; 23 145 505 flonum float 0.445519 \; 24 145 549 flonum float -1.03666 \; 25 145 595 flonum float 0.397785 \; 27 173 593 flonum float 0.36 \; 28 173 637 flonum float 0.397785 \; 29 173 681;#X append 1 2 flonum float 0.36 \; 30 173 725 flonum float 0.397785 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 0.5 \; 39 302 401 flonum float 0.11 \;;#P preset 228 118 56 17;#N vpreset 4;#X append 1 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.26 \; 13 37 516 flonum float -0.02 \; 14 37 669 flonum float -0.5 \; 15 37 585 flonum float;#X append 1 2 8.89 \; 23 145 505 flonum float 0. \; 24 145 549 flonum float 0. \; 25 145 595 flonum float 0.25 \; 27 173 593 flonum float 0.25 \; 28 173 637 flonum float 0.25 \; 29 173 681;#X append 1 2 flonum float 0.25 \; 30 173 725 flonum float 0.25 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 5. \; 39 302 401 flonum float 0.11 \; 60 424 457 ubumenu int 1 \; 63 460 301;#X append 1 2 ubumenu int 1 \;;#X append 2 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.26 \; 13 37 516 flonum float -0.02 \; 14 37 669 flonum float -0.5 \; 15 37 585 flonum float;#X append 2 2 8.89 \; 23 145 505 flonum float 0. \; 24 145 549 flonum float 0. \; 25 145 595 flonum float 0.24 \; 27 173 593 flonum float 0.1 \; 28 173 637 flonum float 0.4 \; 29 173 681;#X append 2 2 flonum float 0.25 \; 30 173 725 flonum float 0.24 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 5. \; 39 302 401 flonum float 0.11 \; 60 424 457 ubumenu int 1 \; 63 460 301;#X append 2 2 ubumenu int 1 \;;#X append 3 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.26 \; 13 37 516 flonum float -0.02 \; 14 37 669 flonum float -0.5 \; 15 37 585 flonum float;#X append 3 2 8.89 \; 23 145 505 flonum float 0. \; 24 145 549 flonum float 0. \; 25 145 595 flonum float 0.24 \; 27 173 593 flonum float 0.1 \; 28 173 637 flonum float 0.4 \; 29 173 681;#X append 3 2 flonum float 0.25 \; 30 173 725 flonum float 0.25 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 5. \; 39 302 401 flonum float 0.11 \; 60 424 457 ubumenu int 1 \; 63 460 301;#X append 3 2 ubumenu int 1 \;;#X append 4 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.26 \; 13 37 516 flonum float -0.02 \; 14 37 669 flonum float -0.5 \; 15 37 585 flonum float;#X append 4 2 8.89 \; 23 145 505 flonum float 0. \; 24 145 549 flonum float 0. \; 25 145 595 flonum float 0.24 \; 27 173 593 flonum float 0.29 \; 28 173 637 flonum float 0.64 \; 29 173 681;#X append 4 2 flonum float -0.08 \; 30 173 725 flonum float 0.15 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 5. \; 39 302 401 flonum float 0.11 \; 60 424 457 ubumenu int 1 \; 63 460 301;#X append 4 2 ubumenu int 1 \;;#P preset 228 94 58 17;#N vpreset 3;#X append 1 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.47 \; 13 37 516 flonum float -0.02 \; 14 37 669 flonum float -0.5 \; 15 37 585 flonum float;#X append 1 2 8.89 \; 23 145 505 flonum float 1.420461 \; 24 145 549 flonum float -0.99005 \; 25 145 595 flonum float 0.142397 \; 27 173 593 flonum float 0.142397 \; 28 173 637 flonum float 0.142397 \; 29 173 681;#X append 1 2 flonum float 0.142397 \; 30 173 725 flonum float 0.142397 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 5. \; 39 302 401 flonum float 0.11 \; 60 424 457 ubumenu int 1 \; 63 460 301;#X append 1 2 ubumenu int 1 \;;#X append 2 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.47 \; 13 37 516 flonum float -0.02 \; 14 37 669 flonum float -0.5 \; 15 37 585 flonum float;#X append 2 2 8.89 \; 23 145 505 flonum float 1.420461 \; 24 145 549 flonum float -0.99005 \; 25 145 595 flonum float 0.142397 \; 27 173 593 flonum float 0.15 \; 28 173 637 flonum float 0.13 \; 29 173 681;#X append 2 2 flonum float 0.14 \; 30 173 725 flonum float 0.14 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 5. \; 39 302 401 flonum float 0.11 \; 60 424 457 ubumenu int 1 \; 63 460 301;#X append 2 2 ubumenu int 1 \;;#X append 3 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.32 \; 13 37 516 flonum float -0.02 \; 14 37 669 flonum float -0.5 \; 15 37 585 flonum float;#X append 3 2 8.89 \; 23 145 505 flonum float 0.74 \; 24 145 549 flonum float -0.99005 \; 25 145 595 flonum float 0.307183 \; 27 173 593 flonum float 0.307183 \; 28 173 637 flonum float 0.23 \; 29 173 681;#X append 3 2 flonum float 0.36 \; 30 173 725 flonum float 0.32 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 5. \; 39 302 401 flonum float 0.11 \; 60 424 457 ubumenu int 1 \; 63 460 301;#X append 3 2 ubumenu int 1 \;;#P preset 228 70 56 17;#N vpreset 2;#X append 1 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.8 \; 13 37 516 flonum float 0.05 \; 14 37 669 flonum float -0.5 \; 15 37 585 flonum float;#X append 1 2 10. \; 23 145 505 flonum float 0.443038 \; 24 145 549 flonum float -1.025316 \; 25 145 595 flonum float 0.39557 \; 27 173 593 flonum float 0.39557 \; 28 173 637 flonum float 0.39557 \; 29 173 681;#X append 1 2 flonum float 0.39557 \; 30 173 725 flonum float 0.39557 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 5. \; 39 302 401 flonum float 0.11 \; 60 424 457 ubumenu int 1 \; 63 460 301;#X append 1 2 ubumenu int 1 \;;#X append 2 2 10 94 53 toggle int 1 \; 11 94 98 number int 30 \; 12 37 445 flonum float 0.8 \; 13 37 516 flonum float 0.05 \; 14 37 669 flonum float -0.5 \; 15 37 585 flonum float;#X append 2 2 10. \; 23 145 505 flonum float 0.443038 \; 24 145 549 flonum float -1.025316 \; 25 145 595 flonum float 0.39557 \; 27 173 593 flonum float 0.39557 \; 28 173 637 flonum float 0.39557 \; 29 173 681;#X append 2 2 flonum float 0.39557 \; 30 173 725 flonum float 0.39557 \; 37 309 337 flonum float 0.85 \; 38 304 265 flonum float 0.5 \; 39 302 401 flonum float 0.11 \;;#P preset 228 44 55 18;#P newex 640 591 80 196617 ys.window mist;#P user jit.pwindow 237 360 82 62 0 1 0 0 1 0;#P flonum 401 302 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 265 304 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 337 309 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 400 328 69 196617 saturation \$1;#P message 265 328 70 196617 brightness \$1;#P message 337 328 61 196617 contrast \$1;#P newex 164 338 53 196617 jit.brcosa;#P newex 164 371 65 196617 jit.rgb2luma;#P newex 164 180 102 196617 ys.video pixelweight;#P flonum 725 173 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 681 173 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 637 173 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 593 173 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 461 201 277 196617 pak param 0. 0. 0. 0. 0. 0.;#P flonum 595 145 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 549 145 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 505 145 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 505 120 98 196617 unpack 0. 0. 0.;#P newex 53 233 89 196617 ys.jit.pixelweight;#N vpatcher 293 217 883 749;#P newex 121 182 53 196617 bondo 4;#P outlet 133 475 15 0;#P newex 126 421 65 196617 pack 0. 0. 0.;#P inlet 45 116 15 0;#P newex 121 155 212 196617 route distance timestep wavespeed viscosity;#P newex 399 359 105 196617 expr 2. * $f1 * $f2;#P newex 259 360 135 196617 expr ($f1 * $f2 - 2.) * $f3;#P newex 114 362 140 196617 expr (4.0 - 8. * $f1) * $f2;#P newex 327 255 134 196617 expr 1. / ($f2 * $f1 + 2.);#P comment 279 86 24 196617 mu;#P comment 212 86 16 196617 c;#P comment 121 92 16 196617 t;#P newex 121 256 201 196617 expr $f3 * $f3 * $f2 * $f2 / ($f1 * $f1);#P flonum 184 42 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 265 40 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 112 41 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 41 40 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 265 60 65 196617 viscosity \$1;#P message 184 61 73 196617 wavespeed \$1;#P message 112 61 63 196617 timestep \$1;#P message 41 59 61 196617 distance \$1;#P comment 71 85 16 196617 d;#P connect 5 0 1 0;#P connect 6 0 2 0;#P connect 9 0 14 0;#P connect 1 0 17 0;#P connect 2 0 17 0;#P connect 3 0 17 0;#P connect 18 0 17 0;#P connect 4 0 17 0;#P connect 17 0 21 0;#P connect 21 0 9 0;#P connect 14 0 19 0;#P connect 19 0 20 0;#P connect 17 1 21 1;#P connect 17 2 21 2;#P connect 15 0 19 1;#P connect 17 3 21 3;#P connect 16 0 19 2;#P connect 8 0 3 0;#P connect 21 1 9 1;#P connect 13 0 14 1;#P connect 21 1 15 0;#P connect 7 0 4 0;#P connect 21 2 9 2;#P connect 21 3 15 1;#P connect 21 1 13 0;#P connect 13 0 15 2;#P connect 9 0 16 0;#P connect 21 3 13 1;#P connect 13 0 16 1;#P pop;#P newobj 505 90 69 196617 p waveparam;#P message 18 496 32 196617 clear;#P newex 53 579 78 196617 jit.matrix wow;#P newex 53 556 52 196617 jit.pack 2;#P newex 53 527 75 196617 jit.op @op max;#P flonum 585 37 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 669 37 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 516 37 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 445 37 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 98 94 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P toggle 53 94 15 0;#P newex 53 121 55 196617 metro 500;#P user jit.pwindow 639 337 322 242 0 1 0 0 1 0;#P newex 53 266 95 196617 jit.unpack 2;#P message 669 56 65 196617 viscosity \$1;#P message 585 56 73 196617 wavespeed \$1;#P message 516 56 63 196617 timestep \$1;#P message 445 56 61 196617 distance \$1;#P newex 53 152 152 196617 jit.matrix wow 2 char 320 240;#P comment 297 44 84 196617 ripple;#P user panel 208 32 182 115;#X brgb 254 231 193;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P connect 10 0 9 0;#P connect 9 0 2 0;#P connect 2 0 21 0;#P connect 26 0 21 0;#P connect 21 0 7 0;#P connect 7 0 16 0;#P connect 16 0 17 0;#P connect 17 0 18 0;#P connect 19 0 18 0;#P connect 7 1 17 1;#P connect 11 0 9 1;#P fasten 32 0 16 1 169 398 123 398;#P connect 31 0 54 0;#P connect 54 0 50 0;#P connect 50 1 49 0;#P connect 49 0 33 0;#P connect 36 0 33 0;#P connect 34 0 33 0;#P connect 35 0 33 0;#P connect 33 0 32 0;#P connect 68 0 69 0;#P connect 69 0 67 0;#P connect 33 0 40 0;#P connect 50 0 49 1;#P connect 38 0 35 0;#P connect 63 0 64 0;#P connect 64 0 62 0;#P fasten 52 0 53 0 341 552 306 552;#P connect 62 0 53 0;#P connect 7 0 62 1;#P connect 62 1 52 0;#P connect 37 0 34 0;#P connect 39 0 36 0;#P connect 70 0 71 0;#P connect 12 0 3 0;#P connect 60 0 61 0;#P connect 61 0 59 0;#P connect 59 0 56 0;#P connect 58 0 56 0;#P connect 66 0 56 0;#P connect 56 0 57 0;#P fasten 53 0 55 0 306 635 434 635 434 558 462 558;#P connect 55 0 51 0;#P connect 57 1 55 1;#P connect 57 2 55 2;#P connect 65 0 66 0;#P connect 57 3 55 3;#P connect 61 1 58 0;#P connect 3 0 20 0;#P connect 4 0 20 0;#P connect 5 0 20 0;#P connect 6 0 20 0;#P connect 20 0 22 0;#P connect 70 0 23 0;#P connect 22 0 23 0;#P connect 23 0 26 1;#P connect 13 0 4 0;#P connect 54 0 51 1;#P connect 71 0 24 0;#P connect 22 1 24 0;#P connect 24 0 26 2;#P connect 15 0 5 0;#P connect 25 0 27 0;#P connect 27 0 26 3;#P connect 22 2 25 0;#P connect 25 0 28 0;#P connect 28 0 26 4;#P connect 51 0 8 0;#P connect 8 0 41 0;#P connect 14 0 6 0;#P connect 25 0 29 0;#P connect 29 0 26 5;#P connect 25 0 30 0;#P connect 30 0 26 6;#P pop;