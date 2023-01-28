

-- 1. How many actors are there with the last name ‘Wahlberg’? 
select count(last_name)
from actor
where last_name like 'Wahlberg';


-- 2. How many payments were made between $3.99 and $5.99? 
select count(amount)
from payment 
where amount < 5.99 and amount > 3.99;


-- 3. What film does the store have the most of? (search in inventory) 
select film_id, count(inventory_id)
from inventory
group by film_id
order by count(inventory_id) desc;



-- 4. How many customers have the last name ‘William’? 
-- Returns an error because there are no "William" last names
select last_name
from customer 
where last_name like "William";

-- 5. What store employee (get the id) sold the most rentals?
 select * from rental;

select staff_id, count(staff_id)
from rental
group by staff_id
order by count(staff_id) desc;


-- 6. How many different district names are there? 
select count(district)
from address


-- 7. What film has the most actors in it? (use film_actor table and get film_id) 
select film_id, count(actor_id)
from film_actor
group by film_id 
order by count(actor_id) desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
select count(last_name)
from customer
where last_name like '%es'
group by store_id 
order by store_id asc;


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  
-- with ids between 380 and 430? (use group by and having > 250) 

select count(payment_id), amount
from payment 
where customer_id > 380 and customer_id < 430
group by amount
having count(rental_id) > 250
order by amount desc;


-- 10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
select rating, count(rating)
from film
group by rating 
order by count(rating) desc;

