--ģ����ѯ_��β�ѯ����'ͨ���'�ļ�¼

--�������Ա�
create table student
(
	name varchar(20) null,
	age int
)
insert into student values ('����', 88);
insert into student values ('Tom', 66);
insert into student values ('a_b', 22);
insert into student values ('c%d', 44);
insert into student values ('abc_fe', 56);
insert into student values ('haobin', 25);
insert into student values ('HaoBin', 88);
insert into student values ('c%', 66)
insert into student values ('long''s', 100)


--��ѯ����'ͨ���'�ļ�¼

Select *
From student
Where name like '%\%%' escape '\'		--��ѯ����:  'name' �е��ַ������� '%' �ļ�¼

Select *
From student
Where name like '%\_%' escape '\'		--��ѯ����:  'name' �е��ַ������� '_' �ļ�¼