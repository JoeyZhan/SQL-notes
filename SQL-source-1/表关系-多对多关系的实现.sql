--���ϵ
--��Զ��ϵ��ʵ��
--��Զ��ϵ��Ҫ���½���һ��������ʾ

--��������, �ñ�'course_arrange'����ʾ ��'classAndgrade'��'teacher'��'course'֮��Ķ�Զ��ϵ

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
	tea_sex nvarchar(1) check(tea_sex = '��' or tea_sex = 'Ů') not null,
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
