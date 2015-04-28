num_objects = 5

gray = {0.5, 0.5, 0.5, 1.}
blue = {0., 0., 1., 1.}

--get render context from instance of jit.gl.lua
render_context = this.drawto

objects = {}
hitobj = nil

handle = jit.new("jit.gl.handle", "nowhere")

for i=1, num_objects do
	objects[i] = jit.new("jit.gl.gridshape", render_context)
	objects[i].automatic = 0
	objects[i].shape = "opencylinder"
	objects[i].position = {(i-1)/(num_objects-1)*6. - 3., 0., 0.}
	objects[i].color = gray
	objects[i].scale = {0.5, 0.5, 0.5}
	objects[i].lighting_enable = 1
end

--create the listener callback function
function callback(event)
	if(event.eventname == "mouseidle") then
		local x = event.args[1]
		local y = event.args[2]
		
		--reset out colors
		for i in ipairs(objects) do
			objects[i].color = gray
		end
		
		-- get start and end points of the mouse click in world coordinates
		-- screen to world uses normalized z relative to camera:
		-- 0. = closest to camera, 1. = furthest from camera
		local raystart = jit.gl.screentoworld({x, y, 0.})
		local rayend = jit.gl.screentoworld({x, y, 1.})
		
		
		hitobj = nil
		
		-- test for objects for intersection and measure distance 
		for i in ipairs(objects) do
			local intersect, intersectpoint = 
								vec3.intersect_line_sphere(	raystart, 
															rayend, 
															objects[i].position,
															0.5)
			
			--hit an object
			if(intersectpoint) then
				hitobj = objects[i]
				break
			end
		end
		
		if(hitobj) then
			-- copy target's attribtues	
			handle.drawto = render_context
			handle.position = hitobj.position;
			handle.rotate = hitobj.rotate;
			handle.radius = hitobj.scale[1]*2.;
			
			hitobj.color = blue
		else
			hitobj = nil;
			handle.drawto = "nowhere";
		end
	elseif(event.eventname == "mouseidleout") then
		--reset color
		if(hitobj) then
			hitobj.color = gray
		end
		
		hitobj = nil;
		handle.drawto = "nowhere";
	end
end

--create a listener object
listener = jit.listener(render_context, "callback")

function draw()
	if(hitobj) then
		hitobj.position = handle.position
		hitobj.rotate = handle.rotate
	end

	for i in ipairs(objects) do
		objects[i]:draw()
	end
end

function print_vecmath(lib)
	print("")
	for k, v in pairs(_G[lib]) do
		print(lib .. "." .. k)
	end
end