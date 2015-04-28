require("mop")

out_mat = jit.matrix(9, "float32", 100, 1)
data = {attractor = {0., 0., 0.},
		emitter = {1., 0., 0.},
		timestep = 0.1,
		max_distance = 10,
		min_distance = 0.01,
		gravity = 0.4,
		velocity = 1.0}

function parameter(name, val)
	data[name] = val
end

for k in pairs(data) do
	_G[k] = function(val)
				parameter(k, val)
			end
end

function attractor(x, y, z)
	data.attractor = {x, y, z}
end

function emitter(x, y, z)
	data.emitter = {x, y, z}
end

function bang()
	velocity = math.random()
	mop.blackhole(data, out_mat, out_mat)
	outlet(0, "jit_matrix", out_mat.name)
end