--[[
	封装
	object = {}
	object.id = 1
	function object:test()
		print(self.id)
	end

	function object:new()
		local obj = {}
		self.__index = self
		setmetatable(obj, self)
		return obj
	end
	local myobj = object:new()
	可以使用myobj.id
	myobj:test() 结果：1
	myobj.id = 2 此时是在obj中创建一个新的属性id并取值为2
	object.id 结果：1
	myobj.test() 结果为2
]]

--[[
	继承
	function object:subClass(className)
		_G总表，所有声明的全局标量的键值对
		_G[className] = {}
		local obj = _G[className]
		self.__index = self
		obj.base = self
		setmetatable(obj. self)
	end
	
	object: subClass("person")
	person.id 结果:1
	local p1= person:new()
	p1.id 结果为object.id
]]

--[[
	多态
	相同行为，不同表象
	相同方法，不同执行逻辑
	object:subClass("GameObject")
	function GameObject:Move()
		...
	end
	GameObject:subClass("Player")
	function GameObject:Move()
		...指向GameObject表
		避免把基类表传入到方法中
		执行父类逻辑，通过.调用传入第一个参数
		self.base.Move(self)
	end

	local p1 = Player:new()
	p1:Move()	
]]

