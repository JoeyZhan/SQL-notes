--between ���÷�
--������ֵ֮���ֵ

--Select [column_name] ...
--From [table_name] ...
--Where [column_name] between [values1] and [values2]


Select *
From emp
Where sal between 1500 and 3000		--��ѯ����: sal ֵ ���� 1500��3000֮��(����1500��3000)��ֵ, �� 1500<=sal<=3000
--�ȼ���
Select *
From emp
Where sal >= 1500 and sal <= 3000


Select *
From emp
Where sal not between 1500 and 3000		--��ѯ����: sal ֵ ������ 1500��3000֮��(����1500��3000)��ֵ, �� sal<1500, sal>3000
--�ȼ���
Select *
From emp
Where sal < 1500 or sal > 3000