--top ���÷�
--top ������ڹ涨Ҫ���صļ�¼����Ŀ��
--����sqlServer���, �޷����������ݿ�ʹ�á�

--Select top [number] [column_name]
--From [table_name]

--Select top [number] percent [column_name]
--From [table_name]


Select top 5 *		--����ǰ5����¼
From emp


Select top 15 percent *		--����ǰ15%�ļ�¼
From emp		


--��ѯ����'sal' 1500-3000֮����ߵ�ǰ����
Select top 3 *
From emp
Where sal between 1500 and 3000
Order by sal desc		--'desc'Ϊ���򣬲�д��Ĭ��Ϊ����