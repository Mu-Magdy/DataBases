use ITI

1
create procedure p
as 
	select Department.Dept_Name,count(Student.Dept_Id)
	from Department
	inner join Student
	on Student.Dept_Id=Department.Dept_Id
	group by Department.Dept_Name;
	
exec p

2

use company_Sd
declare @c int
set @c=(select count(ssn)
	from employee 
	inner join Works_for
	on ESSn=SSN
	inner join project 
	on Pno=Pnumber
	where Pname='p1');
	select @c
create procedure p2
as 
	if (@c
	)>3
	select 'The number of employees in the project p1 is 3 or more';
	else
	select 'the following employees work for the project p1';