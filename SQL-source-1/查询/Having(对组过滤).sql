--having ���÷�

--having �Ӿ��������Է���֮������ݽ��й��ˣ����ʹ�� having ʱͨ��������ʹ��group by��
--���ûʹ�� group by ��ʹ���� having������ζ�� having �����еļ�¼����һ�������й��ˡ�

--having �Ӿ�ʹ�õ��ֶα���Ϊ "��" �� ʹ���˾ۺϺ������С�

--��� having �� where ��Ҫһ��ʹ�ã�where����д��havingǰ�档



--e.g.
--(����ʹ��)δʹ��group by��ֱ��ʹ��having�������м�¼�Զ���Ϊһ�������й��ˡ�
Select COUNT(*)
From emp
Having AVG(sal) > 1000

--��ѯemp��Ĳ���ƽ�����ʴ���2000�Ĳ��ŵĲ��ű�š����ŵ�ƽ�����ʡ�
Select deptno as "���ű��", AVG(sal) as "ƽ������"
From emp
Group by deptno
Having AVG(sal) > 2000


--ͳ������������A�����е�Ա��������ѯ����ƽ�����ʴ���2000�Ĳ��ŵĲ��ű�š����ŵ�ƽ�����ʡ�
Select deptno as "���ű��", AVG(sal) as "ƽ������"
From emp
Where ename not like '%A%'		--Whereһ��Ҫ��Havingǰ��
Group by deptno
Having AVG(sal) > 2000


--ͳ�ƹ��ʴ���2000��Ա�����Ҳ���ƽ�����ʴ���3000�Ĳ��ŵĲ��ű�š����ŵ�ƽ�����ʡ�
Select deptno as "���ű��", AVG(sal) as "ƽ������"
From emp
Where sal > 2000
Group by deptno
Having AVG(sal) > 3000