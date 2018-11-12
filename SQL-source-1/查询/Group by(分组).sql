--group by(分组)

--按表中记录中的字段分组
--group by [column_name], [column_name2], ...


--对单个列进行分组
Select deptno as "部门编号", AVG(sal) as "平均工资"		--使用group by后, Select 必须为 "组" 或 使用了聚合函数的列
From emp
Group by deptno		--按 'deptno' 进行分组

--对多个列进行分组
Select deptno as "部门编号", job as "职位", AVG(sal)	--注意后面所使用的 聚合函数 是 依据 最后的"组"来进行操作运算的
From emp												--即 'AVG(sal)' 的 'sal' 是 'job' 组的
Group by deptno, job		--先按 'deptno' 进行分组后，再根据 'job' 分组，如果 'job' 有相同字段，再依据 'deptno'进行分组。
Order by deptno


--错误用法
Select deptno as "部门编号", AVG(sal) as "平均工资", ename		--error	 使用'group by'后, 'Select' 只能为"组" 或 聚合函数
From emp
Group by deptno

Select deptno, ename	--error
From emp
Group by deptno

Select deptno, job, sal		--error
From emp
Group by deptno, job