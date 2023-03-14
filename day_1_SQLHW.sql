-- Question 1: How many actors are there with the last name ‘Wahlberg’?
SELECT*
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer 1: 2

-- Question 2: How many payments were made between $3.99 and $5.99?
SELECT COUNT(payment)
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer 2: 5,607

-- Question 3: What films have exactly 7 copies? (search in inventory)
SELECT COUNT(film_id)
FROM inventory
WHERE film_id = 7
-- Answer 3: 5?

-- Question 4: How many customers have the first name ‘Willie’?
SELECT COUNT(first_name)
FROM customer 
WHERE first_name = 'Willie';
-- Answer 4: 2

-- Question 5: What store employee (get the id) sold the most rentals (use the rental table)?
SELECT staff_id
FROM rental
-- Answer 5: 2

-- Question 6: How many unique district names are there?
SELECT COUNT(district)
FROM address
--Answser 6: 603

-- Question 7: What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC
-- Answer 7: 508?

-- Question 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'
-- Answer 8: 13

-- Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT customer_id, count(amount)
FROM payment 
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id 
HAVING COUNT(amount) > 250
-- Answer 9: None?

-- Question 10: Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT rating
FROM film
GROUP BY rating
ORDER BY COUNT(rating)
-- Answer 10: 5, PG-13