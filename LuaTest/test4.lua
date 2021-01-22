--[[
	所有的复杂类型都是table
	a = {}
	#通用的获取长度关键字，打印长度的时候，空会中断
	a = {{},
		{}}
	for i = 1, #a do
		b = a[i]
		for j = 1, #b, do
			b[j]
		end
	end	

	可自定义索引，但#获取长度是从索引1开始(别用)
	a = {[0] = 1, 2, 3, [-1] = 4, 5}
	a[0] = 1
	a[1] = 2
	a[3] = 5
	a[-1] = 4
]]

--[[
	迭代器遍历
	不要用#来遍历表
	ipairs还是从1开始遍历，小于等于0的值得不到
	而且只能找到连续索引的键
	for i,k in ipairs(a) do

	end
	
	pairs遍历所有的键
]]

--[[
	定义字典
	a = {[""] = " ", [""] = " "}
	遍历字典，不打印键
	for _,v in pairs(a) do
		..
	end
]]

--[[
	lua中面向对象需要自己实现，类本质是表
	player = {
		grade = 1,
		sex = ture,
		想要在表内部函数中调用表本身的属性或方法，
		一定要指定要使用的表名.属性
		也可以通过把自己的作为一个参数传入内部访问
		Up = function()
			...
		end,
		combatPower = function(t)
			...
		end

	}
	lua中类的表现，更像是一个类中有很多静态变量和函数
	
	lua中.和:的区别
	:调用方法会默认把调用者作为第一个参数传入方法中
	player.combatPower(student)
	palyer:combatPower()

	lua关键字self表示默认传入的第一个参数
	function player:Update()
		....self.sex
	end
]]

--[[
	table提供的公共方法
	table.insert()
	table.remove() 移除最后一个索引的内容
	table.sort() 降序排列
	table.sort(name, function(a,b)
		if a > b then
			return true
		end
	end  
	)
	table.concat(name, "分隔符") 拼接
]]