create table STUDENT_DATA(
	num int,
	names varchar(10),
	city varchar(20),
	did int
)

create table ACAD(
	rno int,
	SPI decimal(3,2),
	bklog int
)

create table DEPT(
	did int,
	dname varchar(15)
)

--ACAD
insert into ACAD values (101,8.8,0)
insert into ACAD values (102,9.2,2)
insert into ACAD values (103,7.6,1)
insert into ACAD values (104,8.2,4)
insert into ACAD values (105,7.0,2)
insert into ACAD values (106,8.9,3)

select * from ACAD

--DEPT
insert into DEPT values (10,'Computer')
insert into DEPT values (20,'Electrical')
insert into DEPT values (30,'Mechanical')
insert into DEPT values (40,'Civil')

select * from DEPT

--STUDENT_DATA
insert into STUDENT_DATA values (101,'Raju','Rajkot',10)
insert into STUDENT_DATA values (102,'Amit','Ahmedabad',20)
insert into STUDENT_DATA values (103,'Sanjay','Baroda',40)
insert into STUDENT_DATA values (104,'Neha','Rajkot',20)
insert into STUDENT_DATA values (105,'Meera','Ahmedabad',30)
insert into STUDENT_DATA values (106,'Mahesh','Baroda',10)

select * from STUDENT_DATA