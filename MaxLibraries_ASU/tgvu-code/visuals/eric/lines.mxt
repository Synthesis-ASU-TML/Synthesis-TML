max v2;#N vpatcher 335 66 1020 746;#P origin 5 -2;#P user hslider 491 247 18 128 128 1 0 0;#P message 491 268 64 196617 elevation \$1;#P user hslider 492 288 18 128 128 1 0 0;#P message 492 309 45 196617 angle \$1;#P user hslider 492 329 18 128 128 1 0 0;#P message 492 350 50 196617 height \$1;#P message 449 351 40 196617 mode 1;#P newex 392 379 62 196617 242.emboss;#P message 30 241 14 196617 1;#P message 3 220 14 196617 0;#P newex 572 142 49 196617 r pensize;#P newex 545 142 27 196617 +;#P newex 572 121 49 196617 r pensize;#P newex 545 121 27 196617 +;#P newex 520 186 64 196617 pack 0 0 0 0;#P newex 520 164 64 196617 bondo 4;#P slider 623 34 15 50 0 1;#P button 507 60 15 0;#P slider 564 35 15 50 0 1;#P newex 520 98 54 196617 drunk 320;#P toggle 507 21 15 0;#P newex 507 41 50 196617 metro 50;#P newex 580 98 54 196617 drunk 240;#P message 521 205 100 196617 filloval \$1 \$2 \$3 \$4;#P newex 436 142 49 196617 r pensize;#P newex 409 142 27 196617 +;#P newex 436 121 49 196617 r pensize;#P newex 409 121 27 196617 +;#P newex 384 186 64 196617 pack 0 0 0 0;#P newex 384 164 64 196617 bondo 4;#P slider 487 34 15 50 0 1;#P button 371 60 15 0;#P slider 428 35 15 50 0 1;#P newex 384 98 54 196617 drunk 320;#P toggle 371 21 15 0;#P newex 371 41 50 196617 metro 50;#P newex 444 98 54 196617 drunk 240;#P newex 225 42 27 196617 t b i;#P number 244 24 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 209 61 45 196617 pack 0 0;#P button 34 148 15 0;#P message 32 213 31 196617 clear;#P number 313 180 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 257 201 54 196617 objmode 2;#P message 313 201 55 196617 objrate \$1;#P newex 359 249 39 196617 print 2;#P newex 397 281 30 196617 print;#P newex 141 74 28 196617 s y2;#P newex 59 76 28 196617 s y1;#P newex 105 74 28 196617 s x2;#P newex 23 75 28 196617 s x1;#P newex 211 108 49 196617 s pensize;#P message 385 205 100 196617 filloval \$1 \$2 \$3 \$4;#P newex 162 343 23 196617 abs;#P number 186 344 98 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 141 325 253 196617 expr sqrt(pow(($i1 - $i3)\\\,2) + pow(($i2 - $i4)\\\,2));#P message 2 31 124 196617 offscreen.resize 320 240;#P message 184 283 83 196617 dim.set 320 240;#P user 242.ekran04 7 379 320 240 1;#P user umenu 1 185 100 196647 1 64 201 1;#X add clearmode 0;#X add clearmode 1;#P message 209 181 75 196617 bgcolor 0 0 0 1;#P user hslider 193 138 18 128 255 256 0 0;#P message 193 165 85 196617 fgcolor \$1 \$1 \$1;#P newex 71 124 64 196617 pack 0 0 0 0;#P number 141 57 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 105 57 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 59 58 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 23 58 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 71 102 64 196617 bondo 4;#P message 71 144 84 196617 line \$1 \$2 \$3 \$4;#P number 208 24 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 210 86 55 196617 pensize \$1;#P newex 108 236 39 196617 242.qd;#P comment 281 80 56 196617 distance=;#P fasten 66 0 15 0 397 411 360 411 360 369 12 369;#P connect 16 0 15 0;#P connect 6 0 23 0;#P connect 11 0 33 0;#P connect 2 0 33 0;#P connect 7 0 25 0;#P fasten 6 0 5 0 28 86 76 86;#P connect 5 0 10 0;#P connect 33 0 4 0;#P connect 10 0 4 0;#P fasten 7 0 5 1 64 84 94 84;#P connect 5 1 10 1;#P connect 8 0 24 0;#P fasten 8 0 5 2 110 95 112 95;#P connect 5 2 10 2;#P fasten 50 0 1 0 526 225 113 225;#P connect 42 0 1 0;#P connect 64 0 1 0;#P connect 65 0 1 0;#P fasten 11 0 1 0 198 196 113 196;#P fasten 2 0 1 0 215 130 169 130 169 193 113 193;#P fasten 21 0 1 0 390 227 113 227;#P connect 32 0 1 0;#P fasten 30 0 1 0 262 222 113 222;#P fasten 29 0 1 0 318 219 113 219;#P fasten 17 0 1 0 7 171 113 171;#P fasten 14 1 1 0 96 208 113 208;#P fasten 13 0 1 0 214 201 113 201;#P fasten 9 0 5 3 146 97 130 97;#P connect 5 3 10 3;#P connect 9 0 26 0;#P connect 18 0 20 0;#P connect 20 0 19 0;#P connect 12 0 11 0;#P connect 3 0 34 0;#P connect 36 0 34 0;#P connect 3 0 2 0;#P connect 3 0 22 0;#P connect 35 0 36 0;#P connect 36 1 34 1;#P connect 31 0 29 0;#P connect 39 0 38 0;#P connect 38 0 42 0;#P fasten 42 0 40 0 376 81 389 81;#P connect 40 0 44 0;#P connect 44 0 45 0;#P connect 45 0 21 0;#P fasten 1 0 66 0 113 261 397 261;#P fasten 72 0 66 0 496 376 397 376;#P fasten 68 0 66 0 497 377 397 377;#P fasten 70 0 66 0 497 376 397 376;#P fasten 67 0 66 0 454 372 397 372;#P fasten 37 0 44 1 449 99 407 99;#P connect 44 1 45 1;#P fasten 40 0 46 0 389 102 414 102;#P fasten 37 0 48 0 449 102 414 102;#P fasten 46 0 44 2 414 135 425 135;#P connect 44 2 45 2;#P connect 47 0 46 1;#P connect 49 0 48 1;#P connect 41 0 40 2;#P fasten 48 0 44 3 414 155 443 155;#P connect 44 3 45 3;#P fasten 42 0 37 0 376 94 449 94;#P connect 43 0 37 2;#P connect 73 0 72 0;#P connect 71 0 70 0;#P connect 69 0 68 0;#P connect 53 0 52 0;#P connect 52 0 56 0;#P fasten 42 0 54 0 376 93 525 93;#P connect 54 0 58 0;#P connect 58 0 59 0;#P connect 59 0 50 0;#P fasten 51 0 58 1 585 99 543 99;#P connect 58 1 59 1;#P fasten 54 0 60 0 525 102 550 102;#P fasten 51 0 62 0 585 102 550 102;#P fasten 60 0 58 2 550 135 561 135;#P connect 58 2 59 2;#P connect 61 0 60 1;#P connect 63 0 62 1;#P connect 55 0 54 2;#P fasten 62 0 58 3 550 155 579 155;#P connect 58 3 59 3;#P fasten 42 0 51 0 376 93 585 93;#P connect 57 0 51 2;#P pop;