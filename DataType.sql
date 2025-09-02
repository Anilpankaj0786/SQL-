-- datatype 
-- int (4byte)
-- tinyint 1 byte (-128,127)
-- smallint (2 byte) 
-- bigint (8 byte)
-- unsigned (for positive number only)

 
-- data types
 use regex1;
 create table yash1(id int unsigned);
 insert into yash1 values(10);
 select * from yash1;
 
 -- tiny int (1 byte)
 -- small int (2 byte)
 -- medium int (3 byte)
 -- big int (2**64)
 
 -- 2. string value ( char , varchar)
 drop table yash1;
 create table yash1(name char(10));
 insert into yash1(name) values('abc');
 insert into yash1 values('abc     ');
 select name , length(name),char_length(name) from yash1;
 
 -- char --> truncate all white spaces at the last upto to the size of columns
 -- length --> gives byte size
 
 -- char --> fixed size character length 
 -- varchar ---> dynamic size --> reuse the remaining memeory later on 


-- 3.date --
drop table yash1;
create table yash1(dob date);
insert into yash1 values(curdate());
insert into yash1 values('2026-01-30');
insert into yash1 values('2020-02-30');

select * from yash1;
insert into yash1 values(now());

create table yash2(dob timestamp);
insert into yash2 values(now());

select * from yash2;

-- timestamp  vs datetime
-- timestamp ---> has a specific range of values --> (4 byte)  
-- datetime ---> storage --> (8 byte)

-- BLOB ---> can store any type of data (image , audio , video , etc) 

-- how to store the image in RDMS system
 
 -- FLOAT 
 create table yash4(salary float);
 insert into yash4 values(10.2);
 insert into yash4 values(20.123456789);
 
 select * from yash4;
 
 create table yash5(salary double(5,2));
 insert into yash5 values(10.2);
 insert into yash5 values(20.123456789);
 
 select * from yash5;
 
 create table t3(salary double(5,2));
 
insert into t3 values(10.2);
insert into t3 values(10.234);
insert into t3 values(103.32);
insert into t3 values(103.5452);
 