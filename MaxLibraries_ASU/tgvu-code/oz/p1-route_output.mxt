max v2;#N vpatcher 466 152 1071 585;#P origin -167 -64;#P newex 247 272 169 9 toOSC-state.template p1 /tx/p1;#P comment 3 211 210 196617 xinwei@sponge.org - tgvu version 15.1.2003;#P newex 422 273 162 9 toOSC p1 p1-s18 /tx/p1/s24;#P newex 422 288 162 9 toOSC p1 p1-s19 /tx/p1/s25;#P newex 422 303 162 9 toOSC p1 p1-s20 /tx/p1/s26;#P newex 422 318 162 9 toOSC p1 p1-s21 /tx/p1/s27;#P newex 422 333 162 9 toOSC p1 p1-s22 /tx/p1/s28;#P toggle 422 43 15 0;#P hidden message 407 43 13 196617 0;#P hidden newex 407 22 50 196617 loadbang;#P toggle 267 44 15 0;#P hidden message 254 44 13 196617 1;#P hidden newex 255 24 50 196617 loadbang;#P newex 422 422 162 9 toOSC p1 p1-s34 /tx/p1/s34;#P newex 422 363 162 9 toOSC p1 p1-s30 /tx/p1/s30;#P newex 422 377 162 9 toOSC p1 p1-s31 /tx/p1/s31;#P newex 422 392 162 9 toOSC p1 p1-s32 /tx/p1/s32;#P newex 422 407 162 9 toOSC p1 p1-s33 /tx/p1/s33;#P comment 3 196 257 196617 nik@f0.am - 'port' to max + organised sensor numbers;#P comment 3 121 257 196617 You may use \, modify and/or distribute under the terms of the GNU General Public License. Please see the LICENSE file for the specific terms of the license.;#P comment 3 163 135 196617 copyright 2001 FoAM vzw.;#P comment 3 182 162 196617 pix@test.at - pd version;#P newex 422 348 162 9 toOSC p1 p1-s29 /tx/p1/s29;#P newex 267 64 148 9 toOSC p1 p1-s1 /tx/p1/s1;#P newex 267 79 148 9 toOSC p1 p1-s2 /tx/p1/s2;#P newex 267 94 148 9 toOSC p1 p1-s3 /tx/p1/s3;#P newex 267 109 148 9 toOSC p1 p1-s4 /tx/p1/s4;#P newex 267 124 148 9 toOSC p1 p1-s5 /tx/p1/s5;#P newex 267 139 148 9 toOSC p1 p1-s6 /tx/p1/s6;#P newex 267 154 148 9 toOSC p1 p1-s7 /tx/p1/s7;#P newex 267 169 148 9 toOSC p1 p1-s8 /tx/p1/s8;#P newex 267 184 148 9 toOSC p1 p1-s9 /tx/p1/s9;#P comment 281 42 116 196620 raw sensor data;#P comment 439 41 148 196620 cooked sensor data;#P newex 422 63 162 9 toOSC p1 p1-s10 /tx/p1/s10;#P newex 422 78 162 9 toOSC p1 p1-s11 /tx/p1/s11;#P newex 422 93 162 9 toOSC p1 p1-s12 /tx/p1/s12;#P newex 422 108 162 9 toOSC p1 p1-s13 /tx/p1/s13;#P newex 422 123 162 9 toOSC p1 p1-s14 /tx/p1/s14;#P newex 422 138 162 9 toOSC p1 p1-s15 /tx/p1/s15;#P newex 422 153 162 9 toOSC p1 p1-s16 /tx/p1/s16;#P newex 422 168 162 9 toOSC p1 p1-s17 /tx/p1/s17;#P newex 422 183 162 9 toOSC p1 p1-s18 /tx/p1/s18;#P newex 422 198 162 9 toOSC p1 p1-s19 /tx/p1/s19;#P newex 422 213 162 9 toOSC p1 p1-s20 /tx/p1/s20;#P newex 422 228 162 9 toOSC p1 p1-s21 /tx/p1/s21;#P newex 422 243 162 9 toOSC p1 p1-s22 /tx/p1/s22;#P newex 422 258 162 9 toOSC p1 p1-s23 /tx/p1/s23;#P comment 145 273 95 196618 state coefficients;#P comment 145 252 96 196618 enter/exit sensor;#P newex 247 250 161 9 toOSC-vision p1-s0 /tx/p1/s0;#P comment 2 37 198 196626 route output - p1;#P comment 3 74 195 196617 converts sensor data to be sent via OSC;#P hidden connect 40 0 41 0;#P hidden connect 41 0 42 0;#P hidden connect 42 0 29 0;#P hidden connect 42 0 28 0;#P hidden connect 42 0 27 0;#P hidden connect 42 0 26 0;#P hidden connect 42 0 25 0;#P hidden connect 42 0 24 0;#P hidden connect 42 0 23 0;#P hidden connect 42 0 22 0;#P hidden connect 42 0 21 0;#P hidden connect 43 0 44 0;#P hidden connect 44 0 45 0;#P hidden connect 45 0 18 0;#P hidden connect 45 0 17 0;#P hidden connect 45 0 16 0;#P hidden connect 45 0 15 0;#P hidden connect 45 0 14 0;#P hidden connect 45 0 13 0;#P hidden connect 45 0 12 0;#P hidden connect 45 0 11 0;#P hidden connect 45 0 10 0;#P hidden connect 45 0 9 0;#P hidden connect 45 0 8 0;#P hidden connect 45 0 7 0;#P hidden connect 45 0 6 0;#P hidden connect 45 0 5 0;#P hidden connect 45 0 50 0;#P hidden connect 45 0 49 0;#P hidden connect 45 0 47 0;#P hidden connect 45 0 46 0;#P hidden connect 45 0 30 0;#P hidden connect 45 0 38 0;#P hidden connect 45 0 37 0;#P hidden connect 45 0 36 0;#P hidden connect 45 0 35 0;#P hidden connect 45 0 39 0;#P pop;