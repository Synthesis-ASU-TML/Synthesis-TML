--internal matrix
mat = jit.matrix(4, "char", 320, 240)

--jit.xfade
xfade = jit.new("jit.xfade")
xfade.xfade = 0.8

--jit.gl.videoplane (contex set based on context of jit.gl.lua object)
vplane = jit.new("jit.gl.videoplane", this.drawto)
vplane.automatic = 0
vplane.scale = {0.6666, 0.5, 1.}
vplane.color = {1., 1., 1., 1.}
vplane.blend_enable = 1
vplane.depth_enable = 0
vplane.dim = {2., 2.}

--jit.gl.texture
tex = jit.new("jit.gl.texture", this.drawto)

function loadbang()
	print(tostring(this) .. " loadbang")
end

function closebang()
	print(tostring(this) .. " closebang")
end

function script_load()
	print(tostring(this) .. " script_load")
end

function dest_changed()
	print(tostring(this) .. " dest_changed")
end

function dest_changed()
	print(tostring(this) .. " dest_changed")
end

function dest_closing()
	print(tostring(this) .. " dest_closing")
end

function make_elem_pos(num)
	elem_pos = {}
	
	for i=1, num do
		elem_pos[i] = {	3.*math.random()-1.5, 
						3.*math.random()-1.5, 
						-2.*math.random()}
	end
end


counter = 0
vspeed = 1.

num_elems = 3
elem_pos = {}
make_elem_pos(num_elems)

function speed(val)
	vspeed = val
end

function elements(val)
	num_elems = val
	
	if(num_elems < 1) then
		num_elems = 1
	end
	
	make_elem_pos(num_elems)
end


function draw()
	for i=1, num_elems do
		gl.PushMatrix()
			gl.Translate(	elem_pos[i][1],
							elem_pos[i][2],
							elem_pos[i][3])
			draw_element()
		gl.PopMatrix()
	end
	
	counter = counter+1
end

function draw_element()
	--send current matrix to the texture
	tex:jit_matrix(mat.name)
	
	gl.Enable("BLEND")
	gl.Color(1., 1., 1., 0.5)
	
	--scale videoplane and bind texture
	--using drawraw() instead of draw() so that
	--OpenGL state changes minimally for efficiency
	gl.Enable("DEPTH_TEST")
	
	gl.PushMatrix()
		gl.Translate(0., 0., -0.2)
		gl.Scale(vplane.scale[1], vplane.scale[2], vplane.scale[3])
		
		
		jit.gl.bindtexture(tex.name, 0)
			vplane:drawraw()
		jit.gl.unbindtexture(tex.name, 0)
	gl.PopMatrix()
	
	gl.ShadeModel("SMOOTH")
	
	gl.PushMatrix()
		gl.Rotate(counter*vspeed, 0., 0., 1.)
		gl.Begin("LINE_LOOP")
			gl.Color(1., 1., 0., 1.)
			gl.Vertex(-1., 0., 0.)
			
			gl.Color(0., 0., 1., 1.)
			gl.Vertex(1., 0., 0.)
			
			gl.Color(1., 1., 0., 1.)
			gl.Vertex(1., 0., -0.5)
			
			gl.Color(0., 0., 1., 1.)
			gl.Vertex(-1., 0., -0.5)
		gl.End()
	gl.PopMatrix()
end

function jit_matrix(name)
	xfade:matrixcalc({name, mat}, mat)
	outlet(0, "jit_matrix", mat.name)
end

function blur(val)
	xfade.xfade = val
end