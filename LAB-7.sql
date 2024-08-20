CREATE TABLE EMP(
EID INT,
ENAME VARCHAR(10),
DEPARTMENT VARCHAR(5),
SALARY INT,
JoiningDate DATETIME,
CITY VARCHAR(20)
);

INSERT INTO EMP VALUES(101,'Rahul','Admin',56000,'1-JAN-90','Rajkot')
INSERT INTO EMP VALUES(102,'Hardik','IT',18000,'25-SEP-90','Ahmedabad')
INSERT INTO EMP VALUES(103,'Bhavin','HR',25000,'14-MAY-91','Baroda')
INSERT INTO EMP VALUES(104,'Bhoomi','Admin',39000,'8-FEB-91','Rajkot')
INSERT INTO EMP VALUES(105,'Rohit','IT',17000,'23-JUL-20','Jamnagar')
INSERT INTO EMP VALUES(106,'Priya','IT',9000,'18-Oct-90','Ahmedabad')
INSERT INTO EMP VALUES(107,'Bhoomi','HR',34000,'25-DEC-91','RAjkot')

SELECT * FROM EMP;


--PART-A:

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS [MAX], MIN(SALARY) AS [MIN] FROM EMP

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
SELECT SUM(SALARY) AS Total_Sal , AVG(SALARY) AS Average_Sal FROM EMP

--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(ENAME) AS TOTAL_EMP FROM EMP

--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS Highest_In_Rajkot FROM EMP WHERE CITY = 'Rajkot'

--5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS Highest_In_IT FROM EMP WHERE DEPARTMENT = 'IT'

--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(ENAME) AS EMPS FROM EMP WHERE JoiningDate > '8-FEB-91'

--7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVG_SALARY_IN_ADMIN FROM EMP WHERE DEPARTMENT = 'Admin'

--8. Display total salary of HR department.
SELECT SUM(SALARY) AS HR_SALARY FROM EMP WHERE DEPARTMENT = 'HR'

--9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) FROM EMP 

--10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) FROM EMP 

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) AS MIN_SALARY_OF_AMD_EMP FROM EMP WHERE CITY = 'Ahmedabad'

--12. Find city wise highest salary.
SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMP GROUP BY CITY

--13. Find department wise lowest salary.
SELECT MAX(SALARY) AS HIGHEST_SALARY FROM EMP GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city.
SELECT CITY , COUNT(ENAME) FROM EMP GROUP BY CITY

--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT , COUNT(ENAME) FROM EMP GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department
--name.
SELECT DISTINCT(AVG(SALARY)) AS DST FROM EMP GROUP BY DEPARTMENT
SELECT AVG(DISTINCT(SALARY)) AS SM FROM EMP GROUP BY DEPARTMENT


--Part – B: 

--1. Count the number of employees living in Rajkot. 
SELECT COUNT(ENAME) FROM EMP WHERE CITY = 'Rajkot'

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE. 
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENC FROM EMP 

--3. Display the total number of employees hired before 1st January, 1991.
SELECT COUNT(ENAME) AS EMPS FROM EMP WHERE JoiningDate < '1-Jan-91'

--Part – C: 
--1. Count the number of employees living in Rajkot or Baroda. 
--2. Display the total number of employees hired before 1st January, 1991 in IT department. 
--3. Find the Joining Date wise Total Salaries. 
--4. Find the Maximum salary department & city wise in which city name starts with ‘R’. 


