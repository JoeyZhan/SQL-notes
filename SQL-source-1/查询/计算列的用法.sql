--������

--Select [column_name], ...
--From [table_name]

Select *		-- '*' ��������
From dept		-- �� 'dept' ���ѯ

Select deptno, dname
From dept


Select ename, sal*12 as "��н", sal as "��н"
From emp
--�� oracle ���ֶεı����������õ����ţ��� SqlServer ��ȴ����
--Ϊ�˼����ԣ�����ֶα�����˫���ţ���Ҫ�õ����š�


--�������Ƽ��÷�

Select 888
From emp
--�����������emp���������ÿ��ֻ��һ���ֶΣ�ֵΪ 888
--�˽���������ã��﷨������������Ƽ�

Select 5
--ok
--���Ƽ�