--�ۺϺ���

--���м�¼����һ��ֵ��ͨ������ͳ�Ʒ������Ϣ

--�����ķ���
--	���к�����ÿһ�з���һ��ֵ
--	���к��������з���һ��ֵ������ �ۺϺ�����


--�ۺϺ����ķ���
--max(column_name)		���ֵ
--min(column_name)		��Сֵ
--avg(column_name)		ƽ��ֵ
--count(column_name)	ͳ�Ƹ���

--���ر������м�¼�ĸ���
Select COUNT(*)
From emp

--�����ֶ�ֵ�ǿռ�¼�ĸ���
Select COUNT(deptno)	--�ظ��ļ�¼Ҳ�ᱻ������Ч�ļ�¼
From emp

Select COUNT(comm)		--ֵΪ'null'�ļ�¼���ᱻ������Ч��¼
From emp

--�����ֶ�ֵ�ǿռ�¼�ĸ���(�����ظ�ֵ)
Select COUNT(distinct deptno)
From emp


--ע������

Select MAX(sal), MIN(sal), COUNT(*)	--ok
From emp

Select MAX(sal) as "��߹���", MIN(sal) as "��͹���", COUNT(*) as "Ա������"
From emp

Select MAX(sal), LOWER(ename)		--error	���к�������к������ܻ���
From emp

Select MAX(sal)		-ok
From emp

