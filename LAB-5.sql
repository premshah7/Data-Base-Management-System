CREATE TABLE STUDENT2(
STUID INT,
FIRSTNAME VARCHAR(25),
LASTNAME VARCHAR(25),
WEBSITE VARCHAR(50),
CITY VARCHAR(25),
ADDRESS VARCHAR(100)
);

select * from student2

INSERT INTO STUDENT2 VALUES(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303 ''Vasant Kunj'', Rajkot')
INSERT INTO STUDENT2 VALUES(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram Krupa", Raiya Road')
INSERT INTO STUDENT2 VALUES(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden')
INSERT INTO STUDENT2 VALUES(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad',' "Jig''s Home", Narol ')
INSERT INTO STUDENT2 VALUES(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55, Raj Residency')
INSERT INTO STUDENT2 VALUES(1066,'Ashok','Jani',NULL,'Baroda','A502, Club House Building')
DELETE FROM STUDENT2 WHERE STUID = 1044;

--PART A
--1. Display the name of students whose name starts with ‘k’.
SELECT FIRSTNAME FROM STUDENT2 WHERE FIRSTNAME LIKE 'K%'

--2. Display the name of students whose name consists of five characters.
SELECT FIRSTNAME FROM STUDENT2 WHERE FIRSTNAME LIKE '_'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
SELECT FIRSTNAME,LASTNAME FROM STUDENT2 WHERE CITY LIKE'_A'

--4. Display all the students whose last name ends with ‘tel’.
SELECT * FROM STUDENT2 WHERE LASTNAME LIKE '%TEL'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
SELECT * FROM STUDENT2 WHERE FIRSTNAME LIKE'HA%T'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
SELECT * FROM STUDENT2 WHERE FIRSTNAME LIKE 'K_Y%'

--7. Display the name of students having no website and name consists of five characters.
SELECT FIRSTNAME FROM STUDENT2 WHERE WEBSITE IS NULL AND FIRSTNAME LIKE'_'

--8. Display all the students whose last name consist of ‘jer’. 
SELECT * FROM STUDENT2 WHERE LASTNAME LIKE '%JER'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
SELECT * FROM STUDENT2 WHERE CITY LIKE '[RB]%'

--10. Display all the name students having websites.
SELECT FIRSTNAME FROM STUDENT2 WHERE WEBSITE IS NOT NULL;

--11. Display all the students whose name starts from alphabet A to H.
SELECT * FROM STUDENT2 WHERE FIRSTNAME LIKE '[A-H]%'

--12. Display all the students whose name’s second character is vowel.
SELECT * FROM STUDENT2 WHERE FIRSTNAME LIKE '_[AEIOU]%'

--13. Display the name of students having no website and name consists of minimum five characters.
SELECT FIRSTNAME FROM STUDENT2 WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_%'

--14. Display all the students whose last name starts with ‘Pat’. 
SELECT * FROM STUDENT2 WHERE LASTNAME LIKE 'PAT%'

--15. Display all the students whose city name does not starts with ‘b
SELECT FIRSTNAME,CITY FROM STUDENT2 WHERE CITY NOT LIKE 'B%'



--Part – B:
--1. Display all the students whose name starts from alphabet A or H.
SELECT * FROM STUDENT2 WHERE FIRSTNAME LIKE '[AH]%'

--2. Display all the students whose name’s second character is vowel and of and start with H.
SELECT * FROM  STUDENT2 WHERE FIRSTNAME LIKE 'H[AEIOU]%'

--3. Display all the students whose last name does not ends with ‘a’.
SELECT LASTNAME FROM STUDENT2 WHERE LASTNAME NOT LIKE'%A'

--4. Display all the students whose first name starts with consonant.
SELECT * FROM STUDENT2 WHERE FIRSTNAME NOT LIKE '[AEIOU]%'

--5. Display all the students whose website contains .net
SELECT * FROM STUDENT2 WHERE WEBSITE LIKE '%.COM%'



--PARTC
--1. Display all the students whose address consist of -.
SELECT * FROM STUDENT2 WHERE ADDRESS LIKE '%-%'

--2. Display all the students whose address contains single quote or double quote.
SELECT * FROM STUDENT2 WHERE ADDRESS LIKE '%[''''""]%'

--3. Display all the students whose website contains @.
SELECT * FROM STUDENT2 WHERE WEBSITE LIKE '%@%'

--4. Display all the names those are either four or five characters.
SELECT FIRSTNAME FROM STUDENT2 WHERE  FIRSTNAME LIKE '' OR FIRSTNAME LIKE '_'


--AGAR ADDRESS MA % FIND KARVU HOI TOH 
SELECT * FROM STUDENT2 WHERE ADDRESS LIKE '%[%]%'
SELECT * FROM STUDENT2 WHERE ADDRESS LIKE '%/%%'ESCAPE '/'