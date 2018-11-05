--top 的用法
--top 语句用于规定要返回的记录的数目。
--属于sqlServer语句, 无法跨其它数据库使用。

--Select top [number] [column_name]
--From [table_name]

--Select top [number] percent [column_name]
--From [table_name]


Select top 5 *		--返回前5个记录
From emp


Select top 15 percent *		--返回前15%的记录
From emp		


--查询工资'sal' 1500-3000之间最高的前三个
Select top 3 *
From emp
Where sal between 1500 and 3000
Order by sal desc		--'desc'为降序，不写则默认为升序。