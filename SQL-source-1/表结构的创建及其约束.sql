--表结构的创建及其约束

	--主键约束
	--constraint [约束名] primary key
	
	--外键约束
	--constraint [约束名] foreign key references [外键表名(列名)]
	
	--check约束
	--check[(条件)]
	
	--default约束
	--default ['值']
	
	--unique约束
	--unique
	
	--not null约束
	--not null

Create Table department		--创建表，名为'department'
(
	-- 主键约束(唯一，非空)，不允许重复元素，避免了数据的冗余
	-- constraint [约束名] primary key
	d_id int constraint pk_dep_id primary key,		
	
	-- not null约束，约束不能为空
	d_name nvarchar(20) not null,
	
	-- nvarchar是一种国际编码数据类型，可以存放中文信息，(50)指能存放50个中文字符
	d_address nvarchar(50)
)



Create Table employee
(
	e_id int constraint pk_emp_id primary key,
	e_name nvarchar(20) not null,
	
	-- check约束，保证事物属性的取值在合法的范围内
	-- check[(条件)]
	e_sex char(1) check(e_sex = '男' or e_sex = '女') not null,
	
	-- default约束，保证事物属性一定会有个默认值
	-- default ['值']
	e_sal int default '1000',
	
	-- unique约束，保证事物属性 不可重复
	-- unique
	e_tel char(13) unique,
	
	
	-- 外键约束，通过外键约束从语法上保证了 本事物所关联的其他事物 一定是存在的，事物和事物之间的关系是由外键来体现的
	-- constraint [约束名] foreign key references [外键表名(列名)]
	-- 以下语句当插入数据时，该数据必须与 'department'表中的 'd_id'事物 某个属性相同
	e_dep int constraint fk_emp_dep foreign key references department(d_id) not null
)