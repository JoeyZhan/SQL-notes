--order by ���÷�

--��ĳ���ֶ�����
--order by [column_name] ... desc/asc
--�����ָ������ı�׼����Ĭ��������������'asc'��ʾ
--������ 'desc' ��ʾ
--����Ϊÿһ���ֶζ�ָ������ı�׼

--order by a, b		--a,b��Ϊ����
--order by a desc, b		--a����b��
--order by a, b desc		--a����b��
--order by a desc, b desc	--a,b��Ϊ����

--'asc' ����
Select *
From emp
Order by sal

Select *
From emp
Order by deptno, sal	
--�Ȱ��� 'deptno'�����������'deptno'ֵ��ͬ���ٰ���'sal'ֵ��������


--'desc' ����
Select *
From emp
Order by sal desc	--��������

Select *
From emp
Order by deptno desc, sal
--�Ȱ��� 'deptno'���������'deptno'ֵ��ͬ���ٰ���'sal'ֵ��������
