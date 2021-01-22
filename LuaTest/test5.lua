--[[
	本地(局部)变量的关键字 local
	多脚本执行 require("脚本名")
	脚本卸载 package.loader["脚本名"] = nil
	大G表 _G表是一个总表，将申明的所有全局标量都存储在其中
	for k, v in pairs(_G) do
		print(k, v)
	end
	
	多变量赋值
	a, b, c = 1, 2, "123"
	多返回值，接多了就自动补空

	and or
	在lua中只有nil和false才认为是假
	只需要判断第一个，是否满足，就会停止计算
	print(1 and 2)
	结果是2
	and 有真则真
	or 有假则假
	三目运算符，不支持
	result = (x > y) and x or y

]]

--[[
	协程coroutine
	本质是一个线程对象
	corotine.create() 创建
	corotine.wrap() 创建返回一个函数，返回值没有默认第一个返回值
	coroutine.resume 运行
	挂起
	fun = function()
		while true do 
			...
			挂起函数，可返回值
			第一个数值返回状态，第二个数值返回参数
			corotine.yield() 
		end
	end
	
	coroutine.status()
	dead结束
	suspended暂停
	running运行中

	coroutine.running() 返回当前运行的协程的线程号
	

]]