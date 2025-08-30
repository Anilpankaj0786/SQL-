create database Operators 
use Operators;
CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);
INSERT INTO Person (PersonID, FirstName, LastName, Age, Gender, Email, PhoneNumber)
VALUES
(1, 'Anil', 'Pankaj', 22, 'Male', 'anilpankaj@example.com', '9876543210'),
(2, 'Riya', 'Sharma', 23, 'Female', 'riyasharma@example.com', '9876501234'),
(3, 'Aman', 'Verma', 21, 'Male', 'amanverma@example.com', '9876000000'),
(4, 'Sneha', 'Mishra', 24, 'Female', 'snehamishra@example.com', '9876112233');
select* from Person;

-- Arithematic Operator
SELECT FirstName, Age, Age + 1 AS AgeNextYear FROM Person;
SELECT FirstName, Age, Age - 2 AS AgeTwoYearsAgo FROM Person;
SELECT FirstName, Age, Age * 2 AS DoubleAge FROM Person;
SELECT FirstName, Age, Age / 2.0 AS HalfAge FROM Person;
SELECT FirstName, Age, Age % 2 AS AgeMod2 FROM Person;

-- Comparison Operators
SELECT * FROM Person WHERE Age = 22;
SELECT * FROM Person WHERE Gender != 'Male';
SELECT * FROM Person WHERE Age > 22;

 -- Logical Operators
SELECT * FROM Person WHERE Age > 21 AND Gender = 'Male';
SELECT * FROM Person WHERE Age < 22 OR Gender = 'Female';

 -- BETWEEN, LIKE,
 SELECT * FROM Person WHERE Age BETWEEN 21 AND 23;
 SELECT * FROM Person WHERE Email LIKE '%@example.com';
 
 -- in and is null
 SELECT * FROM Person WHERE FirstName IN ('Anil', 'Riya');
 SELECT * FROM Person WHERE PhoneNumber IS NULL;


SELECT concat(FirstName,' ',LastName As Full_Name FROM Person :

-- use class;

-- use operators;

-- select * from student;

-- select firtst_name,age from student;


-- + - * / // % **

-- select 12*2 as result1;


-- id name salary designation 

-- create table employees1 (id int, name varchar(20),salary integer,designation varchar(30));
-- insert into employees1 values(1,'rohit',50000,'manager');

-- insert into employees1 values(2,'prince',90000,'senior Dev')
-- ,(3,'mohit',50000,'sales manager'),(4,'hardik',89999,'HR');
 -- insert into employees1(id,name,designation) values(12,'shekhar','Trainer');
-- select * from employees1;

-- select name from employees1 where id = 12;

-- select name from employees1 where salary <> 50000;

-- logical operator and or not
-- select * from employees1;

-- select name,salary from employees1 where salary>50000 and salary <90000;
-- filter the emp name whose joining is between year 2023 and 2024
-- filter the emp name whose designation is not HR
-- filter the emp whose designation is Manager or TRainer;
