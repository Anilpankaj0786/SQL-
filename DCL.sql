-- DCL (Data Control Language)
-- authentication and authorization

select * from mysql.user;
create user Anil identified by '0786';
   
   

create database ecommerce;
use ecommerce ;
create table customer (id int , cname varchar(20));
insert into customer values(1,"naina"),(2,"Abhi");
delete from customer where id>2;
select * from customer;

grant all privileges on ecommerce.* to Anil;

grant select on ecommerce.* to Anil;
show grants for Anil;
revoke All  privileges on ecommerce.* from Anil;


-- Assignment 
grant select(cname) on ecommerce.customer to Anil;

create role sales;
create user aditya identified by '123';
create user yash identified by '123';
  
grant sales to yash ;
grant sales to aditya;

grant select,update on ecommerce.customer to sales ;
grant select,insert on ecommerce.customer to sales ;