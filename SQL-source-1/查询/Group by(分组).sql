--group by(����)

--�����м�¼�е��ֶη���
--group by [column_name], [column_name2], ...


--�Ե����н��з���
Select deptno as "���ű��", AVG(sal) as "ƽ������"		--ʹ��group by��, Select ����Ϊ "��" �� ʹ���˾ۺϺ�������
From emp
Group by deptno		--�� 'deptno' ���з���

--�Զ���н��з���
Select deptno as "���ű��", job as "ְλ", AVG(sal)	--ע�������ʹ�õ� �ۺϺ��� �� ���� ����"��"�����в��������
From emp												--�� 'AVG(sal)' �� 'sal' �� 'job' ���
Group by deptno, job		--�Ȱ� 'deptno' ���з�����ٸ��� 'job' ���飬��� 'job' ����ͬ�ֶΣ������� 'deptno'���з��顣
Order by deptno


--�����÷�
Select deptno as "���ű��", AVG(sal) as "ƽ������", ename		--error	 ʹ��'group by'��, 'Select' ֻ��Ϊ"��" �� �ۺϺ���
From emp
Group by deptno

Select deptno, ename	--error
From emp
Group by deptno

Select deptno, job, sal		--error
From emp
Group by deptno, job