max v2;#N vpatcher 40 55 422 386;#P newex 187 163 59 196617 s $1-group;#P newex 188 143 52 196617 s $1-solo;#P newex 300 193 219 196617 prepend player-state-route: unknown state $1;#P newex 297 212 30 196617 print;#P newex 16 170 75 196617 s $1-excavate;#P newex 16 152 62 196617 s $1-spawn;#P newex 16 134 63 196617 s $1-reveal;#P newex 16 116 53 196617 s $1-feed;#P inlet 16 22 15 0;#P newex 16 98 65 196617 s $1-intrude;#P newex 16 66 285 196617 route /intrude /feed /reveal /spawn /excavate /solo /group;#P comment 47 22 167 196617 routing for player state messages;#P comment 40 35 284 196617 13.1.03 xinwei@sponge.org - set back to oold topology;#P connect 4 0 2 0;#P connect 2 0 3 0;#P connect 2 1 5 0;#P connect 2 2 6 0;#P connect 2 3 7 0;#P connect 2 4 8 0;#P connect 2 6 12 0;#P connect 2 5 11 0;#P connect 10 0 9 0;#P connect 2 7 10 0;#P pop;