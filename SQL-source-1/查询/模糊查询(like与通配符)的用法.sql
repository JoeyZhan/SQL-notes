--ģ����ѯ(like��ͨ���) ���÷�

--Where [column_name] like [pattern]

--ͨ���

--'%'
--��ʾ���� 0�� �� ��� �ַ�

--'_'
--��ʾ���� ���� �ַ�

--'[a-d]'
--��ʾ 'a' �� 'd' �е����� ���� �ַ�(a, b, c, d)

--'[^a-d]'
--��ʾ �� 'a' �� 'd' �е����� ���� �ַ�(a, b, c, d)
--'^' Ϊȡ��

--'[a, d]'
--��ʾ 'a'��'d'


Select *
From emp
Where ename like 'A%'		--��ѯ����:  'ename' ������ĸΪ 'A' �ļ�¼
--Where ename like '%A'		--��ѯ����:  'ename' ��β��ĸΪ 'A' �ļ�¼
--Where ename like '%A%'	--��ѯ����:  'ename' �е��ַ������� 'A' �ļ�¼


Select *
From emp
Where ename like '_A%'		--��ѯ����:  'ename' �еڶ�����ĸΪ 'A' �ļ�¼


Select *
From emp
Where ename like '_[A-D]%'	--��ѯ����:  'ename' �еڶ�����ĸΪ 'A'��'D' �ļ�¼


Select *
From emp
Where ename like '_[^A-D]%'	--��ѯ����:  'ename' �еڶ�����ĸ ��Ϊ 'A'��'D' �ļ�¼


