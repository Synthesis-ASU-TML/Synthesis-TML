--set the number of outlets of jit.gl.lua
outlets = 2

--import support classes
print("Importing...")
importfile("TextureRingBuffer.lua")

--get context name from jit.gl.lua object
context_name = this.drawto
buffer_dim = {320, 240}
voffset = 0.05

texBuffer = TextureRingBuffer.new(context_name, 10, buffer_dim)
inputTexture = jit.new("jit.gl.texture", context_name)
inputTexture.dim = buffer_dim

fb_process = jit.new("jit.gl.slab", context_name)
fb_process.file = "td.lumadisplace.jxs"

main_process = jit.new("jit.gl.slab", context_name)
main_process.file = "co.average.jxs"

function offset(val)
	voffset = val
	fb_process:param("dstdim", {voffset, 0., 1.+voffset, 1.})
end

offset(voffset)

function draw()
	outlet(1, "jit_gl_texture", texBuffer.textures[texBuffer.mCurrentFrame].name)
	outlet(0, "jit_gl_texture", main_process.out_name)
end

function jit_matrix(name)
	--get matrix into a texture
	inputTexture:jit_matrix(name)

	local delayed_index = texBuffer:delayedIndex()
	
	--feedback processing
	doSlab(fb_process, 		texBuffer.textures[delayed_index].name)

	--mixer processing
	doSlab(main_process, 	inputTexture.name, 
							fb_process.out_name)
	
	texBuffer:jit_gl_texture(main_process.out_name)
end

function doSlab(slab, ...)
	local textures = {...}

	slab.texture = textures;
	slab:draw()
end

function compositeShader(name)
	main_process.file = name
end

function delay(val)
	texBuffer.mDelay = val
end

function print_drawinfo()
	for k, v in pairs(jit.gl) do
		print("jit.gl." .. k)
	end
end