
START A SET  START 



CREATE DATABASE university;

	CREATE TABLE TABLE1(
	Roll VARCHAR(5) PRIMARY KEY,
    Name varchar(60),
    Department VARCHAR(20),
    Balance DECIMAL(8,2),
    Grade VARCHAR(10)
    );
    
   CREATE TABLE Atention(
	Roll VARCHAR(5) PRIMARY KEY,
    Name varchar(60),
    Department VARCHAR(20),
    Balance DECIMAL(8,2),
    Grade VARCHAR(10),
    Grade_point DECIMAL(3,2)
    );
    
    DESCRIBE Atention;
    
    
DESCRIBE  table1;

alter table Table1 rename to Faculty;

INSERT INTO faculty values ('10101','Bikash','CSE','220.25','A'),
     ('10201','Josh','ICE','340.70','B+'),
     ('10301','Kevin','EEE','360.00','B-'),
     ('10401','Ben','ICE','560.16','C'),
     ('10102','Karim','CSE','255.98','B');
     

SELECT * FROM faculty;

select Name,Roll
from faculty
where Name LIKE "B%";

select Name, Roll
from faculty
where Balance<300;

 START FROM 2 NO question 
 
 
 
 
create table CSE(
     Roll varchar(5),
     HomeDistrict varchar(15),
     primary key(Roll));
     
  INSERT INTO cse values
    ('10101','Rajshahi'),
    ('10102','Khulna'),
    ('10201','Dhaka'),
    ('10301','Rajshahi'),
    ('10401','Bogra');
    
select faculty.Name, cse.HomeDistrict
from faculty right join cse
on faculty.Roll = cse.Roll
where faculty.Department = "CSE";

SELECT * FROM cse;


SET B

create table table1(
    Roll varchar(5),
    Name varchar(15),
    Department varchar(5),
    Balance decimal(8,2),
    Grade varchar(2),
    primary key(Roll));
    
    create table table1(
    Roll varchar(5),
    Name varchar(15),
    Department varchar(5),
    Balance decimal(8,2),
    Grade varchar(2),
    primary key(Roll));
    
    
 DESCRIBE TABLE1;
 
 insert into table1 values
    ('10101','Bikash','CSE','220.25','A'),
    ('10201','Josh','ICE','340.70','B+'),
    ('10301','Kevin','EEE','360.00','B-'),
    ('10401','Ben','ICE','560.16','C'),
    ('10102','Karim','CSE','255.98','B');
    
   
    
    insert into faculty values
    ('10122','Alex','CSE','220.25','A','3.4'),
	 ('22122','Marta','CE','220.99','B','2.90');

SELECT * FROM TABLE1;
SELECT * FROM faculty;
SELECT * FROM Atention;


alter table table1 rename to engineering;

SELECT * FROM engineering;

select department, sum(Balance)
from Engineering
group by Department;


update Engineering 
SET balance=balance+balance*10/100
where department != "CSE";


2 NO START

create table Account (
    Account_no varchar(5),
    Balance decimal(8,2),
    primary key(Account_no));
    
DESCRIBE ACCOUNT;

insert into Account values
    ('10101','220.25'),
    ('10201','340.70'),
    ('10301','360.00'),
    ('10401','560.16'),
    ('10102','255.98');
    
Select * FROM ACCOUNT;


SELECT Balance
FROM Account f
WHERE 1=(SELECT COUNT(DISTINCT Balance) 
         FROM Account p
         WHERE f.Balance<=p.Balance) 
      


// DBMS

CREATE DATABASE ACTION;

CREATE TABLE Persons(
ID INT PRIMARY KEY,
F_Name VARCHAR(20),
L_Name VARCHAR(20),
Address VARCHAR(100),
City VARCHAR(100)
);



DESCRIBE Persons;
DESCRIBE Customer;

ALTER TABLE student ADD PRIMARY KEY (Roll);

ALTER TABLE Persons RENAME pereson;
ALTER TABLE pereson RENAME Person;

ALTER TABLE Person ADD Email VARCHAR(1000);
ALTER TABLE Person ADD Age INT AFTER L_Name;
ALTER TABLE person DROP  column F_Name;
ALTER TABLE person DROP  column L_Name;
ALTER TABLE person DROP  column P_Name;

ALTER TABLE Person ADD P_Name VARCHAR(50) AFTER ID;

ALTER TABLE student DROP PRIMARY KEY 
ALTER TABLE student ADD PRIMARY KEY (Roll);

DESCRIBE person;
DROP TABLE People;
DROP DATABASE Persons;

INSERT INTO person VALUES (0001,'Cardinal',25,'P t-25 blue rode','Dhaka','Asdf@gmail.com');
INSERT INTO person VALUES (3003,'Hima',29,'P t-trank rode','Balil','k865tyf@gmail.com'),
								  (4004,'Lilam',22,'Asdf rode','Mali','k8dszfyf@gmail.com'),
								  (3005,'Alfred',27,'Boikali','khulna','k76f@gmail.com'),
								  (2007,'hardilam',33,'Silton Rode','Singapure','k8ty@mail.com');
								  
								  
INSERT INTO Customer VALUES (40014,'Lilam','SE',900,'Dhaka');

SELECT * FROM customer;
SELECT * FROM person;
SELECT * FROM Student;

SELECT P_name, Age,City FROM person;
SELECT * FROM person WHERE City="Khulna";
SELECT DISTINCT City from person;

SELECT count(ID), City FROM person  
GROUP BY City;

SELECT ID,P_Name, City FROM person  
GROUP BY City;

SELECT ID, City FROM person 
GROUP BY City HAVING COUNT(ID)=2;




UPDATE person
SET ID=1001 WHERE ID=0001;

UPDATE person
SET P_Name ="Siam" WHERE ID=2002;

UPDATE customer 
SET ID=4014 WHERE ID=40014;

DELETE FROM person
WHERE Age>=30;




AND OR LIKE NOT CONDITION
SELECT * FROM person;

SELECT * FROM person WHERE Age>=22 AND City="Balil";
SELECT * FROM person WHERE Age>=25 Or City="Balil";
SELECT * FROM person WHERE  City!="Balil";
SELECT * FROM person WHERE  NOT City="Dhaka";


SELECT * FROM person WHERE City LIKE 'Ba%';
SELECT * FROM person WHERE City LIKE '_a%';
SELECT * FROM person WHERE City LIKE '%D%';
SELECT * FROM person WHERE City LIKE '_a%';
SELECT * FROM person WHERE City LIKE 'B%l';



SELECT * FROM customer;
SELECT * FROM person;
SELECT * FROM student;




Self JOIN CROSS self  MAX MIN UNION

SELECT * FROM customer;
SELECT * FROM person;
SELECT * FROM student;


SELECT customer.Name, person.City 
FROM customer 
CROSS JOIN person;

SELECT customer.Name AS CSN1 , person.P_Name AS CSN2, customer.City
FROM customer, person
WHERE customer.City= person.City;


SELECT NAME, MAX(Salary) FROM customer;
SELECT  MAX(Salary) AS Maximum_Salary FROM customer;

SELECT NAME, MIN(Salary) FROM customer;
SELECT NAME, Min(Salary) AS Minimum_Salary FROM customer;



SELECT  City FROM customer UNION SELECT City FROM person;
SELECT Name FROM customer UNION SELECT P_Name FROM person;


AGGREGATE FUNCTION ( AVG, SUM, MIN , MAX)


SELECT SUM(Salary) FROM customer;
SELECT AVG(Salary) AS Avarage_Salary FROM customer;
SELECT MAX(Salary) AS Maximum_Salary FROM customer;
SELECT MIN(Salary) AS Minimum_Salary FROM customer;
SELECT * from Customer where Salary=(select Max(Salary) from customer);




advance 


SELECT max(salary)
FROM Customer
WHERE salary < (SELECT max(salary) FROM Customer);

select *from Customer 
group by Salary 
order by  Salary desc limit 1,1;


SELECT Name, MAX(salary) AS salary 
FROM Customer 
WHERE salary <> (SELECT MAX(salary) 
FROM customer);


SELECT max(salary)
FROM Customer
WHERE salary < (SELECT max(salary)
                FROM Customer);
                
                
SELECT Salary
FROM Customer
ORDER BY Salary DESC LIMIT 1;



triger

ALTER TABLE faculty ADD Grade_point DECIMAL(3,2);

 CREATE TABLE Atention(
	Roll VARCHAR(5) PRIMARY KEY,
    Name varchar(60),
    Department VARCHAR(20),
    Balance DECIMAL(8,2),
    Grade VARCHAR(10),
    Grade_point DECIMAL(3,2)
    );
    
SELECT * FROM faculty;


DELIMITER //

CREATE TRIGGER new 
BEFORE INSERT ON faculty 
FOR EACH ROW 
if new.Grade_point < 3 THEN insert INTO Atention 
VALUES (new.Roll,new.Name,new.Department, new.Balance,new.Grade,new.Grade_point); 
end if;
END//
DELIMITER;

SELECT * FROM faculty;
SELECT * FROM atention;

SHOW TRIGGERS;
DROP TRIGGER trigername;
DROP TRIGGER After_DE_eng;
DROP TRIGGER before_up_eng;
DROP TRIGGER after_DE_on_eng;

SELECT * FROM engineering;

DELIMITER //
CREATE TRIGGER after_DE_on_eng 
AFTER DELETE ON
engineering FOR EACH ROW
BEGIN

INSERT INTO Eng_backup VALUES
   (OLD.Roll, OLD.Name, OLD.Department, OLD.Balance,OLD.Grade);
END//
DELIMITER;


DELETE FROM Engineering WHERE Roll=10401;

  insert into engineering values
    ('10553','Alice','CSE','220.25','B+'),('44333','Zamil','CSE','220.25','B');

 create table Eng_backup(
    Roll varchar(5),
    Name varchar(15),
    Department varchar(5),
    Balance decimal(8,2),
    Grade varchar(2),
    primary key(Roll));
    
    SELECT * FROM engineering;
    SELECT * FROM eng_backup;
    




