--null ������÷�

--null �� 0 �ǲ�һ���ģ�null ��ʾ��ֵ��û��ֵ���� 0 �Ǳ�ʾһ��ȷ����ֵ��

--null ���Բ����������㣺
-- 'is' 'is not'

Select *
From emp
Where comm is null		--��ѯ������commΪnull

Select *
From emp
Where comm is not null		--��ѯ������comm��Ϊnull

--null �����Բ����������㣺
-- '<>'	'!=' '='

Select *
From emp
Where comm <> null		--error
--Where comm != null	--error
--Where comm = null		--error



--null�޷��������﷨������ѧ���㣬�����Ϊnull

--��ѯÿ��Ա������������н(��������)
--�������ѧ����д����
Select ename, sal*12+comm as "��н"		--'comm' Ϊnull��������ѧ��������Ϊ null
From emp

--��ȷд����
Select ename, sal*12+isnull(comm, 0) as "��н"		--'isnull(comm, 0)' ��ʾ commֵ���Ϊnull���򷵻�0������ ����comm��ֵ��
From emp
