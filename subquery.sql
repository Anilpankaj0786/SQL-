-- subquery 
use world;
select * from city;
select name , population from city where name = "batna";

select name , population from city where population > 183377;

-- subquery 

select name , population from city where population > (select name , population from city where name = "batna");



select district from city where name ="Amsterdam";
select name, district from city where district='Noord-Holland';
-- subquery
select name, district from city where district=(select district from city where name ="Amsterdam");


select * from country;
select name , continent from country where name = 'albania';
select code , name from country where continent=(select name , continent from country where name = 'albania');


select lifeexpectancy from country where name = 'cook islands';
select continent , name from country where lifeexpectancy=(select lifeexpectancy from country where name = 'cook islands');


select code ,continent,gnp,region from country where region <> (select region from country where name ="benin");

select name from country where continent="Europe";

select name, population,continent from country 
where name in (select name from country where continent="Europe");



select lifeexpectancy from country where name = 'Bahamas';
select name,code from country where lifeexpectancy=(select lifeexpectancy from country where name = 'Bahamas');

use sakila;
select amount from payment where payment_id=5;
select payment_id, customer_id,amount from payment where amount=(select amount from payment where payment_id=5);


select amount from payment where payment_id=2 or payment_id=3;
select payment_id, customer_id,amount from payment where amount in (select amount from payment where payment_id=2 or payment_id=3);


select payment_id, customer_id,amount from payment where amount =any (select amount from payment where payment_id=2 or payment_id=3);

select payment_id, customer_id,amount from payment where amount >any (select amount from payment where payment_id=2 or payment_id=3);

select payment_id, customer_id,amount from payment where amount <any (select amount from payment where payment_id=2 or payment_id=3);

select payment_id, customer_id,amount from payment where amount <=any (select amount from payment where payment_id=2 or payment_id=3);

select payment_id, customer_id,amount from payment where amount <all (select amount from payment where payment_id=2 or payment_id=3);

select payment_id, customer_id,amount from payment where amount >all (select amount from payment where payment_id=2 or payment_id=3);



select * from country;

-- Select name,population from country where population >all (Select population from country where continent="north america";

select name, lifeexpectancy from country where continent="Europe";
select code , name from country where lifeexpectancy in (select name, lifeexpectancy from country where continent="Europe");


select continent ,count(*) from country 
where indepyear>any(select indepyear from country where  continent ="Asia")
and continent != "Asia"
group by continent;

