max v2;#N vpatcher 24 214 408 660;#P flonum 288 330 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 213 317 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 302 286 43 196617 r p1-s2;#P newex 219 282 43 196617 r p1-s1;#P newex 133 251 38 196617 / 255.;#P newex 47 239 38 196617 / 255.;#P number 150 206 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 149 182 35 196617 !- 255;#P toggle 67 37 15 0;#P user GSwitch2 70 86 39 32 1 0;#P newex 70 61 62 196617 metro 2000;#P message 159 135 41 196617 0 2000;#P newex 207 139 41 196617 list 1 2;#P message 57 129 53 196617 255 2000;#P number 58 181 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 115 154 40 196617 line;#P newex 128 317 43 196617 s p1-s2;#P newex 45 313 43 196617 s p1-s1;#P connect 12 0 0 0;#P connect 3 0 12 0;#P connect 8 0 4 0;#P connect 2 0 3 0;#P connect 9 0 7 0;#P connect 7 0 8 0;#P connect 7 0 8 1;#P connect 6 0 2 0;#P connect 4 0 2 0;#P connect 13 0 1 0;#P connect 11 0 13 0;#P connect 2 0 10 0;#P connect 10 0 11 0;#P connect 8 1 6 0;#P connect 14 0 16 0;#P connect 15 0 17 0;#P pop;