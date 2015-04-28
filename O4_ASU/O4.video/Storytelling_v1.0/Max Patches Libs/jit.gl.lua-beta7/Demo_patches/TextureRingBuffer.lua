print("TextureRingBuffer.lua")

-----TextureRingBuffer
local M = {}
TextureRingBuffer = M

--default member variables
M.mDelay = 1
M.mContextName = ""
M.mDims = {320, 240}
M.mCurrentFrame = 1
M.mSize = 1
M.textures = {}
M.copyPlane = nil

function M.new(contextName, size, dims)
	local m = {}
	
	--copy class table to new instance
	for k in pairs(M) do
		m[k] = M[k]
	end
	
	m:initialize(contextName, size, dims)
	
	return m
end

function M.initialize(this, contextName, size, dims)
	if(contextName) then
		this.mContextName = contextName
	end
	
	if(size) then
		this.mSize = size
	end
	
	if(dims) then
		this.mDims = dims
	end
	
	for i=1, this.mSize do
		this.textures[i] = jit.new("jit.gl.texture", this.mContextName)
		this.textures[i].dim = this.mDims
	end
	
	this.copyPlane = jit.new("jit.gl.videoplane", this.mContextName)
	this.copyPlane.automatic = 0
	this.copyPlane.transform_reset = 2
	this.copyPlane.blend_enable = 0
	this.copyPlane.depth_enable = 0
	this.copyPlane.color = {1., 1., 1., 1.}
end

function M.texture(this, index)
	return this.textures[index]
end

function M.delayedIndex(this)
	local delayed_index = this.mCurrentFrame - this.mDelay
	
	if(delayed_index <= 0) then
		delayed_index = this.mSize + delayed_index
	end
	
	return delayed_index
end

function M.incrementFrame(this)
	this.mCurrentFrame = this.mCurrentFrame + 1
	
	--wrap current_frame index
	if(this.mCurrentFrame > this.mSize) then
		this.mCurrentFrame = 1
	end
end

function M.jit_matrix(this, name)
	--add new frame to buffer
	this:incrementFrame()
	this.textures[this.mCurrentFrame]:jit_matrix(name)
end

function M.jit_gl_texture(this, name)
	--add new frame to buffer
	this:incrementFrame()

	--eventually should bind and drawraw
	jit.gl.begincapture(this.textures[this.mCurrentFrame].name, 0)
	gl.Disable("DEPTH_TEST")
	gl.Color(1., 1., 1., 1.)

			gl.MatrixMode("PROJECTION")
			gl.PushMatrix()
				gl.LoadIdentity()
				gl.Ortho(-1.0, 1.0, -1.0, 1.0, -100, 100);

				gl.MatrixMode("MODELVIEW");
				gl.PushMatrix()

					gl.LoadIdentity()
					jit.gl.bindtexture(name, 0)
						this.copyPlane:drawraw()
					jit.gl.unbindtexture(name, 0)

				gl.PopMatrix()
			gl.MatrixMode("PROJECTION")
			gl.PopMatrix()
			
	gl.MatrixMode("MODELVIEW")
	gl.Enable("DEPTH_TEST")
	jit.gl.endcapture(this.textures[this.mCurrentFrame].name, 0)
end
