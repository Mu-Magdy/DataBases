use Company_SD

1
select Dependent_name,d.Sex
from Dependent d
inner join Employee e
on ESSN=SSN
where e.Sex='F' and d.Sex='F'
union
select Dependent_name,d.Sex
from Dependent d
inner join Employee e
on ESSN=SSN
where e.Sex='M' and d.Sex='M'

2
select Pname ,Works_for.hours/4 as hpw
from Project
inner join Works_for
on Pno=Pnumber

3

select Departments.* 
from Departments
inner join Employee
on Departments.Dnum=Employee.Dno
where Employee.SSN=(select min(ssn)from Employee)

4

select min(Salary) as min,max(salary) as max,AVG(salary) as avg
from Employee
inner join Departments
on Departments.Dnum=Employee.Dno
group by dno

5

select Lname
from Employee
inner join Departments
on Departments.Dnum=Employee.Dno
inner join Dependent
on ESSN=SSN
where MGRSSN=SSN and MGRSSN 

6

select Dnum,Dname,count(ssn)
from Departments
inner join Employee
on dno=Dnum
group by Dnum,Dname
having avg(Employee.salary)<(select AVG(salary)from Employee)


7
select Fname,Project.Pname
from Employee
inner join Works_for
on ESSn=SSN
inner join project 
on pno=pnumber
inner join Departments
on dno=project.Dnum
order by Departments.Dname,Lname,Fname

8

select max(salary)  from Employee
union
select max(Salary)
from Employee
where Salary<(select MAX(salary) from employee)
9

select Fname+' '+Lname
from employee 
intersect
select Dependent_name
from Dependent

10

update Departments
set MGRSSN=968574 
where Dnum=100

update Departments
set MGRSSN=102672 
where Dnum=20

update Employee 
set Superssn=102672
where ssn=102660

11
update Departments 
set MGRSSN=102672
where MGRSSN=223344
delete Dependent
where ESSN=223344
update Employee
set Superssn=102672
where Superssn=223344
update Works_for
set ESSn=102672
where ESSn=223344
delete from Employee 
where SSN=223344

12

update Employee
set Salary+=Salary*.3
where  ssn=(
		select ssn from Employee 
		inner join Works_for
		on SSN=ESSn
		inner join Project
		on Pno=Pnumber
		where Pname='AL Rabwah' )