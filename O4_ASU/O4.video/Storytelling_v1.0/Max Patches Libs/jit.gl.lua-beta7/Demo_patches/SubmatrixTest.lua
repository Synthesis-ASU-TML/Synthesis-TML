submat = jit.submatrix()
submat.offset = {40, 40}
submat.dim = {60, 60}

submat2 = jit.submatrix()
submat2.offset = {40, 40}
submat2.dim = {80, 80}

spreadOffset = {0, 0}

robcross = jit.new("jit.robcross")

function jit_matrix(name)
	submat:frommatrix(name)	
	submat2:frommatrix(name)	
	robcross:matrixcalc({submat.name}, {submat2.name})
	
	outlet(0, "jit_matrix", submat.name)
end

function offset(...)
	submat.offset = {...}
	spread(spreadOffset[1], spreadOffset[2])
end

function spread(x, y)
	spreadOffset = {x, y}
	submat2.offset = vec2.add(spreadOffset, submat.offset)
end