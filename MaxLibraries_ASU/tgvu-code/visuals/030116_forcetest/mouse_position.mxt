max v2;#N vpatcher 503 154 867 498;#P origin 70 0;#P comment 75 40 213 196626 mouse_position;#P comment 74 70 143 196617 Yoichiro Serita � 2003 Topological Media Lab;#P newex -4 40 61 196617 r mouseinfo;#B color 12;#P comment 65 290 100 196617 position by mouse;#P newex -37 282 32 196617 s np1;#B color 12;#P newex -4 282 32 196617 s np2;#B color 12;#P newex -37 257 43 196617 gate 2;#P number -37 234 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 25 199 120 196617 if $i1 < $i2 then 1 else 2;#P newex 43 124 35 196617 r pos1;#B color 12;#P newex 25 149 28 196617 Lsub;#P newex 25 174 42 196617 L2norm;#P newex 153 124 35 196617 r pos2;#B color 12;#P newex 135 149 28 196617 Lsub;#P message -4 89 35 196617 \$1 \$2;#P newex 135 174 42 196617 L2norm;#P newex -4 63 63 196617 route mouse;#P fasten 8 0 9 0 30 228 -32 228;#P connect 9 0 10 0;#P connect 10 0 12 0;#P connect 14 0 0 0;#P connect 0 0 2 0;#P connect 2 0 10 1;#P connect 10 1 11 0;#P fasten 2 0 6 0 1 113 30 113;#P connect 6 0 5 0;#P connect 5 0 8 0;#P connect 7 0 6 1;#P fasten 2 0 3 0 1 113 140 113;#P connect 3 0 1 0;#P connect 1 0 8 1;#P connect 4 0 3 1;#P pop;