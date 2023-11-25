SELECT * FROM customer WHERE first_name = 'Jared';

SELECT COUNT(title) FROM film WHERE rental_rate > 4 
AND replacement_cost >= 19.99 AND rating = 'R';

SELECT COUNT(*) FROM film WHERE rating = 'R' OR rating = 'PG-13'

SELECT * FROM film WHERE rating != 'R';

"CHALLENGES ON WHERE STATEMENT"

SELECT email FROM customer WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT description FROM film WHERE title = 'Outlaw Hanky';

SELECT phone FROM address WHERE address='259 Ipoh Drive';

SELECT * FROM customer ORDER BY first_name DESC;

SELECT store_id, first_name, last_name FROM customer ORDER BY store_id, first_name ASC;

SELECT * FROM payment WHERE amount <> 0.00 ORDER BY payment_date DESC LIMIT 5;

SELECT customer_id FROM payment ORDER BY payment_date ASC LIMIT 10;

SELECT title, length FROM film WHERE length <= 50 ORDER BY length ASC LIMIT 5;

SELECT COUNT (title) length FROM film WHERE length <= 50 ORDER BY length ASC;

SELECT * FROM payment WHERE amount NOT BETWEEN 8 AND 9 LIMIT 10;

SELECT * FROM payment WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';

SELECT * FROM payment WHERE amount IN (0.99, 1.98, 1.99) LIMIT 7;

SELECT * FROM payment WHERE amount NOT IN (0.99, 1.98, 1.99) LIMIT 7;

SELECT * FROM customer WHERE first_name IN('John','Jake','Julie');

SELECT * FROM customer WHERE first_name IN('John','Jake','Julie');

SELECT * FROM customer WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';

SELECT * FROM customer WHERE first_name LIKE '_her%';

SELECT * FROM customer WHERE first_name LIKE 'A%' AND last_name NOT LIKE 'B%' ORDER BY last_name;

Challenge for session 1
SELECT COUNT (*) FROM payment WHERE amount > 5.00;
SELECT COUNT (amount) FROM payment WHERE amount > 5.00;

SELECT COUNT(first_name) FROM actor WHERE first_name LIKE 'P%';

SELECT DISTINCT district FROM address ORDER BY district ASC;

SELECT Count(*) FROM film WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

SELECT COUNT(*) FROM film WHERE title ILIKE '%Truman%';

SELECT MAX(replacement_cost), MIN(replacement_cost) FROM film;

SELECT ROUND(AVG(replacement_cost),2) FROM film;

SELECT SUM(replacement_cost) FROM film;

SELECT customer_id FROM payment GROUP BY customer_id ORDER BY customer_id;

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC;

SELECT customer_id, COUNT(amount) FROM payment GROUP BY customer_id ORDER BY COUNT(amount) ASC;

SELECT customer_id, staff_id, SUM(amount) FROM payment GROUP BY customer_id, staff_id ORDER BY SUM(amount);

SELECT DATE(payment_date), SUM(amount) FROM payment GROUP BY DATE(payment_date) ORDER BY SUM(amount) DESC;

SELECT staff_id, COUNT(amount) FROM payment GROUP BY staff_id ORDER BY COUNT(amount);

SELECT rating, ROUND(AVG(replacement_cost),3) FROM film GROUP BY rating ORDER BY AVG(replacement_cost);

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 5;

SELECT customer_id, SUM(amount) FROM payment WHERE customer_id NOT IN (184, 87, 477) GROUP BY customer_id;

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id HAVING SUM(amount) > 100;

SELECT store_id, COUNT(customer_id) FROM customer GROUP BY store_id HAVING COUNT(customer_id) > 300; 

SELECT customer_id, COUNT(payment_id) FROM payment GROUP BY customer_id HAVING COUNT(payment_id) >= 40;

SELECT customer_id, SUM(amount) FROM payment  WHERE staff_id = 2 GROUP BY customer_id HAVING SUM(amount) > 100;

SELECT customer_id, SUM(amount) FROM payment WHERE staff_id = 2 GROUP BY customer_id HAVING SUM(amount) >= 110;

SELECT COUNT(title) FROM film WHERE title LIKE 'J%';

SELECT first_name, last_name FROM customer WHERE first_name LIKE 'E%' AND address_id < 500 ORDER BY customer_id DESC LIMIT 1;

SELECT COUNT(*) AS num_transaction FROM payment;

SELECT customer_id, SUM(amount) AS total_spent FROM payment GROUP BY customer_id HAVING SUM(amount) > 100;

SELECT payment.payment_id, payment.customer_id, payment.first_name FROM payment INNER JOIN customer ON payment.customer_id = customer.customer_id;

SELECT film.film_id, title, inventory_id, store_id 
FROM film LEFT JOIN inventory 
ON inventory.film_id = film.film_id 
WHERE inventory.film_id IS null;

SELECT email, district FROM address INNER JOIN customer 
ON address.address_id = customer.address_id 
WHERE district= 'California';

SELECT title, first_name, last_name 
FROM film_actor INNER JOIN actor 
ON film_actor.actor_id = actor.actor_id INNER JOIN film 
ON film_actor.film_id = film.film_id 
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';

SHOW ALL

SHOW TIMEZONE;

SELECT NOW();

SELECT TIMEOFDAY();

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;

