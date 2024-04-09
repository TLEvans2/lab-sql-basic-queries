-- Challenge
-- Use the sakila database to do the following tasks:

USE sakila; 

-- Display all available tables in the Sakila database.

SHOW tables; 

-- Retrieve all the data from the tables actor, film and customer.

SELECT * from actor;
SELECT * from film;
SELECT * from customer;

-- 3.1 Titles of all films from the film table

SELECT title from film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT name FROM language as language;

-- 3.3 List of first names of all employees from the staff table

SELECT first_name from staff;

-- Retrieve unique release years.


SELECT DISTINCT release_year From film;

-- 5.1 Determine the number of stores that the company has.

SELECT COUNT(store_id) AS stores
FROM store;
-- 5.2 Determine the number of employees that the company has.

Select * from staff_list ;
SELECT COUNT(name) AS staff
FROM staff_list;

-- 5.3 Determine how many films are available for rent and how many have been rented.

select COUNT(film_id) from inventory;
select COUNT(rental_id) from rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.

select count(distinct last_name) from actor;

-- Retrieve the 10 longest films.
SELECT length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT".

select * from actor 
where first_name = "SCARLETT" ; 

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.


select * from film 
where title LIKE "%ARMAGEDDON%" 
and length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content

select COUNT(title) from film 
where special_features LIKE "%Behind the Scenes%" ;
