CREATE TABLE Dept (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);

drop table Dept

CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT NULL,
    Salary DECIMAL(8, 2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Dept(DepartmentID)
);

INSERT INTO Dept (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

INSERT INTO Person (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000, '2000-05-25', 'Jamnagar');


-----------------------------------------------------------------------------------------------------------------------------
--Part – A:

--1. Find all persons with their department name & code.
select Dept.DepartmentName , Dept.DepartmentCode  , Person.PersonName 
from Dept join Person 
on Dept.DepartmentID = Person.DepartmentID

--2. Find the person's name whose department is in C-Block.
select Person.PersonName , Dept.Location
from Dept join Person 
on Dept.DepartmentID = Person.DepartmentID
where Dept.Location = 'C-Block'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
select Person.PersonName , Dept.DepartmentName , Person.City , Person.Salary
from Dept join Person 
on Dept.DepartmentID = Person.DepartmentID
where Person.City = 'Jamnagar'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
select Person.PersonName , Dept.DepartmentName , Person.City , Person.Salary
from Dept join Person 
on Dept.DepartmentID = Person.DepartmentID
where Person.City <> 'Rajkot'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001
select Person.PersonName
from Dept join Person 
on Dept.DepartmentID = Person.DepartmentID
where Person.JoiningDate > '01-08-2001' and Dept.DepartmentName = 'Civil'

--6. Find details of all persons who belong to the computer department.
select Person.*
from Dept join Person 
on Dept.DepartmentID = Person.DepartmentID
where Dept.DepartmentName = 'Computer'

--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
select Person.PersonName , Dept.DepartmentName 
from Person join Dept
on Dept.DepartmentID = Person.DepartmentID
where DATEDIFF(DAY,Person.JoiningDate,getdate()) > 365

--8. Find department wise person counts.
select count(Person.PersonName) , Dept.DepartmentName 
from Person join Dept
on Dept.DepartmentID = Person.DepartmentID
group by Dept.DepartmentName

--9. Give department wise maximum & minimum salary with department name.
select max(Person.Salary) as max_salary, min(Person.Salary) as min_salary , Dept.DepartmentName
from Person join Dept
on Dept.DepartmentID = Person.DepartmentID
group by Dept.DepartmentName

--10. Find city wise total, average, maximum and minimum salary.
select Person.City , max(Person.Salary) as max_salary, min(Person.Salary) as min_salary , avg(Person.Salary) as avg_salary , sum(Person.Salary) as sum_salary
from Person join Dept
on Dept.DepartmentID = Person.DepartmentID
group by Person.City

--11. Find the average salary of a person who belongs to Ahmedabad city.
select AVG(Person.Salary)
from Person join Dept
on Dept.DepartmentID = Person.DepartmentID
where Person.City =  'Ahmedabad'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
select Person.PersonName + ' ' + 'lives in' +  ' ' + Person.City +  ' ' + 'and works in' +  ' ' + Dept.DepartmentName +  ' ' + 'Department'
from Person join Dept
on Dept.DepartmentID = Person.DepartmentID

---------------------------------------------------------------------------------------------------
--Part – B:

--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In single column)
select concat(Person.PersonName ,' ' , 'earns' , ' ' , Person.Salary , ' ' , 'from' ,  ' ' , Dept.DepartmentName , ' ' , 'department monthly')
from Person join Dept
on Dept.DepartmentID = Person.DepartmentID

--2. Find city & department wise total, average & maximum salaries.
select Person.City , max(Person.Salary) as max_salary, min(Person.Salary) as min_salary , avg(Person.Salary) as avg_salary , sum(Person.Salary) as sum_salary
from Person join Dept
on Dept.DepartmentID = Person.DepartmentID
group by Person.City , Dept.DepartmentName

--3. Find all persons who do not belong to any department.

--4. Find all departments whose total salary is exceeding 100000.


--Part – C:
--1. List all departments who have no person.
--2. List out department names in which more than two persons are working.
--3. Give a 10% increment in the computer department employee’s salary. (Use Update)