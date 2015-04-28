
gshape = jit.new("jit.gl.gridshape", this.drawto)
gshape.automatic = 0;
gshape.shape = "torus"
gshape.color = {1, 0, 0, 1}
gshape.lighting_enable = 1

gshape2 = jit.new("jit.gl.gridshape", this.drawto)
gshape2.automatic = 0;
gshape2.shape = "sphere"
gshape2.color = {1, 1, 0, 1}
gshape2.lighting_enable = 1

xfade = jit.new("jit.xfade")

-- jit.gl.draw_begin(jit.gl object, setup_flag=0)
-- jit.gl.draw_end(jit.gl object, setup_flag=0)

function draw()
	gl.PushMatrix()
		gl.Translate(1, 0, 0)
		jit.gl.draw_begin(gshape, 1) --setup is 1 so glstate reset and translate has no effect
			gshape2:drawraw()
		jit.gl.draw_end(gshape, 1)
	gl.PopMatrix()

	gl.PushMatrix()
	gl.Translate(1, 0, 0)
		jit.gl.draw_begin(gshape2)	--setup is 0 by default, so no resetting of glstate
			gshape:drawraw()
		jit.gl.draw_end(gshape2)
	gl.PopMatrix()
end