--Query to select customers that qualify for a promotional email
SELECT first_name, last_name, email
FROM customer
ORDER BY first_name;

--Query to view the unique movie ratings in the database
SELECT DISTINCT rating 
FROM film;

--Query to view the contact details of a particular customer late of their movie return
SELECT phone, address, district, postal_code 
FROM address
WHERE address = '259 Ipoh Drive';

--Query to show details of the movie; Outlaw Hanky
SELECT title, description, release_year, rating, length
FROM film
WHERE title = 'Outlaw Hanky';

--Query to view movies with film id between 1 and 5
SELECT title, film_id
FROM film
WHERE film_id BETWEEN 1 AND 5;

--Query to view payment transactions greater than $5.00
SELECT * FROM payment
WHERE amount > 5.00
ORDER BY amount ASC; --- this query returns all the transactions with the amount > 5.00 USD

SELECT COUNT(amount) FROM payment
WHERE amount > 5.00; --- this query counts the transactions with the amount > 5.00 USD

--Query to view actors whose names start with 'P'
SELECT * FROM actor
WHERE first_name LIKE 'P%'; --- this query returns the actors whose first names start with 'P'

SELECT COUNT(actor) FROM actor
WHERE first_name LIKE 'P%'; ---  this query counts the actors whose first names start with 'P'

--Query to show unique districts of customers
SELECT DISTINCT district
FROM address
ORDER BY district ASC; --- this query returns the unique districts arranged alphabetically in the table 

SELECT COUNT(DISTINCT district)
FROM address; --- this query counts the unique districts

--Query to show movies with the word 'Truman' in the title
SELECT * FROM film
WHERE title LIKE '%Truman%'; --- this query returns the information on movies having the word 'Truman'

SELECT COUNT(title)
FROM film 
WHERE title LIKE '%Truman%'; --- this query counts the movies having the word 'Truman' in the title

--Query to show R rated movies with a replacement cost between $5.00 and $15.00
SELECT title, rating, replacement_cost
FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5.00 AND 15.00
ORDER BY replacement_cost ASC; --- this query returns the information on R rated movies with replacement cost between 5 and 15 USD

SELECT COUNT(*)
FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5.00 AND 15.00; --- this query counts R rated movies with replacement cost between 5.00 and 15.00 USD

--Query to show customers whose names end with 'er'
SELECT first_name FROM customer
WHERE first_name LIKE '%er';

--Query to show payments that occured between certain dates
SELECT * FROM payment 
WHERE payment_date BETWEEN '2007-02-01' AND '2007-03-01';
