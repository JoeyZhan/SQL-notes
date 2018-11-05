--in 的用法
--in 操作符允许我们在 where 语句中规定多个值。

--Select [column_name] ...
--From	[table_name] ...
--Where [column_name] in (value1, value2, ...)


Select *
From emp
Where sal in (1500, 3000, 5000)		--查询条件：'sal' = 1500 或者 'sal' = 3000 或者 'sal' = 5000
--等价于
Select *
From emp
Where sal = 1500 or sal = 3000 or sal = 5000


Select *
From emp
Where sal not in (1500, 3000, 5000)		--查询条件：'sal' 不等于 1500 或者 'sal' 不等于 3000 或者 'sal' 不等于 5000
--等价于
Select *
From emp
Where sal <> 1500 and sal <> 3000 and sal <> 5000
--数据库中 '不等于' 有两种表达方式：
-- '!=' 和 '<>'
--推荐使用 '<>'