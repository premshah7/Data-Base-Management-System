--LAB 4--
--PART A--
SELECT * FROM DEPOSIT_DETAIL

--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSIT ADD CITY VARCHAR(20),PINCODE INT

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in amount Column
ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT

--4. Rename Column ActNo to ANO.
sp_rename 'DEPOSIT.ACTNO','ANO'

--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT DROP COLUMN CITY

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
sp_rename 'DEPOSIT','DEPOSIT_DETAIL'


--PARTB
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
sp_rename 'DEPOSIT_DETAIL.ADATE','AOPENDATE'

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE

--3. Rename Column CNAME to CustomerName.
sp_rename 'DEPOSIT_DETAIL.CNAME','CustomerName'


--PARTC
CREATE TABLE STUDENT_DETAIL(
	ENROLLMENT_NO VARCHAR(20),
	NAME VARCHAR(25),
	CPI DECIMAL(5,2),
	BIRTHDATE DATETIME

);
SELECT * FROM STUDENT_DETAIL

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL ADD CITY VARCHAR(20)NOT NULL , BACKLOG INT NULL

--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE  STUDENT_DETAIL ALTER COLUMN NAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE  STUDENT_DETAIL ALTER COLUMN CPI INT

--4. Rename Column Enrollment_No to ENO.
sp_rename 'Student_detail.Enrollment_No','eno'.

--5. Delete Column City from the student_detail table.
alter table student_detail drop column city

--6. Change name of table student_detail to STUDENT_MASTER
sp_rename 'Student_detail','STUDENT_MASTER'



--DELETE/TRUNCATE/DROP
--PARTA
--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000

--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='CHANDI'

--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO>105 

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL

--5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL

--PARTB
CREATE TABLE EMPLOYEE_MASTER(
	EMPNO INT,
	EMPNAME VARCHAR(20),
	JOININGDATE DATE,
	SALARY DECIMAL(8,2),
	CITY VARCHAR(20)
);
SELECT * FROM EMPLOYEE_MASTER
INSERT INTO EMPLOYEE_MASTER VALUES(101,'Keyur','2002-1-5',12000,'Rajkot')
INSERT INTO EMPLOYEE_MASTER VALUES(102,'Hardik','2004-2-15',14000,'Ahmedabad')
INSERT INTO EMPLOYEE_MASTER VALUES(103,'Kajal','2006-2-14',15000,'Baroda')
INSERT INTO EMPLOYEE_MASTER VALUES(104,'Bhoomi','2005-6-23',12500,'Ahmedabad')
INSERT INTO EMPLOYEE_MASTER VALUES(105,'Harmit','2004-2-15',14000,'Rajkot')
INSERT INTO EMPLOYEE_MASTER VALUES(106,'Mitesh','2001-9-25',5000,'Jamnagar')
INSERT INTO EMPLOYEE_MASTER VALUES(107,'Meera',null,7000,'Morbi')
INSERT INTO EMPLOYEE_MASTER VALUES(108,'Kishan','2003-2-6',10000,Null)

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000. 
DELETE FROM EMPLOYEE_MASTER WHERE SALARY>=14000

--2. Delete all the Employees who belongs to �RAJKOT� city.
DELETE FROM EMPLOYEE_MASTER WHERE CITY='RAJKOT'

--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE>'2007-1-1'

--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE IS NULL AND EMPNAME IS NOT NULL

--5. Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER WHERE SALARY=(0.50*20000)

--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY IS NOT NULL

--7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER

--8. Remove Employee_MASTER table. (Use Drop)
DROP TABLE�EMPLOYEE_MASTER