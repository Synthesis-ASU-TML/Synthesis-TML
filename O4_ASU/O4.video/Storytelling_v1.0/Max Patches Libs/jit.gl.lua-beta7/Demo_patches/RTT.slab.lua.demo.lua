wobbly = jit.new("jit.gl.slab", this.drawto)
wobbly.file = "td.wobble.jxs"

slider = jit.new("jit.gl.slab", this.drawto)
slider.file = "tp.slide.jxs"

vplane = jit.new("jit.gl.videoplane", this.drawto)
vplane.automatic = 0
vplane.transform_reset = 2
vplane.texture = wobbly.out_name	--show the output of wobbly

function jit_gl_texture(name)
	doSlab(slider,	name,
					wobbly.out_name)
	
	doSlab(wobbly,	slider.out_name)
end

function slide(val)
	slider:param("slide_up", val)
	slider:param("slide_down", val)
end

function draw()
	vplane:draw()
end


function doSlab(slab, ...)
	local textures = {...}

	slab.texture = textures;
	slab:draw()
end