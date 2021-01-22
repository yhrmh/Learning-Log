
Object = {}
--实例化方法
function  Object:new()
	local obj = {}
	--给空对象设置元表
	self.__index = self
	setmetatable(obj, self)
	return obj
end

--继承
function  Object:subClass(className)
	-- body
	_G[className] = {}
	local obj =  _G[className]

	obj.base = self
	--给子类设置元表
	self.__index = self
	setmetatable(obj, self)
end

--新类
Object:subClass("GameObject")
--成员变量
GameObject.posX = 0
GameObject.posY = 0
--成员方法
function  GameObject:Move()
	self.posX = self.posX + 1
	self.posY = self.posY + 1
end
--实例化对象应用
local  obj = GameObject:new()
print(obj.posX)
obj:Move()
print(obj.posX)

local  obj2 = GameObject:new()
print(obj2.posX)
obj2:Move()
print(obj2.posX)

GameObject:subClass("Player")
--多态
function Player:Move()
	--调用父类方法，用.传入参数
	self.base.Move(self)
end

local  p1 = Player:new()
p1:Move()
print(p1.posX)