max v2;#N vpatcher 490 162 1026 627;#P outlet 17 419 15 0;#P inlet 17 49 15 0;#P newex 218 284 284 196617 jit.matrix @usesrcdim 1 @usedstdim 1 @srcdimstart 0 1 @srcdimend 319 239 @dstdimstart 0 0 @dstdimend 319 238;#P newex 143 218 284 196617 jit.matrix @usesrcdim 1 @usedstdim 1 @srcdimstart 1 0 @srcdimend 319 239 @dstdimstart 0 0 @dstdimend 318 239;#P newex 69 168 298 196617 jit.matrix @usedstdim 1 @dstdimstart 1 0 @dstdimend 320 239;#P newex 17 116 298 196617 jit.matrix @usedstdim 1 @dstdimstart 0 1 @dstdimend 319 240;#P newex 17 352 62 196617 jit.op @op +;#P newex 17 288 62 196617 jit.op @op +;#P newex 218 319 112 196617 jit.op @op * @val 0.25;#P newex 143 253 112 196617 jit.op @op * @val 0.25;#P newex 69 190 112 196617 jit.op @op * @val 0.25;#P newex 17 138 112 196617 jit.op @op * @val 0.25;#P newex 17 225 62 196617 jit.op @op +;#P connect 11 0 7 0;#P connect 7 0 1 0;#P connect 1 0 0 0;#P connect 0 0 5 0;#P connect 5 0 6 0;#P connect 6 0 12 0;#P fasten 11 0 8 0 22 85 74 85;#P connect 8 0 2 0;#P connect 2 0 0 1;#P fasten 3 0 5 1 148 280 74 280;#P fasten 4 0 6 1 223 344 74 344;#P fasten 11 0 9 0 22 81 148 81;#P connect 9 0 3 0;#P fasten 11 0 10 0 22 77 223 77;#P connect 10 0 4 0;#P pop;