--��ṹԼ������ӡ��޸ġ�ɾ��

--���
--Alter table [table_name]
--Add constraint [constraint_name] [constraint] ([column_name])


--ɾ��
--Alter table [table_name]
--Drop constraint [constraint_name]


--�޸�(����ɾ������ӣ�������ֱ���޸ĵ����)
--Alter table [table_name]
--Drop constraint [constraint_name]
--Alter table [table_name]
--Add constraint [constraint_name] [constraint] ([column_name])


Alter table Student
Add constraint pk_s_id primary key (s_id)

Alter table Student
Drop constraint pk_s_id

Alter table Student
Add constraint fk_s_id foreign key (s_id) references Teacher.t_id