--between 的用法
--在两个值之间的值

--Select [column_name] ...
--From [table_name] ...
--Where [column_name] between [values1] and [values2]


Select *
From emp
Where sal between 1500 and 3000		--查询条件: sal 值 等于 1500与3000之间(包括1500和3000)的值, 即 1500<=sal<=3000
--等价于
Select *
From emp
Where sal >= 1500 and sal <= 3000


Select *
From emp
Where sal not between 1500 and 3000		--查询条件: sal 值 不等于 1500与3000之间(包括1500和3000)的值, 即 sal<1500, sal>3000
--等价于
Select *
From emp
Where sal < 1500 or sal > 3000