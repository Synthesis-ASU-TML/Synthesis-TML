max v2;#N vpatcher 156 58 953 664;#N comlet pitch randomness;#P inlet 564 23 15 0;#N comlet sample position;#P inlet 482 25 15 0;#P hidden message 15 72 14 196617 2;#N comlet grain duration;#P inlet 523 24 15 0;#N comlet Output Gain (default value = .04);#P inlet 420 433 15 0;#N comlet R Audio Out;#P outlet 183 548 15 0;#N comlet L Audio Out;#P outlet 128 548 15 0;#P hidden newex 52 144 30 196617 sel 2;#P hidden newex 391 50 45 196617 pcontrol;#P hidden message 391 31 28 196617 open;#N vpatcher 56 170 694 703;#P origin 0 21;#N comlet pitch randomness;#P inlet 43 25 15 0;#P inlet 2 9 15 0;#P hidden message 453 314 14 196617 1;#P hidden newex 455 295 45 196617 loadbang;#N comlet grain duration;#P inlet 21 23 15 0;#P hidden newex 312 3 51 196617 closebang;#P hidden newex 568 306 35 196617 del 10;#P hidden newex 568 277 30 196617 sel 0;#P toggle 450 37 15 0;#P hidden newex 565 251 27 196617 gate;#P hidden message 562 145 14 196617 0;#P hidden button 562 125 15 0;#P hidden outlet 250 598 15 0;#P comment 384 164 71 196617 grain duration;#P flonum 384 179 53 9 1. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#N vpreset 42;#X append 1 2 12 421 66 number int 127 \; 13 422 134 number int 159 \; 14 336 26 flonum float 0.1 \; 15 47 26 flonum float 0.5 \; 20 141 384 flonum float 30. \; 21 220 384 flonum float;#X append 1 2 1.609999 \; 22 262 384 flonum float 0.250001 \; 32 198 21 flonum float 0.288 \; 39 364 211 flonum float 769.583496 \; 47 304 384 flonum float 0.5 \; 50 179 384 flonum float 20. \; 56 37 450;#X append 1 2 toggle int 1 \;;#X append 2 2 14 336 26 flonum float 0.33 \; 15 47 26 flonum float 3. \; 20 141 384 flonum float 5. \; 21 220 384 flonum float 0.12 \; 22 262 384 flonum float 0. \; 47 304 384 flonum float;#X append 2 2 0.5 \; 50 179 384 flonum float 50. \; 56 37 450 toggle int 1 \;;#X append 3 2 14 336 26 flonum float 0.1 \; 15 47 26 flonum float 0.5 \; 20 141 384 flonum float 30. \; 21 220 384 flonum float 1.609999 \; 22 262 384 flonum float 0.250001 \; 47 304 384 flonum float;#X append 3 2 0.5 \; 50 179 384 flonum float 100. \; 56 37 450 toggle int 1 \;;#X append 4 2 14 336 26 flonum float -1. \; 15 47 26 flonum float 1. \; 20 141 384 flonum float 100. \; 21 220 384 flonum float 2. \; 22 262 384 flonum float 0.4 \; 47 304 384 flonum float;#X append 4 2 0.5 \; 50 179 384 flonum float 100. \; 56 37 450 toggle int 1 \;;#X append 22 2 14 336 26 flonum float 0.1 \; 15 47 26 flonum float 0.5 \; 20 141 384 flonum float 30. \; 21 220 384 flonum float 1.609999 \; 22 262 384 flonum float 0.250001 \; 47 304 384 flonum float;#X append 22 2 0.5 \; 50 179 384 flonum float 20. \; 56 37 450 toggle int 1 \;;#X append 24 2 12 421 66 number int 127 \; 13 422 134 number int 159 \; 14 336 26 flonum float 0.1 \; 15 47 26 flonum float 0.5 \; 20 141 384 flonum float 30. \; 21 220 384 flonum float;#X append 24 2 1.609999 \; 22 262 384 flonum float 0.250001 \; 32 198 21 flonum float 0.288 \; 39 364 211 flonum float 769.583496 \; 47 304 384 flonum float 0.5 \; 50 179 384 flonum float 20. \; 56 37 450;#X append 24 2 toggle int 1 \;;#X append 42 2 12 421 66 number int 31 \; 13 422 134 number int 80 \; 14 336 26 flonum float 0.1 \; 15 47 26 flonum float 0.5 \; 20 141 384 flonum float 30. \; 21 220 384 flonum float;#X append 42 2 1.609999 \; 22 262 384 flonum float 0.250001 \; 32 198 21 flonum float 0.393333 \; 39 364 211 flonum float 0. \; 47 304 384 flonum float 0.5 \; 50 179 384 flonum float 20. \; 56 37 450;#X append 42 2 toggle int 1 \;;#P preset 405 339 75 68;#P hidden outlet 400 599 15 0;#P flonum 384 304 35 9 0. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P hidden newex 271 7 30 196617 del 5;#P hidden newex 215 481 32 196617 t b f;#P hidden button 379 106 15 0;#P message 65 23 82 196617 clear \, color 160;#P hidden outlet 351 599 15 0;#P hidden outlet 279 599 15 0;#P hidden outlet 187 597 15 0;#P flonum 211 364 50 9 0 0 160 3 0 0 0 221 221 221 222 222 222 0 0 0;#P hidden button 478 67 15 0;#P hidden newex 529 175 40 196617 mtr 2;#P hidden message 518 213 65 196617 LineTo \$1 \$2;#P hidden newex 81 462 45 196617 pack 0 0;#P hidden newex 165 454 75 196617 expr 300 - $i1;#P hidden outlet 136 599 15 0;#P flonum 21 198 35 9 0 0 160 3 0 0 0 221 221 221 222 222 222 0 0 0;#P hidden newex 165 559 32 196617 + 0.;#P hidden newex 165 534 33 196617 * 1.;#P hidden newex 165 506 38 196617 / 300.;#P hidden newex 214 505 31 196617 - 0.;#P hidden outlet 0 599 15 0;#P hidden newex 0 488 38 196617 / 300.;#P hidden newex 51 486 65 196617 r raw_length;#P hidden newex 0 531 33 196617 * 1.;#P comment 384 246 81 196617 pitch quantize;#P flonum 384 262 35 9 0. 1. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 384 220 35 9 0. 3. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 384 141 53 9 0. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P hidden message 492 98 41 196617 delay 0;#P message 384 60 50 196620 stop;#P message 384 35 50 196620 play;#P message 384 87 49 196620 record;#P flonum 26 47 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 26 336 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 134 422 35 9 0 300 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 66 421 35 9 0 300 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P hidden newex 66 396 78 196617 unpack;#P user lcd 65 46 307 307 1 1 0 0 0;#P comment 384 124 100 196617 position randomness;#P comment 384 204 94 196617 pitch randomness;#P comment 12 182 52 196617 pitch rate;#P comment 123 365 88 196617 position in sample;#P comment 0 49 27 196617 max;#P comment 0 336 24 196617 min;#P comment 267 365 21 196617 ms;#P comment 356 0 88 196620 record/play performance;#P comment 384 286 55 196617 output gain;#P comment 446 22 26 196617 loop;#P hidden fasten 12 0 26 0 71 448 5 448;#P connect 63 0 26 0;#P hidden connect 26 0 24 0;#P hidden connect 24 0 27 0;#P hidden connect 31 0 32 0;#P hidden connect 25 0 24 1;#P hidden connect 46 0 43 0;#P connect 43 0 10 0;#P hidden connect 36 0 10 0;#P hidden connect 37 1 11 0;#P hidden connect 10 0 11 0;#P hidden connect 11 0 12 0;#P hidden connect 12 0 35 0;#P hidden connect 13 0 35 1;#P hidden connect 11 1 13 0;#P hidden connect 31 0 33 0;#P hidden fasten 13 0 34 0 139 446 170 446;#P hidden connect 34 0 29 0;#P hidden connect 29 0 30 0;#P hidden connect 30 0 31 0;#P hidden connect 14 0 31 1;#P hidden connect 20 0 40 0;#P hidden fasten 28 0 30 1 219 528 193 528;#P hidden connect 24 0 39 0;#P hidden connect 45 0 28 0;#P hidden connect 15 0 28 0;#P hidden connect 14 0 45 0;#P hidden connect 45 1 28 1;#P hidden connect 50 0 52 0;#P hidden connect 44 0 46 0;#P hidden connect 21 0 41 0;#P hidden connect 22 0 42 0;#P hidden connect 17 0 44 0;#P hidden connect 16 0 44 0;#P hidden connect 58 0 17 0;#P hidden connect 59 0 18 0;#P connect 60 0 50 0;#P connect 64 0 21 0;#P hidden connect 47 0 48 0;#P hidden connect 62 0 49 0;#P connect 61 0 62 0;#P hidden connect 17 0 38 0;#P hidden connect 38 0 19 0;#P hidden connect 37 1 36 0;#P hidden connect 18 0 37 0;#P hidden connect 17 0 37 0;#P hidden connect 16 0 37 0;#P hidden connect 35 0 37 1;#P hidden connect 19 0 37 1;#P hidden connect 54 0 37 2;#P hidden connect 18 0 53 0;#P hidden connect 17 0 53 0;#P hidden connect 53 0 54 0;#P hidden connect 56 0 55 0;#P hidden connect 55 0 57 0;#P hidden connect 57 0 58 0;#P hidden connect 37 2 55 1;#P pop;#P newobj 482 43 92 196617 p Prism;#P newex 619 500 67 196617 s raw_length;#P comment 711 84 48 196617 pitch quantize;#P newex 146 194 39 196617 r rndm;#P newex 394 261 39 196617 s rndm;#P newex 502 271 27 196617 / 2.;#P newex 284 178 31 196617 - 0.;#P newex 422 179 27 196617 + 5.;#N vpatcher 484 364 884 664;#P outlet 122 210 15 0;#P outlet 61 208 15 0;#P newex 130 130 38 196617 / 127.;#P newex 130 173 33 196617 * 1.;#P newex 130 107 23 196617 abs;#P inlet 151 47 15 0;#P newex 130 82 27 196617 -;#P inlet 75 53 15 0;#P newex 75 135 33 196617 * 1.;#P newex 197 74 65 196617 r raw_length;#P newex 75 92 38 196617 / 127.;#P connect 2 0 9 0;#P connect 3 0 0 0;#P connect 0 0 2 0;#P connect 1 0 2 1;#P connect 7 0 10 0;#P connect 3 0 4 0;#P connect 4 0 6 0;#P connect 6 0 8 0;#P connect 8 0 7 0;#P connect 5 0 4 1;#P connect 1 0 7 1;#P pop;#P newobj 284 143 148 196617 p slider_adjuster;#P user rslider 284 111 148 21 128 1 0 14;#N vpatcher 50 40 450 340;#P newex 80 148 33 196617 sel 0.;#P outlet 80 251 15 0;#P inlet 58 29 15 0;#P newex 175 68 80 196617 r sample_length;#P newex 80 222 105 196617 *~ 1000;#P newex 80 126 39 196617 * 1.;#P newex 80 200 44 196617 phasor~;#P newex 80 178 85 196617 expr 1000. / $f1;#P newex 146 93 27 196617 t b f;#P newex 80 82 53 196617 expr 1. / $f1;#P newex 58 60 33 196617 sel 0.;#P connect 8 0 0 0;#P connect 0 1 1 0;#P fasten 2 0 5 0 151 118 85 118;#P connect 1 0 5 0;#P connect 5 0 10 0;#P connect 10 1 3 0;#P connect 3 0 4 0;#P connect 4 0 6 0;#P connect 6 0 9 0;#P fasten 2 1 5 1 168 122 114 122;#P fasten 7 0 2 0 180 91 151 91;#P fasten 7 0 6 1 180 138 180 138;#P pop;#P newobj 143 142 65 196617 p seq_engine;#N vpatcher 50 40 287 222;#P newex 60 83 38 196617 +~ 1.;#P outlet 60 142 15 0;#P inlet 108 31 15 0;#P newex 60 108 52 196617 *~ 0.;#P newex 60 60 38 196617 noise~;#P newex 102 82 27 196617 / 2.;#P connect 1 0 5 0;#P connect 5 0 2 0;#P connect 2 0 4 0;#P connect 3 0 0 0;#P fasten 0 0 2 1 107 103 107 103;#P pop;#P newobj 146 219 60 196617 p pos_rndm;#P flonum 656 115 34 9 0. 3. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 704 115 35 9 0. 1. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#N vpatcher 360 257 869 655;#P newex 54 84 45 196617 loadbang;#P inlet 272 27 15 0;#P inlet 142 31 15 0;#P flonum 272 162 35 9 0. 1. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P outlet 272 361 15 0;#P newex 272 275 93 196617 gate 2;#P message 317 248 14 196617 2;#P button 317 227 15 0;#P message 272 236 14 196617 1;#P newex 272 198 205 196617 sel 0.;#P newex 54 137 212 196617 expr (random (-1000\\\,1000) / 1000.)* $f2;#P newex 355 300 122 196617 expr int ($f1/$f2) * $f2;#P flonum 142 85 65 9 0. 3. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 272 337 50 196617 * 1.;#P newex 54 166 93 196617 expr pow(2.\\\,$f1);#P inlet 20 49 15 0;#P newex 54 111 35 196617 metro;#P comment 40 51 45 196617 duration;#P comment 159 66 100 196617 random width;#P comment 142 112 100 196617 0 ~ 3.;#P comment 311 164 41 196617 0 ~1.0;#P comment 207 180 100 196617 pitch quantize;#P connect 21 0 5 0;#P connect 5 0 11 0;#P connect 11 0 7 0;#P connect 19 0 9 0;#P connect 9 0 11 1;#P connect 20 0 18 0;#P connect 18 0 12 0;#P connect 12 0 13 0;#P fasten 15 0 16 0 322 269 277 269;#P connect 13 0 16 0;#P fasten 10 0 8 0 360 327 277 327;#P connect 16 0 8 0;#P connect 8 0 17 0;#P fasten 6 0 8 1 25 315 317 315;#P fasten 12 1 14 0 472 221 322 221;#P connect 14 0 15 0;#P connect 7 0 16 1;#P connect 16 1 10 0;#P connect 12 1 10 1;#P pop;#P newobj 608 171 106 196617 p random_pitch;#P newex 608 195 27 196617 sig~;#P comment 38 49 329 1073676302 |----------- playback control -----------|;#P message 581 326 95 196617 replace tongue_aiff;#P comment 358 457 92 1073676302 output gain;#P comment 233 322 35 131084 v2.0;#P button 392 418 15 0;#P comment 402 209 61 196617 position randomness;#P comment 547 51 161 1073676302 |------grain------|;#P comment 290 81 105 1073676300 manual control;#P flonum 143 118 39 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 22 142 27 196617 + 1;#P user umenu 22 114 109 1073676337 1 64 134 0;#X add auto sequence;#X add manual;#X add prism;#P newex 608 221 35 196617 s gdur;#P newex 383 507 34 196617 s gain;#P newex 535 272 40 196617 s gfreq;#P newex 53 278 31 196617 s pos;#P newex 183 423 50 196617 grain01~;#P newex 128 473 50 196617 grain01~;#P newex 207 473 50 196617 grain01~;#P newex 288 473 50 196617 grain01~;#P newex 264 423 50 196617 grain01~;#P newex 48 475 50 196617 grain01~;#P newex 103 423 50 196617 grain01~;#P newex 24 423 50 196617 grain01~;#P message 65 529 28 196617 open;#P message 183 397 35 196617 0.125;#P message 128 449 29 196617 0.75;#P message 207 449 35 196617 0.625;#P message 288 449 35 196617 0.875;#P message 244 254 29 196617 \$1 5;#P newex 53 226 60 196617 selector~ 2;#P flonum 383 480 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 264 397 35 196617 0.375;#P message 48 449 23 196617 0.5;#P newex 545 473 39 196617 r rndm;#P button 523 473 15 0;#P newex 523 499 75 196617 expr $f2 - $f1;#P flonum 394 237 40 9 0. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 53 251 103 196617 +~;#P newex 523 525 80 196617 s sample_length;#P message 372 343 16 196617 1;#N vpreset 9;#X append 1 2 18 222 244 flonum float 645.920837 \; 20 116 535 flonum float 50. \; 26 115 592 flonum float 1. \; 32 237 394 flonum float 0. \; 38 480 383 flonum float 0.4 \; 58 114 22 umenu int;#X append 1 2 0 \; 60 118 143 flonum float 1. \; 71 115 704 flonum float 0. \; 72 115 656 flonum float 0. \;;#X append 2 2 18 222 244 flonum float 640.920837 \; 20 116 535 flonum float 60. \; 26 115 592 flonum float 1. \; 32 237 394 flonum float 10. \; 38 480 383 flonum float 0.5 \; 58 114 22 umenu int;#X append 2 2 0 \; 60 118 143 flonum float 0.100001 \; 71 115 704 flonum float 0. \; 72 115 656 flonum float 0. \;;#X append 3 2 18 222 244 flonum float 655.920837 \; 20 116 535 flonum float 30. \; 26 115 592 flonum float 0.5 \; 32 237 394 flonum float 5. \; 38 480 383 flonum float 0.5 \; 58 114 22 umenu int;#X append 3 2 0 \; 60 118 143 flonum float -1.509998 \; 71 115 704 flonum float 0. \; 72 115 656 flonum float 0. \;;#X append 4 2 18 222 244 flonum float 620.920837 \; 20 116 535 flonum float 100. \; 26 115 592 flonum float 1. \; 32 237 394 flonum float 500. \; 38 480 383 flonum float 0.5 \; 58 114 22 umenu int;#X append 4 2 0 \; 60 118 143 flonum float 0.1 \; 71 115 704 flonum float 0. \; 72 115 656 flonum float 0. \;;#X append 5 2 18 222 244 flonum float 620.920837 \; 20 116 535 flonum float 100. \; 26 115 592 flonum float 1. \; 32 237 394 flonum float 5. \; 38 480 383 flonum float 0.4 \; 58 114 22 umenu int;#X append 5 2 0 \; 60 118 143 flonum float 1. \; 71 115 704 flonum float 0. \; 72 115 656 flonum float 0.5 \;;#X append 6 2 18 222 244 flonum float 0. \; 20 116 535 flonum float 100. \; 26 115 592 flonum float 1. \; 32 237 394 flonum float 5. \; 38 480 383 flonum float 0.4 \; 58 114 22 umenu int;#X append 6 2 0 \; 60 118 143 flonum float 1. \; 71 115 704 flonum float 0.25 \; 72 115 656 flonum float 0.7 \; 75 111 284 rslider list 47 47 \;;#X append 7 2 18 222 244 flonum float 570.920837 \; 20 116 535 flonum float 200. \; 26 115 592 flonum float 0.82 \; 32 237 394 flonum float 500. \; 38 480 383 flonum float 0.4 \; 58 114 22 umenu int;#X append 7 2 0 \; 60 118 143 flonum float 0.1 \; 71 115 704 flonum float 0.28 \; 72 115 656 flonum float 1. \;;#X append 8 2 18 222 244 flonum float 146.29895 \; 20 116 535 flonum float 50. \; 26 115 592 flonum float 1. \; 32 237 394 flonum float 5. \; 38 480 383 flonum float 0.4 \; 58 114 22 umenu int;#X append 8 2 1 \; 60 118 143 flonum float 1. \; 71 115 704 flonum float 0. \; 72 115 656 flonum float 0. \;;#X append 9 2 18 222 244 flonum float 2215.480713 \; 20 116 535 flonum float 100. \; 26 115 592 flonum float 1. \; 32 237 394 flonum float 30. \; 38 480 383 flonum float 0.5 \; 58 114 22 umenu int;#X append 9 2 2 \; 60 118 143 flonum float 1. \; 71 115 704 flonum float 0.250001 \; 72 115 656 flonum float 1.609999 \;;#P preset 372 365 50 38;#P newex 562 217 27 196617 t b f;#P flonum 592 115 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P button 523 426 15 0;#P newex 523 446 122 196617 info~ playobject;#P newex 372 318 45 196617 loadbang;#P message 103 397 29 196617 0.25;#P newex 535 248 116 196617 expr 1000. / $f1 * $f2;#P flonum 535 116 39 9 1. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 24 397 23 196617 0.;#P flonum 244 222 102 9 0. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 535 325 41 196617 replace;#P newex 554 421 90 196617 buffer~ wndw tri;#P newex 243 274 30 196617 line~;#P newex 535 360 105 196617 buffer~ playobject -1;#B color 14;#P comment 502 98 69 196617 duration (ms);#P comment 248 208 134 196617 play position in sample (ms);#P comment 143 102 85 196617 playback speed;#P comment 5 316 225 1048596 msp Granular Synthesis;#P comment 25 345 199 131084 nobuyasu sakodna / Jan 1999;#P comment 26 362 124 131081 sako@marin.or.jp;#P comment 579 84 63 196617 base pitch control;#P comment 143 81 129 1073676300 auto sequencing;#P comment 533 307 77 196617 load new sample;#P comment 636 361 100 196617 double-click to open buffer~ window;#P comment 556 405 80 196617 window shape;#P comment 397 80 100 196617 move slider or drag on buffer window;#P comment 21 99 100 196617 Control mode;#P comment 644 83 65 196617 pitch randomness;#P hidden connect 23 0 92 0;#P connect 92 0 58 0;#P connect 58 0 59 0;#P hidden connect 64 0 19 0;#P connect 19 0 46 0;#P hidden connect 64 0 36 0;#P connect 36 0 48 0;#P hidden connect 58 0 87 0;#P fasten 59 0 39 0 27 211 58 211;#P connect 39 0 31 0;#P connect 31 0 54 0;#P fasten 74 0 39 1 148 168 83 168;#P fasten 15 0 39 2 248 303 222 303 222 184 108 184;#P hidden connect 64 0 22 0;#P connect 22 0 47 0;#P hidden connect 64 0 43 0;#P connect 43 0 52 0;#P fasten 52 0 88 0 133 519 133 519;#P fasten 48 0 88 0 53 520 133 520;#P fasten 47 0 88 0 108 494 133 494;#P fasten 46 0 88 0 29 494 133 494;#P connect 60 0 74 0;#P connect 81 0 73 0;#P connect 73 0 31 1;#P hidden connect 64 0 44 0;#P connect 44 0 53 0;#P fasten 50 0 89 0 293 519 188 519;#P fasten 51 0 89 0 212 519 188 519;#P fasten 49 0 89 0 269 494 188 494;#P fasten 53 0 89 0 188 494 188 494;#P hidden connect 64 0 42 0;#P connect 42 0 51 0;#P connect 40 0 15 0;#P fasten 78 0 18 0 289 202 249 202;#P connect 18 0 40 0;#P hidden connect 64 0 37 0;#P connect 37 0 49 0;#P hidden connect 28 2 75 0;#P connect 75 0 76 0;#P hidden connect 84 0 78 0;#P connect 76 0 78 0;#P hidden connect 14 0 78 0;#P hidden connect 64 0 41 0;#P connect 41 0 50 0;#P fasten 79 0 78 1 507 292 381 292 381 173 310 173;#P connect 23 0 29 0;#P connect 29 0 28 0;#P hidden connect 84 6 38 0;#P connect 90 0 38 0;#P connect 38 0 56 0;#P hidden connect 87 0 85 0;#P hidden connect 85 0 86 0;#P connect 28 1 64 0;#P hidden connect 84 2 32 0;#P fasten 77 0 32 0 427 201 399 201;#P connect 32 0 80 0;#P connect 75 1 76 1;#P connect 76 1 77 0;#P connect 93 0 84 0;#P fasten 21 0 79 0 540 267 507 267;#P connect 91 0 84 1;#P fasten 67 0 25 0 586 353 528 353;#P hidden connect 23 0 25 0;#P fasten 17 0 25 0 540 352 528 352;#P connect 25 0 24 0;#P fasten 24 6 34 0 624 468 528 468;#P connect 35 0 33 0;#P connect 34 0 33 0;#P connect 33 0 30 0;#P hidden connect 84 3 20 0;#P fasten 20 0 21 0 540 207 540 207;#P connect 27 0 21 0;#P connect 21 0 55 0;#P connect 17 0 14 0;#P fasten 67 0 14 0 586 352 540 352;#P fasten 26 0 27 0 597 198 567 198;#P connect 94 0 84 2;#P fasten 24 6 33 1 624 475 624 475;#P hidden connect 84 1 26 0;#P connect 20 0 70 0;#P connect 70 0 69 0;#P connect 69 0 57 0;#P connect 24 6 83 0;#P fasten 27 1 21 1 584 241 646 241;#P hidden connect 84 4 72 0;#P connect 72 0 70 1;#P hidden connect 84 5 71 0;#P connect 71 0 70 2;#P pop;