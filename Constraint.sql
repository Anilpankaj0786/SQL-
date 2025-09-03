-- Constraint
use regex1;
 create table test1(id int,salary int not null);
 insert into test1 values (10,900);
 -- insert into test1 values (1,null); ---- error 
 insert into test1 values (null,500);
 
--  Default 
  create table test2(id int default 0 ,salary int not null);
  insert into test2 values (10,900);
 insert into test2(salary) values (1800);
 
 -- Unique 
   create table test3(id int ,salary int default 100 unique);
  insert into test3 values (10,900);
--  insert into test3(salary) values (11,900); -- error here 
 insert into test3(id) values (1000); 
 --  insert into test3(id) values (1000); 
 
select * from test3;
 
 -- primary  
   create table test4(id int primary key ,salary int);
  insert into test4 values (10,900);
--  insert into test4(salary) values (10,599); -- error here 
 --  insert into test3(id) values (null); -- error 
 
 -- foreign key
 create table courses1(course_id int primary key , cname varchar (20));
 insert into courses1 values(10,'DSA'),(11,'python');
 select * from courses1;
 -- creating foreign key here 
  create table studentinfo (sid int primary key ,sname varchar(20),
  courseid int ,
  foreign key (courseid) references courses1(course_id));
  insert into studentinfo values (1,'anil',10);
  insert into studentinfo values (2,'aman',11);
 --  insert into studentinfo values (3,'yash',12); ---> eror here 
 
 
 -- multiple column primary key 
 CREATE TABLE anil (
    Column1 int NOT NULL,
    Column2 int NOT NULL,
    AnotherColumn varchar(20),
    PRIMARY KEY (Column1, Column2)
);
select * from anil;


 
 
  
  