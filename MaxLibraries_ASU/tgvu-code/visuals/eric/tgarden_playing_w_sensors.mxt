max v2;#N vpatcher 323 44 1166 755;#P origin 5 -45;#P comment 5 490 261 196626 tgarden_playing_w_sensors;#P comment 264 490 143 196617 Erik Conrad � 2002 Topological Media Lab;#P number 256 399 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 256 377 27 196617 int;#P newex 304 395 35 196617 * 256;#P newex 460 366 120 196617 expr ($f1 * 1000) + 40;#P number 402 369 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 353 377 32 196617 mavg;#P newex 507 313 44 196617 r p2s10;#P flonum 507 339 53 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 337 326 56 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 336 406 49 196617 s pensize;#P flonum 304 364 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 336 346 85 196617 expr ($f1 * 100);#P flonum 338 52 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 323 30 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user 242.ekran04 131 333 65 50 1;#P user multiSlider 522 459 134 80 0. 2. 1 3193 15;#M frgb 0 0 0;#M brgb 255 255 255;#M rgb2 127 127 127;#P flonum 542 417 57 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 497 416 44 196617 r p2s10;#P flonum 433 417 58 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 337 307 44 196617 r p2s16;#P user umenu 663 148 60 196647 1 64 164 1;#X add off;#X add on;#X add freeze;#X add bypass;#X add think;#X add quarrel;#P newex 594 158 49 196617 r pensize;#P newex 540 179 65 196617 midpt_draw;#P newex 541 222 64 196617 pack 0 0 0 0;#P newex 540 203 64 196617 bondo 4;#P newex 439 163 49 196617 r pensize;#P newex 385 184 65 196617 midpt_draw;#P newex 345 226 35 196617 s dsaY;#B color 12;#P newex 308 226 35 196617 s dsaX;#B color 12;#P flonum 487 25 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 450 26 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 417 85 118 196617 expr abs(($f1 - .27)*3);#P newex 385 67 118 196617 expr abs(($f1 - .24)*2);#P newex 79 123 35 196617 * 256;#P number 79 101 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 374 8 14 196617 1;#P message 360 8 14 196617 0;#P newex 385 22 30 196617 gate;#P newex 404 2 38 196617 r p2s9;#P message 529 43 14 196617 1;#P message 515 43 14 196617 0;#P newex 540 57 30 196617 gate;#P number 489 145 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 453 146 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 199 334 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 199 354 49 196617 s pensize;#P message 715 638 14 196617 1;#P message 701 638 14 196617 0;#P newex 726 652 30 196617 gate;#P newex 576 139 27 196617 int;#P newex 540 139 27 196617 int;#P newex 580 119 39 196617 * 240.;#P newex 540 119 39 196617 * 320.;#P flonum 613 100 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 576 100 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 540 100 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 540 81 74 196617 unpack 0. 0. 0.;#P newex 559 37 38 196617 r p2s9;#P message 541 243 100 196617 filloval \$1 \$2 \$3 \$4;#P newex 172 20 49 196617 s pensize;#P newex 421 145 27 196617 int;#P newex 385 145 27 196617 int;#P newex 425 125 39 196617 * 240.;#P newex 385 125 39 196617 * 320.;#N vpatcher 39 55 721 408;#P message 521 222 79 196617 0.470312 0.6 0.673241;#P newex 521 199 60 196617 prepend set;#P newex 521 178 38 196617 r p5s9;#P message 434 226 79 196617 0.09 0.2 0.;#P newex 434 203 60 196617 prepend set;#P newex 434 182 38 196617 r p4s9;#P message 350 227 79 196617 0.13 0.11 0.;#P newex 350 204 60 196617 prepend set;#P newex 350 183 38 196617 r p3s9;#N vpatcher 56 146 846 470;#P newex 427 247 55 196617 s p5-group;#P newex 374 247 50 196617 s p5-solo;#P newex 299 247 73 196617 s p5-excavate;#P newex 236 247 61 196617 s p5-reveal;#P newex 175 247 60 196617 s p5-spawn;#P newex 123 247 51 196617 s p5-feed;#P newex 57 247 65 196617 s p5-scratch;#P newex 109 219 292 196617 route /scratch /feed /spawn /reveal /excavate /solo /group;#P newex 129 163 44 196617 s p5s25;#P newex 205 128 44 196617 s p5s24;#P newex 212 125 44 196617 s p5s23;#P newex 269 133 44 196617 s p5s22;#P newex 327 153 44 196617 s p5s21;#P newex 315 139 44 196617 s p5s20;#P newex 244 160 44 196617 s p5s19;#P newex 248 124 44 196617 s p5s18;#P newex 172 144 44 196617 s p5s17;#P newex 243 138 44 196617 s p5s16;#P newex 111 128 44 196617 s p5s33;#P newex 269 153 44 196617 s p5s32;#P newex 201 131 44 196617 s p5s31;#P newex 152 141 44 196617 s p5s30;#P newex 99 139 44 196617 s p5s29;#P newex 136 135 44 196617 s p5s28;#P newex 286 140 44 196617 s p5s27;#P newex 226 133 44 196617 s p5s26;#P newex 81 142 44 196617 s p5s15;#P newex 263 127 44 196617 s p5s14;#P newex 85 156 44 196617 s p5s13;#P newex 172 138 44 196617 s p5s12;#P newex 172 138 44 196617 s p5s11;#P newex 216 137 44 196617 s p5s10;#P newex 157 148 38 196617 s p5s9;#P newex 129 137 38 196617 s p5s8;#P newex 129 137 38 196617 s p5s7;#P newex 129 137 38 196617 s p5s6;#P newex 81 159 38 196617 s p5s5;#P newex 176 133 38 196617 s p5s4;#P newex 78 130 38 196617 s p5s3;#P newex 78 137 38 196617 s p5s2;#P newex 78 137 38 196617 s p5s1;#P newex 79 84 456 196617 route /s1 /s2 /s3 /s4 /s5 /s6 /7 /s8 /s9 /s10 /s11 /s12 /s13 /s14 /s15 /s16 /s17 /s18 /s19 /s20 /s21 /s22 /s23 /s24 /s25 /s26 /s27 /s28 /s29 /s30 /s31 /s32 /s33 /state;#P inlet 79 45 15 0;#P connect 35 0 36 0;#P connect 1 2 4 0;#P connect 1 0 2 0;#P connect 1 1 3 0;#P connect 0 0 1 0;#P connect 1 14 16 0;#P connect 1 4 6 0;#P connect 1 12 14 0;#P connect 1 28 20 0;#P connect 1 33 35 0;#P connect 1 32 24 0;#P connect 35 1 37 0;#P connect 1 7 9 0;#P connect 1 6 8 0;#P connect 1 5 7 0;#P connect 1 24 34 0;#P connect 1 27 19 0;#P connect 1 29 21 0;#P connect 1 8 10 0;#P connect 1 10 12 0;#P connect 1 11 13 0;#P connect 1 16 26 0;#P connect 35 2 38 0;#P connect 1 3 5 0;#P connect 1 30 22 0;#P connect 1 23 33 0;#P connect 1 22 32 0;#P connect 1 9 11 0;#P connect 1 25 17 0;#P connect 35 3 39 0;#P connect 1 15 25 0;#P connect 1 18 28 0;#P connect 1 17 27 0;#P connect 1 13 15 0;#P connect 1 21 31 0;#P connect 1 31 23 0;#P connect 1 26 18 0;#P connect 35 4 40 0;#P connect 1 19 29 0;#P connect 1 20 30 0;#P connect 35 5 41 0;#P connect 35 6 42 0;#P pop;#P newobj 417 148 51 196617 p player5;#N vpatcher 56 146 846 470;#P newex 438 248 55 196617 s p4-group;#P newex 385 248 50 196617 s p4-solo;#P newex 310 248 73 196617 s p4-excavate;#P newex 247 248 61 196617 s p4-reveal;#P newex 186 248 60 196617 s p4-spawn;#P newex 134 248 51 196617 s p4-feed;#P newex 68 248 65 196617 s p4-scratch;#P newex 107 219 292 196617 route /scratch /feed /spawn /reveal /excavate /solo /group;#P newex 78 153 44 196617 s p4s25;#P newex 142 128 44 196617 s p4s24;#P newex 149 125 44 196617 s p4s23;#P newex 241 136 44 196617 s p4s22;#P newex 206 133 44 196617 s p4s21;#P newex 287 142 44 196617 s p4s20;#P newex 228 149 44 196617 s p4s19;#P newex 194 145 44 196617 s p4s18;#P newex 143 165 44 196617 s p4s17;#P newex 189 159 44 196617 s p4s16;#P newex 138 151 44 196617 s p4s33;#P newex 241 156 44 196617 s p4s32;#P newex 138 131 44 196617 s p4s31;#P newex 118 152 44 196617 s p4s30;#P newex 126 162 44 196617 s p4s29;#P newex 163 158 44 196617 s p4s28;#P newex 258 143 44 196617 s p4s27;#P newex 163 133 44 196617 s p4s26;#P newex 108 165 44 196617 s p4s15;#P newex 235 130 44 196617 s p4s14;#P newex 75 141 44 196617 s p4s13;#P newex 109 138 44 196617 s p4s12;#P newex 109 138 44 196617 s p4s11;#P newex 153 137 44 196617 s p4s10;#P newex 123 159 38 196617 s p4s9;#P newex 156 160 38 196617 s p4s8;#P newex 156 160 38 196617 s p4s7;#P newex 156 160 38 196617 s p4s6;#P newex 71 144 38 196617 s p4s5;#P newex 113 133 38 196617 s p4s4;#P newex 105 153 38 196617 s p4s3;#P newex 105 160 38 196617 s p4s2;#P newex 105 160 38 196617 s p4s1;#P newex 79 84 456 196617 route /s1 /s2 /s3 /s4 /s5 /s6 /7 /s8 /s9 /s10 /s11 /s12 /s13 /s14 /s15 /s16 /s17 /s18 /s19 /s20 /s21 /s22 /s23 /s24 /s25 /s26 /s27 /s28 /s29 /s30 /s31 /s32 /s33 /state;#P inlet 79 45 15 0;#P connect 35 0 36 0;#P connect 1 4 6 0;#P connect 1 12 14 0;#P connect 1 24 34 0;#P connect 0 0 1 0;#P connect 1 2 4 0;#P connect 1 1 3 0;#P connect 1 0 2 0;#P connect 1 33 35 0;#P connect 1 14 16 0;#P connect 1 11 13 0;#P connect 1 10 12 0;#P connect 1 3 5 0;#P connect 1 29 21 0;#P connect 1 8 10 0;#P connect 1 28 20 0;#P connect 35 1 37 0;#P connect 1 30 22 0;#P connect 1 32 24 0;#P connect 1 23 33 0;#P connect 1 16 26 0;#P connect 1 22 32 0;#P connect 1 9 11 0;#P connect 1 5 7 0;#P connect 1 6 8 0;#P connect 1 7 9 0;#P connect 1 25 17 0;#P connect 1 27 19 0;#P connect 35 2 38 0;#P connect 1 15 25 0;#P connect 1 17 27 0;#P connect 1 20 30 0;#P connect 1 18 28 0;#P connect 1 13 15 0;#P connect 1 21 31 0;#P connect 1 31 23 0;#P connect 35 3 39 0;#P connect 1 26 18 0;#P connect 1 19 29 0;#P connect 35 4 40 0;#P connect 35 5 41 0;#P connect 35 6 42 0;#P pop;#P newobj 365 149 51 196617 p player4;#N vpatcher 56 146 846 470;#P newex 418 213 55 196617 s p3-group;#P newex 365 213 50 196617 s p3-solo;#P newex 290 213 73 196617 s p3-excavate;#P newex 227 213 61 196617 s p3-reveal;#P newex 166 213 60 196617 s p3-spawn;#P newex 114 213 51 196617 s p3-feed;#P newex 48 213 65 196617 s p3-scratch;#P newex 82 186 292 196617 route /scratch /feed /spawn /reveal /excavate /solo /group;#P newex 85 146 44 196617 s p3s25;#P newex 160 121 44 196617 s p3s24;#P newex 167 118 44 196617 s p3s23;#P newex 214 131 44 196617 s p3s22;#P newex 272 151 44 196617 s p3s21;#P newex 260 137 44 196617 s p3s20;#P newex 199 153 44 196617 s p3s19;#P newex 203 117 44 196617 s p3s18;#P newex 77 122 44 196617 s p3s17;#P newex 198 131 44 196617 s p3s16;#P newex 156 144 44 196617 s p3s33;#P newex 214 151 44 196617 s p3s32;#P newex 156 124 44 196617 s p3s31;#P newex 83 133 44 196617 s p3s30;#P newex 144 155 44 196617 s p3s29;#P newex 181 151 44 196617 s p3s28;#P newex 231 138 44 196617 s p3s27;#P newex 181 126 44 196617 s p3s26;#P newex 126 158 44 196617 s p3s15;#P newex 208 125 44 196617 s p3s14;#P newex 125 134 44 196617 s p3s13;#P newex 127 131 44 196617 s p3s12;#P newex 127 131 44 196617 s p3s11;#P newex 171 130 44 196617 s p3s10;#P newex 180 151 38 196617 s p3s9;#P newex 174 153 38 196617 s p3s8;#P newex 174 153 38 196617 s p3s7;#P newex 174 153 38 196617 s p3s6;#P newex 121 137 38 196617 s p3s5;#P newex 131 126 38 196617 s p3s4;#P newex 123 146 38 196617 s p3s3;#P newex 123 153 38 196617 s p3s2;#P newex 123 153 38 196617 s p3s1;#P newex 79 84 456 196617 route /s1 /s2 /s3 /s4 /s5 /s6 /7 /s8 /s9 /s10 /s11 /s12 /s13 /s14 /s15 /s16 /s17 /s18 /s19 /s20 /s21 /s22 /s23 /s24 /s25 /s26 /s27 /s28 /s29 /s30 /s31 /s32 /s33 /state;#P inlet 79 45 15 0;#P connect 35 0 36 0;#P connect 1 16 26 0;#P connect 0 0 1 0;#P connect 1 33 35 0;#P connect 1 29 21 0;#P connect 1 24 34 0;#P connect 35 1 37 0;#P connect 1 4 6 0;#P connect 1 2 4 0;#P connect 1 0 2 0;#P connect 1 1 3 0;#P connect 1 12 14 0;#P connect 1 14 16 0;#P connect 1 10 12 0;#P connect 1 11 13 0;#P connect 1 3 5 0;#P connect 1 28 20 0;#P connect 1 30 22 0;#P connect 1 32 24 0;#P connect 1 23 33 0;#P connect 35 2 38 0;#P connect 1 22 32 0;#P connect 1 9 11 0;#P connect 1 7 9 0;#P connect 1 6 8 0;#P connect 1 5 7 0;#P connect 1 8 10 0;#P connect 1 25 17 0;#P connect 1 27 19 0;#P connect 1 15 25 0;#P connect 1 18 28 0;#P connect 1 17 27 0;#P connect 1 13 15 0;#P connect 1 21 31 0;#P connect 1 31 23 0;#P connect 35 3 39 0;#P connect 1 26 18 0;#P connect 1 19 29 0;#P connect 1 20 30 0;#P connect 35 4 40 0;#P connect 35 5 41 0;#P connect 35 6 42 0;#P pop;#P newobj 311 148 51 196617 p player3;#P message 265 228 79 196617 0.610937 0.5625 1.;#P newex 265 205 60 196617 prepend set;#P newex 265 184 38 196617 r p2s9;#P message 181 229 79 196617 0.639063 0.1 0.;#P newex 181 206 60 196617 prepend set;#P newex 181 185 38 196617 r p1s9;#P message 85 87 85 196617 tellmeeverything;#P message 127 67 33 196617 debug;#P newex 139 149 55 196617 print tgrt-;#P toggle 123 127 15 0;#P newex 139 126 30 196617 gate;#N vpatcher 56 146 610 447;#P newex 440 238 55 196617 s p2-group;#P newex 387 238 50 196617 s p2-solo;#P newex 312 238 73 196617 s p2-excavate;#P newex 249 238 61 196617 s p2-reveal;#P newex 188 238 60 196617 s p2-spawn;#P newex 136 238 51 196617 s p2-feed;#P newex 70 238 65 196617 s p2-scratch;#P newex 100 195 292 196617 route /scratch /feed /spawn /reveal /excavate /solo /group;#P newex 210 132 44 196617 s p2s25;#P newex 198 136 44 196617 s p2s24;#P newex 205 133 44 196617 s p2s23;#P newex 112 133 44 196617 s p2s22;#P newex 170 153 44 196617 s p2s21;#P newex 158 139 44 196617 s p2s20;#P newex 246 155 44 196617 s p2s19;#P newex 241 132 44 196617 s p2s18;#P newex 241 143 44 196617 s p2s17;#P newex 245 133 44 196617 s p2s16;#P newex 194 159 44 196617 s p2s33;#P newex 112 153 44 196617 s p2s32;#P newex 194 139 44 196617 s p2s31;#P newex 236 126 44 196617 s p2s30;#P newex 115 144 44 196617 s p2s29;#P newex 228 153 44 196617 s p2s28;#P newex 129 140 44 196617 s p2s27;#P newex 228 128 44 196617 s p2s26;#P newex 97 147 44 196617 s p2s15;#P newex 106 127 44 196617 s p2s14;#P newex 184 128 44 196617 s p2s13;#P newex 165 146 44 196617 s p2s12;#P newex 165 146 44 196617 s p2s11;#P newex 209 145 44 196617 s p2s10;#P newex 241 133 38 196617 s p2s9;#P newex 145 142 38 196617 s p2s8;#P newex 145 142 38 196617 s p2s7;#P newex 145 142 38 196617 s p2s6;#P newex 180 131 38 196617 s p2s5;#P newex 169 141 38 196617 s p2s4;#P newex 161 161 38 196617 s p2s3;#P newex 94 142 38 196617 s p2s2;#P newex 94 142 38 196617 s p2s1;#P newex 79 84 456 196617 route /s1 /s2 /s3 /s4 /s5 /s6 /7 /s8 /s9 /s10 /s11 /s12 /s13 /s14 /s15 /s16 /s17 /s18 /s19 /s20 /s21 /s22 /s23 /s24 /s25 /s26 /s27 /s28 /s29 /s30 /s31 /s32 /s33 /state;#P inlet 79 45 15 0;#P connect 35 0 36 0;#P connect 0 0 1 0;#P connect 1 1 3 0;#P connect 1 0 2 0;#P connect 1 14 16 0;#P connect 1 33 35 0;#P connect 1 13 15 0;#P connect 1 21 31 0;#P connect 1 31 23 0;#P connect 1 28 20 0;#P connect 1 26 18 0;#P connect 35 1 37 0;#P connect 1 5 7 0;#P connect 1 6 8 0;#P connect 1 7 9 0;#P connect 1 19 29 0;#P connect 1 2 4 0;#P connect 1 11 13 0;#P connect 1 10 12 0;#P connect 1 3 5 0;#P connect 1 20 30 0;#P connect 1 4 6 0;#P connect 1 12 14 0;#P connect 35 2 38 0;#P connect 1 30 22 0;#P connect 1 32 24 0;#P connect 1 23 33 0;#P connect 1 22 32 0;#P connect 1 9 11 0;#P connect 1 24 34 0;#P connect 1 25 17 0;#P connect 1 27 19 0;#P connect 1 29 21 0;#P connect 1 17 27 0;#P connect 1 8 10 0;#P connect 1 16 26 0;#P connect 1 15 25 0;#P connect 1 18 28 0;#P connect 35 3 39 0;#P connect 35 4 40 0;#P connect 35 5 41 0;#P connect 35 6 42 0;#P pop;#P newobj 257 148 51 196617 p player2;#N vpatcher 56 146 870 555;#P newex 447 279 55 196617 s p1-group;#P newex 394 279 50 196617 s p1-solo;#P newex 319 279 73 196617 s p1-excavate;#P newex 256 279 61 196617 s p1-reveal;#P newex 195 279 60 196617 s p1-spawn;#P newex 143 279 51 196617 s p1-feed;#P newex 77 279 65 196617 s p1-scratch;#P newex 107 236 292 196617 route /scratch /feed /spawn /reveal /excavate /solo /group;#P newex 166 161 44 196617 s p1s25;#P newex 239 162 44 196617 s p1s24;#P newex 246 159 44 196617 s p1s23;#P newex 236 126 44 196617 s p1s22;#P newex 294 146 44 196617 s p1s21;#P newex 282 132 44 196617 s p1s20;#P newex 278 194 44 196617 s p1s19;#P newex 282 158 44 196617 s p1s18;#P newex 214 152 44 196617 s p1s17;#P newex 277 172 44 196617 s p1s16;#P newex 235 185 44 196617 s p1s33;#P newex 236 146 44 196617 s p1s32;#P newex 235 165 44 196617 s p1s31;#P newex 189 139 44 196617 s p1s30;#P newex 223 196 44 196617 s p1s29;#P newex 260 192 44 196617 s p1s28;#P newex 253 133 44 196617 s p1s27;#P newex 260 167 44 196617 s p1s26;#P newex 205 199 44 196617 s p1s15;#P newex 230 120 44 196617 s p1s14;#P newex 146 128 44 196617 s p1s13;#P newex 206 172 44 196617 s p1s12;#P newex 206 172 44 196617 s p1s11;#P newex 250 171 44 196617 s p1s10;#P newex 111 187 38 196617 s p1s9;#P newex 253 194 38 196617 s p1s8;#P newex 253 194 38 196617 s p1s7;#P newex 253 194 38 196617 s p1s6;#P newex 142 131 38 196617 s p1s5;#P newex 210 167 38 196617 s p1s4;#P newex 202 187 38 196617 s p1s3;#P newex 202 194 38 196617 s p1s2;#P newex 202 194 38 196617 s p1s1;#P newex 72 77 456 196617 route /s1 /s2 /s3 /s4 /s5 /s6 /7 /s8 /s9 /s10 /s11 /s12 /s13 /s14 /s15 /s16 /s17 /s18 /s19 /s20 /s21 /s22 /s23 /s24 /s25 /s26 /s27 /s28 /s29 /s30 /s31 /s32 /s33 /state;#P inlet 72 38 15 0;#P connect 0 0 1 0;#P connect 35 0 36 0;#P connect 1 33 35 0;#P connect 1 8 10 0;#P connect 1 4 6 0;#P connect 35 1 37 0;#P connect 1 12 14 0;#P connect 1 24 34 0;#P connect 1 29 21 0;#P connect 35 2 38 0;#P connect 1 2 4 0;#P connect 1 0 2 0;#P connect 1 1 3 0;#P connect 1 14 16 0;#P connect 1 10 12 0;#P connect 1 11 13 0;#P connect 1 3 5 0;#P connect 1 16 26 0;#P connect 1 28 20 0;#P connect 1 13 15 0;#P connect 1 30 22 0;#P connect 1 32 24 0;#P connect 1 21 31 0;#P connect 1 31 23 0;#P connect 1 23 33 0;#P connect 1 22 32 0;#P connect 1 9 11 0;#P connect 1 26 18 0;#P connect 1 7 9 0;#P connect 1 6 8 0;#P connect 1 5 7 0;#P connect 35 3 39 0;#P connect 1 25 17 0;#P connect 1 27 19 0;#P connect 1 15 25 0;#P connect 1 18 28 0;#P connect 1 19 29 0;#P connect 1 17 27 0;#P connect 1 20 30 0;#P connect 35 4 40 0;#P connect 35 5 41 0;#P connect 35 6 42 0;#P pop;#P newobj 202 148 51 196617 p player1;#P newex 202 126 185 196617 OSC-route /p1 /p2 /p3 /p4 /p5;#P newex 202 104 73 196617 OSC-route /tg;#P newex 193 80 88 196617 OpenSoundControl;#P newex 193 56 82 196617 otudp read 5333;#P connect 7 0 6 0;#P connect 6 0 8 0;#P connect 2 0 6 1;#P connect 11 0 12 0;#P connect 12 0 13 0;#P connect 0 0 1 0;#P connect 10 0 1 0;#P connect 9 0 1 0;#P connect 1 1 2 0;#P connect 2 0 3 0;#P connect 3 0 4 0;#P connect 3 1 5 0;#P connect 14 0 15 0;#P connect 15 0 16 0;#P connect 3 2 17 0;#P connect 20 0 21 0;#P connect 21 0 22 0;#P connect 3 3 18 0;#P connect 3 4 19 0;#P connect 23 0 24 0;#P connect 24 0 25 0;#P connect 26 0 27 0;#P connect 27 0 28 0;#P pop;#P newobj 685 33 53 196617 p network;#P flonum 458 106 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 421 106 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 385 106 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 385 45 74 196617 unpack 0. 0. 0.;#P button 712 525 15 0;#P user GSwitch 712 602 41 32 0 0;#P newex 662 237 88 196617 242.tl.alpha.make;#P button 248 20 15 0;#P message 92 394 83 196617 dim.set 160 120;#P newex 648 269 49 196617 s qdmask;#P newex 720 564 27 196617 / 4;#P comment 764 545 100 196617 inverse (distance to size) max 100 pixels;#P newex 592 653 100 196617 expr ( 50 - $f1 / 8);#P newex 726 673 49 196617 s pensize;#P flonum 807 593 55 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 757 573 105 196617 expr ( 100 - $f1 / 4);#P flonum 757 526 70 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 809 486 45 196617 pack 0 0;#P newex 757 486 45 196617 pack 0 0;#P newex 757 506 45 196617 distance;#P toggle 248 64 15 0;#P number 273 64 35 9 0 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 248 86 35 196617 metro;#P number 284 129 49 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 248 128 35 196617 * 256;#N counter 2 0 255;#X flags 0 0;#P newobj 248 107 81 196617 counter 2 0 255;#P number 60 357 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 4 357 55 196617 objrate \$1;#P message 6 318 54 196617 objmode 2;#P user hslider 799 140 18 128 128 1 0 0;#P message 799 161 64 196617 elevation \$1;#P user hslider 800 181 18 128 128 1 0 0;#P message 800 202 45 196617 angle \$1;#P user hslider 800 222 18 128 128 1 0 0;#P message 800 243 50 196617 height \$1;#P message 757 168 40 196617 mode 1;#P newex 700 196 62 196617 242.emboss;#P message 30 284 14 196617 1;#P message 3 263 14 196617 0;#P newex 386 227 64 196617 pack 0 0 0 0;#P newex 385 208 64 196617 bondo 4;#P message 32 254 31 196617 clear;#P number 289 175 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 233 196 54 196617 objmode 2;#P message 289 196 55 196617 objrate \$1;#P newex 187 103 49 196617 r pensize;#P message 387 246 100 196617 filloval \$1 \$2 \$3 \$4;#P message 2 74 124 196617 offscreen.resize 320 240;#P message 7 394 83 196617 dim.set 320 240;#P user 242.ekran04 7 422 320 240 1;#P user umenu 1 228 100 196647 1 64 244 1;#X add clearmode 0;#X add clearmode 1;#P message 185 176 75 196617 bgcolor 0 0 0 1;#P user hslider 521 690 18 128 255 256 0 0;#P message 169 160 85 196617 fgcolor \$1 \$1 \$1;#P number 172 1 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 170 81 55 196617 pensize \$1;#P newex 108 279 39 196617 242.qd;#P comment 593 635 100 196617 max 50 pixels;#P comment 246 49 74 196617 color shift rate;#P comment 741 469 113 196617 attach? for two users;#P comment 685 6 71 196617 gets OSC data from oz-main;#P comment 59 8 43 196617 energy;#P connect 35 0 34 0;#P fasten 25 0 12 0 705 399 313 399 313 412 12 412;#P fasten 53 0 12 0 97 414 12 414;#P connect 13 0 12 0;#P connect 92 0 93 0;#P fasten 68 0 5 0 546 274 113 274;#P fasten 10 0 5 0 190 244 113 244;#P fasten 11 1 5 0 96 251 113 251;#P fasten 14 0 5 0 7 214 113 214;#P fasten 17 0 5 0 294 262 113 262;#P fasten 18 0 5 0 238 265 113 265;#P connect 20 0 5 0;#P fasten 6 0 5 0 175 173 169 173 169 236 113 236;#P fasten 8 0 5 0 174 239 113 239;#P connect 24 0 5 0;#P connect 23 0 5 0;#P connect 33 0 5 0;#P connect 34 0 5 0;#P fasten 15 0 5 0 392 272 113 272;#P connect 5 0 112 0;#P fasten 37 0 8 0 253 152 174 152;#P connect 124 0 8 0;#P fasten 93 0 8 0 84 144 174 144;#P fasten 16 0 6 0 167 120 167 74 175 74;#P connect 7 0 67 0;#P connect 82 0 81 0;#P connect 54 0 41 0;#P connect 41 0 39 0;#P connect 39 0 36 0;#P connect 36 0 37 0;#P connect 116 0 125 0;#P connect 124 0 126 0;#P connect 40 0 39 1;#P connect 37 0 38 0;#P connect 19 0 17 0;#P connect 115 0 116 0;#P connect 125 0 124 0;#P fasten 65 0 98 0 390 194 361 194 361 220 313 220;#P connect 118 0 115 0;#P connect 121 0 117 0;#P connect 107 0 118 0;#P fasten 66 0 99 0 377 162 377 208 350 208;#P connect 122 0 121 1;#P connect 91 0 89 0;#P connect 90 0 89 0;#P connect 89 0 58 0;#P connect 58 0 94 0;#P connect 114 0 94 0;#P connect 94 0 59 0;#P connect 59 0 63 0;#P connect 63 0 65 0;#P connect 65 0 100 0;#P connect 100 0 21 0;#P connect 21 0 22 0;#P connect 22 0 15 0;#P connect 100 1 21 1;#P connect 21 1 22 1;#P connect 88 0 89 1;#P fasten 66 0 100 1 426 177 417 177;#P connect 58 1 95 0;#P connect 113 0 95 0;#P connect 95 0 60 0;#P connect 64 0 66 0;#P connect 100 2 21 2;#P connect 21 2 22 2;#P connect 60 0 64 0;#P connect 101 0 100 2;#P connect 100 3 21 3;#P connect 21 3 22 3;#P connect 58 0 96 0;#P connect 65 0 83 0;#P connect 58 1 97 0;#P connect 66 0 84 0;#P connect 120 0 119 0;#P connect 109 0 111 0;#P connect 86 0 85 0;#P connect 87 0 85 0;#P connect 85 0 70 0;#P connect 70 0 71 0;#P connect 71 0 74 0;#P connect 74 0 76 0;#P connect 76 0 104 0;#P connect 104 0 102 0;#P connect 102 0 103 0;#P connect 103 0 68 0;#P connect 109 0 110 0;#P connect 104 1 102 1;#P connect 102 1 103 1;#P connect 69 0 85 1;#P fasten 77 0 104 1 581 163 572 163;#P connect 70 1 72 0;#P connect 75 0 77 0;#P connect 104 2 102 2;#P connect 102 2 103 2;#P connect 72 0 75 0;#P connect 105 0 104 2;#P connect 104 3 102 3;#P connect 102 3 103 3;#P connect 70 2 73 0;#P fasten 55 0 52 0 667 264 653 264;#P fasten 25 0 55 0 705 231 667 231;#P fasten 106 0 25 0 668 174 705 174;#P fasten 26 0 25 0 762 189 705 189;#P fasten 29 0 25 0 805 269 705 269;#P fasten 27 0 25 0 805 270 705 270;#P fasten 31 0 25 0 804 269 705 269;#P fasten 5 0 25 0 113 304 705 304;#P connect 57 0 56 0;#P fasten 45 0 51 0 762 546 725 546;#P connect 80 0 78 0;#P connect 79 0 78 0;#P connect 78 0 48 0;#P fasten 51 0 56 1 725 590 732 590;#P fasten 46 0 56 2 762 597 747 597;#P fasten 56 0 78 1 718 635 751 635;#P connect 43 0 42 0;#P connect 42 0 45 0;#P connect 45 0 46 0;#P fasten 44 0 42 1 814 494 797 494;#P connect 32 0 31 0;#P connect 30 0 29 0;#P connect 28 0 27 0;#P fasten 46 0 47 0 812 590;#P pop;