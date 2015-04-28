require("mop")

out_mat = jit.matrix(4, "char", 320, 240)
data = { maxthresh = 200,
		maxresult = 200,
		minthresh = 60,
		minresult = 120}

function parameter(name, val)
	data[name] = val
end

for k in pairs(data) do
	_G[k] = function(val)
				parameter(k, val)
			end
end

function jit_matrix(name)
	mop.solarize(data, name, out_mat)
	outlet(0, "jit_matrix", out_mat.name)
end