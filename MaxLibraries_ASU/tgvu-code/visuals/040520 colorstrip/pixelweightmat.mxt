max v2;#N vpatcher 81 110 1165 825;#P origin -20 0;#P window setfont "Sans Serif" 9.;#P newex 21 120 26 196617 s bb;#P user jit.fpsgui 952 648 60 196617 0;#P message 215 475 84 196617 0.1 0.38;#P newex 215 444 32 196617 show;#P newex 215 413 53 196617 pack 0. 0.;#P flonum 276 398 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 276 374 145 196617 expr (1.0-$f1)*$f2+$f1*$f3;#P flonum 218 369 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 312 238 45 196617 loadbang;#P message 327 300 17 196617 0.1;#P message 283 297 23 196617 0.38;#P newex 218 340 145 196617 expr (1.0-$f1)*$f2+$f1*$f3;#P flonum 218 295 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 218 271 38 196617 r wind;#N vpreset 8;#X append 1 2 19 35 53 toggle int 1 \; 20 538 578 number int 15 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.8 \; 24 118 500 flonum float 0.05 \; 25 118 653 flonum float;#X append 1 2 -0.5 \; 26 118 569 flonum float 10. \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0.443038 \; 38 229 523 flonum float -1.025316 \; 39 226 577 flonum float 0.39557 \; 43 254 577;#X append 1 2 flonum float 0.39557 \; 44 254 621 flonum float 0.39557 \; 45 254 665 flonum float 0.39557 \; 46 254 709 flonum float 0.39557 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \; 73 55 960;#X append 1 2 flonum float -0.5 \; 84 290 664 GSwitch2 int 1 \;;#X append 5 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.26 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 5 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0.12 \; 38 229 523 flonum float -0.06 \; 39 226 577 flonum float 0.25 \; 43 254 577;#X append 5 2 flonum float 0.24 \; 44 254 621 flonum float 0.24 \; 45 254 665 flonum float 0.4 \; 46 254 709 flonum float 0.1 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \; 73 55 960;#X append 5 2 flonum float -0.5 \; 84 290 664 GSwitch2 int 0 \;;#X append 6 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.26 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 6 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0.14 \; 38 229 523 flonum float -0.1 \; 39 226 577 flonum float 0.25 \; 43 254 577;#X append 6 2 flonum float 0.38 \; 44 254 621 flonum float 0.1 \; 45 254 665 flonum float 0.4 \; 46 254 709 flonum float 0.1 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \; 73 55 960;#X append 6 2 flonum float -0.5 \; 84 290 664 GSwitch2 int 0 \;;#X append 7 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.26 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 7 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0.14 \; 38 229 523 flonum float -0.1 \; 39 226 577 flonum float 0.25 \; 43 254 577;#X append 7 2 flonum float 0.1 \; 44 254 621 flonum float 0.38 \; 45 254 665 flonum float 0.4 \; 46 254 709 flonum float 0.1 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \; 73 55 960;#X append 7 2 flonum float -0.5 \; 84 290 664 GSwitch2 int 0 \;;#X append 8 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.26 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 8 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0.03 \; 38 229 523 flonum float -0.01 \; 39 226 577 flonum float 0.24 \; 43 254 577;#X append 8 2 flonum float 0.25 \; 44 254 621 flonum float 0.25 \; 45 254 665 flonum float 0.4 \; 46 254 709 flonum float 0.1 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \; 73 55 960;#X append 8 2 flonum float -0.5 \; 84 290 664 GSwitch2 int 0 \; 90 295 218 flonum float 0. \; 95 369 218 flonum float 0. \; 97 398 276 flonum float 0. \;;#P preset 223 182 47 27;#P message 662 93 113 196617 0.15 -0.21 0.26 0.26 0.46 0.1;#P message 627 65 101 196617 0.44 -1.03 0.4 0.4 0.4 0.4;#P button 632 323 15 0;#P user gswitch2 664 290 39 32 0 0;#P newex 470 309 50 196617 zl slice 1;#N vpatcher 263 235 1033 679;#P window setfont "Sans Serif" 9.;#P newex 626 48 27 196617 t b l;#P newex 649 75 63 196617 unpack 0. 0.;#P inlet 627 27 15 0;#P outlet 133 355 15 0;#P newex 133 315 79 196617 jit.pack 6;#P inlet 225 44 15 0;#P inlet 62 46 15 0;#P newex 235 81 111 196617 unpack 0. 0. 0. 0. 0. 0.;#P flonum 566 126 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 527 126 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user jit.pwindow 526 189 82 62 0 1 0 0 1 0;#N vpatcher 46 59 634 491;#P inlet 497 63 15 0;#P outlet 65 299 15 0;#P window setfont "Sans Serif" 9.;#P newex 408 86 27 196617 t b f;#P flonum 520 222 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 434 219 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 340 253 203 196617 expr (1.0-$i1/239.)*$f2 + $i1/239.*$f3;#P newex 249 212 27 196617 t b i;#P newex 249 189 27 196617 - 1;#P newex 281 272 27 196617 - 1;#P newex 240 308 65 196617 pack 0 0 0.;#P button 217 126 28 0;#P newex 217 166 43 196617 uzi 240;#P newex 249 250 43 196617 uzi 320;#P message 240 332 101 196617 setcell \$1 \$2 val \$3;#P user jit.pwindow 63 196 82 62 0 1 0 0 1 0;#P newex 64 165 141 196617 jit.matrix 1 float32 320 240;#P inlet 424 62 15 0;#P connect 6 0 1 0;#P connect 3 0 1 0;#P connect 1 0 2 0;#P connect 2 0 15 0;#P connect 14 0 6 0;#P connect 6 0 5 0;#P connect 8 0 7 0;#P connect 7 0 3 0;#P connect 5 2 9 0;#P connect 9 0 10 0;#P connect 10 0 4 0;#P connect 10 1 7 1;#P connect 4 2 8 0;#P connect 11 0 7 2;#P connect 10 1 11 0;#P connect 0 0 14 0;#P connect 14 1 12 0;#P connect 12 0 11 1;#P connect 16 0 13 0;#P connect 13 0 11 2;#P pop;#P newobj 527 151 75 196617 p gradientplane;#P flonum 474 130 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 435 130 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user jit.pwindow 434 193 82 62 0 1 0 0 1 0;#N vpatcher 46 59 634 491;#P inlet 497 63 15 0;#P outlet 65 299 15 0;#P window setfont "Sans Serif" 9.;#P newex 408 86 27 196617 t b f;#P flonum 520 222 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 434 219 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 340 253 203 196617 expr (1.0-$i1/239.)*$f2 + $i1/239.*$f3;#P newex 249 212 27 196617 t b i;#P newex 249 189 27 196617 - 1;#P newex 281 272 27 196617 - 1;#P newex 240 308 65 196617 pack 0 0 0.;#P button 217 126 28 0;#P newex 217 166 43 196617 uzi 240;#P newex 249 250 43 196617 uzi 320;#P message 240 332 101 196617 setcell \$1 \$2 val \$3;#P user jit.pwindow 63 196 82 62 0 1 0 0 1 0;#P newex 64 165 141 196617 jit.matrix 1 float32 320 240;#P inlet 424 62 15 0;#P connect 6 0 1 0;#P connect 3 0 1 0;#P connect 1 0 2 0;#P connect 2 0 15 0;#P connect 14 0 6 0;#P connect 6 0 5 0;#P connect 8 0 7 0;#P connect 7 0 3 0;#P connect 5 2 9 0;#P connect 9 0 10 0;#P connect 10 0 4 0;#P connect 10 1 7 1;#P connect 4 2 8 0;#P connect 11 0 7 2;#P connect 10 1 11 0;#P connect 0 0 14 0;#P connect 14 1 12 0;#P connect 12 0 11 1;#P connect 16 0 13 0;#P connect 13 0 11 2;#P pop;#P newobj 435 155 75 196617 p gradientplane;#P flonum 382 134 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 343 134 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user jit.pwindow 342 197 82 62 0 1 0 0 1 0;#N vpatcher 46 59 634 491;#P inlet 497 63 15 0;#P outlet 65 299 15 0;#P window setfont "Sans Serif" 9.;#P newex 408 86 27 196617 t b f;#P flonum 520 222 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 434 219 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 340 253 203 196617 expr (1.0-$i1/239.)*$f2 + $i1/239.*$f3;#P newex 249 212 27 196617 t b i;#P newex 249 189 27 196617 - 1;#P newex 281 272 27 196617 - 1;#P newex 240 308 65 196617 pack 0 0 0.;#P button 217 126 28 0;#P newex 217 166 43 196617 uzi 240;#P newex 249 250 43 196617 uzi 320;#P message 240 332 101 196617 setcell \$1 \$2 val \$3;#P user jit.pwindow 63 196 82 62 0 1 0 0 1 0;#P newex 64 165 141 196617 jit.matrix 1 float32 320 240;#P inlet 424 62 15 0;#P connect 6 0 1 0;#P connect 3 0 1 0;#P connect 1 0 2 0;#P connect 2 0 15 0;#P connect 14 0 6 0;#P connect 6 0 5 0;#P connect 8 0 7 0;#P connect 7 0 3 0;#P connect 5 2 9 0;#P connect 9 0 10 0;#P connect 10 0 4 0;#P connect 10 1 7 1;#P connect 4 2 8 0;#P connect 11 0 7 2;#P connect 10 1 11 0;#P connect 0 0 14 0;#P connect 14 1 12 0;#P connect 12 0 11 1;#P connect 16 0 13 0;#P connect 13 0 11 2;#P pop;#P newobj 343 159 75 196617 p gradientplane;#P flonum 290 138 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 251 138 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user jit.pwindow 250 201 82 62 0 1 0 0 1 0;#N vpatcher 46 59 634 491;#P inlet 497 63 15 0;#P outlet 65 299 15 0;#P window setfont "Sans Serif" 9.;#P newex 408 86 27 196617 t b f;#P flonum 520 222 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 434 219 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 340 253 203 196617 expr (1.0-$i1/239.)*$f2 + $i1/239.*$f3;#P newex 249 212 27 196617 t b i;#P newex 249 189 27 196617 - 1;#P newex 281 272 27 196617 - 1;#P newex 240 308 65 196617 pack 0 0 0.;#P button 217 126 28 0;#P newex 217 166 43 196617 uzi 240;#P newex 249 250 43 196617 uzi 320;#P message 240 332 101 196617 setcell \$1 \$2 val \$3;#P user jit.pwindow 63 196 82 62 0 1 0 0 1 0;#P newex 64 165 141 196617 jit.matrix 1 float32 320 240;#P inlet 424 62 15 0;#P connect 6 0 1 0;#P connect 3 0 1 0;#P connect 1 0 2 0;#P connect 2 0 15 0;#P connect 14 0 6 0;#P connect 6 0 5 0;#P connect 8 0 7 0;#P connect 7 0 3 0;#P connect 5 2 9 0;#P connect 9 0 10 0;#P connect 10 0 4 0;#P connect 10 1 7 1;#P connect 4 2 8 0;#P connect 11 0 7 2;#P connect 10 1 11 0;#P connect 0 0 14 0;#P connect 14 1 12 0;#P connect 12 0 11 1;#P connect 16 0 13 0;#P connect 13 0 11 2;#P pop;#P newobj 251 163 75 196617 p gradientplane;#P flonum 198 142 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 159 142 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user jit.pwindow 158 205 82 62 0 1 0 0 1 0;#N vpatcher 46 59 634 491;#P inlet 497 63 15 0;#P outlet 65 299 15 0;#P window setfont "Sans Serif" 9.;#P newex 408 86 27 196617 t b f;#P flonum 520 222 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 434 219 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 340 253 203 196617 expr (1.0-$i1/239.)*$f2 + $i1/239.*$f3;#P newex 249 212 27 196617 t b i;#P newex 249 189 27 196617 - 1;#P newex 281 272 27 196617 - 1;#P newex 240 308 65 196617 pack 0 0 0.;#P button 217 126 28 0;#P newex 217 166 43 196617 uzi 240;#P newex 249 250 43 196617 uzi 320;#P message 240 332 101 196617 setcell \$1 \$2 val \$3;#P user jit.pwindow 63 196 82 62 0 1 0 0 1 0;#P newex 64 165 141 196617 jit.matrix 1 float32 320 240;#P inlet 424 62 15 0;#P connect 6 0 1 0;#P connect 3 0 1 0;#P connect 1 0 2 0;#P connect 2 0 15 0;#P connect 14 0 6 0;#P connect 6 0 5 0;#P connect 8 0 7 0;#P connect 7 0 3 0;#P connect 5 2 9 0;#P connect 9 0 10 0;#P connect 10 0 4 0;#P connect 10 1 7 1;#P connect 4 2 8 0;#P connect 11 0 7 2;#P connect 10 1 11 0;#P connect 0 0 14 0;#P connect 14 1 12 0;#P connect 12 0 11 1;#P connect 16 0 13 0;#P connect 13 0 11 2;#P pop;#P newobj 159 167 75 196617 p gradientplane;#P flonum 103 144 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 64 144 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 63 90 111 196617 unpack 0. 0. 0. 0. 0. 0.;#P user jit.pwindow 63 207 82 62 0 1 0 0 1 0;#N vpatcher 46 59 634 491;#P inlet 497 63 15 0;#P outlet 65 299 15 0;#P window setfont "Sans Serif" 9.;#P newex 408 86 27 196617 t b f;#P flonum 520 222 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 434 219 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 340 253 203 196617 expr (1.0-$i1/239.)*$f2 + $i1/239.*$f3;#P newex 249 212 27 196617 t b i;#P newex 249 189 27 196617 - 1;#P newex 281 272 27 196617 - 1;#P newex 240 308 65 196617 pack 0 0 0.;#P button 217 126 28 0;#P newex 217 166 43 196617 uzi 240;#P newex 249 250 43 196617 uzi 320;#P message 240 332 101 196617 setcell \$1 \$2 val \$3;#P user jit.pwindow 63 196 82 62 0 1 0 0 1 0;#P newex 64 165 141 196617 jit.matrix 1 float32 320 240;#P inlet 424 62 15 0;#P connect 6 0 1 0;#P connect 3 0 1 0;#P connect 1 0 2 0;#P connect 2 0 15 0;#P connect 14 0 6 0;#P connect 6 0 5 0;#P connect 8 0 7 0;#P connect 7 0 3 0;#P connect 5 2 9 0;#P connect 9 0 10 0;#P connect 10 0 4 0;#P connect 10 1 7 1;#P connect 4 2 8 0;#P connect 11 0 7 2;#P connect 10 1 11 0;#P connect 0 0 14 0;#P connect 14 1 12 0;#P connect 12 0 11 1;#P connect 16 0 13 0;#P connect 13 0 11 2;#P pop;#P newobj 64 169 75 196617 p gradientplane;#P connect 26 0 2 0;#P connect 2 0 3 0;#P connect 3 0 0 0;#P connect 0 0 1 0;#P connect 25 0 4 0;#P connect 4 0 0 1;#P connect 1 0 28 0;#P connect 32 0 28 0;#P connect 28 0 29 0;#P connect 6 0 28 1;#P connect 2 1 7 0;#P connect 7 0 5 0;#P connect 5 0 6 0;#P connect 10 0 28 2;#P connect 14 0 28 3;#P connect 18 0 28 4;#P connect 25 1 8 0;#P connect 22 0 28 5;#P connect 8 0 5 1;#P connect 27 0 25 0;#P connect 2 2 11 0;#P connect 31 0 11 0;#P connect 11 0 9 0;#P connect 9 0 10 0;#P connect 25 2 12 0;#P connect 12 0 9 1;#P connect 2 3 15 0;#P connect 31 1 15 0;#P connect 15 0 13 0;#P connect 13 0 14 0;#P connect 25 3 16 0;#P connect 16 0 13 1;#P connect 2 4 19 0;#P connect 19 0 17 0;#P connect 17 0 18 0;#P connect 25 4 20 0;#P connect 20 0 17 1;#P connect 2 5 23 0;#P connect 23 0 21 0;#P connect 21 0 22 0;#P connect 25 5 24 0;#P connect 24 0 21 1;#P connect 30 0 32 0;#P connect 32 1 31 0;#P pop;#P newobj 657 332 55 196617 p gradfield;#P newex 537 380 53 196617 jit.pack 4;#P message 869 284 27 196617 op +;#P message 855 266 29 196617 op *;#P user jit.pwindow 949 267 82 62 0 1 0 0 1 0;#P newex 878 309 64 196617 jit.op @op *;#P newex 897 250 35 196617 r bkgd;#P newex 919 166 66 196617 jit.unpack;#P newex 876 136 175 196617 jit.matrix 2 char 320 240 @interp 0;#P flonum 960 55 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 873 109 115 196617 jit.matrix 2 char 80 60;#P newex 873 81 121 196617 jit.op @op <p @val -0.01;#P newex 872 49 58 196617 r crossimg;#P button 401 233 36 0;#P comment 297 118 84 196617 with live cam;#P comment 297 94 86 196617 diffusion;#P comment 297 70 83 196617 smoke/ripple2;#N vpreset 1;#X append 1 2 19 35 53 toggle int 1 \; 20 538 578 number int 0 \; 22 35 98 number int 0 \; 23 118 429 flonum float 0. \; 24 118 500 flonum float 0. \; 25 118 653 flonum float;#X append 1 2 0. \; 26 118 569 flonum float 0. \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0.15 \; 38 229 523 flonum float -0.21 \; 39 226 577 flonum float 0. \; 43 254 577;#X append 1 2 flonum float 0.26 \; 44 254 621 flonum float 0.26 \; 45 254 665 flonum float 0.46 \; 46 254 709 flonum float 0.1 \; 56 432 532 number int 0 \; 61 520 184 GSwitch int 0 \; 73 55 960;#X append 1 2 flonum float -0.5 \;;#P preset 228 118 56 17;#N vpreset 4;#X append 1 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.26 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 1 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0. \; 38 229 523 flonum float 0. \; 39 226 577 flonum float 0.25 \; 43 254 577;#X append 1 2 flonum float 0.25 \; 44 254 621 flonum float 0.25 \; 45 254 665 flonum float 0.25 \; 46 254 709 flonum float 0.25 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#X append 2 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.26 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 2 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 0 \; 37 227 456 flonum float 0. \; 38 229 523 flonum float 0. \; 39 226 577 flonum float 0.24 \; 43 254 577;#X append 2 2 flonum float 0.1 \; 44 254 621 flonum float 0.4 \; 45 254 665 flonum float 0.25 \; 46 254 709 flonum float 0.24 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#X append 3 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.26 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 3 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0. \; 38 229 523 flonum float 0. \; 39 226 577 flonum float 0.24 \; 43 254 577;#X append 3 2 flonum float 0.1 \; 44 254 621 flonum float 0.4 \; 45 254 665 flonum float 0.25 \; 46 254 709 flonum float 0.25 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#X append 4 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.26 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 4 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0. \; 38 229 523 flonum float 0. \; 39 226 577 flonum float 0.24 \; 43 254 577;#X append 4 2 flonum float 0.29 \; 44 254 621 flonum float 0.64 \; 45 254 665 flonum float -0.08 \; 46 254 709 flonum float 0.15 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#P preset 228 94 58 17;#N vpreset 5;#X append 1 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.47 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 1 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 0 \; 37 227 456 flonum float 1.420461 \; 38 229 523 flonum float -0.99005 \; 39 226 577 flonum float 0.142397 \; 43 254 577;#X append 1 2 flonum float 0.142397 \; 44 254 621 flonum float 0.142397 \; 45 254 665 flonum float 0.142397 \; 46 254 709 flonum float 0.142397 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#X append 2 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.47 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 2 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 0 \; 37 227 456 flonum float 1.420461 \; 38 229 523 flonum float -0.99005 \; 39 226 577 flonum float 0.142397 \; 43 254 577;#X append 2 2 flonum float 0.15 \; 44 254 621 flonum float 0.13 \; 45 254 665 flonum float 0.14 \; 46 254 709 flonum float 0.14 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#X append 3 2 19 35 53 toggle int 1 \; 20 538 578 number int 20 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.32 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 3 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 0 \; 37 227 456 flonum float 0.74 \; 38 229 523 flonum float -0.99005 \; 39 226 577 flonum float 0.307183 \; 43 254 577;#X append 3 2 flonum float 0.307183 \; 44 254 621 flonum float 0.23 \; 45 254 665 flonum float 0.36 \; 46 254 709 flonum float 0.32 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#X append 5 2 19 35 53 toggle int 1 \; 20 538 578 number int 25 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.47 \; 24 118 500 flonum float -0.02 \; 25 118 653 flonum float;#X append 5 2 -0.5 \; 26 118 569 flonum float 8.89 \; 33 582 229 toggle int 0 \; 37 227 456 flonum float 1.41 \; 38 229 523 flonum float -0.97 \; 39 226 577 flonum float 0.142397 \; 43 254 577;#X append 5 2 flonum float 0.15 \; 44 254 621 flonum float 0.13 \; 45 254 665 flonum float 0.14 \; 46 254 709 flonum float 0.14 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#P preset 228 70 56 17;#N vpreset 2;#X append 1 2 19 35 53 toggle int 1 \; 20 538 578 number int 15 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.8 \; 24 118 500 flonum float 0.05 \; 25 118 653 flonum float;#X append 1 2 -0.5 \; 26 118 569 flonum float 10. \; 33 582 229 toggle int 1 \; 37 227 456 flonum float 0.443038 \; 38 229 523 flonum float -1.025316 \; 39 226 577 flonum float 0.39557 \; 43 254 577;#X append 1 2 flonum float 0.39557 \; 44 254 621 flonum float 0.39557 \; 45 254 665 flonum float 0.39557 \; 46 254 709 flonum float 0.39557 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#X append 2 2 19 35 53 toggle int 1 \; 20 538 578 number int 5 \; 22 35 98 number int 30 \; 23 118 429 flonum float 0.8 \; 24 118 500 flonum float 0.05 \; 25 118 653 flonum float;#X append 2 2 -0.5 \; 26 118 569 flonum float 10. \; 33 582 229 toggle int 0 \; 37 227 456 flonum float 0.443038 \; 38 229 523 flonum float -1.025316 \; 39 226 577 flonum float 0.39557 \; 43 254 577;#X append 2 2 flonum float 0.39557 \; 44 254 621 flonum float 0.39557 \; 45 254 665 flonum float 0.39557 \; 46 254 709 flonum float 0.39557 \; 56 432 532 number int 106 \; 61 520 184 GSwitch int 0 \;;#P preset 228 44 55 18;#P user gswitch 184 520 41 32 0 0;#P newex 520 635 27 196617 t b l;#P newex 550 565 38 196617 Ladd 2;#P newex 520 536 51 196617 ys.mouse;#P newex 640 630 112 196617 ys.window pixelweight;#P number 532 432 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 532 451 63 196617 font skia \$1;#P message 435 479 192 196617 clear \, moveto 30 100 \, write T M L \, bang;#P newex 472 81 85 196617 unpack 0. 0. 0. 0.;#P message 473 45 75 196617 0.8 0.05 10. -0.5;#P comment 839 168 38 196617 wind?;#P message 811 184 65 196617 0.1 0.4 0.25 0.25;#P comment 776 165 38 196617 cloud?;#P newex 716 222 85 196617 unpack 0. 0. 0. 0.;#P message 716 181 89 196617 0.29 0.64 -0.08 0.15;#P flonum 709 254 58 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 665 254 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 621 254 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 577 254 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 768 138 54 196617 0. 0. 0.25;#P newex 229 560 25 196617 lb 1;#P newex 470 286 129 196617 pack setall 0. 0. 0. 0. 0. 0.;#P flonum 577 226 35 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 523 229 48 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 456 227 47 9 -2. 2. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 489 201 98 196617 unpack 0. 0. 0.;#P newex 53 233 27 196617 aout;#N vpatcher 190 153 780 685;#P window setfont "Sans Serif" 9.;#P newex 121 182 53 196617 bondo 4;#P outlet 133 475 15 0;#P newex 126 421 65 196617 pack 0. 0. 0.;#P inlet 45 116 15 0;#P newex 121 155 212 196617 route distance timestep wavespeed viscosity;#P newex 399 359 105 196617 expr 2. * $f1 * $f2;#P newex 259 360 135 196617 expr ($f1 * $f2 - 2.) * $f3;#P newex 114 362 140 196617 expr (4.0 - 8. * $f1) * $f2;#P newex 327 255 134 196617 expr 1. / ($f2 * $f1 + 2.);#P comment 279 86 24 196617 mu;#P comment 212 86 16 196617 c;#P comment 121 92 16 196617 t;#P newex 121 256 201 196617 expr $f3 * $f3 * $f2 * $f2 / ($f1 * $f1);#P flonum 184 42 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 265 40 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 112 41 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 41 40 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 265 60 65 196617 viscosity \$1;#P message 184 61 73 196617 wavespeed \$1;#P message 112 61 63 196617 timestep \$1;#P message 41 59 61 196617 distance \$1;#P comment 71 85 16 196617 d;#P connect 5 0 1 0;#P connect 6 0 2 0;#P connect 9 0 14 0;#P connect 4 0 17 0;#P connect 18 0 17 0;#P connect 3 0 17 0;#P connect 2 0 17 0;#P connect 1 0 17 0;#P connect 17 0 21 0;#P connect 21 0 9 0;#P connect 14 0 19 0;#P connect 19 0 20 0;#P connect 17 1 21 1;#P connect 17 2 21 2;#P connect 15 0 19 1;#P connect 17 3 21 3;#P connect 16 0 19 2;#P connect 8 0 3 0;#P connect 21 1 9 1;#P connect 13 0 14 1;#P connect 21 1 15 0;#P connect 7 0 4 0;#P connect 21 2 9 2;#P connect 21 3 15 1;#P connect 21 1 13 0;#P connect 13 0 15 2;#P connect 9 0 16 0;#P connect 21 3 13 1;#P connect 13 0 16 1;#P pop;#P newobj 489 171 69 196617 p waveparam;#P toggle 229 582 15 0;#P newex 229 605 27 196617 gate;#P button 229 627 15 0;#P message 117 492 32 196617 clear;#P newex 53 618 78 196617 jit.matrix wow;#P newex 53 595 52 196617 jit.pack 2;#P newex 53 566 75 196617 jit.op @op max;#P flonum 569 118 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 653 118 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 500 118 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 429 118 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 98 35 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 403 448 113 196617 clear \, brgb 0 0 0 \, bang;#P number 578 538 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P toggle 53 35 15 0;#P newex 53 62 51 196617 metro 50;#P user jit.pwindow 690 363 322 242 0 1 0 0 1 0;#P newex 53 266 95 196617 jit.unpack 2;#P newex 403 424 45 196617 loadbang;#P newex 403 605 66 196617 jit.unpack;#P newex 520 613 88 196617 prepend paintoval;#P button 387 480 15 0;#P message 229 648 55 196617 clear \, bang;#P newex 520 588 104 196617 pack 0 0 0 0 255 0 0;#P user jit.pwindow 402 536 82 62 0 1 0 0 1 0;#P newex 403 512 110 196617 jit.lcd 4 char 320 240;#P message 653 137 65 196617 viscosity \$1;#P message 569 137 73 196617 wavespeed \$1;#P message 500 137 63 196617 timestep \$1;#P message 429 137 61 196617 distance \$1;#P newex 53 93 152 196617 jit.matrix wow 2 char 320 240;#P comment 776 115 31 196617 heat;#P comment 297 44 84 196617 ripple;#P user panel 208 32 182 115;#X brgb 254 231 193;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P connect 18 0 102 0;#P connect 19 0 18 0;#P connect 18 0 3 0;#P connect 3 0 35 0;#P connect 35 0 16 0;#P connect 16 0 27 0;#P connect 27 0 28 0;#P connect 30 0 29 0;#P connect 28 0 29 0;#P connect 82 0 35 1;#P connect 22 0 18 1;#P connect 16 1 28 1;#P connect 61 0 27 1;#P connect 75 0 61 1;#P connect 14 1 61 1;#P connect 95 0 98 0;#P connect 98 0 99 0;#P connect 99 0 100 0;#P connect 89 0 90 0;#P connect 90 0 91 0;#P connect 91 0 95 0;#P connect 41 0 33 0;#P connect 33 0 32 0;#P connect 32 0 31 0;#P connect 31 0 11 0;#P connect 27 0 32 1;#P connect 97 0 98 1;#P connect 90 0 96 0;#P connect 96 0 97 0;#P connect 94 0 92 0;#P connect 92 0 91 1;#P connect 94 0 93 0;#P connect 93 0 96 1;#P connect 93 0 91 2;#P connect 15 0 21 0;#P connect 55 0 8 0;#P connect 54 0 8 0;#P connect 21 0 8 0;#P connect 12 0 8 0;#P connect 11 0 8 0;#P connect 60 0 8 0;#P connect 60 1 8 0;#P connect 8 0 9 0;#P connect 9 0 14 0;#P connect 92 0 96 2;#P connect 53 0 23 0;#P connect 23 0 4 0;#P connect 36 0 37 0;#P connect 69 0 40 0;#P connect 40 0 83 0;#P connect 52 0 53 0;#P connect 7 0 34 0;#P connect 6 0 34 0;#P connect 5 0 34 0;#P connect 4 0 34 0;#P connect 42 0 36 0;#P connect 34 0 36 0;#P connect 37 0 40 1;#P connect 53 1 24 0;#P connect 24 0 5 0;#P connect 38 0 40 2;#P connect 17 1 58 0;#P connect 58 0 10 0;#P connect 10 0 13 0;#P connect 13 0 60 0;#P connect 36 1 38 0;#P connect 43 0 40 3;#P connect 56 0 55 0;#P connect 16 0 81 0;#P connect 44 0 40 4;#P fasten 58 0 59 0 525 560 555 560;#P connect 59 0 10 2;#P connect 16 0 81 1;#P connect 45 0 40 5;#P connect 16 0 81 2;#P connect 53 2 26 0;#P connect 26 0 6 0;#P connect 36 2 39 0;#P connect 39 0 43 0;#P connect 48 0 43 0;#P connect 20 0 59 1;#P connect 16 0 81 3;#P connect 46 0 40 6;#P connect 39 0 44 0;#P connect 48 1 44 0;#P connect 17 0 57 0;#P connect 53 3 25 0;#P connect 25 0 7 0;#P connect 85 0 82 0;#P connect 84 0 82 0;#P connect 87 0 82 0;#P connect 39 0 45 0;#P connect 48 2 45 0;#P connect 84 1 82 1;#P connect 86 0 82 1;#P connect 77 0 17 0;#P connect 83 1 84 1;#P connect 100 0 82 2;#P connect 39 0 46 0;#P connect 48 3 46 0;#P connect 50 0 48 0;#P connect 47 0 48 0;#P connect 70 0 71 0;#P connect 71 0 72 0;#P connect 72 0 74 0;#P connect 81 0 77 0;#P connect 80 0 77 0;#P connect 79 0 77 0;#P connect 74 0 75 0;#P connect 76 0 77 1;#P connect 76 0 78 0;#P connect 17 0 101 0;#P connect 73 0 71 1;#P pop;