scene = jit.new("jit.gl.texture", this.drawto)
scene.dim = {1024, 768}
scene.name = "scene"

--[[
wobbly = jit.new("jit.gl.slab", this.drawto)
wobbly.file = "td.wobble.jxs"
wobbly.dim = scene.dim
wobbly:sendoutput("name", "jesus")
--]]

---[[
vplane = jit.new("jit.gl.videoplane", this.drawto)
vplane.automatic = 0
vplane.transform_reset = 2
--vplane.texture = wobbly.out_name	--show the output of wobbly
vplane.texture = scene.name
--]]

angle = 0

function dest_changed()
	print("dest_changed")
end

function dest_closing()
	
	---[[
	wobbly = jit.new("jit.gl.slab", this.drawto)
	wobbly.file = "td.wobble.jxs"
	wobbly.dim = scene.dim
	--]]
end

function draw()
	--RTT OpenGL commands to scene texture bound to texture unit 0
	jit.gl.begincapture(scene.name, 0)
--		print("bind", scene.name)
		gl.LineWidth(4.)
		gl.Color(0., 1., 1., 1.)
		gl.PushMatrix()
			gl.Rotate(angle, 0., 1., 0.)
			for j=0, 10 do
				gl.Begin("LINE_STRIP")
				for i=0, 10 do
					local x = i/5-1
					local y = j/5-1
					gl.Vertex(x, y, math.sin(2*x*math.pi)*
									math.cos(2*y*math.pi))
				end
				gl.End()
			end
		gl.PopMatrix()
	jit.gl.endcapture(scene.name, 0)
	
	scene:bind(0)
	gl.Color(1, 1, 1, 1)
	gl.Begin("QUADS")
		gl.TexCoord(0, 0)	gl.Vertex(-1, 1, 0)
		gl.TexCoord(1, 0)	gl.Vertex(1, 1, 0)
		gl.TexCoord(1, 1)	gl.Vertex(1, -1, 0)
		gl.TexCoord(0, 1)	gl.Vertex(-1, -1, 0)
	gl.End()
	scene:unbind(0)
	
	---[[
	--post process scene with slab
--	doSlab(wobbly, scene.name)
	--]]
	
	--draw processed scene
	vplane:draw()
	gl.Color(1, 1, 1, 1)
	gl.Begin("LINES")
	gl.Vertex(0, 0, 0)
	gl.Vertex(1, 0, 0)
	gl.End()
	
	angle = angle + 4
end

function doSlab(slab, ...)
	local textures = {...}

	slab.texture = textures;
	slab:draw()
end