create table STUDENT_INFO(
	RNo int,
	names varchar(10),
	branch varchar(2),
	SPI decimal(3,2),
	bklog int
)
insert into STUDENT_INFO values (101,'Raju','CE',8.80,0)
insert into STUDENT_INFO values (102,'Amit','CE',2.20,3)
insert into STUDENT_INFO values (103,'Sanjay','ME',1.5,6)
insert into STUDENT_INFO values (104,'Neha','EC',7.65,1)
insert into STUDENT_INFO values (105,'Meera','EE',5.52,2)
insert into STUDENT_INFO values (106,'Mahesh','EC',4.50,3)
insert into STUDENT_INFO values (108,'Jigar','EC',4.50,6)

select * from STUDENT_INFO

select * from Personal
--PART_A

--1.Create a view Personal with all columns.
create view Personal as
select * from STUDENT_INFO

--2.Create a view Student_Details having columns Name, Branch & SPI.
create view Student_Details as
select names,branch,SPI from STUDENT_INFO
select * from Student_Details

--3.Create a view AcademicData having columns RNo, Name, Branch.
create view AcademicData as
select Rno, names, branch from STUDENT_INFO
select * from AcademicData

--4.Create a view Student_ bklog having all columns but students whose bklog more than 2.
create view Student_bklog as
select * from STUDENT_INFO where bklog > 2 
select * from Student_bklog

--5.Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.
create view Student_Pattern as
select Rno, names, branch from STUDENT_INFO where names like '____'
select * from Student_Pattern

--6.Insert a new record to AcademicData view. (107, Meet, ME)
insert into AcademicData values(107,'Meet','ME')
select * from AcademicData

--7.Update the branch of Amit from CE to ME in Student_Details view.
update Student_Details 
set branch='ME' where names = 'Amit'
select * from Student_Details

--8.Delete a student whose roll number is 104 from AcademicData view.
delete from AcademicData
where Rno = 104
select * from AcademicData


--Part – B:

--1.Create a view that displays information of all students whose SPI is above 8.5
create view st_top as
select * from STUDENT_INFO where SPI > 8.50
select * from st_top

--2.Create a view that displays 0 backlog students.

--3.Create a view Computerview that displays CE branch data only.
create view Computerview as
select * from STUDENT_INFO where branch = 'CE'
select * from Computerview



--Part – C:

--1.Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
create view Result_EC as
select * from STUDENT_INFO where SPI < 5 AND branch = 'EC'
select * from Result_EC

--2.Update the result of student MAHESH to 4.90 in Result_EC view.
Update Result_EC 
set SPI = 4.90 where names = 'Mahesh'
select * from Student_Details

--3.Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘J’ and having bklogs more than 5.
create view Stu_Bklog as
select Rno, names, bklog from STUDENT_INFO where names like 'J%' AND bklog > 4

--4.Drop Computerview xform the database.
drop view Computerview