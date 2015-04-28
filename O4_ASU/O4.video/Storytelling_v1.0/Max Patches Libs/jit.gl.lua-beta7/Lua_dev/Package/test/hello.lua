require("hello")
require("hello_cpp")

if(hello) then
	print("\nhello.so module loaded")
	print(hello.say_hello())
end

if(hello_cpp) then
	print("\nhello_cpp.so module loaded")
	h = hello_cpp.create()
	print(h:say_hello())
end