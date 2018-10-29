--表关系
--多对多关系的实现
--多对多关系需要重新建立一个表来表示

--本例子中, 用表'course_arrange'来表示 表'classAndgrade'、'teacher'、'course'之间的多对多关系

Create table classAndgrade
(
	cag_id int constraint pk_cag_id primary key,
	cag_name nvarchar(10) unique not null,
	cag_numb int not null
)

Create table teacher
(
	tea_id int constraint pk_tea_id primary key,
	tea_name nvarchar(10) unique not null,
	tea_sex nvarchar(1) check(tea_sex = '男' or tea_sex = '女') not null,
	tea_address nvarchar(20) not null,
)

Create table course
(
	c_id int constraint pk_c_id primary key,
	c_name nvarchar(10) unique not null,
)

Create table course_arrange
(
	tea_id int constraint fk_tea_id foreign key references teacher(tea_id) not null,
	cag_id int constraint fk_cag_id foreign key references classAndgrade(cag_id) not null,
	c_id int constraint fk_c_id foreign key references course(c_id) not null,
	constraint pk_tea_cag_c primary key (tea_id, cag_id, c_id)
)
