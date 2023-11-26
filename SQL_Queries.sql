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

SELECT EXTRACT(YEAR FROM payment_date) AS next_year FROM payment;

SELECT EXTRACT(MONTH FROM payment_date) AS pay_month FROM payment;

SELECT EXTRACT (QUARTER FROM payment_date) AS per_month FROM payment;

SELECT AGE(payment_date) FROM payment;

SELECT TO_CHAR(payment_date, 'dd/MM/YYYY') FROM payment;

SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) FROM payment;

SELECT COUNT(*) FROM payment WHERE EXTRACT(dow FROM payment_date)=1;

SELECT ROUND(rental_rate/replacement_cost,4)*100 AS percent_cost FROM film;

SELECT 0.1 * replacement_cost AS deposit FROM film;

SELECT LENGTH(first_name) FROM customer;

SELECT first_name || '  ' || last_name AS full_name FROM customer;

SELECT upper(first_name) || '  ' || upper(last_name) AS full_name FROM customer;

SELECT LOWER(LEFT(first_name,1)) || 
LOWER(last_name) || '@gmail' AS custom_email FROM customer

SELECT title,rental_rate FROM film 
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

SELECT film_id, title FROM film 
WHERE film_id IN (SELECT inventory.film_id 
				  FROM rental INNER JOIN inventory 
				  ON inventory.inventory_id = rental.inventory_id 
				  WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id;

SELECT first_name, last_name FROM customer AS c 
WHERE NOT EXISTS (SELECT * FROM payment as p 
				  WHERE p.customer_id = c.customer_id AND amount > 11);

SELECT title,length FROM film WHERE length = 117;

SELECT f1.title, f2.title, f1.length FROM film AS f1
INNER JOIN film as f2 ON f1.film_id != f2.film_id AND
f1.length = f2.length

SELECT * FROM cd.bookings;

SELECT * FROM cd.facilities;

SELECT name,membercost FROM cd.facilities;

SELECT name,membercost FROM cd.facilities WHERE membercost > 0;

SELECT facid,name,membercost,monthlymaintenance FROM cd.facilities
WHERE membercost > 0 AND membercost < (monthlymaintenance/50.0);

SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%';

SELECT * FROM cd.facilities WHERE facid IN (1, 5);

SELECT * FROM cd.facilities WHERE facid = 1 OR facid = 5;

SELECT memid,surname,firstname,joindate FROM cd.members 
WHERE joindate >= '2012-09-01';

SELECT DISTINCT surname FROM cd.members ORDER BY surname LIMIT 10;

SELECT MIN(joindate) FROM cd.members;

SELECT * FROM cd.facilities WHERE guestcost >= 10;

SELECT facid, SUM(slots) AS total_slots FROM cd.bookings 
WHERE starttime >= '2012-09-01' AND starttime <= '2012-10-01'
GROUP BY facid ORDER BY SUM(slots);

SELECT facid,SUM(slots) AS total_slots FROM cd.bookings 
GROUP BY facid HAVING SUM(slots) > 1000 ORDER BY facid;

SELECT cd.bookings.starttime, cd.facilities.name FROM cd.facilities
INNER JOIN cd.bookings ON cd.facilities.facid = cd.bookings.facid
WHERE cd.facilities.facid IN (0,1) 
AND cd.bookings.starttime >= '2012-09-21' AND cd.bookings.starttime < '2012-09-22'
ORDER BY cd.bookings.starttime;

SELECT cd.bookings.starttime FROM cd.bookings
INNER JOIN cd.members ON cd.members.memid = cd.bookings.memid
WHERE cd.members.firstname = 'David' AND cd.members.surname = 'Farrell';

CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	create_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP 
)

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
)

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
)

INSERT INTO account(username,password,email,create_on)
VALUES('Jose','password','jose@gmail.com',CURRENT_TIMESTAMP);

INSERT INTO job(job_name)
VALUES('Software Engineer')

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES(1,1,CURRENT_TIMESTAMP)

UPDATE account SET last_login = CURRENT_TIMESTAMP;

UPDATE account SET last_login = create_on;

UPDATE account_job SET hire_date = account.create_on 
FROM account WHERE account_job.user_id = account.user_id;

UPDATE account SET last_login = CURRENT_TIMESTAMP
RETURNING email,create_on,last_login;

DELETE FROM job WHERE job_name = 'Killer'
RETURNING job_id,job_name

CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)

ALTER TABLE information RENAME TO new_info

ALTER TABLE new_info RENAME COLUMN person TO people;

ALTER TABLE new_info ALTER COLUMN people DROP NOT NULL;

ALTER TABLE new_info ALTER COLUMN people SET NOT NULL;

INSERT INTO new_info(title) VALUES('some new title');

ALTER TABLE new_info DROP COLUMN people;

ALTER TABLE new_info DROP COLUMN IF EXISTS people;

CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1900-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
	salary INTEGER CHECK (salary > 0)
)

INSERT INTO employees(first_name,last_name,
					  birthdate,hire_date,salary)
VALUES('Innocent','Charles','1990-11-03','2010-01-01',100000000)

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	homeroom_number integer,
	phone VARCHAR(20) UNIQUE NOT NULL,
	email VARCHAR(115) UNIQUE,
	grad_year integer
);

CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	homeroom_number integer,
	department VARCHAR(45),
	email VARCHAR(20) UNIQUE,
	phone VARCHAR(20) UNIQUE
)

INSERT INTO students(first_name,last_name,
					 homeroom_number,phone,grad_year)
VALUES('Mark','Udo',5,'08163093928',2035)

INSERT INTO teachers(first_name,last_name,
					 homeroom_number,department,email,phone)
VALUES('Innocent','Udo',9,'Software','udo@zenbyzenith','08163093928')

SELECT customer_id, CASE
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class
FROM customer;

SELECT customer_id, 
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS raffle_results
FROM customer
