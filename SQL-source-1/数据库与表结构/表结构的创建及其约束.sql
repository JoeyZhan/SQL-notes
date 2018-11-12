--��ṹ�Ĵ�������Լ��

	--����Լ��
	--constraint [Լ����] primary key
	
	--���Լ��
	--constraint [Լ����] foreign key references [�������(����)]
	
	--checkԼ��
	--check[(����)]
	
	--defaultԼ��
	--default ['ֵ']
	
	--uniqueԼ��
	--unique
	
	--not nullԼ��
	--not null

Create Table department		--��������Ϊ'department'
(
	-- ����Լ��(Ψһ���ǿ�)���������ظ�Ԫ�أ����������ݵ�����
	-- constraint [Լ����] primary key
	d_id int constraint pk_dep_id primary key,		
	
	-- not nullԼ����Լ������Ϊ��
	d_name nvarchar(20) not null,
	
	-- nvarchar��һ�ֹ��ʱ����������ͣ����Դ��������Ϣ��(50)ָ�ܴ��50�������ַ�
	d_address nvarchar(50)
)



Create Table employee
(
	e_id int constraint pk_emp_id primary key,
	e_name nvarchar(20) not null,
	
	-- checkԼ������֤�������Ե�ȡֵ�ںϷ��ķ�Χ��
	-- check[(����)]
	e_sex char(1) check(e_sex = '��' or e_sex = 'Ů') not null,
	
	-- defaultԼ������֤��������һ�����и�Ĭ��ֵ
	-- default ['ֵ']
	e_sal int default '1000',
	
	-- uniqueԼ������֤�������� �����ظ�
	-- unique
	e_tel char(13) unique,
	
	
	-- ���Լ����ͨ�����Լ�����﷨�ϱ�֤�� ���������������������� һ���Ǵ��ڵģ����������֮��Ĺ�ϵ������������ֵ�
	-- constraint [Լ����] foreign key references [�������(����)]
	-- ������䵱��������ʱ�������ݱ����� 'department'���е� 'd_id'���� ĳ��������ͬ
	e_dep int constraint fk_emp_dep foreign key references department(d_id) not null
)