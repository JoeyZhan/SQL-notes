--模糊查询_如何查询包含'通配符'的记录

--创建测试表
create table student
(
	name varchar(20) null,
	age int
)
insert into student values ('张三', 88);
insert into student values ('Tom', 66);
insert into student values ('a_b', 22);
insert into student values ('c%d', 44);
insert into student values ('abc_fe', 56);
insert into student values ('haobin', 25);
insert into student values ('HaoBin', 88);
insert into student values ('c%', 66)
insert into student values ('long''s', 100)


--查询包含'通配符'的记录

Select *
From student
Where name like '%\%%' escape '\'		--查询条件:  'name' 中的字符串中有 '%' 的记录

Select *
From student
Where name like '%\_%' escape '\'		--查询条件:  'name' 中的字符串中有 '_' 的记录