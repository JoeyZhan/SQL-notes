--表关系
--一对多关系的实现
--表'department'对表'employee'是一对多关系
--多的一方设置外键约束

Create table department
(
	d_id int constraint pk_d_id primary key,
	d_name nvarchar(10) not null,
	d_address nvarchar(30) not null
)

Create table employee
(
	e_id int constraint pk_e_id primary key,
	e_name nvarchar(10) not null,
	e_sex nvarchar(1) check(e_sex = '男' or e_sex = '女') not null,
	e_sal int default '1000',
	e_dep int constraint fk_e_dep foreign key references department(d_id) not null
)