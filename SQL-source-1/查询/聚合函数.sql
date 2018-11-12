--聚合函数

--多行记录返回一个值，通常用于统计分组的信息

--函数的分类
--	单行函数：每一行返回一个值
--	多行函数：多行返回一个值，例如 聚合函数。


--聚合函数的分类
--max(column_name)		最大值
--min(column_name)		最小值
--avg(column_name)		平均值
--count(column_name)	统计个数

--返回表中所有记录的个数
Select COUNT(*)
From emp

--返回字段值非空记录的个数
Select COUNT(deptno)	--重复的记录也会被当做有效的记录
From emp

Select COUNT(comm)		--值为'null'的记录不会被当做有效记录
From emp

--返回字段值非空记录的个数(过滤重复值)
Select COUNT(distinct deptno)
From emp


--注意问题

Select MAX(sal), MIN(sal), COUNT(*)	--ok
From emp

Select MAX(sal) as "最高工资", MIN(sal) as "最低工资", COUNT(*) as "员工人数"
From emp

Select MAX(sal), LOWER(ename)		--error	单行函数与多行函数不能混用
From emp

Select MAX(sal)		-ok
From emp

