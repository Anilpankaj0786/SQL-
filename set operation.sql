-- Normalization
-- SET opreations --> used to combine 2 or more select statements in SQL 
-- UNION  --> dont consider duplicate values
use sakila;
select * from actor where actor_id between 1 and 3
union
select * from actor where actor_id between 3 and 5;

-- UNION ALL ---> keeps duplicate values also
select * from actor where actor_id between 1 and 3
union all
select * from actor where actor_id between 3 and 5;

-- INTERSECT ---> to get common values in two  
-- EXCEPT ---> to get difference of the values in two select statements
select * from actor where actor_id between 1 and 3
intersect
select * from actor where actor_id between 3 and 5;

select * from actor where actor_id between 1 and 3
except
select * from actor where actor_id between 3 and 5;