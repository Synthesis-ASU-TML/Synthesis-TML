max v2;#N vpatcher 103 50 992 733;#P origin 2 107;#P newex 247 651 115 196617 ys.window foo 320 240;#P user jit.pwindow 492 442 82 62 0 1 0 0 1 0;#P newex 926 -9 64 196617 sel 150 210;#P message 925 22 26 196617 400;#P message 956 19 26 196617 800;#P newex 606 625 27 196617 - 1;#P user jit.fpsgui 64 208 60 196617 4;#P user jit.cellblock 722 301 876 355 3 9 2 2 45 17 0 1 1 0 1 1 1 1 1 0 0 0 255 255 255 0 0 0 0 0 0 191 191 191 0 0 0 215 215 240 1 1 1 0 4 0 0 0;#P comment 867 132 27 196617 sec;#P message 939 258 14 196617 1;#P toggle 484 386 15 0;#P newex 486 413 27 196617 gate;#P newex 601 228 40 196617 t b 2 0;#P newex 592 197 40 196617 t b 1 0;#P number 526 182 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 626 140 385 196617 setcell 0 0 plane 1 val 100 \, setcell 1 0 plane 1 val 400 \, setcell 2 0 plane 1 val 700;#P message 765 197 171 133693458 read fiasco_1.txt;#P message 767 229 162 133693458 read fiasco_2.txt;#P user jit.fpsgui 685 381 60 196617 3;#P message 620 478 228 196617 Native folks and Female Populations;#P newex 620 455 60 196617 prepend set;#P newex 620 432 80 196617 jit.str.tosymbol;#B color 5;#P button 612 269 15 0;#P number 570 342 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 565 364 40 196617 line \$1;#P message 639 278 29 196617 read;#P newex 623 321 55 196617 jit.textfile;#N vpreset 2;#X append 1 2 11 63 197 toggle int 1 \; 13 65 237 number int 31 \; 20 -23 476 flonum float 1.57 \; 21 19 320 flonum float -0.75 \; 22 19 372 flonum float 0.21 \; 32 151 18 number int;#X append 1 2 1 \; 33 19 424 flonum float 0. \; 35 -23 526 flonum float 0.7 \; 37 19 476 flonum float 0. \; 39 19 526 flonum float 6.2 \; 41 61 476 flonum float 0.005 \; 43 61 526;#X append 1 2 flonum float 0.002 \; 45 79 928 number int 800 \; 47 -25 58 number int 15 \; 48 61 322 flonum float 0.00001 \; 49 60 396 flonum float -0.00002 \; 50 81 418 flonum float 0. \; 52 15 8;#X append 1 2 number int 100 \; 54 15 58 number int 15 \; 83 81 36 number int 3 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134;#X append 1 2 flonum float 0. \; 89 16 186 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \; 115 590 444 number int 30 \; 118 479 119 number int 81 \; 119 524 115;#X append 1 2 number int 4 \; 128 68 824 number int 32 \; 131 -13 824 toggle int 1 \; 134 116 863 number int 32 \; 135 116 824 number int 0 \; 142 322 385 number int 135 \; 149 342 570;#X append 1 2 number int 4 \; 158 182 526 number int 2 \; 162 386 484 toggle int 1 \;;#X append 2 2 11 63 197 toggle int 1 \; 13 65 237 number int 31 \; 20 -23 476 flonum float 1.57 \; 21 19 320 flonum float -0.75 \; 22 19 372 flonum float 0.21 \; 32 151 18 number int;#X append 2 2 1 \; 33 19 424 flonum float 0. \; 35 -23 526 flonum float 0.7 \; 37 19 476 flonum float 0. \; 39 19 526 flonum float 6.2 \; 41 61 476 flonum float 0.005 \; 43 61 526;#X append 2 2 flonum float 0.002 \; 45 79 928 number int 800 \; 47 -25 58 number int 15 \; 48 61 322 flonum float 0.00001 \; 49 60 396 flonum float -0.00002 \; 50 81 418 flonum float 0. \; 52 15 8;#X append 2 2 number int 100 \; 54 15 58 number int 15 \; 83 81 36 number int 2 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134;#X append 2 2 flonum float 0. \; 89 16 186 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \; 115 590 444 number int 30 \; 118 479 119 number int 2 \; 119 524 115;#X append 2 2 number int -69 \; 128 68 824 number int 11 \; 131 -13 824 toggle int 1 \; 134 116 863 number int 11 \; 135 116 824 number int 0 \; 142 322 385 number int 11 \; 149 342 570;#X append 2 2 number int -69 \; 158 182 526 number int 2 \; 162 386 484 toggle int 0 \;;#P preset 526 202 47 27;#N vpatcher 30 89 511 409;#P outlet 147 262 15 0;#P inlet 120 38 15 0;#P flonum 321 150 40 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 362 150 40 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 403 150 40 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 198 150 39 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 238 150 39 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 278 150 39 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 321 172 112 196617 pak squish_var 0. 0. 0.;#P newex 197 172 90 196617 pak squish 1. 1. 1.;#P flonum 320 60 40 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 361 60 40 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 402 60 40 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 197 60 39 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 237 60 39 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 277 60 39 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 320 82 109 196617 pak bounds_lo 0. 0. 0.;#P newex 196 82 110 196617 pak bounds_hi 0. 0. 0.;#P number 60 152 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 60 179 45 196617 mode \$1;#P message 308 112 65 196617 getbounds_lo;#P message 239 112 65 196617 getbounds_hi;#P newex 172 204 60 196617 jit.p.bounds;#B color 5;#P comment 112 146 60 196617 0 = bounce \; 1 = kill \; 2 = wrap \; 3 = clip \;;#P connect 5 0 4 0;#P connect 1 0 23 0;#P connect 22 0 1 0;#P fasten 7 0 1 0 325 107 177 107;#P fasten 6 0 1 0 201 107 177 107;#P fasten 3 0 1 0 313 129 177 129;#P fasten 2 0 1 0 244 129 177 129;#P fasten 4 0 1 0 65 199 177 199;#P fasten 15 0 1 0 326 196 177 196;#P fasten 14 0 1 0 202 196 177 196;#P fasten 18 0 14 1 203 168 228 168;#P fasten 10 0 6 1 202 78 234 78;#P fasten 17 0 14 2 243 168 254 168;#P fasten 9 0 6 2 242 78 267 78;#P fasten 16 0 14 3 283 168 280 168;#P fasten 8 0 6 3 282 78 300 78;#P fasten 13 0 7 1 325 78 358 78;#P fasten 21 0 15 1 326 168 360 168;#P fasten 12 0 7 2 366 78 391 78;#P fasten 20 0 15 2 367 168 394 168;#P fasten 11 0 7 3 407 78 424 78;#P fasten 19 0 15 3 408 168 428 168;#P pop;#P newobj 554 399 45 196617 p bounds;#P user jit.cellblock 597 72 751 126 3 9 2 2 45 17 0 1 1 0 1 1 1 1 1 0 0 0 255 255 255 0 0 0 0 0 0 191 191 191 0 0 0 215 215 240 1 1 1 0 4 0 0 0;#P number 385 322 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 416 290 38 196617 !- 510;#P newex 367 261 59 196617 split 0 255;#P newex 367 238 40 196617 * 200.;#P newex 824 -36 27 196617 b 2;#P message 624 160 258 196617 setcell 0 0 plane 1 val 100 \, setcell 1 0 plane 1 val 400;#P newex 824 92 30 196617 / 60;#P number 824 116 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 863 116 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 863 92 33 196617 % 60;#P newex 786 9 31 196617 sel 0;#P toggle 824 -13 15 0;#P message 786 30 14 196617 0;#N counter;#X flags 0 0;#P newobj 824 45 66 196617 counter;#P number 824 68 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 824 22 63 196617 metro 1000;#P newex 614 43 79 196617 jit.unpack 5;#P newex 290 558 31 196617 print;#P message 399 552 31 196617 clear;#P newex 216 -54 61 196617 jit.p.bounds;#P newex 561 514 72 196617 prepend write;#P button 939 181 67 0;#P message 125 456 38 196617 set \$1;#P number 115 524 73 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 119 479 74 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 82 487 27 196617 - 1;#P message 225 532 143 196617 frgb \$1 \$1 \$1 \, moveto \$2 \$3;#P number 444 590 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 444 609 65 196617 font arial \$1;#P newex 170 638 45 196617 s ahoaho;#P user jit.fpsgui 285 219 60 196617 4;#P comment 290 -89 112 196617 � view html reference.;#P hidden newex 386 -49 100 196617 jit.obref jit.p.vishnu;#P button 386 -74 15 0;#P comment 402 -72 59 196617 jit.p.vishnu;#P hidden newex 785 -89 104 196617 bgcolor 194 188 196;#P comment 488 -87 48 196617 see also:;#P hidden newex 488 -49 64 196617 prepend help;#P message 488 -73 60 196617 jit.p.bounds;#P hidden newex 488 -28 45 196617 pcontrol;#P hidden newex 290 -49 95 196617 jit.obref jit.p.shiva;#P button 290 -74 15 0;#P comment 306 -72 54 196617 jit.p.shiva;#P comment 1 -68 81 196622 jit.p.vishnu;#P comment 1 -46 145 196617 Apply single force to particles;#P comment 1 -105 73 196622 jit.p.shiva;#P comment 1 -83 138 196617 Generate/eliminate particles;#P message 185 330 40 196617 mode 1;#P newex 135 373 59 196617 zl group 10;#P toggle 17 124 15 0;#P comment 244 -2 118 196617 messages to p-vishnu ->;#P newex 134 35 99 196617 pak init_var 0. 0. 0.;#P flonum 238 16 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 186 16 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 134 16 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 123 -7 75 196617 pak init 0. 0. 0.;#P flonum 227 -26 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 175 -26 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 123 -26 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 36 81 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 39 124 45 196617 mode \$1;#P newex 322 80 85 196617 pak force 0. 0. 0.;#P newex 320 38 75 196617 pak pos 0. 0. 0.;#P message 36 100 48 196617 dim \$1 2;#P newex 333 184 59 196617 jit.p.vishnu;#B color 5;#P newex 134 271 171 196617 jit.matrix brahma 5 float32 1000 2;#P newex 136 127 171 196617 jit.matrix brahma 5 float32 1000 2;#P newex 123 153 54 196617 jit.p.shiva;#B color 5;#P comment 62 384 55 196617 3D presets;#N vpreset 4;#X append 1 2 13 65 237 number int 0 \; 20 -23 476 flonum float 1.57 \; 21 19 320 flonum float 0. \; 22 19 372 flonum float -0.5 \; 32 151 18 number int 2 \; 33 19 424 flonum float;#X append 1 2 -1. \; 35 -23 526 flonum float 0.7 \; 37 19 476 flonum float 0. \; 39 19 526 flonum float 6.2 \; 41 61 476 flonum float 0.05 \; 43 61 526 flonum float 0.01 \; 45 79 928;#X append 1 2 number int 60 \; 47 -25 58 number int 15 \; 48 61 322 flonum float 0. \; 49 60 396 flonum float -0.001 \; 50 81 418 flonum float 0. \; 52 15 8 number int 100 \; 54 15 58;#X append 1 2 number int 15 \; 83 81 36 number int 750 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134 flonum float 0. \; 89 16 186;#X append 1 2 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \;;#X append 2 2 13 65 237 number int 0 \; 20 -23 476 flonum float 1.57 \; 21 19 320 flonum float 0. \; 22 19 372 flonum float 0. \; 32 151 18 number int 2 \; 33 19 424 flonum float;#X append 2 2 0. \; 35 -23 526 flonum float 6.2 \; 37 19 476 flonum float 1.57 \; 39 19 526 flonum float 1.299999 \; 41 61 476 flonum float 0.01 \; 43 61 526 flonum float 0.01 \; 45 79 928;#X append 2 2 number int 199 \; 47 -25 58 number int 114 \; 48 61 322 flonum float 0. \; 49 60 396 flonum float 0. \; 50 81 418 flonum float 0. \; 52 15 8 number int 3 \; 54 15 58;#X append 2 2 number int 4 \; 83 81 36 number int 122 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134 flonum float 0. \; 89 16 186;#X append 2 2 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \;;#X append 3 2 13 65 237 number int 0 \; 20 -23 476 flonum float 3.730005 \; 21 19 320 flonum float 0. \; 22 19 372 flonum float 0.52 \; 32 151 18 number int 2 \; 33 19 424 flonum float;#X append 3 2 0. \; 35 -23 526 flonum float 0.69 \; 37 19 476 flonum float 0.31 \; 39 19 526 flonum float 0.05 \; 41 61 476 flonum float 0.04 \; 43 61 526 flonum float 0.01 \; 45 79 928;#X append 3 2 number int 214 \; 47 -25 58 number int 93 \; 48 61 322 flonum float 0. \; 49 60 396 flonum float -0.0002 \; 50 81 418 flonum float 0. \; 52 15 8 number int 100 \; 54 15 58;#X append 3 2 number int 15 \; 83 81 36 number int 655 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134 flonum float 0. \; 89 16 186;#X append 3 2 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \;;#X append 4 2 13 65 237 number int 0 \; 20 -23 476 flonum float 2.040003 \; 21 19 320 flonum float -3.269998 \; 22 19 372 flonum float 0.98 \; 32 151 18 number int 2 \; 33 19 424 flonum float;#X append 4 2 0. \; 35 -23 526 flonum float 1.52 \; 37 19 476 flonum float 1.03 \; 39 19 526 flonum float 0.01 \; 41 61 476 flonum float 0.02 \; 43 61 526 flonum float 0.01 \; 45 79 928;#X append 4 2 number int 323 \; 47 -25 58 number int 93 \; 48 61 322 flonum float 0. \; 49 60 396 flonum float -0.0001 \; 50 81 418 flonum float 0. \; 52 15 8 number int 100 \; 54 15 58;#X append 4 2 number int 15 \; 83 81 36 number int 655 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134 flonum float 0. \; 89 16 186;#X append 4 2 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \;;#P preset 12 377 47 27;#P hidden message 16 557 44 196617 font 6 9;#P newex 124 420 27 196617 i;#P hidden newex 258 348 53 196617 cycle 4;#P hidden message 258 326 41 196617 0 1 3 4;#P comment 457 472 14 196617 z';#P comment 457 455 14 196617 y';#P comment 457 438 14 196617 x';#P comment 457 422 14 196617 z;#P comment 457 406 14 196617 y;#P hidden newex 381 493 59 196617 pak 0 0 0 0;#P user radiogroup 436 388 18 96;#X size 6;#X offset 16;#X inactive 0;#X itemtype 0;#X flagmode 1;#X set 4;#X done;#P user radiogroup 415 388 18 96;#X size 6;#X offset 16;#X inactive 0;#X itemtype 0;#X flagmode 1;#X set 3;#X done;#P user radiogroup 394 388 18 96;#X size 6;#X offset 16;#X inactive 0;#X itemtype 0;#X flagmode 1;#X set 1;#X done;#P user radiogroup 373 388 18 96;#X size 6;#X offset 16;#X inactive 0;#X itemtype 0;#X flagmode 1;#X set 0;#X done;#P hidden message 6 317 13 196617 1;#N vpreset 5;#X append 1 2 13 65 237 number int 45 \; 20 -23 476 flonum float 1.57 \; 21 19 320 flonum float 0. \; 22 19 372 flonum float -0.5 \; 32 151 18 number int 1 \; 33 19 424 flonum float;#X append 1 2 0. \; 35 -23 526 flonum float 0.7 \; 37 19 476 flonum float 0. \; 39 19 526 flonum float 6.2 \; 41 61 476 flonum float 0.05 \; 43 61 526 flonum float 0.01 \; 45 79 928;#X append 1 2 number int 60 \; 47 -25 58 number int 15 \; 48 61 322 flonum float 0. \; 49 60 396 flonum float -0.001 \; 50 81 418 flonum float 0. \; 52 15 8 number int 100 \; 54 15 58;#X append 1 2 number int 15 \; 83 81 36 number int 750 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134 flonum float 0. \; 89 16 186;#X append 1 2 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \;;#X append 2 2 13 65 237 number int 20 \; 20 -23 476 flonum float 1.57 \; 21 19 320 flonum float 0. \; 22 19 372 flonum float 0. \; 32 151 18 number int 1 \; 33 19 424 flonum float;#X append 2 2 0. \; 35 -23 526 flonum float 6.2 \; 37 19 476 flonum float 1.57 \; 39 19 526 flonum float 1.299999 \; 41 61 476 flonum float 0.01 \; 43 61 526 flonum float 0.01 \; 45 79 928;#X append 2 2 number int 199 \; 47 -25 58 number int 114 \; 48 61 322 flonum float 0. \; 49 60 396 flonum float 0. \; 50 81 418 flonum float 0. \; 52 15 8 number int 3 \; 54 15 58;#X append 2 2 number int 4 \; 83 81 36 number int 122 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134 flonum float 0. \; 89 16 186;#X append 2 2 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \;;#X append 3 2 13 65 237 number int 45 \; 20 -23 476 flonum float 1.57 \; 21 19 320 flonum float 0. \; 22 19 372 flonum float -0.5 \; 32 151 18 number int 1 \; 33 19 424 flonum float;#X append 3 2 0. \; 35 -23 526 flonum float 0.69 \; 37 19 476 flonum float 0. \; 39 19 526 flonum float 0.05 \; 41 61 476 flonum float 0.04 \; 43 61 526 flonum float 0.01 \; 45 79 928;#X append 3 2 number int 60 \; 47 -25 58 number int 15 \; 48 61 322 flonum float 0. \; 49 60 396 flonum float 0. \; 50 81 418 flonum float 0. \; 52 15 8 number int 100 \; 54 15 58;#X append 3 2 number int 15 \; 83 81 36 number int 655 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134 flonum float 0. \; 89 16 186;#X append 3 2 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \;;#X append 4 2 13 65 237 number int 30 \; 20 -23 476 flonum float 2.040003 \; 21 19 320 flonum float -0.689998 \; 22 19 372 flonum float -1.28 \; 32 151 18 number int 1 \; 33 19 424 flonum float;#X append 4 2 0. \; 35 -23 526 flonum float 1.52 \; 37 19 476 flonum float 1.03 \; 39 19 526 flonum float 0.01 \; 41 61 476 flonum float 0.02 \; 43 61 526 flonum float 0.01 \; 45 79 928;#X append 4 2 number int 323 \; 47 -25 58 number int 93 \; 48 61 322 flonum float 0. \; 49 60 396 flonum float 0.0001 \; 50 81 418 flonum float 0. \; 52 15 8 number int 100 \; 54 15 58;#X append 4 2 number int 15 \; 83 81 36 number int 655 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134 flonum float 0. \; 89 16 186;#X append 4 2 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \;;#X append 5 2 13 65 237 number int 30 \; 20 -23 476 flonum float 2.040003 \; 21 19 320 flonum float -3.269998 \; 22 19 372 flonum float 0.98 \; 32 151 18 number int 1 \; 33 19 424 flonum float;#X append 5 2 0. \; 35 -23 526 flonum float 1.52 \; 37 19 476 flonum float 1.03 \; 39 19 526 flonum float 0.01 \; 41 61 476 flonum float 0.02 \; 43 61 526 flonum float 0.01 \; 45 79 928;#X append 5 2 number int 323 \; 47 -25 58 number int 93 \; 48 61 322 flonum float 0. \; 49 60 396 flonum float -0.0001 \; 50 81 418 flonum float 0. \; 52 15 8 number int 100 \; 54 15 58;#X append 5 2 number int 15 \; 83 81 36 number int 655 \; 84 -26 123 flonum float 0. \; 85 -26 175 flonum float 0. \; 86 -26 227 flonum float 0. \; 88 16 134 flonum float 0. \; 89 16 186;#X append 5 2 flonum float 0. \; 90 16 238 flonum float 0. \; 93 124 17 toggle int 0 \;;#P preset 12 344 47 27;#P hidden newex 27 498 45 196617 loadbang;#N vpatcher 40 55 840 384;#P newex 97 65 27 196617 + 1;#P newex 67 65 27 196617 + 1;#P newex 37 65 27 196617 + 1;#P newex 8 65 27 196617 + 1;#P inlet 400 49 15 0;#P inlet 468 49 15 0;#P newex 22 41 74 196617 unpack 0 0 0 0;#P inlet 22 19 15 0;#P outlet 161 231 15 0;#P outlet 230 232 15 0;#P outlet 307 234 15 0;#P outlet 363 234 15 0;#P newex 391 132 92 196617 switch 6 5;#P newex 289 132 92 196617 switch 6 4;#P newex 189 132 92 196617 switch 6 2;#P newex 89 131 92 196617 switch 6 1;#P inlet 148 49 15 0;#P inlet 207 49 15 0;#P inlet 268 49 15 0;#P inlet 336 49 15 0;#P connect 13 0 16 0;#P connect 12 0 13 0;#P connect 13 1 17 0;#P connect 13 2 18 0;#P connect 16 0 4 0;#P connect 13 3 19 0;#P connect 3 0 4 1;#P connect 2 0 4 2;#P connect 1 0 4 3;#P connect 0 0 4 4;#P connect 15 0 4 5;#P connect 4 0 11 0;#P connect 14 0 4 6;#P connect 17 0 5 0;#P connect 3 0 5 1;#P connect 2 0 5 2;#P connect 1 0 5 3;#P fasten 5 0 10 0 195 149;#P connect 0 0 5 4;#P connect 15 0 5 5;#P connect 14 0 5 6;#P connect 18 0 6 0;#P connect 3 0 6 1;#P connect 6 0 9 0;#P connect 2 0 6 2;#P connect 1 0 6 3;#P connect 0 0 6 4;#P connect 15 0 6 5;#P connect 7 0 8 0;#P connect 14 0 6 6;#P connect 19 0 7 0;#P connect 3 0 7 1;#P connect 2 0 7 2;#P connect 1 0 7 3;#P connect 0 0 7 4;#P connect 15 0 7 5;#P connect 14 0 7 6;#P pop;#P newobj 200 416 135 196617 p the_switcheroo;#P number 58 15 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 58 35 65 196617 emit_var \$1;#P number 8 15 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 8 35 43 196617 emit \$1;#P flonum 418 81 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 396 60 67 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 322 61 61 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 58 -25 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 58 -6 60 196617 life_var \$1;#P number 928 79 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 928 98 38 196617 life \$1;#P flonum 526 61 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 526 80 70 196617 speed_var \$1;#P flonum 476 61 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 476 80 48 196617 speed \$1;#P flonum 526 19 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 526 38 64 196617 yaw_var \$1;#P flonum 476 19 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 476 38 42 196617 yaw \$1;#P flonum 526 -23 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 526 -4 65 196617 pitch_var \$1;#P flonum 424 19 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 18 151 35 9 1 3 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 44 421 20 196617 t b;#P newex 42 170 45 196617 gate 3 1;#P newex 135 393 170 196617 unpack 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.;#P newex 323 457 39 196617 * 120.;#P newex 323 437 27 196617 + 1.;#P newex 282 457 39 196617 * 160.;#P newex 282 437 27 196617 + 1.;#P newex 159 443 39 196617 * 255.;#P newex 157 416 39 196617 / 800.;#P flonum 372 19 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 320 19 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 476 -23 47 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 476 -4 45 196617 pitch \$1;#P newex 196 485 55 196617 pack 0 0 0;#P newex 241 457 39 196617 * 120.;#P newex 241 437 27 196617 + 1.;#P newex 199 457 39 196617 * 160.;#P newex 199 437 27 196617 + 1.;#P number 237 65 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 12 455 32 196617 clear;#P toggle 197 63 15 0;#P newex 197 83 50 196617 metro 60;#P message 77 544 99 196617 frgb 255 255 255 \, brgb 0 0 0 \, clear;#P newex 272 632 109 196617 jit.lcd 4 char 320 240;#P newex 135 351 40 196617 jit.iter;#P comment 457 389 14 196617 x;#P comment 203 353 69 196617 turn toggle on and then play with these!;#P comment 57 354 55 196617 2D presets;#P comment 277 -17 113 196617 <- messages to p-shiva;#P comment 827 132 27 196617 min;#P user panel 652 113 252 152;#X brgb 145 198 100;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P user jit.cellblock 812 384 966 438 3 9 2 2 45 17 0 1 1 0 1 1 1 1 1 0 0 0 255 255 255 0 0 0 0 0 0 191 191 191 0 0 0 215 215 240 1 1 1 0 4 0 0 0;#P hidden connect 56 0 58 0;#P connect 52 0 51 0;#P hidden connect 58 0 57 0;#P connect 31 0 12 0;#P hidden connect 56 0 72 0;#P connect 83 0 79 0;#P fasten 93 0 82 0 22 142 34 142 34 120 44 120;#P connect 32 0 30 0;#P fasten 30 0 31 0 47 245 49 245;#P connect 47 0 46 0;#P connect 54 0 53 0;#P connect 75 0 166 0;#P connect 78 0 30 1;#P hidden connect 56 0 9 0;#P connect 71 0 117 0;#P connect 118 0 117 1;#P connect 167 0 119 0;#P connect 121 0 118 0;#P connect 120 0 118 0;#P fasten 82 0 75 0 44 148 128 148;#P fasten 76 0 75 0 141 144 128 144;#P lcolor 9;#P connect 87 0 75 0;#P fasten 91 0 75 0 139 101 128 101;#P fasten 53 0 75 0 63 53 128 53;#P fasten 51 0 75 0 13 53 128 53;#P fasten 46 0 75 0 63 12 128 12;#P connect 44 0 75 0;#P connect 29 0 71 0;#P connect 71 0 120 0;#P connect 78 0 77 0;#P fasten 79 0 77 0 41 120 128 120 128 148 185 148 185 182 139 182;#P connect 30 0 7 0;#P fasten 95 0 7 0 190 348 140 348;#P connect 7 0 94 0;#P connect 94 0 29 0;#P fasten 79 0 76 0 41 120 141 120;#P connect 137 0 76 0;#P fasten 10 0 76 0 202 111 141 111;#P connect 157 0 76 0;#P fasten 84 0 87 1 128 -9 149 -9;#P connect 29 1 23 0;#P fasten 88 0 91 1 139 33 168 33;#P fasten 85 0 87 2 180 -9 170 -9;#P connect 8 0 113 0;#P hidden connect 56 0 95 0;#P fasten 86 0 87 3 232 -9 191 -9;#P connect 45 0 23 1;#P fasten 89 0 91 2 191 33 197 33;#P connect 142 0 18 0;#P connect 24 0 18 0;#P hidden connect 73 2 11 0;#P hidden connect 57 2 11 0;#P connect 11 0 10 0;#P connect 55 0 14 0;#P connect 14 0 15 0;#P hidden connect 63 0 55 0;#P connect 15 0 18 1;#P fasten 29 2 55 1 172 412 225 412;#P fasten 90 0 91 3 243 33 226 33;#P connect 18 0 116 0;#P connect 13 0 10 1;#P fasten 29 3 55 2 188 412 245 412;#P connect 17 0 18 2;#P connect 55 1 16 0;#P connect 16 0 17 0;#P connect 8 0 172 0;#P hidden connect 56 0 69 0;#P hidden connect 69 0 70 0;#P fasten 29 4 55 3 204 412 265 412;#P fasten 31 0 8 0 49 583 277 583;#P hidden connect 72 0 8 0;#P fasten 12 0 8 0 17 587 277 587;#P fasten 9 0 8 0 82 554 74 585 277 585;#P connect 114 0 8 0;#P connect 116 0 8 0;#P connect 124 0 8 0;#P connect 161 0 8 0;#P fasten 29 7 55 4 252 412 285 412;#P connect 55 2 25 0;#P connect 25 0 26 0;#P connect 78 0 112 0;#P hidden connect 101 0 102 0;#P fasten 29 8 55 5 268 412 305 412;#P fasten 29 9 55 6 284 412 325 412;#P connect 55 3 27 0;#P connect 27 0 28 0;#P connect 75 0 78 0;#P fasten 82 0 78 0 44 148 338 148;#P fasten 81 0 78 0 327 99 338 99;#P fasten 80 0 78 0 325 57 338 57;#P fasten 19 0 78 0 481 14 338 14;#P fasten 34 0 78 0 531 14 338 14;#P fasten 36 0 78 0 481 57 338 57;#P fasten 38 0 78 0 531 57 338 57;#P fasten 40 0 78 0 481 99 338 99;#P fasten 42 0 78 0 531 99 338 99;#P fasten 21 0 80 1 325 36 346 36;#P fasten 48 0 81 1 327 78 352 78;#P fasten 22 0 80 2 377 36 367 36;#P connect 23 0 139 0;#P connect 139 0 140 0;#P fasten 49 0 81 2 401 78 377 78;#P hidden connect 70 0 59 0;#P hidden connect 59 0 63 0;#P fasten 33 0 80 3 429 36 388 36;#P connect 140 0 142 0;#P connect 141 0 142 0;#P hidden connect 109 0 110 0;#P hidden connect 70 1 60 0;#P fasten 50 0 81 3 423 78 402 78;#P hidden connect 60 0 63 1;#P hidden connect 61 0 63 2;#P hidden connect 70 2 61 0;#P connect 140 1 141 0;#P hidden connect 62 0 63 3;#P hidden connect 70 3 62 0;#P connect 115 0 114 0;#P connect 20 0 19 0;#P connect 37 0 36 0;#P connect 41 0 40 0;#P connect 160 2 162 0;#P connect 159 2 162 0;#P connect 163 0 162 0;#P connect 162 0 161 0;#P hidden connect 104 0 105 0;#P hidden connect 105 0 103 0;#P connect 8 0 171 0;#P connect 122 0 161 1;#P connect 35 0 34 0;#P connect 39 0 38 0;#P connect 43 0 42 0;#P connect 160 1 158 0;#P connect 159 1 158 0;#P connect 158 0 145 0;#P connect 151 0 122 0;#P connect 149 0 148 0;#P connect 119 0 149 0;#P connect 156 0 159 0;#P connect 126 1 143 0;#P connect 155 0 160 0;#P connect 117 0 167 0;#P connect 75 0 126 0;#P connect 146 1 151 0;#P connect 151 0 152 0;#P connect 152 0 153 0;#P connect 156 0 146 0;#P connect 155 0 146 0;#P connect 147 0 146 0;#P connect 148 0 146 0;#P connect 150 0 146 0;#P connect 160 0 137 0;#P connect 159 0 157 0;#P connect 146 1 154 0;#P connect 126 2 165 0;#P connect 131 0 132 0;#P connect 132 0 130 0;#P connect 126 0 0 0;#P connect 121 0 138 0;#P connect 138 0 131 0;#P connect 138 1 131 0;#P connect 131 0 127 0;#P connect 127 0 129 0;#P connect 129 0 128 0;#P connect 128 0 136 0;#P connect 136 0 135 0;#P connect 130 0 129 2;#P connect 128 0 133 0;#P connect 133 0 134 0;#P connect 170 0 169 0;#P connect 128 0 170 0;#P connect 169 0 45 0;#P connect 168 0 45 0;#P connect 45 0 44 0;#P connect 121 0 163 0;#P connect 170 1 168 0;#P pop;