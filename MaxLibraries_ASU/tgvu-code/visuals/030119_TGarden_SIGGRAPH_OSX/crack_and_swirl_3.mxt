max v2;#N vpatcher 9 53 1027 760;#P message 55 267 14 196617 1;#P newex 55 285 43 196617 s win_s;#P newex 222 204 45 196617 loadbang;#P message 257 233 26 196617 200;#P message 185 233 26 196617 107;#P toggle 588 573 15 0;#P newex 588 590 27 196617 gate;#P newex 588 552 43 196617 r win_s;#P toggle 284 452 15 0;#P newex 284 469 27 196617 gate;#P newex 284 432 43 196617 r win_s;#P user jit.pwindow 283 488 42 32 0 1 0 0 1 0;#P toggle 60 327 15 0;#P newex 60 344 27 196617 gate;#P newex 61 307 43 196617 r win_s;#P message 253 575 17 196617 0.7;#P message 235 575 17 196617 0.5;#P message 225 537 38 196617 20000;#P newex 920 98 27 196617 gate;#P toggle 920 74 15 0;#P newex 936 72 43 196617 r key_p;#B color 12;#P newex 425 36 27 196617 gate;#P newex 262 36 27 196617 gate;#P toggle 191 27 15 0;#P newex 207 25 43 196617 r key_p;#B color 12;#P number 225 554 69 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 129 582 70 196617 remove_jump;#P newex 33 582 70 196617 remove_jump;#P number 49 647 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 150 648 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 441 320 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 441 343 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 514 323 35 196617 pickup;#P newex 478 323 35 196617 pickup;#P number 503 280 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P toggle 114 120 15 0;#P newex 130 119 41 196617 r key_i;#B color 12;#P flonum 205 594 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 129 616 55 196617 pos_interp;#P newex 33 616 55 196617 pos_interp;#P toggle 305 279 15 0;#P newex 305 298 68 1441802 qmetro 200;#P number 294 343 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P newex 294 321 65 196617 drunk 500 5;#P message 793 109 14 196617 0;#P message 757 109 14 196617 3;#P message 721 109 26 196617 255;#P message 685 109 20 196617 98;#P message 649 109 26 196617 170;#P message 613 109 26 196617 255;#P newex 158 93 27 196617 gate;#P newex 137 74 35 196617 > 0.01;#P newex 175 54 27 196617 + 0.;#P newex 841 93 39 196617 * 100.;#P number 793 130 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 757 130 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 721 130 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 721 151 50 196617 pak 0 0 0;#P message 720 171 85 196617 setall 0 \$1 \$2 \$3;#P number 685 130 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 649 130 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 613 130 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 613 151 50 196617 pak 0 0 0;#P message 612 171 85 196617 setall 0 \$1 \$2 \$3;#P hidden message 12 118 14 196617 1;#P hidden newex 12 98 45 196617 loadbang;#P newex 48 240 29 196617 == 0;#P newex 16 240 29 196617 == 0;#P comment 68 136 16 196617 p2;#P comment 50 136 16 196617 p1;#P user radiogroup 68 151 18 32;#X size 2;#X offset 16;#X inactive 0;#X itemtype 0;#X flagmode 0;#X set 1;#X done;#P user radiogroup 48 151 18 32;#X size 2;#X offset 16;#X inactive 0;#X itemtype 0;#X flagmode 0;#X set 1;#X done;#P newex 545 412 68 196617 r intrude_val;#B color 12;#P newex 456 388 68 196617 r intrude_val;#B color 12;#P newex 441 154 68 196617 r intrude_val;#B color 12;#P comment 9 169 37 196617 mouse;#P newex 279 584 45 196617 loadbang;#P newex 323 634 28 196617 Ladd;#P newex 293 634 28 196617 Ladd;#P message 361 613 35 196617 10 10;#P message 315 613 45 196617 -10 -10;#P message 279 613 35 196617 10 10;#P newex 263 634 28 196617 Ladd;#P message 233 613 45 196617 -10 -10;#P newex 233 634 28 196617 Ladd;#P newex 538 527 43 196617 r key_p;#B color 12;#P newex 666 269 43 196617 r key_c;#B color 12;#P newex 820 45 84 196617 r intrude_keyval;#B color 12;#P newex 212 72 71 196617 r feed_keyval;#B color 12;#P newex 841 301 68 196617 s intrude_val;#B color 12;#P newex 224 140 55 196617 s feed_val;#B color 12;#P user GSwitch 538 577 41 32 1 0;#P newex 96 221 27 196617 s p1;#B color 12;#P newex 134 222 27 196617 s p2;#B color 12;#P newex 134 199 27 196617 gate;#P newex 96 200 27 196617 gate;#P newex 151 171 35 196617 r mp2;#P newex 113 171 35 196617 r mp1;#P newex 112 645 27 196617 gate;#P newex 16 645 27 196617 gate;#P newex 34 410 75 196617 dumpOSC 5333;#P newex 34 435 75 196617 route_oz_input;#P message 386 530 148 196617 brgb 0 0 0 \, clear \, paintoval \$1 \$2 \$3 \$4 255 255 0 \, paintoval \$5 \$6 \$7 \$8 255 0 0 \, moveto \$3 \$4 \, frgb 255 255 255 \, write 1 \, moveto \$7 \$8 \, write 2 \, bang;#P newex 233 654 115 196617 pack 0 0 0 0 0 0 0 0;#P toggle 538 549 22 0;#P newex 386 610 109 196617 jit.lcd 4 char 320 240;#P message 686 310 29 196617 0.03;#P message 611 310 29 196617 0.04;#P newex 686 290 65 196617 delay 10000;#P message 666 290 14 196617 0;#P newex 441 176 45 196617 * 0.002;#P newex 456 429 32 196617 + 1.;#P newex 456 408 39 196617 * 0.04;#P flonum 456 450 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 456 471 69 196617 saturation \$1;#P newex 389 455 52 196617 jit.brcosa;#P newex 547 280 53 196617 jit.pack;#P newex 547 257 66 196617 jit.unpack;#P flonum 441 199 35 9 0. 1. 3 3 0 0 0 255 235 141 222 222 222 0 0 0;#P newex 380 244 71 196617 jit.op @op *;#P newex 380 219 119 196617 jit.noise 1 char 320 240;#P newex 547 199 125 196617 jit.matrix 4 char 320 240;#P newex 680 199 125 196617 jit.matrix 4 char 320 240;#P message 489 73 20 196617 90;#P message 468 73 20 196617 50;#P newex 468 50 45 196617 loadbang;#P flonum 56 71 54 9 0 0 100 3 55 55 55 153 153 255 222 222 222 0 0 0;#P newex 11 71 43 196617 r p3-s3;#P flonum 56 52 54 9 0 0 100 3 55 55 55 153 153 255 222 222 222 0 0 0;#P newex 11 52 43 196617 r p3-s2;#P flonum 56 33 53 9 0 0 100 3 55 55 55 153 153 255 222 222 222 0 0 0;#P newex 11 33 43 196617 r p3-s1;#P newex 294 79 113 196617 expr $f2 * 100. / $f1;#P number 181 535 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 129 535 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 85 535 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 33 535 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 112 666 27 196617 s p2;#B color 12;#P newex 129 556 62 196617 pack 0 0;#P newex 181 514 39 196617 * 240.;#P newex 129 514 39 196617 * 320.;#P newex 129 491 62 196617 unpack 0. 0.;#P newex 129 468 63 196617 playerxy p2;#B color 9;#P newex 16 666 27 196617 s p1;#B color 12;#P newex 33 556 62 196617 pack 0 0;#P newex 85 514 39 196617 * 240.;#P newex 33 514 39 196617 * 320.;#P newex 33 491 62 196617 unpack 0. 0.;#P newex 33 468 63 196617 playerxy p1;#B color 9;#P flonum 294 57 62 9 0 0 100 3 55 55 55 153 153 255 222 222 222 0 0 0;#P flonum 841 121 62 9 0 0 100 3 55 55 55 153 153 255 222 222 222 0 0 0;#P flonum 360 57 62 9 0 0 100 3 55 55 55 153 153 255 222 222 222 0 0 0;#P newex 360 36 61 196617 r p1-reveal;#B color 11;#P newex 841 72 64 196617 r p1-intrude;#B color 11;#P newex 294 36 51 196617 r p1-feed;#B color 11;#P flonum 686 330 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P number 649 330 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P flonum 611 330 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P number 574 330 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P comment 868 151 40 196617 intrude;#P comment 249 113 40 196617 feed;#P user uslider 841 150 18 128 101 1 0 0;#P newex 103 274 45 196617 loadbang;#P flonum 233 318 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 194 318 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P user jit.pwindow 59 363 42 32 0 1 0 0 1 0;#P toggle 116 300 32 0;#P newex 116 342 129 196617 heat_0117 swirl 100 0.01;#P newex 545 432 39 196617 * 0.01;#P flonum 545 452 35 9 0. 1. 3 3 0 0 0 255 235 141 222 222 222 0 0 0;#P newex 567 492 45 196617 intrude2;#P newex 538 625 85 196617 mouseandwindow;#P flonum 332 370 35 9 0. 1. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 332 391 48 196617 xfade \$1;#P newex 332 492 67 196617 jit.xfade;#P newex 116 382 53 196617 jit.pack;#P newex 294 200 34 196617 !- 1.;#P newex 294 221 39 196617 * 200.;#P user hslider 294 110 18 128 101 1 0 0;#P flonum 294 159 35 9 0 0 0 3 0 0 0 255 235 141 222 222 222 0 0 0;#P newex 294 137 39 196617 * 0.01;#P number 294 253 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P number 257 253 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P number 185 253 35 9 0 0 0 3 0 0 0 156 179 255 222 222 222 0 0 0;#P newex 155 253 27 196617 r p1;#B color 12;#P newex 228 253 27 196617 r p2;#B color 12;#P newex 155 287 123 196617 blackhole_0117 blackhole;#P user jit.pwindow 564 220 42 32 0 1 0 0 1 0;#P toggle 547 151 15 0;#P newex 547 170 62 1441802 qmetro 50;#P newex 478 299 27 196617 r p1;#B color 12;#P newex 514 301 27 196617 r p2;#B color 12;#P newex 521 350 105 196617 crack_0117 scar;#P newex 892 632 61 196617 s mouseinfo;#B color 12;#P user jit.pwindow 634 385 322 242 0 1 0 0 1 0;#P user jit.pwindow 693 221 42 32 0 1 0 0 1 0;#P comment 443 112 40 196617 reveal;#P user panel 234 102 276 31;#X brgb 210 170 170;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P user panel 835 143 77 207;#X brgb 210 170 170;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P comment 34 121 77 196617 position from..;#P comment 8 153 39 196617 sensor;#P hidden connect 135 0 136 0;#P fasten 129 0 133 0 53 223 21 223;#P connect 133 0 101 0;#P connect 101 0 57 0;#P connect 52 0 53 0;#P connect 53 0 54 0;#P connect 54 0 64 0;#P connect 64 0 56 0;#P connect 56 0 173 0;#P connect 173 0 161 0;#P connect 161 0 101 1;#P connect 100 0 99 0;#P fasten 165 0 129 0 119 148 53 148;#P hidden fasten 136 0 129 0 17 148 53 148;#P fasten 130 0 134 0 73 232 53 232;#P connect 161 0 172 0;#P connect 198 0 200 0;#P connect 200 0 199 0;#P connect 69 0 70 0;#P connect 71 0 72 0;#P connect 73 0 74 0;#P connect 186 0 188 0;#P connect 188 0 187 0;#P connect 187 0 35 0;#P fasten 165 0 130 0 119 148 73 148;#P hidden fasten 136 0 130 0 17 148 73 148;#P connect 33 0 187 1;#P fasten 163 0 161 1 210 611 83 611;#P connect 53 1 55 0;#P connect 55 0 65 0;#P connect 65 0 56 1;#P fasten 175 0 173 1 230 576 98 576;#P fasten 129 0 105 0 53 195 101 195;#P connect 105 0 108 0;#P fasten 134 0 102 0 53 263 23 263 23 641 117 641;#P connect 102 0 63 0;#P connect 103 0 105 1;#P connect 164 0 165 0;#P connect 38 0 34 0;#P connect 34 0 33 0;#P connect 33 0 25 0;#P connect 58 0 59 0;#P connect 59 0 60 0;#P connect 60 0 66 0;#P connect 66 0 62 0;#P connect 62 0 174 0;#P connect 174 0 162 0;#P connect 162 0 102 1;#P connect 33 0 25 1;#P fasten 130 0 106 0 73 192 139 192;#P connect 106 0 107 0;#P connect 148 0 149 0;#P connect 33 0 25 2;#P connect 162 0 171 0;#P connect 104 0 106 1;#P connect 16 0 14 0;#P connect 14 0 33 1;#P connect 149 0 150 0;#P connect 33 0 25 3;#P fasten 163 0 162 1 210 611 179 611;#P connect 51 0 148 0;#P connect 148 0 150 1;#P connect 59 1 61 0;#P connect 61 0 67 0;#P connect 67 0 62 1;#P connect 17 0 14 1;#P connect 198 0 196 0;#P connect 196 0 17 0;#P fasten 175 0 174 1 230 576 194 576;#P connect 176 0 177 0;#P connect 49 0 148 1;#P connect 36 0 33 2;#P connect 185 0 163 0;#P connect 184 0 163 0;#P connect 15 0 14 2;#P fasten 22 0 110 0 299 134 229 134;#P connect 183 0 175 0;#P connect 37 0 33 3;#P connect 124 0 117 0;#P connect 161 0 116 0;#P connect 116 0 97 0;#P connect 18 0 14 3;#P connect 117 0 116 1;#P connect 198 0 197 0;#P connect 197 0 18 0;#P connect 177 0 178 0;#P connect 161 0 118 0;#P connect 118 0 97 2;#P connect 158 0 14 4;#P connect 46 0 178 1;#P connect 124 0 119 0;#P connect 119 0 118 1;#P connect 190 0 192 0;#P connect 192 0 191 0;#P connect 191 0 189 0;#P connect 162 0 122 0;#P connect 122 0 97 4;#P connect 178 0 51 0;#P connect 150 0 68 0;#P fasten 76 0 22 0 473 97 299 97;#P fasten 112 0 22 0 217 97 299 97;#P connect 68 0 22 0;#P connect 22 0 20 0;#P connect 20 0 21 0;#P connect 21 0 24 0;#P connect 24 0 23 0;#P connect 23 0 19 0;#P connect 19 0 157 0;#P connect 159 0 157 0;#P connect 157 0 158 0;#P connect 85 0 191 1;#P connect 75 0 160 0;#P connect 160 0 159 0;#P connect 120 0 122 1;#P connect 124 0 120 0;#P connect 162 0 123 0;#P connect 123 0 97 6;#P fasten 21 0 28 0 299 184 337 184;#P connect 28 0 27 0;#P connect 27 0 26 0;#P fasten 25 0 26 0 121 415 337 415;#P connect 121 0 123 1;#P connect 179 0 49 0;#P connect 124 0 121 0;#P fasten 11 0 80 0 552 192 385 192;#P connect 80 0 81 0;#P fasten 97 0 98 0 238 650 383 650 383 527 391 527;#P connect 98 0 95 0;#P fasten 8 0 85 0 526 371 394 371;#P connect 86 0 85 0;#P connect 85 0 26 1;#P connect 49 0 68 1;#P connect 177 0 179 0;#P connect 126 0 90 0;#P connect 90 0 82 0;#P connect 82 0 81 1;#P connect 10 0 170 0;#P connect 167 0 169 0;#P connect 48 0 179 1;#P connect 127 0 88 0;#P connect 88 0 89 0;#P connect 89 0 87 0;#P connect 87 0 86 0;#P connect 75 0 76 0;#P connect 10 0 167 0;#P connect 75 0 77 0;#P connect 166 0 167 1;#P connect 9 0 168 0;#P connect 167 0 8 0;#P connect 168 0 8 1;#P connect 115 0 96 0;#P connect 96 0 109 0;#P connect 109 0 29 0;#P connect 166 0 168 1;#P connect 128 0 32 0;#P connect 32 0 31 0;#P fasten 75 0 12 0 473 71 552 71;#P connect 12 0 11 0;#P connect 11 0 79 0;#P connect 137 0 79 0;#P connect 79 0 83 0;#P fasten 81 0 84 0 385 276 552 276;#P connect 84 0 8 2;#P fasten 95 0 109 1 391 633 534 633 534 574 558 574;#P connect 78 0 8 3;#P connect 83 1 84 1;#P connect 79 0 13 0;#P fasten 26 0 30 0 337 522 559 522 559 485 572 485;#P connect 30 0 109 2;#P connect 42 0 8 4;#P connect 83 2 84 2;#P connect 43 0 8 5;#P connect 193 0 195 0;#P connect 195 0 194 0;#P connect 83 3 84 3;#P connect 44 0 8 6;#P connect 31 0 30 1;#P connect 109 0 194 1;#P connect 92 0 93 0;#P connect 91 0 43 0;#P connect 93 0 43 0;#P connect 138 0 137 0;#P connect 45 0 8 7;#P fasten 75 0 151 0 477 67 618 67;#P connect 151 0 139 0;#P connect 139 0 138 0;#P connect 140 0 138 1;#P fasten 194 0 6 0 593 612 628 612 628 381 640 381;#P fasten 75 0 152 0 654 67;#P connect 152 0 140 0;#P connect 141 0 138 2;#P connect 114 0 91 0;#P connect 142 0 78 0;#P fasten 11 0 78 0 552 192 685 192;#P fasten 75 0 153 0 690 67;#P connect 153 0 141 0;#P connect 114 0 92 0;#P connect 92 0 94 0;#P connect 94 0 45 0;#P connect 91 0 45 0;#P connect 78 0 5 0;#P connect 143 0 142 0;#P fasten 75 0 154 0 726 67;#P connect 154 0 144 0;#P connect 144 0 143 0;#P connect 145 0 143 1;#P fasten 75 0 155 0 762 67;#P connect 155 0 145 0;#P connect 146 0 143 2;#P fasten 75 0 156 0 798 67;#P connect 156 0 146 0;#P connect 182 0 147 0;#P fasten 77 0 50 0 494 97 828 97 828 115 846 115;#P fasten 113 0 50 0 825 118 846 118;#P connect 147 0 50 0;#P connect 50 0 39 0;#P connect 39 0 111 0;#P connect 6 1 7 0;#P connect 180 0 181 0;#P connect 181 0 182 0;#P connect 47 0 182 1;#P pop;