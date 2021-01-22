--[[
	没有复合运算符
	没有自增自减
	字符串可以算数运算，会自动转为number
	条件运算符
	< > <= >= == ~=
	逻辑运算符(支持短路)
	and or not
	不支持位运算
	不支持三目运算符
]]

--[[
	if  then  else end
	if  then
	elseif then 
	end 
]]

--[[
	while(限制条件)  do
	end

	repeat 
	
	until(结束条件)

	for(i 默认递增1，可在第三个参数控制递增量) do
	end
]]

--[[
	lua按顺序编译
	类似于C#的委托和事件
	如果传入参数和函数参数的个数不匹配，会补空或者默认第一个
	支持多返回值
	重载：函数名相同 参数类型不同 参数个数不同
	不支持重载，默认调用最后一个声明的函数
	变长参数使用，用一个表存起来	
	function name()

	end

	name = function()

	end

	function name(...)
	a = {...}
	end
	闭包--改变传入参数的生命周期
	function name()
		return function()
		end
	end
]]