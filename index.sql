USE TUSHAR;
create table test(id int, name varchar (20));
insert into test values(10,"abc"),(11,"def"),(15,"ghi"),(18,"ujjwal"),(14,"piyush");
 explain select * from test where id = 15;
 
 CREATE INDEX TEST_INDEX 
 ON TEST (NAME);
 SELECT * FROM TEST;
 SHOW INDEX FROM TEST;
