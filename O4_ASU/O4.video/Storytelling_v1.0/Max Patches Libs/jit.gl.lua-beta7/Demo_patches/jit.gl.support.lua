function support()
	local sortedFields = {}
	--get jit.gl.support fields
	local fields = getmetatable(jit.gl.support).fields
	
	for k in pairs(fields) do
		sortedFields[#sortedFields+1] = k
	end
	
	--sort fields in alphabetical order
	table.sort(sortedFields)
	
	--print field, value, and description
	for i, v in ipairs(sortedFields) do
		print("\n" .. v .. " " .. jit.gl.support[v] .. "\n" .. 
					fields[v].description)
					
		outlet(0, v)
	end
	
	
end

function check(extension)
	print(extension .. " " .. tostring(jit.gl.support[extension]))
end