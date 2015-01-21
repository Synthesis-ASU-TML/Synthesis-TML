max v2;#N vpatcher 86 55 1026 845;#P origin 0 -17;#P window setfont "Sans Serif" 9.;#P comment 367 -9 68 196617 toggle flux;#N comlet toggle flux;#P inlet 392 -41 24 0;#P toggle 177 476 15 0;#P hidden newex -2 775 99 196617 bgcolor 210 100 20;#N comlet i volume;#P inlet 632 -40 24 0;#N comlet jit.matrix video;#P outlet 98 734 34 0;#P newex 165 -16 55 196617 unpack 0 0;#N comlet l mouse x y;#P inlet 165 -40 24 0;#P newex 165 3 55 196617 pack 0 0 1;#P newex 165 21 74 196617 prepend mouse;#P newex 73 358 45 196617 loadbang;#B color 3;#N comlet toggle audio;#P inlet 438 -40 24 0;#N comlet toggle frame difference;#P inlet 232 -40 24 0;#N comlet jit.matrix video in;#P inlet 95 -40 24 0;#P message 209 169 26 196617 180;#P message 189 169 20 196617 90;#P message 174 169 14 196617 0;#P hidden newex 174 206 135 196617 expr ($f1/360.)*6.283185;#P flonum 174 188 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P hidden flonum 126 215 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P hidden message 126 209 45 196617 theta \$1;#P newex 114 229 109 196617 jit.rota @boundmode 4;#P comment 697 768 200 196617 Constructed by Tom Mays \, tmays@free.fr;#P message 328 114 42 196617 rate \$1;#P comment 531 598 10 196617 |;#P comment 531 611 10 196617 |;#P comment 531 624 10 196617 |;#P hidden newex 21 160 30 196617 del 1;#P hidden newex 21 180 52 196617 onebang 1;#P hidden newex 21 140 30 196617 sel 1;#P hidden message 21 200 69 196617 mouse 80 0 1;#P hidden newex 21 66 54 196617 t 12.5 1 0;#P hidden newex 21 47 45 196617 loadbang;#P comment 535 592 178 196617 --------------------------------->;#P comment 531 637 10 196617 |;#P comment 531 650 10 196617 |;#P comment 531 663 10 196617 |;#P comment 531 676 10 196617 |;#P comment 531 689 10 196617 |;#P comment 531 702 10 196617 |;#P comment 531 715 10 196617 |;#P comment 531 728 10 196617 |;#P comment 171 447 77 196617 vertical scan position (pixel);#P number 135 449 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P comment 631 335 242 196617 Turn on audio at bottom \, and adjust volume. (Reset DSP if necessary.);#P comment 631 316 242 196617 Turn on the vertical scan extraction.;#P comment 631 296 242 196617 Select color to scan (red by default).;#P comment 631 264 242 196617 Click on jit.pwindow to set vertical scan line position (center by default).;#P comment 631 243 242 196617 Turn on the frame difference \, adjust the threshold.;#P comment 631 224 242 196617 Turn on the frame motor.;#P comment 631 204 242 196617 Read a movie above.;#P comment 601 183 139 196617 Getting it running:;#P comment 632 118 211 196617 Frame difference stage of processing can be used to see and "hear" only what moves. Try raising the threshold to reduce the sound to sparse whistles.;#P window setfont "Sans Serif" 12.;#P comment 14 389 59 196620 vertical scan extract on/off;#P toggle 73 406 30 0;#P window setfont "Sans Serif" 9.;#P newex 97 447 27 196617 gate;#P window setfont "Sans Serif" 18.;#P comment 426 490 148 196626 extract vertical scan data;#P comment 427 355 130 196626 set/visualize vertical scan position;#P window setfont "Sans Serif" 9.;#P comment 628 673 35 196617 on/off;#P toggle 597 665 30 0;#P comment 20 300 91 196617 draw vertical white line at clicked position in pwindow;#P window setfont "Sans Serif" 18.;#P comment 429 55 122 196626 frame motor;#P window setfont "Sans Serif" 9.;#P flonum 328 97 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P comment 363 98 48 196617 qt rate;#P flonum 319 230 35 9 0. 1. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P comment 354 230 50 196617 threshold;#P comment 208 559 66 196617 that vertical line turned on its side (bottom=left \, top=right);#P comment 373 468 46 196617 choose color to scan;#N vpatcher 363 101 932 540;#P user ubumenu 288 158 60 196617 0 1 1 0;#X add pass;#X add *;#X add /;#X add +;#X add -;#X add +m;#X add -m;#X add %;#X add min;#X add max;#X add abs;#X add avg;#X add absdiff;#X add !pass;#X add !/;#X add !-;#X add !%;#X add &;#X add |;#X add ^;#X add ~;#X add >>;#X add <<;#X add &&;#X add ||;#X add !;#X add >;#X add <;#X add >=;#X add <=;#X add ==;#X add !=;#X add >p;#X add <p;#X add >=p;#X add <=p;#X add ==p;#X add !=p;#X add sin;#X add cos;#X add tan;#X add asin;#X add acos;#X add atan;#X add atan2;#X add sinh;#X add cosh;#X add tanh;#X add asinh;#X add acosh;#X add atanh;#X add exp;#X add exp2;#X add ln;#X add log2;#X add log10;#X add hypot;#X add pow;#X add sqrt;#X add ceil;#X add floor;#X add round;#X add trunc;#X add ignore;#X prefix_set 0 0 <none> 0;#P window setfont "Sans Serif" 9.;#P newex 313 179 72 196617 prepend op;#P user jit.pwindow 342 68 82 62 0 1 0 0 1 0;#P user jit.pwindow 400 309 82 62 0 1 0 0 1 0;#P user jit.pwindow 352 226 82 62 0 1 0 0 1 0;#P newex 242 360 128 196617 jit.matrix 4 char 320 240;#P newex 41 149 27 196617 * 2;#N comlet vertical line number;#P outlet 41 195 15 0;#N comlet matrix out;#P outlet 25 408 15 0;#N comlet matrix in;#P inlet 25 342 15 0;#P newex 114 375 75 196617 jit.op @op max;#N comlet smaller matrix out with line;#P outlet 114 409 15 0;#N comlet window right out;#P inlet 178 4 15 0;#P toggle 232 76 15 0;#P newex 68 102 27 196617 gate;#P newex 114 237 55 196617 swap;#P newex 114 215 27 196617 - 1;#P newex 114 259 100 196617 pack 0 0 val;#P newex 68 172 192 196617 t b i clear;#P newex 68 193 56 196617 Uzi 120;#P number 68 127 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P button 91 309 15 0;#P newex 114 309 75 196617 prepend setcell;#P newex 114 285 111 196617 append 0 255 255 255;#P newex 114 338 161 196617 jit.matrix addline 4 char 160 120;#P newex 178 54 65 196617 unpack 0 0 0;#P newex 178 30 63 196617 route mouse;#P connect 17 0 18 0;#P connect 6 0 20 0;#P connect 20 0 19 0;#P fasten 13 0 12 0 237 96 73 96;#P connect 12 0 6 0;#P connect 6 0 8 0;#P connect 8 0 7 0;#P connect 1 0 12 1;#P connect 7 1 5 0;#P connect 7 2 10 0;#P connect 10 0 11 0;#P connect 11 0 9 0;#P connect 9 0 3 0;#P connect 3 0 4 0;#P fasten 8 2 2 0 255 331 119 331;#P connect 4 0 2 0;#P connect 5 0 2 0;#P connect 17 0 16 0;#P connect 25 0 16 0;#P connect 16 0 15 0;#P connect 8 1 11 1;#P connect 11 1 9 1;#P connect 14 0 0 0;#P connect 0 0 1 0;#P connect 21 0 16 1;#P connect 1 2 13 0;#P connect 2 0 21 0;#P connect 26 1 25 0;#P connect 17 0 24 0;#P connect 2 0 22 0;#P connect 16 0 23 0;#P pop;#P newobj 114 301 52 196617 p vertline;#B color 6;#P user ubumenu 324 476 48 196617 0 1 1 0;#X add red;#X add green;#X add blue;#X prefix_set 0 0 <none> 0;#P user multiSlider 146 673 266 68 0. 255. 253 2665 47;#M frgb 255 0 0;#M brgb 255 255 255;#M rgb2 127 127 127;#P newex 146 745 92 196617 s fftfilt1-spectFun;#B color 11;#P comment 151 660 151 196617 bands 0-252 (0 Hz - 10853 Hz);#P user meter~ 732 568 812 581 100 0 168 0 104 104 104 255 153 0 255 0 0 217 217 0 153 186 0 12 3 3 3 3;#P newex 716 543 35 196617 noise~;#P newex 716 589 138 196617 pfft~ fft-filterinterp 1024 2;#B color 5;#P user jit.pwindow 91 560 15 122 0 1 0 0 1 0;#P user multiSlider 280 558 120 64 0. 256. 240 2921 15;#M frgb 255 0 0;#M brgb 0 0 0;#M rgb2 127 127 127;#P noclick;#P user meter~ 741 739 821 752 100 0 168 0 104 104 104 255 153 0 255 0 0 217 217 0 153 186 0 12 3 3 3 3;#P window setfont "Sans Serif" 18.;#P comment 566 638 120 196626 audio switch;#P window setfont "Sans Serif" 9.;#P newex 707 738 29 196617 dac~;#P user gain~ 716 625 43 76 158 0 1.071519 7.94321 10.;#P comment 9 486 104 196617 analyse red \, green or blue intensities in a vertical line through the image;#P user jit.pwindow 157 324 162 122 0 1 0 0 1 0;#P toggle 236 143 15 0;#P newex 236 163 27 196617 gate;#P comment 631 64 211 196617 Extract a vertical line from a moving image and use it to control an fft spectral filter with noise as a source. Just one way to "hear" and image.;#P comment 29 58 84 196617 adjust metro time as a function of frames/sec;#P comment 20 232 91 196617 prepare image for vertical analysis by letting through only what "moves";#P window setfont "Sans Serif" 18.;#P comment 429 128 60 196626 movie;#P window setfont "Sans Serif" 9.;#N vpatcher 213 257 1187 887;#P origin 0 -49;#P window setfont "Sans Serif" 9.;#P number 832 70 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P comment 489 29 56 196617 toggle flux;#N comlet toggle flux;#P inlet 464 21 21 0;#P newex 553 127 27 196617 t b l;#P user gswitch 464 188 41 32 1 0;#P newex 563 157 62 196617 jit.op @op -;#P message 764 89 90 196617 srcdimend \$1 239;#P message 675 89 85 196617 srcdimstart \$1 0;#P newex 588 113 390 196617 jit.matrix 4 char 1 240 @thru 1 @srcdimstart 0 0 @srcdimend 0 239 @usesrcdim 1;#P newex 675 66 111 196617 expr max($i1 - 1\\\, 0);#P comment 196 471 218 196617 pad list with zeros because scan line is 240 values and filter requires 253.;#P newex 42 456 35 196617 t l b;#P newex 42 495 35 196617 zl join;#P message 67 476 122 196617 0 0 0 0 0 0 0 0 0 0 0 0 0;#P comment 175 46 101 196617 vertical line position;#N comlet padded list f 253;#P outlet 42 519 15 0;#N comlet vert line number;#P inlet 129 21 21 0;#P newex 327 164 27 196617 + 1;#N comlet color (1-2-3);#P inlet 327 17 22 0;#N comlet vertical line list;#P outlet 327 298 15 0;#N comlet vertical line matrix;#P outlet -6 129 15 0;#P newex 174 346 33 196617 t b b;#P number 174 386 55 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 174 366 33 196617 timer;#P newex 59 405 125 196617 pack 0. 100;#P newex 59 428 80 196617 s fftfilt1-interp;#B color 11;#P newex 42 318 27 196617 t l b;#P toggle 59 349 15 0;#P newex 73 372 80 196617 s fftfilt1-tabsel;#B color 11;#P message 42 204 45 196617 plane \$1;#P newex 42 230 158 196617 jit.spill @plane 1 @listlength 240;#P message 218 73 90 196617 srcdimend \$1 239;#P number 129 45 45 9 0 319 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 129 73 85 196617 srcdimstart \$1 0;#P newex 42 99 390 196617 jit.matrix 4 char 1 240 @thru 1 @srcdimstart 0 0 @srcdimend 0 239 @usesrcdim 1;#P comment 83 260 218 196617 reverse list (so that the bottom is on the left).;#P newex 42 259 35 196617 zl rev;#P newex 327 207 61 196617 t b i;#P newex 327 268 65 196617 prepend frgb;#P number 327 146 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 327 229 44 196617 0 0 255;#P newex 327 247 61 196617 zl rot;#P comment 200 131 117 196617 choose which color data goes to audio fft filter;#N comlet matrix input;#P inlet 42 21 21 0;#P comment 363 135 55 196617 1 = red \; 2 = green \; 3 = blue \;;#P comment 64 26 35 196617 video;#P comment 353 24 56 196617 r g b;#P comment 626 152 131 196617 diff adjacent line-samples to get flux across line;#P connect 13 0 27 0;#P connect 4 0 13 0;#P fasten 14 0 13 0 134 93 47 93;#P fasten 16 0 13 0 223 93 47 93;#P fasten 30 0 18 0 332 195 47 195;#P fasten 43 0 17 0 469 225 47 225;#P lcolor 7;#P connect 18 0 17 0;#P connect 17 0 11 0;#P connect 11 0 21 0;#P connect 21 0 36 0;#P connect 36 0 35 0;#P connect 35 0 32 0;#P connect 21 1 20 0;#P connect 20 0 23 0;#P connect 23 0 22 0;#P connect 36 1 34 0;#P connect 34 0 35 1;#P connect 20 0 19 0;#P connect 31 0 15 0;#P connect 15 0 14 0;#P fasten 21 1 26 0 64 341 179 341;#P connect 26 0 24 0;#P connect 24 0 25 0;#P connect 25 0 23 1;#P connect 26 1 24 1;#P fasten 15 0 16 0 134 66 223 66;#P connect 29 0 8 0;#P connect 8 0 30 0;#P connect 30 0 10 0;#P connect 10 0 7 0;#P connect 7 0 6 0;#P connect 6 0 9 0;#P fasten 11 0 28 0 47 291 332 291;#P connect 9 0 28 0;#P connect 10 1 6 1;#P connect 45 0 43 0;#P fasten 13 0 43 1 47 181 484 181;#P fasten 42 0 43 2 568 180 499 180;#P fasten 13 0 44 0 47 124 558 124;#P connect 44 0 42 0;#P connect 39 0 42 0;#P fasten 4 0 39 0 47 95 593 95;#P lcolor 7;#P fasten 41 0 39 0 769 109 593 109;#P fasten 40 0 39 0 680 109 593 109;#P connect 44 1 42 1;#P fasten 15 0 38 0 134 63 680 63;#P connect 38 0 40 0;#P connect 38 0 47 0;#P pop;#P newobj 114 502 75 196617 p vertical_data;#B color 6;#P window setfont "Sans Serif" 18.;#P message 270 98 48 196626 read;#P window setfont "Sans Serif" 9.;#P newex 114 134 103 196617 jit.qt.movie 320 240;#B color 6;#P user jit.fpsgui 10 599 60 196617 0;#P user jit.pwindow 275 140 82 62 0 1 0 0 1 0;#P toggle 233 226 30 0;#N vpatcher 40 248 494 565;#P window setfont "Sans Serif" 9.;#P comment 335 159 50 196617 threshold;#N comlet threshold;#P inlet 318 158 15 0;#N comlet switch;#P inlet 111 27 15 0;#P comment 141 230 131 196617 multiply absdiff by what gets through threshold.;#P toggle 111 51 15 0;#P newex 75 136 27 196617 t l l;#P number 111 90 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 111 70 27 196617 + 1;#N comlet matrix input;#P inlet 75 89 15 0;#P outlet 40 266 15 0;#P flonum 318 180 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 75 230 63 196617 jit.op @op *;#P newex 128 203 61 196617 jit.op @op >;#P newex 75 175 85 196617 jit.op @op absdiff;#P comment 163 172 131 196617 absolute differece between this frame and the last;#P comment 193 206 50 196617 threshold;#P newex 40 115 45 196617 gate 2 1;#P comment 31 29 76 196617 "on" routes bang through processing \, "off" bypasses.;#P connect 11 0 1 0;#P connect 6 0 8 0;#P connect 1 0 8 0;#P connect 9 0 1 1;#P connect 1 1 12 0;#P connect 12 1 4 0;#P connect 4 0 6 0;#P connect 15 0 13 0;#P connect 13 0 10 0;#P connect 10 0 11 0;#P fasten 4 0 5 0 80 197 133 197;#P connect 5 0 6 1;#P fasten 12 0 4 1 80 164 155 164;#P fasten 7 0 5 1 323 199 184 199;#P connect 16 0 7 0;#P pop;#P newobj 114 267 89 196617 p framedifference;#B color 6;#P window setfont "Sans Serif" 18.;#P comment 429 217 100 196626 frame difference;#P window setfont "Sans Serif" 9.;#P comment 195 91 54 196617 ms/frame;#P flonum 146 89 48 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P comment 293 49 35 196617 motor;#P flonum 114 49 48 9 0.1 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P toggle 263 35 26 0;#N vpatcher 40 55 312 320;#N comlet motor switch;#P inlet 137 42 15 0;#P outlet 117 183 15 0;#N comlet frames/sec;#P inlet 102 103 15 0;#N comlet metro bangs out;#P outlet 34 209 15 0;#P window setfont "Sans Serif" 9.;#P flonum 102 123 48 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 102 141 45 196617 !/ 1000.;#P flonum 102 161 50 9 0.5 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P toggle 34 82 15 0;#P newex 34 182 78 196617 metro 2;#P comment 155 42 68 196617 motor switch;#P connect 9 0 2 0;#P connect 2 0 1 0;#P connect 1 0 6 0;#P connect 7 0 5 0;#P connect 5 0 4 0;#P connect 4 0 3 0;#P connect 3 0 1 1;#P connect 3 0 8 0;#P pop;#P newobj 114 68 75 196617 p frame_motor;#B color 6;#P comment 163 49 61 196617 frames/sec;#P comment 36 116 58 196617 basic movie player;#P comment 268 230 35 196617 on/off;#P comment 357 162 85 196617 <- unprocessed movie monitor;#P comment 702 638 13 196617 VOLUME;#P comment 317 348 46 196617 click on image to set vertical scan position;#P comment 416 673 100 196617 this is a display \, but also works to directly adjust spectral amplitudes (turn off vertical scan extract first).;#P comment 105 585 44 196617 matrix reduced to one vertical line;#P comment 153 583 53 196617 -------->;#P comment 152 639 230 196617 vertical line list sent to fft spectral filter editor.;#P comment 759 645 41 196617 <- 0 dB;#P comment 240 748 298 196617 >---------------------------------------------------------;#P comment 531 741 10 196617 |;#P comment 128 171 42 196617 rotate;#P window setfont "Sans Serif" 18.;#P comment 19 -67 287 196626 whispering Heights (Tom Mays);#P window setfont "Sans Serif" 9.;#P comment 311 -66 229 196617 modified by sxw as video operator \, live 4.2003 \, flux 9.2004;#P comment 466 -28 100 196617 toggle audio;#P comment 660 -28 100 196617 i volume;#P comment 260 -39 68 196617 toggle frame difference;#P comment 191 -42 38 196617 mouse x y;#P comment 5 -28 100 196617 jit.matrix video in;#P comment 196 477 34 196617 flux;#P fasten 35 0 32 0 119 544 15 544;#P hidden connect 93 0 94 0;#P hidden connect 23 0 96 0;#P lcolor 1;#P hidden connect 96 0 98 0;#P hidden connect 98 0 97 0;#P hidden connect 97 0 95 0;#P fasten 115 0 71 0 78 383 78 383;#P fasten 35 0 49 0 119 550 97 550;#P fasten 71 0 70 0 78 440 102 440;#P connect 42 0 120 0;#P hidden connect 94 0 24 0;#P lcolor 1;#P connect 24 0 22 0;#P fasten 102 0 33 0 333 131 119 131;#P fasten 34 0 33 0 275 131 119 131;#P connect 22 0 33 0;#P connect 33 0 104 0;#P hidden connect 105 0 104 0;#P fasten 112 0 104 0 100 177 119 177;#P lcolor 7;#P connect 104 0 29 0;#P connect 29 0 57 0;#P connect 57 0 70 1;#P fasten 70 0 35 0 102 472 119 472;#P hidden connect 106 0 105 0;#P hidden fasten 108 0 106 0 179 226 170 226 170 189 131 189;#P connect 57 1 82 0;#P fasten 82 0 35 1 140 482 140 482;#P fasten 22 1 26 0 184 87 151 87;#P connect 35 1 55 0;#P connect 55 0 54 0;#P fasten 30 0 29 1 238 259 158 259;#P fasten 42 1 57 1 313 453 366 453 366 297 161 297;#P hidden connect 95 0 57 1;#P lcolor 1;#P fasten 116 0 57 1 170 43 104 43 104 295 161 295;#P lcolor 15;#P fasten 56 0 35 2 329 498 161 498;#P connect 57 2 42 0;#P connect 118 0 119 0;#P connect 119 0 117 0;#P connect 117 0 116 0;#P hidden connect 111 0 107 0;#P hidden connect 110 0 107 0;#P connect 109 0 107 0;#P hidden connect 107 0 108 0;#P fasten 124 0 123 0 397 462 182 462;#P lcolor 6;#P connect 123 0 35 3;#P lcolor 6;#P fasten 23 0 22 1 268 86 192 86 192 65 184 65;#P fasten 61 0 29 2 324 263 197 263;#P connect 113 0 30 0;#P lcolor 3;#P hidden connect 94 1 41 0;#P lcolor 1;#P connect 41 0 40 0;#P fasten 33 0 40 1 119 159 224 159 224 137 258 137;#P fasten 40 0 31 0 241 183 269 183 269 137 281 137;#P fasten 35 2 48 0 183 546 285 546;#P hidden connect 94 2 56 0;#P lcolor 1;#P hidden connect 94 1 63 0;#P lcolor 1;#P connect 63 0 102 0;#P fasten 114 0 66 0 443 29 602 29;#P lcolor 3;#P connect 44 0 45 0;#P connect 66 0 45 0;#P connect 51 0 50 0;#P fasten 121 0 44 0 637 43 721 43;#P lcolor 7;#P connect 50 0 44 0;#P connect 44 0 45 1;#P connect 51 0 52 0;#P connect 44 0 47 0;#P pop;