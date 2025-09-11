use sakila;

select customer.first_name, rental.rental_date, payment.amount from customer
left join rental on customer.customer_id=rental.customer_id
left join payment on rental.rental_id-payment.rental_id;


SELECT film.film_id,film.title,inventory.inventory_id,rental.rental_id FROM film 
LEFT JOIN inventory  ON film.film_id = inventory.film_id
LEFT JOIN rental  ON inventory.inventory_id = rental.inventory_id
ORDER BY film.film_id;

SELECT 
    c.customer_id, 
    c.first_name, 
    s.store_id,
    s.manager_staff_id,
    s.address_id
FROM 
    customer c
CROSS JOIN 
    store s;
    
SELECT a.actor_id,a.first_name,l.language_id, l.name AS language_name
FROM actor a
CROSS JOIN language l;    

