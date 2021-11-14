use ITI

1

select St_Fname+' '+St_Lname,c.Crs_Name
from Student s
inner join Stud_Course sc
on sc.St_Id=s.St_Id
inner join Course c
on c.Crs_Id=sc.Crs_Id
where grade >50
drop view manager
create view manager(name,topic)
with encryption
as	select i.Ins_Name,t.Top_Name
	from Instructor i
	inner join Ins_Course ic
	on ic.Ins_Id=i.Ins_Id
	inner join Department d
	on d.Dept_Manager=i.Ins_Id
	inner join Course c
	on c.Crs_Id=ic.Crs_Id
	inner join Topic t
	on t.Top_Id=c.Top_Id

select * from manager

3

create view dept as
select Ins_Name,d.Dept_Name
from Instructor i
inner join Department d
on d.Dept_Id=i.Dept_Id
where Dept_Name in ('SD','Java')

select * from dept

4

create view v1 as 
select *
from Student
where St_Address in ('Cairo','Alex')
with check option


Update V1 set st_address='tanta' 

Where st_address='Alex'; 

5

use Company_SD

create view projects(name ,no) as
select Pname,COUNT(ssn)
from Employee e
inner join Works_for
on ESSn=SSN
inner join Project
on Pnumber=pno
group by pname

select * from projects





6

create schema company

select * into company.department 
from Departments

select * from company.department

create schema HR

select * into HR.Employee 
from Employee

select * from HR.Employee 

7

create clustered index hiredate
on departments

8 
use ITI

create unique index age
on student(st_age)


9

