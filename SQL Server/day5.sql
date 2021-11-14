use ITI

1
select count(st_age)
from Student
where St_Age is not null

2
select distinct Ins_name
from Instructor

3

select St_Id,St_Fname+' '+St_Lname,Department.Dept_Name
from Student
inner join Department
on student.Dept_Id=Department.Dept_Id

4 

select i.Ins_Name,d.Dept_Name
from Instructor i
left outer join Department d
on i.Dept_Id=d.Dept_Id

5

select concat(st_fname,' ',St_Lname)as fullname,Course.Crs_Name 
from student
inner join Stud_Course
on Stud_Course.St_Id=Student.St_Id
inner join course
on Stud_Course.Crs_Id=Course.Crs_Id
where Stud_Course.Grade is not null

6

select  COUNT(course.Crs_Id)
from course 
inner join Topic
on Topic.Top_Id=Course.Top_Id
group by course.Top_Id

7
select min(Salary)
from Instructor
union
select max(Salary)
from Instructor

8

select * 
from Instructor
where salary<(select avg(salary) from Instructor)

9

select D.Dept_Name,d.Dept_Id
from Department d
inner join Instructor i
on d.Dept_Id=i.Dept_Id
where (Salary)=(select  min(salary) from Instructor)

10

select top(2) salary 
from instructor 
order by Salary desc


11
???
select Ins_Name, coalesce(convert( varchar(50), Salary),'bonus')
from Instructor

12

select x.St_Fname,y.*
from Student x,student y
where x.St_super=y.St_Id

13

select *
from(
		select *, row_number() over(
				partition by dept_id
				order by Salary) RN
		from Instructor
) as newtable
where RN<=2

14

 select   *
 from(
	select  *,
    ROW_NUMBER() over(
	partition by dept_id order by newid()) RN
	from Student
	

) as n
where rn =1




 

15

delete sc
from Stud_Course sc
inner join student
on sc.St_Id=Student.St_Id
inner join Department
on Department.Dept_Id=Student.Dept_Id

where  department.Dept_Name='SD'

16

create table ltrans(
id int primary key,
amount money
)
create table dtrans(
id int primary key,
amount money
)
merge ltrans as t
using dtrans as s
on s.id=t.id
when matched and t.id=s.id
	then
	update  
	set t.amount=s.amount
	
;



use AdventureWorks2012

1

select SalesOrderID,ShipDate
from Sales.SalesOrderHeader
where OrderDate between '2002-7-28' and '2014-7-29'

2
select ProductID,Name
from Production.Product
where standardcost<110

3


select ProductID,Name
from Production.Product
where Weight  is NULL

4

select *
from Production.Product
where color in('Red','Black','Silver')

5
select *
from Production.Product
where name like 'B%'

6
UPDATE Production.ProductDescription 

SET Description = 'Chromoly steel_High of defects' 

WHERE ProductDescriptionID = 3 

select *
from Production.ProductDescription
where description like '%[_]%'

7

select sum(totaldue)
from sales.SalesOrderHeader
where OrderDate between '2001-7-1' and '2014-7-31'
group by orderdate

8

select distinct HireDate
from HumanResources.Employee


9

select  avg(distinct ListPrice)
from Production.Product


10

select concat( name ,' ',convert(varchar(50), ListPrice))
from Production.Product
where ListPrice between 100 and 120
order by ListPrice

11

select rowguid,Name,SalesPersonID into store_archive
from sales.Store


select rowguid,Name,SalesPersonID 
from store_archive

12

select year(getdate())
union
select month(getdate())
union
select day(getdate())

