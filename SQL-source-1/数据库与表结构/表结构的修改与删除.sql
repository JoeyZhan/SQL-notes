--表结构的修改

--添加字段(一段语句 可以添加多个)
--Alter table [table_name]
--Add [column_name] [data_type], [column_name] [data_type], ......

--修改字段(一段语句 不可以修改多个)
--Alter table [table_name]
--Alter column [column_name] [data_type]

--删除字段(一段语句 可以删除多个)
--Alter table [table_name]
--Drop column [column_name], [column_name], ......


--表结构的删除(一段语句 可以删除多个)
--Drop table [table_name], [table_name], ......


Alter table Student
Add S_id char(10), S_name char(15), S_sex varchar(10)

Alter table Student
Alter column S_id int
Alter table Student
Alter column S_name nvarchar(5) not null
Alter table Student
Alter column S_sex nvarchar(1)

Alter table Student
Drop column S_id, S_name, S_sex


Drop table Student

