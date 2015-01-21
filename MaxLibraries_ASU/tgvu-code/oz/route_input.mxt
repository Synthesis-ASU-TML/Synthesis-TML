max v2;#N vpatcher 161 266 1102 690;#P origin -75 22;#P newex 755 55 34 196617 !- 1.;#P flonum 746 27 35 9 0. 1. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 715 102 95 196617 pack 0. 0. 0. IFR p1;#P hidden newex 387 207 25 196617 lb 1;#P toggle 445 206 15 0;#P hidden newex 415 206 27 196617 gate;#P newex 39 268 85 196617 print route_input;#P toggle 21 269 15 0;#P hidden newex 39 248 27 196617 gate;#P hidden newex 438 244 27 196617 gate;#P newex 415 270 123 196617 print route_input_alphas:;#N vpatcher 40 55 595 387;#P newex 447 90 85 196617 print route_input;#P toggle 429 91 15 0;#P hidden newex 447 70 27 196617 gate;#P inlet 118 42 15 0;#P newex 118 91 55 196617 sprintf %s;#P newex 118 70 49 9 route /1;#P newex 118 113 208 9 unpack 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.;#P newex 23 148 64 9 pack 0. 0. 0.;#P newex 23 178 39 9 s p1-s9;#P newex 104 148 64 9 pack 0. 0. 0.;#P newex 104 178 39 9 s p2-s9;#P newex 190 150 64 9 pack 0. 0. 0.;#P newex 273 150 64 9 pack 0. 0. 0.;#P newex 359 149 64 9 pack 0. 0. 0.;#P newex 359 179 39 9 s p5-s9;#P newex 273 180 39 9 s p4-s9;#P newex 190 180 39 9 s p3-s9;#P comment 261 35 160 196617 xinwei - added hyphens for txoom;#P connect 11 0 10 0;#P connect 10 0 9 0;#P connect 11 1 10 1;#P connect 11 2 10 2;#P connect 11 3 8 0;#P connect 8 0 7 0;#P connect 14 0 12 0;#P connect 12 0 13 0;#P connect 13 0 11 0;#P connect 11 4 8 1;#P connect 11 5 8 2;#P connect 11 6 6 0;#P connect 6 0 1 0;#P connect 11 7 6 1;#P connect 11 8 6 2;#P connect 11 9 5 0;#P connect 5 0 2 0;#P connect 11 10 5 1;#P connect 11 11 5 2;#P connect 11 12 4 0;#P connect 4 0 3 0;#P connect 11 13 4 1;#P connect 11 14 4 2;#P hidden connect 16 0 15 0;#P hidden connect 15 0 17 0;#P fasten 14 0 15 1 123 61 469 61;#P lcolor 6;#P pop;#P newobj 321 132 68 196617 p route-room;#P hidden newex 284 250 27 196617 gate;#P newex 284 271 104 196617 print route_input_tg:;#P toggle 394 271 15 0;#P comment 419 95 185 196617 xinwei - filter for /tg player/sensors;#P newex 171 61 92 196617 OSC-route /tg /tx;#P comment 419 112 154 196617 vinny - Flash sends /tx to Oz;#P newex 463 206 61 196617 s eermInput;#P newex 632 151 52 196617 append p5;#P newex 574 151 52 196617 append p4;#P newex 516 151 52 196617 append p3;#P newex 458 151 52 196617 append p2;#P newex 400 151 52 196617 append p1;#P newex 400 127 302 196617 route /p1/alphas /p2/alphas /p3/alphas /p4/alphas /p5/alphas;#P message 400 183 249 196617 TokenSetSimplex \$5 \$4 \, TokenSetCoord \$5 \$1 \$2 \$3;#P newex 690 151 152 196617 print route_input_tx:unrouted::;#P newex 149 204 81 196617 route_player p6;#P newex 300 21 25 196617 lb 1;#P inlet 282 21 15 0;#P toggle 282 52 15 0;#P comment 418 79 162 196617 nik@f0.am - initial version;#P comment 419 21 257 196617 You may use \, modify and/or distribute under the terms of the GNU General Public License. Please see the LICENSE file for the specific terms of the license.;#P comment 419 63 135 196617 copyright 2001 FoAM vzw.;#P newex 149 187 81 196617 route_player p5;#P comment 230 190 46 196617 player 5;#P newex 149 173 81 196617 route_player p4;#P comment 230 176 46 196617 player 4;#P newex 149 159 81 196617 route_player p3;#P comment 230 161 46 196617 player 3;#P newex 149 144 81 196617 route_player p2;#P comment 229 145 46 196617 player 2;#P newex 149 130 81 196617 route_player p1;#P newex 104 95 160 196617 OSC-route /1 /2 /3 /4 /5 /6 /0;#P outlet 122 238 15 0;#P inlet 104 34 15 0;#P comment 229 131 46 196617 player 1;#P comment 179 33 98 196617 float or scaled int?;#P comment 301 52 82 196617 UNcheck to let data thru;#B color 14;#P comment 527 207 100 196617 to dynamics-eerm;#P comment 169 47 100 196617 should gate for /tx;#B color 5;#P hidden connect 43 0 42 0;#P hidden connect 42 0 44 0;#P fasten 5 0 42 1 109 77 61 77;#P lcolor 4;#P connect 34 0 7 0;#P connect 23 0 6 0;#P connect 16 0 6 0;#P connect 14 0 6 0;#P connect 12 0 6 0;#P connect 10 0 6 0;#P connect 8 0 6 0;#P connect 7 0 8 0;#P connect 7 1 10 0;#P connect 7 2 12 0;#P connect 7 3 14 0;#P connect 7 4 16 0;#P connect 7 5 23 0;#P connect 5 0 34 0;#P fasten 20 0 8 1 287 122 225 122;#P fasten 20 0 10 1 287 122 225 122;#P fasten 20 0 12 1 287 122 225 122;#P fasten 20 0 14 1 287 122 225 122;#P fasten 20 0 16 1 287 122 225 122;#P fasten 20 0 23 1 287 122 225 122;#P connect 22 0 20 0;#P connect 21 0 20 0;#P hidden fasten 36 0 38 0 399 236 281 236 281 244 289 244;#P hidden connect 38 0 37 0;#P fasten 34 0 38 1 176 86 306 86;#P lcolor 3;#P fasten 7 6 39 0 259 116 326 116;#P fasten 34 1 26 0 191 89 405 89;#P connect 26 0 27 0;#P fasten 48 0 25 0 720 145 847 145 847 177 405 177;#P connect 28 0 25 0;#P connect 29 0 25 0;#P connect 30 0 25 0;#P connect 31 0 25 0;#P connect 27 0 25 0;#P hidden fasten 46 0 45 0 450 226 428 226 428 201 420 201;#P hidden connect 41 0 40 0;#P hidden connect 25 0 45 1;#P hidden fasten 36 0 41 0 399 236 428 236 428 241 443 241;#P hidden connect 47 0 46 0;#P hidden fasten 25 0 41 1 405 228 460 228;#P connect 26 1 28 0;#P hidden fasten 45 0 32 0 420 225 460 225 460 200 468 200;#P connect 26 2 29 0;#P connect 26 3 30 0;#P connect 26 4 31 0;#P connect 26 5 24 0;#P lcolor 3;#P connect 49 0 48 0;#P connect 50 0 48 1;#P connect 49 0 50 0;#P pop;