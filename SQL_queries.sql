-- Week 5 - Monday Questions



-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT *
FROM actor
WHERE last_name = 'Wahlberg';

-- output: 2


-- 2. How many payments were made between $3.99 and $5.99?

SELECT count(amount)
FROM payment
WHERE amount BETWEEN 3.00 AND 5.99;

-- output: 5,615


-- 3. What film does the store have the most of? (search in inventory)

SELECT count(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY count(film_id) DESC;

-- not getting the correct outputs for this. Shows 8 counts each of 72 film_ids...


-- 4. How many customers have the last name ‘William’?

SELECT *
FROM customer
WHERE last_name = 'William';

-- output: none


-- 5. What store employee (get the id) sold the most rentals?

SELECT staff_id, count(staff_id)
FROM rental
GROUP BY staff_id;

--output: staff_id 1 sold 8,040


-- 6. How many different district names are there?

SELECT count(DISTINCT district)
FROM address;

-- output: 378


-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT count(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY count(actor_id) DESC;

-- output: film_id 508 had 15 actors


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;

-- output: 13 customers


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
-- with ids between 380 and 430? (use group by and having > 250)

SELECT COUNT(amount), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;

--output: 3 payment amounts; 2.99, 4.99, 0.99


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT count(DISTINCT rating)
FROM film;

-- output: 5 distinct ratings

SELECT DISTINCT rating, count(rating)
FROM film
GROUP BY DISTINCT rating;

-- output: pg-13



