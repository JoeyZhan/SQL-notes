--����Լ�� �� ΨһԼ��
	--primary key - unique
	
	--����Լ�� ��Ψһ���Ҳ���Ϊ�գ�ֻ����һ������ ΨһԼ�� ֻ��ʹĳһЩ�о���Ψһ�ԣ����Զ����ҿ���Ϊ��
	--һ�ű�ֻ����һ������Լ���������ж��ΨһԼ��
Create table userInformation
(
	u_id int primary key,
	u_name nvarchar(7) unique not null,
	u_email nvarchar(20) unique not null,
	u_address nvarchar(50)
)