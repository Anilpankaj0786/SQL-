-- VIEWS , why we use views , views vs cte , materialized view and non materialized view
use sakila;
create view temp as
(select first_name , count(*) from actor where actor_id > 10
group by first_name order by count(*) desc); 

select * from temp;

create view temp2 as
(select first_name , last_name from actor);

select * from temp2;

-- temporary table
create table factors as(
select actor_id , first_name , last_name from actor where actor_id < 7);

select * from factors;


-- view --> insert , update 
-- view2 --> filter condition (actor_id , first_name) insert , update

create view temp3 as(
select * from actor
);

INSERT INTO temp3 (actor_id, first_name, last_name, last_update)
VALUES (210, 'Sahil', 'Sharma', NOW());

select * from temp3;

select * from actor;   -- changes reflect in original table made in view

alter view temp4 as(
select last_name , first_name from  actor);

select * from temp4;

insert into temp4(last_name , first_name)
values('Raj','Sharma'); 

update temp4
SET first_name = 'Aditi'
WHERE actor_id = 210;

select * from temp4;

select * from actor;

-- temporary table are for the session only.
create view temp5 as(
select actor_id , first_name from actor);

insert into temp5(actor_id , first_name)
values(222,'Elive');

create temporary table xyz as(
select actor_id , first_name , last_name from actor where actor_id < 7);


select * from xyz;

-- view 
-- updatable
-- cte
-- not updatable

-- temporary table
-- act as a normal table it is updatable.


-- difference between cte vs views vs temporary table