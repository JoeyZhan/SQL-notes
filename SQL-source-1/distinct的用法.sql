--distinct(不允许重复)

--Select distinct [column_name], ...
--From [table_name]


Select distinct deptno		--过滤 'deptno' 列中重复的值
From dept


Select distinct comm		--distinct也可以过滤重复的 null 值
From emp


Select distinct comm, deptno		--把 'comm' 和 'deptno' 的组合进行不重复过滤
From emp


Select deptno, distinct comm		--error 逻辑冲突
From emp
