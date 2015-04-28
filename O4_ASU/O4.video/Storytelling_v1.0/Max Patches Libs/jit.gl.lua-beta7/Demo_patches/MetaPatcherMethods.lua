--Make a drawing structure as a table
draw_tests = {}
draw_tests.num_verts = 30
draw_tests.revolutions = 3
draw_tests.damping = 0.97

--get the global table's metatable
global_meta = getmetatable(_G)
--set the __index metamethod to call functions in the drawing table
--or set value in the drawing table
--__index returns a function that handles the arguments to the 
--non-existant function that was called
global_meta.__index =	function(u, k)
							print("\nGlobal Table: " .. tostring(u))
							print("method: " .. k)
							if(type(draw_tests[k]) == "function") then
								--return a function that calls an existing
								--function in draw_tests and passes on
								--the arguments
								return	function(...)
											draw_tests[k](...)
										end
							--doesn't handle table values right now
							--takes just first value
							elseif(type(draw_tests[k]) ~= "nil") then
								--return a function that sets a value
								--in draw_tests
								return 	function(...)
											local args = {...}
											draw_tests[k] = args[1]
										end
							end
						end

--set jit.gl.lua parameters
--in jit.gl.lua scrips, attributes can be set
--as global parameters like in JS when the script loads
--or as by accessing the instance of jit.gl.lua that the script is running
--in via the 'this' global variable at any time
autowatch = 1
this.color = {1., 0., 1., 1.}
print("\njit.gl.lua's name: " .. this.name)

--dummy function just to demonstrate the functionality of
--global metamethods
function draw_tests.show(vals)
	print("draw_tests.show(vals): " .. tostring(vals))
end

--called when jit.gl.lua gets the draw command from the patcher or otherwise
function draw()
	draw_tests.draw()
end

function draw_tests.draw()
	local damping = 1.
	
	--draw a spiral cone
	gl.Begin("LINE_LOOP")
		for i=1, draw_tests.num_verts do
			gl.Vertex(	damping*math.cos(i/draw_tests.num_verts*math.pi*2.*
									draw_tests.revolutions),
						damping*math.sin(i/draw_tests.num_verts*math.pi*2.*
									draw_tests.revolutions),
						i/draw_tests.num_verts )
						
			damping  = damping * draw_tests.damping
		end
	gl.End()
end