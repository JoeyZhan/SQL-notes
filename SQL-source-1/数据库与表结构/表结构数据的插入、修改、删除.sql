--表结构数据的插入、修改、删除

--插入数据
--Insert [table_name] ([column_name], [column_name], ......)
--Values([expression], ......)
--Insert [table_name] ([column_name], [column_name], ......)
--Values([expression], ......)
--......


--省略列名插入数据
--(当向表中所有列都插入数据时，可以省略列名，
-- 但必须保证 Values 后的 各数据项位置 与 表名定义时的顺序、数据类型 都一致，否则会报错)

--Insert [table_name]
--Values([expression], ......)
--Insert [table_name]
--Values([expression], ......)
--......


--修改数据
--Update [table_name]
--Set [column_name] = [expression]
--Where [search_conditions]


--删除数据
--Delete from [table_name]
--Where [search_conditions]

--清空表中的数据(不删除表结构)
--truncate table [table_name]

Insert Student(S_id, S_name, S_sex, S_add)
Values('1001', '张三', '男', '张家村')
Insert Student(S_id, S_name, S_sex, S_add)
Values('1002', '李四', '男', '李家村')

Insert Student
Values('1001', '张三', '男', '张家村')	--ok
Insert Student
Values('1002', '李四', '男')			--error


Update Student
Set S_name = '李六'
Where S_id = '1002'

Delete from Student
Where S_id = '1002'

truncate table Student
