--1. How many actors are there with the last name ‘Wahlberg’? 
SELECT count(last_name) 
FROM actor
WHERE last_name = 'Wahlberg';
-- 2 actors


--2. How many payments were made between $3.99 and $5.99? 

SELECT customer_id, amount
from payment
WHERE amount BETWEEN 3.99 and 5.99;

-- 0 payments


--3. What film does the store have the most of? (search in inventory) 
SELECT Count(film_id), count(store_id) as store_count, store_id, film_id
from inventory
GROUP by film_id, store_id
ORDER by count(film_id) DESC;

SELECT * FROM film
WHERE film_id = 527;


-- 8 total copies 4 in store 1, 4 in store 2. title "LOLA AGENT"
-- large group of movies with 8 copies each within the 2 stores.








--4. How many customers have the last name ‘William’? 

SELECT first_name, last_name
from customer 
WHERE last_name = 'William';

-- 0 customers


--5. What store employee (get the id) sold the most rentals? 
SELECT count(rental_id), staff_id
FROM rental
GROUP BY staff_id; 

--- staff_id 1 sold the most rentals at 8040







--6. How many different district names are there? 



Select count(DISTINCT district) 
FROM address;

--378 total districts


--7. What film has the most actors in it? (use film_actor table and get film_id) 

SELECT count(actor_id), film_id
FROM film_actor 
GROUP BY film_id 
ORDER BY count(actor_id) DESC;

-- film_id 508 has 15 actors




--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
SELECT count(customer_id), 
FROM customer 
WHERE last_name 
LIKE '%es'
AND store_id = 1



--13 customers with last name ending 'es'



--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
select amount, count(amount)
from payment
WHERE customer_id BETWEEN 380 and 430
group BY amount
HAVING count(amount) > 250;


-- 3

--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?


SELECT count(DISTINCT rating)
FROM film 

-- 5 different ratings


SELECT count(film_id), rating 
FROM film 
GROUP BY rating

-- most movies rated pg-13


