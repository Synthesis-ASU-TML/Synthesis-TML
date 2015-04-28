cubelist = {}


function script_load()
	makeCube()
end

function dest_changed()
	makeCube()
end

function draw()
	gl.Color(1., 1., 0., 1.)
	gl.Begin("LINES")
		gl.Vertex(-1., 0., 0.)
		gl.Vertex(1., 0., 0.)
	gl.End()
	
	gl.Enable("LIGHTING")
	gl.Enable("LIGHT0")
	
	gl.Enable("NORMALIZE")
		
	local mv = {0., 0., 0., 1.}
	local red = {1., 0., 0., 1.}
	gl.Material("FRONT_AND_BACK", "DIFFUSE", red);
	gl.Material("FRONT_AND_BACK", "AMBIENT", red);
	gl.Material("FRONT_AND_BACK", "SPECULAR", mv);
	gl.Material("FRONT_AND_BACK", "EMISSION", mv);
	gl.Material("FRONT_AND_BACK", "SHININESS", 0.);
	
	
	gl.Rotate(45, 1., 1., 0.)
	gl.Scale(0.1, 0.1, 0.1)
	gl.CallList(cubelist[this.context])
	
end

function makeCube()
	if(this.context ~= 0 and cubelist[this.context] == nil) then
		print("Making Cube")
		local points = {[0] =	{-1, 	-1, 	-1},
								{-1, 	-1, 	1},
								{-1, 	1, 		-1},
								{-1, 	1,	 	1},
								{1, 	-1, 	-1},
								{1, 	-1, 	1},
								{1, 	1, 		-1},
								{1, 	1, 		1}
					   }
	
		local normals = {	{-1, 	0, 		0},
							{0, 	0, 		-1},
							{1, 	0, 		0},
							{0, 	0, 		1},
							{0, 	-1, 	0},
							{0, 	1, 		0}
						}
				   
		local indices = {	{0, 1, 3, 2},	--left
							{4, 0, 2, 6},	--front
							{5, 4, 6, 7},	--right
							{1, 5, 7, 3},	--back
							{4, 5, 1, 0},	--bottom
							{2, 3, 7, 6}	--top
						}
		
		cubelist[this.context] = gl.GenLists(1)
		print(cubelist[this.context])
		gl.NewList(cubelist[this.context], "COMPILE")
			gl.Begin("QUADS")			
				for i, v in ipairs(indices) do
					gl.Normal(normals[i])
					
					for j, v in ipairs(indices[i]) do
						gl.Vertex(points[v])
					end
				end
			gl.End()
		gl.EndList()
	end
end