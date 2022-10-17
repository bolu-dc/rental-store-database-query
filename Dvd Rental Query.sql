/* IN Operator (used as a shorthand for OR operator): know the rental ID of customer 1 & 2 and the date they returned*/

SELECT * FROM rental; 

SELECT customer_id, rental_id, return_date 
FROM rental
WHERE customer_id IN (1,2)
ORDER BY return_date ASC;

/* CHALLENGE */
SELECT * FROM payment
WHERE amount IN (7.99, 8.99)
ORDER BY payment_id ASC;

/* NOT IN operator (shorthand for neither or) */
SELECT customer_id, rental_id, return_date 
FROM rental
WHERE customer_id NOT IN (1,2)
ORDER BY customer_id ASC;

/* Agrregate Functions */
SELECT * FROM payment;

/* To get the sum of the amount */
SELECT SUM (amount) FROM payment;

/* To get the number of transactions that occured */
SELECT COUNT (payment_id) FROM payment; 

/* To get the average amount */
SELECT AVG (amount) FROM payment;

/* To get the minimum amount */
SELECT MIN (amount) FROM payment;

/* To get the maximum amount */
SELECT MAX (amount) FROM payment;

/* Using GROUP BY function: Total amount spent by each customer */
SELECT customer_id, SUM (amount) 
FROM payment GROUP BY customer_id
ORDER BY SUM (amount) DESC;

/* CHALLENGE */
SELECT * FROM payment;

SELECT staff_id, SUM (amount), COUNT (payment_id) 
FROM payment GROUP BY staff_id
ORDER BY SUM (amount) DESC;

SELECT * FROM film;

SELECT rating, AVG (replacement_cost) 
FROM film GROUP BY rating
ORDER BY AVG (replacement_cost) ASC;

/* HAVING operator */
SELECT customer_id, SUM (amount) 
FROM payment GROUP BY customer_id
HAVING SUM (amount) > 100
ORDER BY SUM (amount) DESC; 

/* CHALLENGE */
SELECT * FROM payment;

SELECT customer_id, COUNT (payment_id) 
as number_of_transactions
FROM payment GROUP BY customer_id
HAVING COUNT (payment_id) >= 40
ORDER BY COUNT (payment_id) ASC;

--- CREATE A NEW DATABASE CALLED JOINS ----
CREATE DATABASE Joins;

--- WMDI VIDEOS ----
-- SELECT Statement 
SELECT * FROM actor;

SELECT * FROM address;

SELECT * FROM film;

SELECT title, description, release_year, rating 
FROM film;

SELECT first_name, last_name
FROM actor;

SELECT address, district, postal_code
FROM address;

-- SELECT DISTINCT; used to return unique details
SELECT DISTINCT rating
FROM film; --this returns only the unique ratings and not all 

SELECT rating FROM film; --this returns all the ratings as arranged on the table 

SELECT DISTINCT replacement_cost
FROM film;

SELECT * FROM payment;

SELECT DISTINCT amount
FROM payment;

-- SELECT WHERE Statement; used to filter your query based on a condition
SELECT * FROM actor;

SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id = 105;

SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id IN (1, 10, 25, 108, 200); --returns all the actors which has the ids listed in the bracket

SELECT * FROM film;

SELECT title, release_year, description, length, rating
FROM film
WHERE rating = 'R';

SELECT title, release_year, description, length, rating
FROM film
WHERE length <= 50;

--- SELECT COUNT Statement
SELECT COUNT(*) FROM film;

SELECT COUNT(*) FROM customer;

SELECT COUNT(*)
FROM film
WHERE rating = 'R'; --counts all the R rated movies

---- LIMIT Statement
SELECT * FROM rental;

SELECT * FROM rental
LIMIT 10; --returns the first 10 values on the table

