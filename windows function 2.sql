-- window function
-- Row number 
use tushar;
select *, row_number () over() from employeesales;
select *, row_number () over(order by department ) from employeesales;
select *, row_number () over(partition by department ) from employeesales;


-- Rank
select *, rank() over(order by saleamount ) from employeesales;
select *, rank() over(partition by department order by saleamount desc ) from employeesales;


-- dense rank
select *, rank() over(partition by department order by saleamount desc ),
dense_rank() over(partition by department order by saleamount desc ) from employeesales;


-- nth salary question 

with datarank as 
(select *,
dense_rank() over (order by saleamount desc) as `ranks` from employeesales)
select * from datarank where ranks=2;



with datarank as 
(select *,
dense_rank() over (partition by department order by saleamount desc) as `ranks` from employeesales)
select * from datarank where ranks=2;


-- lag and lead 

-- lag means aage 
-- lead means piche
 select * , lead (saleamount) over() from employeesales;
 select * , lead (saleamount,2) over() from employeesales;
 
--  lag 
 select * , lag(saleamount) over() from employeesales;
 
 
--  question 
insert into employeesales values (1,'Alice','sales','2025-06-2', 600.00);
select * , lag(saleamount) over(partition by department , employeename),
saleamount- lag(saleamount) over(partition by department , employeename)
 from employeesales;
 
 -- sorted this query
 select * ,
saleamount- lag(saleamount) over(partition by department , employeename order by saledate)
 from employeesales where employeename='Alice';
 
 -- quest check the employee buy a item in a consecutive days 
  select * ,
lead(saledate) over(partition by department , employeename order by saledate) as nextdate
 from employeesales where employeename='Alice' and department = 'sales';


 select * ,
lead(saledate) over(partition by department , employeename order by saledate) as nextdate,
datediff(lead(saledate) over(partition by department , employeename order by saledate),saledate)
 from employeesales where employeename='Alice' and department = 'sales';