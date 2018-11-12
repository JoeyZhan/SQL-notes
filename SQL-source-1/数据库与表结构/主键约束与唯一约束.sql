--主键约束 与 唯一约束
	--primary key - unique
	
	--主键约束 是唯一的且不能为空，只能有一个，但 唯一约束 只是使某一些列具有唯一性，可以多列且可以为空
	--一张表只能有一个主键约束，可以有多个唯一约束
Create table userInformation
(
	u_id int primary key,
	u_name nvarchar(7) unique not null,
	u_email nvarchar(20) unique not null,
	u_address nvarchar(50)
)