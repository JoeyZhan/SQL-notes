--模糊查询(like与通配符) 的用法

--Where [column_name] like [pattern]

--通配符

--'%'
--表示任意 0个 或 多个 字符

--'_'
--表示任意 单个 字符

--'[a-d]'
--表示 'a' 至 'd' 中的任意 单个 字符(a, b, c, d)

--'[^a-d]'
--表示 除 'a' 至 'd' 中的任意 单个 字符(a, b, c, d)
--'^' 为取反

--'[a, d]'
--表示 'a'或'd'


Select *
From emp
Where ename like 'A%'		--查询条件:  'ename' 中首字母为 'A' 的记录
--Where ename like '%A'		--查询条件:  'ename' 中尾字母为 'A' 的记录
--Where ename like '%A%'	--查询条件:  'ename' 中的字符串中有 'A' 的记录


Select *
From emp
Where ename like '_A%'		--查询条件:  'ename' 中第二个字母为 'A' 的记录


Select *
From emp
Where ename like '_[A-D]%'	--查询条件:  'ename' 中第二个字母为 'A'至'D' 的记录


Select *
From emp
Where ename like '_[^A-D]%'	--查询条件:  'ename' 中第二个字母 不为 'A'至'D' 的记录


