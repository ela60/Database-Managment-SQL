
-- 01. Creating a Database Name 'DBMS_COURSE'
-- 02. Creating a Table Name 'STUDENT_FEE'
-- 03. Insert some Values into 'STUDENT_FEE' Table
-- 04. Query for FEES>10000 and TEAM not equals A
-- Reference Slide : Q01.Create & Insert into a Table.png



-- DROP DATABASE
	-- DBMS_COURSE;
    
CREATE DATABASE 
	DBMS_COURSE;

USE 
	DBMS_COURSE;

CREATE TABLE STUDENT_FEE(
	Roll INT,
    Name varchar(60),
    Department varchar(60),
    Fees int,
    Team varchar(60)

);dbms_course

DROP TABLE STUDENT_FEE;

INSERT INTO STUDENT_FEE(Roll,Name,Department,Fees,Team)
VALUES
	(1,"Bikash","CSE",22000,"A"),
    (2,"Josh","CSE",34000,"A"),
    (3,"Kevin","ECE",36000,"C"),
    (4,"Ben","ECE",56000,"D");

SELECT
	*
FROM
	DBMS_COURSE.STUDENT_FEE
WHERE
	(FEES>=10000 and TEAM!='A')
	
	
	SELECT * FROM STUDENT_FEE;
	

