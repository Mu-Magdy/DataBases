use Day3

create table Instructor(
ID int primary key identity,
fname varchar(100),
lname varchar(100),
hiredate date default getdate(),
bd date,
age as(year(getdate())-year(bd)),
address varchar(100),
overtime int unique,
salary int default 3000,
netsalary as(salary+overtime),
constraint c1 check(salary between 1000 and 5000),
constraint c2 check(address in ('cairo','alex'))


)


create table course(
CID int primary key identity,
Cname varchar(50),
Duration int unique,

)

create table lab(
LID int ,
Location varchar(50),
capacity int,
CID int ,
constraint c3 primary key(LID,CID),
constraint c4 foreign key(CID) references course(cid)
	on delete cascade on update cascade,
constraint c5 check(capacity <20)

)

create table teach(
CID int ,
ID int,
TID int primary key identity,
constraint c6 foreign key(CID) references course(cid)
	on delete cascade on update cascade,
constraint c7 foreign key(id) references instructor(id)
	on delete cascade on update cascade,
)

 



