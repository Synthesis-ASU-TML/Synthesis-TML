max v2;#N vpatcher 23 77 682 427;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P comment 4 57 419 196617 uses LObjects_Elsea/lobjects_10_06.ub/ldiv and RTC-lib_3.3/Lists/show;#P comment 411 281 146 196617 � 2001 - 2007 \, FoAM & TML;#P hidden newex 201 197 101 196617 bgcolor 134 217 213;#P comment 419 207 136 196617 3) press "start";#P comment 419 189 153 196617 2) press "open" to open movie;#P comment 419 172 136 196617 1) open 'playback' patcher;#P window setfont "Sans Serif" 18.;#P comment 419 143 100 196626 playback;#P user panel 411 137 184 91;#X brgb 228 173 173;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P comment 3 13 151 196626 sensor recorder;#P window setfont "Sans Serif" 9.;#P comment 4 43 419 196617 record sensor data into a quicktime file \, which can be replayed to simulate sensor input;#P user led 240 88 17 17 0 150;#P hidden newex 241 25 55 196617 metro 888;#P window setfont "Sans Serif" 18.;#N vpatcher 519 52 873 388;#P origin -266 0;#P toggle 31 126 15 0;#P window setfont "Sans Serif" 9.;#P newex 48 125 27 196617 gate;#P newex 179 157 49 196617 ldiv 255.;#P user jit.pwindow 29 143 126 78 0 1 0 0 1 0;#P newex 244 280 73 196617 list2sensor p6;#P newex 244 261 73 196617 list2sensor p5;#P newex 244 242 73 196617 list2sensor p4;#P newex 244 223 73 196617 list2sensor p3;#P newex 244 204 73 196617 list2sensor p2;#P newex 190 280 49 196617 zl slice 9;#P newex 190 261 49 196617 zl slice 9;#P newex 190 242 49 196617 zl slice 9;#P newex 190 223 49 196617 zl slice 9;#P newex 190 204 49 196617 zl slice 9;#P newex 190 185 49 196617 zl slice 8;#P newex 179 134 109 196617 jit.spill @listlength 54;#B color 5;#P newex 244 185 73 196617 list2sensor p1;#P outlet 9 292 15 0;#P flonum 172 34 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 216 34 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 216 54 43 196617 time \$1;#P message 172 54 42 196617 rate \$1;#P message 72 54 28 196617 read;#P message 142 54 27 196617 stop;#P message 108 54 31 196617 start;#P flonum 43 33 35 9 0.5 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P toggle 9 33 15 0;#P newex 9 53 44 196617 metro 2;#P newex 9 87 79 196617 jit.qt.movie 9 6;#P connect 2 0 1 0;#P fasten 5 0 0 0 147 80 14 80;#P fasten 8 0 0 0 221 80 14 80;#P fasten 6 0 0 0 77 80 14 80;#P fasten 7 0 0 0 177 80 14 80;#P fasten 1 0 0 0 14 83 14 83;#P fasten 4 0 0 0 113 80 14 80;#P connect 0 0 11 0;#P connect 27 0 25 0;#P connect 3 0 1 1;#P connect 28 0 27 0;#P connect 0 0 27 1;#P connect 10 0 7 0;#P connect 0 0 13 0;#P connect 13 0 26 0;#P connect 26 0 14 0;#P connect 14 1 15 0;#P connect 15 1 16 0;#P connect 16 1 17 0;#P connect 17 1 18 0;#P connect 18 1 19 0;#P connect 9 0 8 0;#P connect 14 0 12 0;#P connect 15 0 20 0;#P connect 16 0 21 0;#P connect 17 0 22 0;#P connect 18 0 23 0;#P connect 19 0 24 0;#P pop;#P newobj 200 153 101 196626 p playback;#P window setfont "Sans Serif" 9.;#N vpatcher 30 43 814 420;#P origin 0 7;#P window setfont "Sans Serif" 9.;#P newex 133 171 151 196617 append 50 raw lossless 1000;#P comment 181 21 456 196617 //codec types \; raw \, cinepak \, graphics \, animation \, video \, componentvideo \, jpeg \, mjpega \, mjpegb \, sgi \, planarrgb \, macpaint \, gif \, photocd \, qdgx \, avrjpeg \, opendmljpeg \, bmp \, winraw \, vector \, qd \, h261 \, h263 \, dvntsc \, dvpal \, dvprontsc \, dvpropal \, flc \, targa \, png \, tiff \, componentvideosigned \, componentvideounsigned \, cmyk \, microsoft \, sorenson \, indeo4 \, argb64 \, rgb48 \, alphagrey32 \, grey16 \, mpegyuv420 \, yuv420 \, sorensonyuv9 \; \; //codec qualities \; lossless \, max \, min \, low \, normal \, high \;;#P outlet 82 239 15 0;#P message 82 124 27 196617 stop;#P newex 82 65 40 196617 sel 0 1;#P inlet 82 35 15 0;#P button 133 118 15 0;#N vpatcher 346 146 826 554;#P window setfont "Sans Serif" 9.;#P newex 48 80 28 196617 t b b;#P button 48 173 15 0;#P newex 48 195 140 196617 pack sens 0 0 0 0 0 0;#P newex 120 149 65 196617 unpack 0 0 0;#P newex 48 149 65 196617 unpack 0 0 0;#P newex 48 230 230 196617 sprintf write %s%s%s%s_%s.%s.%s.mov;#P newex 48 126 84 196617 date;#P message 48 104 33 196617 date;#P message 92 104 34 196617 time;#P outlet 48 308 15 0;#P inlet 48 59 15 0;#P comment 123 64 147 196617 write filename in the format =>;#P comment 143 83 146 196617 <prefix>-<date>_<time>.mov;#P connect 2 0 12 0;#P connect 12 0 5 0;#P hidden connect 4 0 6 0;#P hidden connect 5 0 6 0;#P hidden connect 6 0 8 0;#P hidden connect 8 0 11 0;#P hidden connect 11 0 10 0;#P hidden connect 10 0 7 0;#P connect 7 0 3 0;#P hidden connect 8 2 10 1;#P hidden connect 8 0 10 2;#P connect 12 1 4 0;#P hidden connect 8 1 10 3;#P hidden connect 6 1 9 0;#P hidden connect 9 0 10 4;#P hidden connect 9 1 10 5;#P hidden connect 9 2 10 6;#P pop;#P newobj 133 151 49 196617 p datatag;#P connect 2 0 3 0;#P connect 3 0 4 0;#P connect 7 0 5 0;#P connect 4 0 5 0;#P connect 3 1 1 0;#P connect 1 0 0 0;#P connect 0 0 7 0;#P pop;#P newobj 211 117 124 196617 p nameTag+CodecSettings;#P comment 411 263 179 196617 nik@f0.am - added playback;#P comment 417 109 151 196617 3) Press record to start;#P comment 417 92 151 196617 2) Select players to record;#P message 6 82 100 196617 Player 1 - 6;#P toggle 23 101 15 0;#P toggle 40 101 15 0;#P toggle 57 101 15 0;#P toggle 74 101 15 0;#P toggle 91 101 15 0;#P toggle 6 101 15 0;#P hidden newex 6 125 96 196617 funnel 6;#N vpatcher 11 45 986 670;#P window setfont "Sans Serif" 9.;#P newex 861 44 50 196617 loadbang;#P newex 86 155 27 196617 gate;#P toggle 55 147 24 0;#P newex 55 127 27 196617 !- 1;#P comment 757 56 100 196617 Clock;#P newex 738 80 139 196617 b 6;#P inlet 738 56 15 0;#P inlet 27 56 15 0;#P newex 27 93 269 196617 spray 6;#P outlet 27 478 15 0;#P outlet 60 478 15 0;#P outlet 88 478 15 0;#P outlet 122 478 15 0;#P outlet 161 478 15 0;#P outlet 203 478 15 0;#P toggle 630 276 21 0;#P newex 630 368 242 196617 jit.glue @rows 1 @columns 9;#P newex 630 315 243 196617 sensor-unitrec p6-;#P newex 630 343 242 196617 playersensors2pixels;#P toggle 376 277 21 0;#P newex 376 368 241 196617 jit.glue @rows 1 @columns 9;#P newex 376 315 238 196617 sensor-unitrec p5-;#P newex 376 343 236 196617 playersensors2pixels;#P toggle 122 278 24 0;#P newex 122 368 241 196617 jit.glue @rows 1 @columns 9;#P newex 122 315 238 196617 sensor-unitrec p4-;#P newex 122 343 236 196617 playersensors2pixels;#P toggle 535 147 24 0;#P newex 535 237 241 196617 jit.glue @rows 1 @columns 9;#P newex 535 184 237 196617 sensor-unitrec p3-;#P newex 535 212 238 196617 playersensors2pixels;#P toggle 281 147 24 0;#P newex 281 237 241 196617 jit.glue @rows 1 @columns 9;#P newex 281 184 236 196617 sensor-unitrec p2-;#P newex 281 212 236 196617 playersensors2pixels;#P toggle 27 147 24 0;#P newex 27 237 241 196617 jit.glue @rows 1 @columns 9;#P newex 27 184 238 196617 sensor-unitrec p1-;#P newex 27 212 236 196617 playersensors2pixels;#P comment 47 56 100 196617 Players On/Off;#P connect 32 0 31 0;#P connect 31 0 4 0;#P connect 4 0 2 0;#P connect 2 0 1 0;#P connect 1 0 3 0;#P connect 3 0 30 0;#P connect 38 0 30 0;#P connect 2 1 1 1;#P connect 31 0 36 0;#P connect 36 0 37 0;#P connect 1 1 3 1;#P connect 7 0 29 0;#P connect 2 2 1 2;#P connect 1 2 3 2;#P connect 37 0 38 0;#P connect 11 0 28 0;#P connect 2 3 1 3;#P connect 34 0 38 1;#P connect 1 3 3 3;#P connect 31 3 16 0;#P connect 16 0 14 0;#P connect 14 0 13 0;#P connect 13 0 15 0;#P connect 15 0 27 0;#P connect 2 4 1 4;#P connect 1 4 3 4;#P connect 14 1 13 1;#P connect 13 1 15 1;#P connect 2 5 1 5;#P connect 19 0 26 0;#P connect 1 5 3 5;#P connect 14 2 13 2;#P connect 2 6 1 6;#P connect 13 2 15 2;#P connect 1 6 3 6;#P connect 14 3 13 3;#P connect 2 7 1 7;#P connect 23 0 25 0;#P connect 13 3 15 3;#P connect 14 4 13 4;#P connect 1 7 3 7;#P connect 2 8 1 8;#P connect 13 4 15 4;#P connect 14 5 13 5;#P connect 1 8 3 8;#P connect 2 9 1 9;#P connect 34 0 2 1;#P connect 13 5 15 5;#P connect 14 6 13 6;#P connect 31 1 8 0;#P connect 8 0 6 0;#P connect 6 0 5 0;#P connect 5 0 7 0;#P connect 13 6 15 6;#P connect 14 7 13 7;#P connect 6 1 5 1;#P connect 5 1 7 1;#P connect 13 7 15 7;#P connect 14 8 13 8;#P connect 6 2 5 2;#P connect 5 2 7 2;#P connect 13 8 15 8;#P connect 14 9 13 9;#P connect 34 3 14 1;#P connect 6 3 5 3;#P connect 5 3 7 3;#P connect 31 4 20 0;#P connect 20 0 18 0;#P connect 18 0 17 0;#P connect 17 0 19 0;#P connect 6 4 5 4;#P connect 5 4 7 4;#P connect 18 1 17 1;#P connect 17 1 19 1;#P connect 6 5 5 5;#P connect 5 5 7 5;#P connect 18 2 17 2;#P connect 6 6 5 6;#P connect 17 2 19 2;#P connect 5 6 7 6;#P connect 18 3 17 3;#P connect 6 7 5 7;#P connect 17 3 19 3;#P connect 18 4 17 4;#P connect 5 7 7 7;#P connect 6 8 5 8;#P connect 17 4 19 4;#P connect 18 5 17 5;#P connect 5 8 7 8;#P connect 6 9 5 9;#P connect 34 1 6 1;#P connect 17 5 19 5;#P connect 18 6 17 6;#P connect 31 2 12 0;#P connect 12 0 10 0;#P connect 10 0 9 0;#P connect 9 0 11 0;#P connect 17 6 19 6;#P connect 18 7 17 7;#P connect 10 1 9 1;#P connect 9 1 11 1;#P connect 17 7 19 7;#P connect 18 8 17 8;#P connect 10 2 9 2;#P connect 9 2 11 2;#P connect 17 8 19 8;#P connect 18 9 17 9;#P connect 34 4 18 1;#P connect 10 3 9 3;#P connect 9 3 11 3;#P connect 31 5 24 0;#P connect 24 0 22 0;#P connect 22 0 21 0;#P connect 21 0 23 0;#P connect 10 4 9 4;#P connect 9 4 11 4;#P connect 22 1 21 1;#P connect 21 1 23 1;#P connect 10 5 9 5;#P connect 9 5 11 5;#P connect 22 2 21 2;#P connect 10 6 9 6;#P connect 21 2 23 2;#P connect 9 6 11 6;#P connect 22 3 21 3;#P connect 10 7 9 7;#P connect 21 3 23 3;#P connect 22 4 21 4;#P connect 9 7 11 7;#P connect 10 8 9 8;#P connect 33 0 34 0;#P connect 39 0 34 0;#P connect 21 4 23 4;#P connect 22 5 21 5;#P connect 9 8 11 8;#P connect 10 9 9 9;#P connect 34 2 10 1;#P connect 21 5 23 5;#P connect 22 6 21 6;#P connect 21 6 23 6;#P connect 22 7 21 7;#P connect 22 8 21 8;#P connect 21 7 23 7;#P connect 22 9 21 9;#P connect 21 8 23 8;#P connect 34 5 22 1;#P pop;#P hidden newobj -190 150 190 196617 p Units;#P message 6 135 392 196617 stop;#B color 5;#P hidden newex 211 153 31 196617 show;#P toggle 211 81 29 0;#P hidden message -39 198 27 196617 stop;#P user jit.fpsgui 66 268 60 196617 0;#P hidden newex -173 197 129 196617 jit.qt.record 9 6 @interp 0;#P toggle 199 253 15 0;#P message 214 253 50 196617 interp \$1;#P user jit.fpsgui 6 268 60 196617 3;#P number 152 83 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P toggle 134 82 15 0;#P newex 134 105 50 196617 metro 10;#P user jit.pwindow 5 152 195 117 0 1 0 0 1 0;#P hidden newex -190 175 193 196617 jit.glue @rows 6 @columns 1;#P window setfont "Sans Serif" 20.;#P comment 257 83 142 196628 Record/Stop;#P window setfont "Sans Serif" 9.;#P comment 417 75 151 196617 1) Turn on metro (to monitor);#P comment 411 246 148 196617 hiaz@live.fm - intial version;#P window setfont "Sans Serif" 18.;#P comment 416 46 100 196626 record;#P user panel 411 43 184 91;#X brgb 228 173 173;#X frgb 0 0 0;#X border 0;#X rounded 0;#X shadow 0;#X done;#P hidden connect 20 0 19 0;#P hidden connect 19 0 5 0;#P hidden fasten 5 0 13 0 -185 211 -168 211;#P hidden connect 31 0 13 0;#P hidden connect 15 0 13 0;#P hidden connect 19 1 5 1;#P hidden connect 19 2 5 2;#P hidden connect 19 3 5 3;#P hidden connect 19 4 5 4;#P hidden connect 7 0 19 1;#P hidden connect 19 5 5 5;#P connect 21 0 20 0;#P hidden connect 17 0 18 0;#P hidden connect 5 0 6 0;#P hidden connect 11 0 6 0;#P hidden fasten 5 0 10 0 -185 225 11 225;#P connect 26 0 20 1;#P connect 25 0 20 2;#P connect 24 0 20 3;#P hidden fasten 5 0 14 0 -185 196 71 196;#P connect 23 0 20 4;#P connect 22 0 20 5;#P hidden connect 16 0 8 0;#P connect 8 0 7 0;#P connect 9 0 7 1;#P connect 16 0 31 0;#P hidden connect 31 0 17 0;#P hidden connect 12 0 11 0;#P hidden connect 33 0 34 0;#P hidden connect 16 0 33 0;#P pop;