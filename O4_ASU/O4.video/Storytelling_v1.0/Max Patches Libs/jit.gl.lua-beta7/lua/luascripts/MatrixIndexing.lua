--create matrix
mat = jit.matrix("data", 4, "char", 10, 10)

--get a matrix cell
function getcell(x, y)
	local val = mat:getcell(x, y)
	print("cell(" .. x .. ", " .. y .. ") = " .. table.concat(val, ", "))
	outlet(0, "bang")
end

--get a matrix row
function getrow(i)
	local row = mat[i]		--get a row of the matrix
	print("row " .. i .. ": " .. table.concat(row, ", "))
	outlet(0, "bang")
end

--get a matrix row
function setrow(i, ...)
	local row = {...}
	mat[i] = row			--set a row of the matrix
	print("row " .. i .. ": " .. table.concat(row, ", "))
	print("row " .. i .. ": " .. table.concat(mat[i], ", "))
	outlet(0, "bang")
end