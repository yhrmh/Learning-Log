--[[
	Multi-line comments
	Variable: nil number string boolean
	function table userdata thread
	no statement variable is nil
	function: type(string)	
]]
a = "hello world";
print(type(a));

--[[
	os.time()
	os.date("*t")
	for k,v in pairs() do
 		
	end
	绝对值math.abs
	弧度转角度deg
	三角函数cos
	向下向下取整floor ceil
	小数分成整数+小数部分 modf
	随机数 math.randomseed(os.time())
	random
	lua脚本加载路径
	package.path

	垃圾回收
	获取当前lua占用内存数 K字节
	collectgarbage("count")
	回收，类似GC
	collectgarbage("collect")
	unity中热更新开发，尽量不要自动垃圾回收
]]