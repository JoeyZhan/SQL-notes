--表结构约束的添加、修改、删除

--添加
--Alter table [table_name]
--Add constraint [constraint_name] [constraint] ([column_name])


--删除
--Alter table [table_name]
--Drop constraint [constraint_name]


--修改(即先删除后添加，不存在直接修改的语句)
--Alter table [table_name]
--Drop constraint [constraint_name]
--Alter table [table_name]
--Add constraint [constraint_name] [constraint] ([column_name])


Alter table Student
Add constraint pk_s_id primary key (s_id)

Alter table Student
Drop constraint pk_s_id

Alter table Student
Add constraint fk_s_id foreign key (s_id) references Teacher.t_id