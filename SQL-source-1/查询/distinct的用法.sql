--distinct(�������ظ�)

--Select distinct [column_name], ...
--From [table_name]


Select distinct deptno		--���� 'deptno' �����ظ���ֵ
From dept


Select distinct comm		--distinctҲ���Թ����ظ��� null ֵ
From emp


Select distinct comm, deptno		--�� 'comm' �� 'deptno' ����Ͻ��в��ظ�����
From emp


Select deptno, distinct comm		--error �߼���ͻ
From emp
