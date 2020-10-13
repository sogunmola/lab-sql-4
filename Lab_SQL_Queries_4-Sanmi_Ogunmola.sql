USE sakila;

/* 1) Get film ratings.
*/
SELECT distinct rating FROM film;

/* 2) Get release years
*/
SELECT distinct release_year FROM film;

/* 3)Get all films with ARMAGEDDON in the title. 
*/
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%';

/* 4) Get all films with APOLLO in the title 
*/
SELECT * FROM film
WHERE title LIKE '%APOLLO%';

/* 5) Get all films which title ends with APOLLO
*/
SELECT * FROM film
WHERE title LIKE '%APOLLO';

/* 6) Get all films with word DATE in the title.
*/
SELECT * FROM film
WHERE title LIKE '% DATE' OR title LIKE 'DATE %';

/* 7) Get 10 films with the longest title.
*/
SELECT *, LENGTH(title) AS 'title length' FROM film
ORDER BY LENGTH(title) DESC
LIMIT 10;

/* 8) Get 10 the longest films.
*/
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

/* 9) How many films include Behind the Scenes content?
*/
SELECT COUNT(special_features) FROM film
WHERE special_features REGEXP 'Behind the Scenes';

/* 10) List films ordered by release year and title in alphabetical order.
*/
SELECT release_year, title FROM film
ORDER BY release_year, title;