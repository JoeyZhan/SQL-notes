--计算列

--Select [column_name], ...
--From [table_name]

Select *		-- '*' 代表所有
From dept		-- 从 'dept' 表查询

Select deptno, dname
From dept


Select ename, sal*12 as "年薪", sal as "月薪"
From emp
--在 oracle 中字段的别名不允许用单引号，但 SqlServer 中却允许
--为了兼容性，最好字段别名用双引号，不要用单引号。


--其它不推荐用法

Select 888
From emp
--输出的行数是emp表的行数，每行只有一个字段，值为 888
--了解可以这样用，语法不会出错，但不推荐

Select 5
--ok
--不推荐