--in ���÷�
--in ���������������� where ����й涨���ֵ��

--Select [column_name] ...
--From	[table_name] ...
--Where [column_name] in (value1, value2, ...)


Select *
From emp
Where sal in (1500, 3000, 5000)		--��ѯ������'sal' = 1500 ���� 'sal' = 3000 ���� 'sal' = 5000
--�ȼ���
Select *
From emp
Where sal = 1500 or sal = 3000 or sal = 5000


Select *
From emp
Where sal not in (1500, 3000, 5000)		--��ѯ������'sal' ������ 1500 ���� 'sal' ������ 3000 ���� 'sal' ������ 5000
--�ȼ���
Select *
From emp
Where sal <> 1500 and sal <> 3000 and sal <> 5000
--���ݿ��� '������' �����ֱ�﷽ʽ��
-- '!=' �� '<>'
--�Ƽ�ʹ�� '<>'