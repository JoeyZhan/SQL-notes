--having 的用法

--having 子句是用来对分组之后的数据进行过滤，因此使用 having 时通常都会先使用group by。
--如果没使用 group by 但使用了 having，则意味着 having 把所有的记录当做一组来进行过滤。

--having 子句使用的字段必须为 "组" 或 使用了聚合函数的列。

--如果 having 与 where 需要一起使用，where必须写在having前面。



--e.g.
--(极少使用)未使用group by，直接使用having，将所有记录自动分为一组来进行过滤。
Select COUNT(*)
From emp
Having AVG(sal) > 1000

--查询emp表的部门平均工资大于2000的部门的部门编号、部门的平均工资。
Select deptno as "部门编号", AVG(sal) as "平均工资"
From emp
Group by deptno
Having AVG(sal) > 2000


--统计姓名不包含A的所有的员工，并查询部门平均工资大于2000的部门的部门编号、部门的平均工资。
Select deptno as "部门编号", AVG(sal) as "平均工资"
From emp
Where ename not like '%A%'		--Where一定要在Having前面
Group by deptno
Having AVG(sal) > 2000


--统计工资大于2000的员工，且部门平均工资大于3000的部门的部门编号、部门的平均工资。
Select deptno as "部门编号", AVG(sal) as "平均工资"
From emp
Where sal > 2000
Group by deptno
Having AVG(sal) > 3000