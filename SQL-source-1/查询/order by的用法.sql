--order by 的用法

--以某个字段排序
--order by [column_name] ... desc/asc
--如果不指定排序的标准，则默认是升序，升序用'asc'表示
--降序用 'desc' 表示
--建议为每一个字段都指定排序的标准

--order by a, b		--a,b都为升序
--order by a desc, b		--a降，b升
--order by a, b desc		--a升，b降
--order by a desc, b desc	--a,b都为降序

--'asc' 升序
Select *
From emp
Order by sal

Select *
From emp
Order by deptno, sal	
--先按照 'deptno'升序排序，如果'deptno'值相同，再按照'sal'值升序排序。


--'desc' 降序
Select *
From emp
Order by sal desc	--降序排序

Select *
From emp
Order by deptno desc, sal
--先按照 'deptno'升序降序，如果'deptno'值相同，再按照'sal'值升序排序。
