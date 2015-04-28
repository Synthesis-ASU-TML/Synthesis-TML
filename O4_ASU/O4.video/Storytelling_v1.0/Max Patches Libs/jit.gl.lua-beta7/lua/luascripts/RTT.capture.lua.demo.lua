scene = jit.new("jit.gl.texture", this.drawto)
scene.dim = {1024, 768}

wobbly = jit.new("jit.gl.slab", this.drawto)
wobbly.file = "td.wobble.jxs"
wobbly.dim = scene.dim

vplane = jit.new("jit.gl.videoplane", this.drawto)
vplane.automatic = 0
vplane.transform_reset = 2
vplane.texture = wobbly.out_name	--show the output of wobbly

angle = 0

function draw()
	--RTT OpenGL commands to scene texture bound to texture unit 0
	jit.gl.begincapture(scene.name, 0)
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
	
	--post process scene with slab
	doSlab(wobbly, scene.name)
	
	--draw processed scene
	vplane:draw()
	
	angle = angle + 4
end

function doSlab(slab, ...)
	local textures = {...}

	slab.texture = textures;
	slab:draw()
end