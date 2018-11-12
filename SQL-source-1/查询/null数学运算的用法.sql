--null 的相关用法

--null 与 0 是不一样的，null 表示空值，没有值，而 0 是表示一个确定的值。

--null 可以参与如下运算：
-- 'is' 'is not'

Select *
From emp
Where comm is null		--查询条件：comm为null

Select *
From emp
Where comm is not null		--查询条件：comm不为null

--null 不可以参与如下运算：
-- '<>'	'!=' '='

Select *
From emp
Where comm <> null		--error
--Where comm != null	--error
--Where comm = null		--error



--null无法以正常语法参与数学运算，结果会为null

--查询每个员工的姓名、年薪(包括奖金)
--错误的数学运算写法：
Select ename, sal*12+comm as "年薪"		--'comm' 为null，进行数学运算结果会为 null
From emp

--正确写法：
Select ename, sal*12+isnull(comm, 0) as "年薪"		--'isnull(comm, 0)' 表示 comm值如果为null，则返回0，否则 返回comm的值。
From emp
