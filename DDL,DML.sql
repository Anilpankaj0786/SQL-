table creation (ddl,dml);
use regex1;
create table StudentAccess (id int ,sname varchar(10));
insert into StudentAccess values (1,'abc');
insert into StudentAccess (id , sname) values (2,'abc');
 
 
 -- problem 
 insert into StudentAccess values (20);
 
 
-- solution 
 insert into StudentAccess (id ) values (20);
 insert into StudentAccess (sname) values ('yash');
 
 select * from StudentAccess;
 
 drop table StudentAccess; -- DDL
 create table StudentAccess (id int ,sname varchar(10));
  insert into StudentAccess (id ) values (20);
  insert into StudentAccess (sname) values ('yash');
  
  -- DML (update)
  -- all row are affected 
  update StudentAccess set sname ='raj';
  
  -- 1 row update with where clause 
   update StudentAccess set sname ='Anil'  where id = 20;
   
   
  -- Delete (DML)
    drop table StudentAccess; -- DDL
    
 create table StudentAccess (id int ,sname varchar(10));
 insert into StudentAccess (id , sname) values (21,'anil');
 insert into StudentAccess (id , sname) values (23,'aman');
  select * from StudentAccess;
 
  -- all row are affected 
 delete from studentaccess;
 
  -- 1 row update with where clause 
 delete from studentaccess where id between 20 and 22 ;
 
 
 create table test18(id tinyint);
 insert into test18 values (10);
 insert into test18 values (-128);
 
insert into test18 values (-129); -- size is smaller ,  1 byte  2^8 = 256 (-128 to 127)

  create table test19(id tinyint unsigned); --  all number positive (255)
 insert into test19 values (10);
 insert into test19 values (-128);
 
 -- small int , medium int , int , big int 
 
 
 
 
 
