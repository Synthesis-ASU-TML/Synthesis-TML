max v2;#N vpatcher 39 59 1024 759;#P origin 0 -3;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P message 59 59 29 196617 read;#P toggle 8 41 15 0;#P newex 7 55 51 196617 metro 80;#P newex 17 75 62 196617 jit.qt.movie;#P toggle 647 621 15 0;#P hidden newex 645 638 27 196617 gate;#P user jit.pwindow 668 595 82 62 0 1 0 0 1 0;#P toggle 12 457 15 0;#P hidden newex 10 474 27 196617 gate;#P user jit.pwindow 33 431 82 62 0 1 0 0 1 0;#P toggle 419 460 15 0;#P hidden newex 417 477 27 196617 gate;#P user jit.pwindow 440 434 82 62 0 1 0 0 1 0;#P toggle 304 350 15 0;#P hidden newex 302 367 27 196617 gate;#P user jit.pwindow 325 324 82 62 0 1 0 0 1 0;#P toggle 321 270 15 0;#P hidden newex 312 285 27 196617 gate;#P user jit.pwindow 336 231 82 62 0 1 0 0 1 0;#P toggle 614 130 15 0;#P hidden newex 612 147 27 196617 gate;#P newex 553 132 30 196617 s pw;#P window setfont "Sans Serif" 18.;#P comment 13 24 136 196626 memoryplace2;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 148 25 143 196617 Yoichiro Serita � 2003 Topological Media Lab;#P window linecount 1;#P newex 863 467 128 196617 ys.window memoryspace2;#P flonum 892 48 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 747 44 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 824 48 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 892 67 69 196617 saturation \$1;#P message 747 67 70 196617 brightness \$1;#P message 824 67 61 196617 contrast \$1;#P newex 863 436 53 196617 jit.brcosa;#P newex 114 53 112 196617 ys.video memoryspace;#N vpreset 7;#X append 1 2 5 166 142 GSwitch2 int 1 \; 15 296 40 ubumenu int 1 \; 16 99 251 number int 10 \; 25 153 195 number int 1 \; 27 123 342 flonum float 1.25 \; 35 198 631 toggle int;#X append 1 2 1 \; 36 249 675 number int 20 \; 50 221 818 uslider int 0 \; 52 315 818 flonum float 0. \; 58 365 540 number int 1 \; 59 365 580 number int 1 \; 61 416 716;#X append 1 2 number int 24 \; 66 408 224 number int 1 \;;#X append 2 2 5 166 142 GSwitch2 int 1 \; 15 296 40 ubumenu int 1 \; 16 99 251 number int 10 \; 25 153 195 number int 5 \; 27 123 342 flonum float 1.28 \; 35 198 631 toggle int;#X append 2 2 1 \; 36 249 675 number int 20 \; 50 221 818 uslider int 0 \; 52 315 818 flonum float 0. \; 58 365 540 number int 1 \; 59 365 580 number int 1 \; 61 416 716;#X append 2 2 number int 1 \; 66 408 224 number int 1 \;;#X append 3 2 5 166 142 GSwitch2 int 1 \; 15 296 40 ubumenu int 1 \; 16 99 251 number int 10 \; 25 153 195 number int 6 \; 27 123 342 flonum float 1.278 \; 35 198 631 toggle int;#X append 3 2 1 \; 36 249 675 number int 20 \; 50 221 818 uslider int 0 \; 52 315 818 flonum float 0. \; 58 365 540 number int 1 \; 59 365 580 number int 1 \; 61 416 716;#X append 3 2 number int 24 \; 66 408 224 number int 2 \;;#X append 4 2 5 166 142 GSwitch2 int 1 \; 15 296 40 ubumenu int 1 \; 16 99 251 number int 10 \; 25 153 195 number int 4 \; 27 123 342 flonum float 1.28 \; 35 198 631 toggle int;#X append 4 2 1 \; 36 249 675 number int 20 \; 50 221 818 uslider int 0 \; 52 315 818 flonum float 0. \; 58 365 540 number int 1 \; 59 365 580 number int 1 \; 61 416 716;#X append 4 2 number int 1 \; 66 408 224 number int 2 \;;#X append 5 2 5 166 142 GSwitch2 int 1 \; 15 296 40 ubumenu int 1 \; 16 99 251 number int 10 \; 25 153 195 number int 9 \; 27 123 342 flonum float 1.252 \; 35 198 631 toggle int;#X append 5 2 1 \; 36 249 675 number int 20 \; 50 221 818 uslider int 0 \; 52 315 818 flonum float 0. \; 58 365 540 number int 1 \; 59 365 580 number int 1 \; 61 416 716;#X append 5 2 number int 24 \; 66 408 224 number int 3 \;;#X append 6 2 5 166 142 GSwitch2 int 1 \; 15 296 40 ubumenu int 1 \; 16 99 251 number int 10 \; 25 153 195 number int 5 \; 27 123 342 flonum float 1.268 \; 35 198 631 toggle int;#X append 6 2 1 \; 36 249 675 number int 20 \; 50 221 818 uslider int 0 \; 52 315 818 flonum float 0. \; 58 365 540 number int 1 \; 59 365 580 number int 1 \; 61 416 716;#X append 6 2 number int 1 \; 66 408 224 number int 3 \;;#X append 7 2 5 166 142 GSwitch2 int 1 \; 15 296 40 ubumenu int 1 \; 16 99 251 number int 10 \; 25 153 195 number int 7 \; 27 123 342 flonum float 1.513 \; 35 198 631 toggle int;#X append 7 2 1 \; 36 249 675 number int 20 \; 50 221 818 uslider int 0 \; 52 315 818 flonum float 0. \; 58 365 540 number int 1 \; 59 365 580 number int 1 \; 61 416 716;#X append 7 2 number int 0 \; 66 408 224 number int 4 \;;#P preset 668 50 47 27;#P number 224 408 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 224 432 66 196617 switch 4;#P newex 195 371 91 196617 jit.op @op *;#P newex 526 617 114 196617 jit.op @op !- @val 255;#P newex 716 392 25 196617 lb 1;#P number 716 416 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P newex 631 440 95 196617 jit.op @op - @val 1;#P number 580 365 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 540 365 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 580 388 29 196617 y \$1;#P message 540 388 29 196617 x \$1;#P newex 631 344 95 196617 jit.avg4 @x 1 @y 1;#P user jit.pwindow 635 104 82 62 0 1 0 0 1 0;#P user jit.pwindow 115 457 293 226 0 1 0 0 1 0;#P flonum 818 315 47 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P newex 818 289 45 196617 * 0.001;#P user uslider 818 221 26 46 41 1 0 0;#P newex 631 495 129 196617 jit.op @op +;#P newex 526 153 54 196617 jit.matrix;#P message 477 304 27 196617 max;#P newex 447 328 55 196617 prepend op;#P message 447 304 28 196617 pass;#P newex 447 281 71 196617 sel 0 1;#P newex 724 273 27 196617 gate;#P newex 526 319 53 196617 jit.matrix;#P newex 741 244 27 196617 b;#P newex 526 584 88 196617 jit.matrix heated;#P newex 631 306 85 196617 jit.matrix heated;#P newex 750 345 115 196617 jit.op @op * @val 0.04;#P newex 526 552 115 196617 jit.op @op max;#P number 675 249 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P toggle 631 198 28 0;#P window setfont "Fixedwidth Serif" 10.;#P newex 631 272 54 1441802 metro 20;#P window setfont "Sans Serif" 9.;#P comment 569 205 59 196617 heat on/off;#P newex 526 65 27 196617 t l l;#P newex 526 102 90 196617 jit.op @op absdiff;#P message 295 73 33 196617 1000;#P message 295 55 26 196617 300;#P message 295 36 20 196617 10;#P flonum 342 123 46 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 342 54 31 196617 sel 1;#P number 195 153 58 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 342 98 45 196617 / 1000.;#P newex 342 77 34 196617 timer;#P button 142 146 15 0;#P newex 251 67 32 196617 lb 10;#P newex 195 308 114 196617 jit.op @op !- @val 255;#P newex 195 244 27 196617 t l l;#P newex 195 281 90 196617 jit.op @op absdiff;#P message 385 180 75 196617 matrixcount \$1;#P number 251 99 51 9 1 5000 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user ubumenu 40 296 60 196617 0 1 1 0;#X add pass;#X add *;#X add /;#X add +;#X add -;#X add +m;#X add -m;#X add %;#X add min;#X add max;#X add abs;#X add avg;#X add absdiff;#X add !pass;#X add !/;#X add !-;#X add !%;#X add &;#X add |;#X add ^;#X add ~;#X add >>;#X add <<;#X add &&;#X add ||;#X add !;#X add >;#X add <;#X add >=;#X add <=;#X add ==;#X add !=;#X add >p;#X add <p;#X add >=p;#X add <=p;#X add ==p;#X add !=p;#X add sin;#X add cos;#X add tan;#X add asin;#X add acos;#X add atan;#X add atan2;#X add sinh;#X add cosh;#X add tanh;#X add asinh;#X add acosh;#X add atanh;#X add exp;#X add exp2;#X add ln;#X add log2;#X add log10;#X add hypot;#X add pow;#X add sqrt;#X add ceil;#X add floor;#X add round;#X add trunc;#X add ignore;#X prefix_set 0 0 <none> 0;#P newex 40 316 72 196617 prepend op;#P newex 114 401 91 196617 jit.op @op *;#P newex 114 85 54 196617 jit.matrix;#P newex 195 210 151 196617 jit.matrixset 2 4 char 320 240;#P newex 272 178 105 196617 prepend outputmatrix;#P newex 195 178 71 196617 prepend index;#P button 195 112 15 0;#N counter 0 1;#X flags 0 0;#P newobj 195 131 66 196617 counter 0 1;#P user jit.pwindow 23 124 82 62 0 1 0 0 1 0;#P user gswitch2 142 166 39 32 1 0;#P user incdec 615 51 15 15 0 0;#P number 633 50 18 9 0 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#N vpatcher 545 104 752 299;#P window setfont "Sans Serif" 9.;#P newex 31 131 27 196617 + 1;#P number 130 82 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#N comlet toggle;#P inlet 15 24 15 0;#P number 61 147 53 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#N comlet i max count;#P inlet 121 22 15 0;#P outlet 32 150 15 0;#P number 83 54 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 31 55 14 196617 1;#P newex 32 33 45 196617 loadbang;#P toggle 48 55 15 0;#P message -4 113 32 196617 set 1;#P button 15 91 15 0;#N counter 0 0 7;#X flags 0 0;#P newobj 32 109 70 196617 counter 0 0 7;#P newex 32 73 69 196617 metro 30000;#P hidden connect 2 0 3 0;#P hidden fasten 1 2 2 0 77 131 13 131 13 89 20 89;#P connect 5 0 6 0;#P connect 1 0 13 0;#P connect 4 0 0 0;#P connect 3 0 1 0;#P connect 0 0 1 0;#P connect 13 0 8 0;#P fasten 11 0 4 0 20 53 53 53;#P hidden connect 6 0 4 0;#P connect 1 0 10 0;#P connect 7 0 0 1;#P connect 12 0 1 4;#P fasten 9 0 1 4 126 102 97 102;#P pop;#P hidden newobj 563 25 74 196617 p minuteticker;#P comment 664 39 58 196617 auto ticker;#P comment 338 25 50 196617 mod sxw;#P connect 99 0 98 0;#P hidden connect 93 0 92 0;#P connect 98 0 97 0;#P connect 100 0 97 0;#P connect 12 0 6 0;#P fasten 13 0 92 1 119 429 32 429;#P hidden fasten 92 0 91 0 15 493 39 493 39 425 39 425;#P connect 15 1 14 0;#P connect 68 0 12 0;#P connect 97 0 12 0;#P connect 12 0 13 0;#P connect 14 0 13 0;#P connect 69 0 53 0;#P connect 22 0 5 0;#P connect 12 0 5 1;#P connect 12 0 8 0;#P connect 8 0 7 0;#P connect 7 0 25 0;#P connect 25 0 9 0;#P connect 5 1 11 0;#P connect 9 0 11 0;#P connect 10 0 11 0;#P connect 17 0 11 0;#P connect 11 0 19 0;#P fasten 19 1 18 0 217 276 200 276;#P connect 18 0 20 0;#P connect 20 0 64 0;#P connect 64 0 13 1;#P connect 66 0 65 0;#P connect 13 0 65 1;#P connect 21 0 16 0;#P connect 30 0 16 0;#P connect 29 0 16 0;#P connect 28 0 16 0;#P connect 16 0 7 4;#P connect 64 0 65 2;#P connect 40 0 65 3;#P connect 25 0 10 0;#P fasten 19 0 18 1 200 267 280 267;#P connect 63 0 64 1;#P connect 63 0 65 4;#P hidden connect 87 0 86 0;#P hidden connect 84 0 83 0;#P fasten 20 0 86 1 200 331 322 331 324 329;#P hidden fasten 86 0 85 0 307 386 331 386 331 318 331 318;#P fasten 11 0 83 1 200 231 334 231;#P hidden fasten 83 0 82 0 317 304 338 304 338 236 342 236;#P connect 7 2 26 0;#P connect 26 0 23 0;#P connect 23 0 24 0;#P connect 24 0 27 0;#P connect 26 0 23 1;#P connect 16 0 17 0;#P hidden connect 90 0 89 0;#P fasten 64 0 89 1 200 392 439 392;#P hidden fasten 89 0 88 0 422 496 446 496 446 428 446 428;#P fasten 35 0 44 0 636 232 452 232;#P connect 44 0 45 0;#P fasten 47 0 46 0 482 322 452 322;#P connect 45 0 46 0;#P connect 44 1 47 0;#P connect 12 0 32 0;#P fasten 32 1 31 0 548 97 531 97;#P connect 31 0 48 0;#P connect 48 0 42 0;#P fasten 34 0 42 0 636 295 531 295;#P connect 42 0 37 0;#P fasten 46 0 37 0 452 418 531 418;#P connect 37 0 40 0;#P connect 40 0 63 0;#P connect 58 0 56 0;#P fasten 31 0 79 0 531 127 558 127;#P connect 59 0 57 0;#P connect 32 0 31 1;#P hidden connect 81 0 80 0;#P fasten 31 0 80 1 531 121 634 121;#P connect 35 0 34 0;#P fasten 43 0 39 0 729 300 636 300;#P connect 34 0 39 0;#P connect 39 0 55 0;#P connect 56 0 55 0;#P connect 57 0 55 0;#P connect 55 0 60 0;#P connect 60 0 49 0;#P connect 49 0 37 1;#P hidden connect 4 0 3 0;#P hidden fasten 80 0 54 0 617 166 641 166 641 98 641 98;#P hidden connect 96 0 95 0;#P fasten 63 0 95 1 531 640 643 640 643 603 667 603;#P hidden fasten 3 0 67 0 638 68 666 68 666 46 673 46;#P hidden fasten 95 0 94 0 650 657 674 657 674 589 674 589;#P connect 36 0 34 1;#P connect 62 0 61 0;#P connect 61 0 60 1;#P fasten 35 0 43 0 636 234 729 234;#P fasten 48 0 41 0 531 178 746 178;#P connect 41 0 43 1;#P connect 74 0 71 0;#P fasten 39 0 38 0 636 331 755 331;#P connect 38 0 49 1;#P connect 50 0 51 0;#P connect 51 0 52 0;#P connect 73 0 70 0;#P connect 52 0 38 1;#P connect 65 0 69 0;#P connect 72 0 69 0;#P connect 70 0 69 0;#P connect 71 0 69 0;#P connect 69 0 76 0;#P connect 75 0 72 0;#P pop;