--��ṹ���޸�

--����ֶ�(һ����� ������Ӷ��)
--Alter table [table_name]
--Add [column_name] [data_type], [column_name] [data_type], ......

--�޸��ֶ�(һ����� �������޸Ķ��)
--Alter table [table_name]
--Alter column [column_name] [data_type]

--ɾ���ֶ�(һ����� ����ɾ�����)
--Alter table [table_name]
--Drop column [column_name], [column_name], ......


--��ṹ��ɾ��(һ����� ����ɾ�����)
--Drop table [table_name], [table_name], ......


Alter table Student
Add S_id char(10), S_name char(15), S_sex varchar(10)

Alter table Student
Alter column S_id int
Alter table Student
Alter column S_name nvarchar(5) not null
Alter table Student
Alter column S_sex nvarchar(1)

Alter table Student
Drop column S_id, S_name, S_sex


Drop table Student

