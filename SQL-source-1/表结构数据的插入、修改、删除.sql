--��ṹ���ݵĲ��롢�޸ġ�ɾ��

--��������
--Insert [table_name] ([column_name], [column_name], ......)
--Values([expression], ......)
--Insert [table_name] ([column_name], [column_name], ......)
--Values([expression], ......)
--......


--ʡ��������������
--(������������ж���������ʱ������ʡ��������
-- �����뱣֤ Values ��� ��������λ�� �� ��������ʱ��˳���������� ��һ�£�����ᱨ��)

--Insert [table_name]
--Values([expression], ......)
--Insert [table_name]
--Values([expression], ......)
--......


--�޸�����
--Update [table_name]
--Set [column_name] = [expression]
--Where [search_conditions]


--ɾ������
--Delete from [table_name]
--Where [search_conditions]

--��ձ��е�����(��ɾ����ṹ)
--truncate table [table_name]

Insert Student(S_id, S_name, S_sex, S_add)
Values('1001', '����', '��', '�żҴ�')
Insert Student(S_id, S_name, S_sex, S_add)
Values('1002', '����', '��', '��Ҵ�')

Insert Student
Values('1001', '����', '��', '�żҴ�')	--ok
Insert Student
Values('1002', '����', '��')			--error


Update Student
Set S_name = '����'
Where S_id = '1002'

Delete from Student
Where S_id = '1002'

truncate table Student
