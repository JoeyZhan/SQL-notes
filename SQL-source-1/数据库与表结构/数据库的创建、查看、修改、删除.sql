--�������ݿ�
Create Database Test		--'Test'Ϊ���ݿ�����
On		--���ݿ��ļ�
(
	name = 'Test',		--����
	filename = 'd:\SqlServer08R2\data\Test.mdf',	--���·��
	size = 5MB,			--��ʼ��С
	maxsize = 200MB,	--����С
	filegrowth = 5%		--�����ٶ�
)
Log on		--���ݿ���־�ļ�
(
	name = 'Test_Log',
	filename = 'd:\SqlServer08R2\data\Test_Log.ldf',
	size = 2MB,	
	maxsize = 20MB,
	filegrowth = 2MB
)



--�鿴ָ�����ݿ�����
sp_helpdb Test		--'Test'Ϊ���ݿ�����
--�鿴�������ݿ�����
sp_helpdb



--�޸����ݿ�
--��������ļ�
Alter Database Test
Add file
(
	name = 'Test_data',	
	filename = 'd:\SqlServer08R2\data\Test_data.ndf',
	size = 5MB,
	maxsize = 100MB,
	filegrowth = 1%
)
--���������־�ļ�
Alter Database Test
Add log file
(
	......
)
--�޸������ļ�/��־�ļ�
Alter Database Test
Modify file
(
	......
)
--ɾ�������ļ�
Alter Database Test
Remove file Test_data		--'Test_data' Ϊ��Ҫɾ���������ļ�����



--ɾ�����ݿ�
Drop Database Test		--ɾ������Ϊ'Test'�����ݿ�
