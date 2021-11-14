use Company_SD

1
select Dnum , Dname  , Employee.Fname, MGRSSN
from Departments ,Employee
where MGRSSN=SSN

2
select Departments.Dname ,Project.Pname
from Departments,Project
where Project.Dnum=Departments.Dnum 

3
select Dependent.* 
from Dependent ,Employee 
where Employee.SSN=ESSN

4
select Pnumber,Pname,Plocation
from Project
where City in ('Cairo','Alex')

5
select * 
from Project
where Pname like'a%'

6
select Employee.Fname
from Employee
where Dno=30 and Salary between 1000 and 2000

7
select Employee.Fname
from Employee
inner join Works_for
on SSN=ESSn
inner join project 
on Pno=Pnumber
where Pname='AL Rabwah' and Hours>=10 and dno=10


8
select x.Fname 
from Employee x,Employee y
where x.Superssn=y.SSN and y.Fname='kamel'

9
select fname ,Pname
from Employee
inner join Works_for
on ssn=ESSn
inner join Project
on Pno=Pnumber
order by Pname



10
select project.Pnumber,Departments.Dname,Employee.Lname,Employee.Address,Employee.Bdate
from Employee
inner join Departments 
on MGRSSN=SSN
inner join project
on project.Dnum=Departments.Dnum
where Project.City='cairo'


11
select Employee.* 
from Employee,Departments
where MGRSSN=SSN

12
select * 
from Employee
left outer join Dependent
on SSN=ESSN

13
insert into Employee(Fname,Lname,SSN,Superssn,Dno) 
values ('muhammed','magdy',102672,112233,30)

14
insert into Employee(Fname,Lname,SSN,Dno) 
values ('muhammed','ali',102660,30)

15
insert into Departments (Dname,Dnum,MGRSSN,[MGRStart Date])
values('DEPT_IT',100,112233,1-11-2006)