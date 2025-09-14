-- recursive cte
-- is a feature where we cte repeatedly based on a condition untikl the condition is matched used to find out 
-- hierarchical or tree structure . eg --> if employee wants to find out who is his/her boss.alter

with cte as
(select 1 as num)

select * from cte;

with recursive cte as
(
select 1 as num
union
select (num+1) from cte where num < 6
)
select * from cte;

-- factorial of a number using recursive cte
use sakila;
with recursive cte1 as 
(
select 1 as i , 1 as factorial
union
select i+1 , factorial*(i+1) from cte1 where i<6
)
select * from cte1;

-- 
use regex1;
drop table employees;
CREATE TABLE employees(
employee_id int primary key,
emp_name varchar(100), 
manager_id int null
);


INSERT INTO employees (employee_id, emp_name, manager_id) VALUES
(1, 'Alice', NULL),       -- CEO
(2, 'Bob', 1),            -- Reports to Alice
(3, 'Carol', 1),          -- Reports to Alice
(4, 'David', 2),          -- Reports to Bob
(5, 'Eve', 2),            -- Reports to Bob
(6, 'Frank', 3),          -- Reports to Carol
(7, 'Grace', 4);          -- Reports to David

select * from employees;

with recursive cte as
(select employee_id, emp_name, manager_id, 1 as levels
from employees as e where manager_id is null 
union
select etemp.employee_id, etemp.emp_name, etemp.manager_id,(levels+1) from employees AS etemp JOIN cte  where cte.employee_id = etemp.manager_id)
select * from cte;
