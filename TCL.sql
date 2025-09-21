use regex1;
show tables;
select * from courses;
select @@autocommit;
insert into courses values(777,"abc","science");

select @@autocommit;
set @@autocommit=0;
insert into courses values(778,"abc","science");


/*
Transaction Start ;
-- start transaction keyword 
or
-- autocommit is disable 

dml operation (transaction pending)

transaction stop 
-- commit,rollback 
-- ddl statement 
*/

select @@autocommit;
insert into courses values(900,"kamla","maths");
update courses set coursename="Regex";
select * from courses;

rollback;  --  (it is like undo , if we do any mistake we can undo this )


insert into courses values(900,"kamla","maths");
select * from courses;
commit; -- (it save permanently changes in the our database )
rollback; -- ( if we do not use rollback after commit because it save permanently in the database )

select @@autocommit;
set @@autocommit=1;
start transaction;
insert into courses values(911,"Anil","SSS");
create table anil123(id int); -- (this is a ddl statement it use here because stop the transaction ) and (transaction is saved here) and (just like commit)
select * from courses;


start transaction;
insert into courses values(912,"a","ab");
insert into courses values(913,"b","bd");
update courses set coursename="Regex" where courseid=913;
select * from courses;
rollback; -- (complete undo )

start transaction;
insert into courses values(912,"a","ab");
insert into courses values(913,"b","bd");
savepoint course_insert_ckp; -- (it is like check point )
update courses set coursename="Regex" where courseid=913;
rollback to course_insert_ckp; -- (it is rollback upto savepoint )
select * from courses;
