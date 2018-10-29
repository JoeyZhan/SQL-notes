--创建数据库
Create Database Test		--'Test'为数据库名字
On		--数据库文件
(
	name = 'Test',		--名称
	filename = 'd:\SqlServer08R2\data\Test.mdf',	--存放路径
	size = 5MB,			--初始大小
	maxsize = 200MB,	--最大大小
	filegrowth = 5%		--增长速度
)
Log on		--数据库日志文件
(
	name = 'Test_Log',
	filename = 'd:\SqlServer08R2\data\Test_Log.ldf',
	size = 2MB,	
	maxsize = 20MB,
	filegrowth = 2MB
)



--查看指定数据库属性
sp_helpdb Test		--'Test'为数据库名字
--查看所有数据库属性
sp_helpdb



--修改数据库
--添加数据文件
Alter Database Test
Add file
(
	name = 'Test_data',	
	filename = 'd:\SqlServer08R2\data\Test_data.ndf',
	size = 5MB,
	maxsize = 100MB,
	filegrowth = 1%
)
--添加数据日志文件
Alter Database Test
Add log file
(
	......
)
--修改数据文件/日志文件
Alter Database Test
Modify file
(
	......
)
--删除数据文件
Alter Database Test
Remove file Test_data		--'Test_data' 为需要删除的数据文件名称



--删除数据库
Drop Database Test		--删除名称为'Test'的数据库
