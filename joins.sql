-- joins
use class ;

create table product( id int, pname varchar(20),amount int);
insert into product values(10,"laptop", 199), (11, "TV",200), (12,"watch",300);

create table orders( oid int, location varchar(20), productid int);
insert into orders values(888,"jaipur", 10), (889, "pune",11), (890,"himachal",15), (891,"j&k",10);

select * from product;
select * from orders;

-- Inner Join
-- select col, col2 .....from table join table2 conditions

select prod.id, prod.pname, prod. amount, ord.productid , ord.oid, ord.location from product as prod
join orders as ord where prod.id=ord.productid;

Select o.oid,o.location,p.pname from orders as o join product as p 
where o.productid=p.id;

-- Left join
Select o.oid,o.location,o.productid ,p.pname from orders as o left join product as p 
on o.productid=p.id;

select prod.id, prod.pname, prod. amount, ord.productid , ord.oid, ord.location from product as prod
left join orders as ord on prod.id=ord.productid;

use sakila;
select * from film;
select * from film_actor;
select count(film_id),count(distinct film_id) from film_actor;

desc film;
desc film_actor;

Select f.film_id , f.title, f.release_year, fa.actor_id from film as f
join film_actor as fa 
where f.film_id=fa.film_id;

Select f.film_id , f.title, f.release_year, fa.actor_id from film as f
 inner join film_actor as fa 
on f.film_id=fa.film_id;


Select f.film_id , f.title, f.release_year, fa.actor_id from film as f
 inner join film_actor as fa 
using (film_id);



Select a.first_name , count(fa.actor_id) from actor as a
join film_actor as fa 
where a.actor_id=fa.actor_id
group by a.first_name;


select * from film;
select * from film_actor;
select * from actor;

select act.actor_id, act.first_name , factor.film_id,film.title from actor as act 
join film_actor as factor join film
 where act.actor_id=factor.actor_id and factor.film_id=film.film_id;