max v2;#N vpatcher 32 73 1002 749;#P origin 22 0;#P comment 372 19 219 196626 trackingblob;#P comment 591 19 143 196617 Delphne Nain \, Yoichiro Serita � 2003 Topological Media Lab;#P message 664 494 175 196617 paintrect \$1 \$2 \$3 \$4 100 100 255;#P message 550 317 50 196617 153 101;#P newex 550 296 61 196617 prepend set;#P newex 513 92 27 196617 t l b;#P user jit.pwindow 598 194 82 62 0 1 0 0 1 0;#P user jit.pwindow 465 192 82 62 0 1 0 0 1 0;#P newex 599 265 79 196617 bounding;#P newex 466 267 79 196617 bounding;#P message 518 361 225 196617 frgb 255 255 255 \, moveto \$1 \$2 \, write A \, bang;#P message 561 116 23 196617 0 0;#P newex 513 143 229 196617 bounding;#P hidden newex 624 59 105 196617 bgcolor 177 170 255;#P message 651 386 202 196617 frgb 255 255 255 \, moveto \$1 \$2 \, write B;#P user jit.pwindow 105 181 82 62 0 1 0 0 1 0;#P newex 106 338 73 196617 jit.op @op min;#P user jit.pwindow 517 478 82 62 0 1 0 0 1 0;#P newex 518 447 110 196617 jit.lcd 4 char 320 240;#P message 728 411 90 196617 clear \, paintrect \$1 \$2 \$3 \$4 100 255 100;#P number 44 31 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 271 34 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P message 267 64 44 196617 time \$1;#P toggle 169 76 15 0;#P newex 169 103 27 196617 gate;#P user jit.pwindow 105 391 322 242 0 1 0 0 1 0;#P newex 106 155 73 196617 jit.op @op min;#P newex 220 83 80 1441802 sel 0 1;#P message 220 105 32 1441802 stop;#P message 255 105 38 1441802 start;#P newex 169 129 128 1441802 jit.qt.movie 320 240;#P comment 15 62 36 1310730 On/Off;#P newex 142 30 53 1441802 loadbang;#P newex 56 62 80 1441802 sel 0 1;#P message 142 52 103 1441802 read redball.mov;#P message 56 84 32 1441802 stop;#P message 91 84 38 1441802 start;#P newex 0 83 53 1441802 metro 50;#P toggle 0 61 15 0;#P newex 0 108 128 1441802 jit.qt.movie 320 240;#P connect 1 0 2 0;#P connect 2 0 0 0;#P fasten 5 0 0 0 147 104 5 104;#P fasten 3 0 0 0 96 104 5 104;#P fasten 4 0 0 0 61 104 5 104;#P connect 19 0 2 1;#P fasten 1 0 6 0 5 79 52 79 52 58 61 58;#P connect 6 0 4 0;#P connect 6 1 3 0;#P connect 0 0 13 0;#P connect 13 0 24 0;#P connect 24 0 23 0;#P connect 23 0 14 0;#P connect 7 0 5 0;#P connect 16 0 15 0;#P connect 5 0 9 0;#P connect 17 0 9 0;#P connect 15 0 9 0;#P fasten 11 0 9 0 225 125 174 125;#P fasten 10 0 9 0 260 125 174 125;#P connect 9 0 13 1;#P fasten 22 0 23 1 523 551 468 551 468 327 174 327;#P connect 2 0 15 1;#P connect 12 0 11 0;#P connect 12 1 10 0;#P connect 18 0 17 0;#P connect 27 0 32 0;#P connect 32 0 30 0;#P connect 27 1 30 1;#P fasten 24 0 34 0 111 264 370 264 370 81 518 81;#P connect 34 0 27 0;#P connect 30 4 29 0;#P connect 37 0 21 0;#P connect 29 0 21 0;#P connect 20 0 21 0;#P connect 25 0 21 0;#P connect 21 0 22 0;#P connect 30 4 35 0;#P connect 35 0 36 0;#P connect 34 1 28 0;#P connect 27 2 33 0;#P connect 33 0 31 0;#P connect 28 0 27 1;#P connect 27 3 31 1;#P connect 31 4 25 0;#P connect 31 5 37 0;#P connect 30 5 37 0;#P connect 27 5 20 0;#P pop;