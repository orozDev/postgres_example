-- !Employee Table

SELECT * FROM employee;

SELECT * FROM employee ORDER BY first_name, last_name DESC; -- from max to min
SELECT * FROM employee ORDER BY first_name, last_name ASC;  -- from min to max
SELECT * FROM employee ORDER BY country ASC;

SELECT DISTINCT country FROM employee; 

SELECT * FROM employee WHERE gender = 'Female'; 
SELECT * FROM employee WHERE gender = 'Female' AND country = 'Russia';
SELECT * FROM employee WHERE gender = 'Female' AND (country = 'Russia' OR country = 'Poland');

SELECT * FROM employee LIMIT 20;
SELECT * FROM employee OFFSET 40 LIMIT 20;
SELECT * FROM employee OFFSET 2 * 20 LIMIT 20;
SELECT * FROM employee OFFSET 2 * 20 FETCH FIRST 20 ROW ONLY;

SELECT * FROM employee WHERE country IN ('Russia', 'Poland');
SELECT * FROM employee WHERE date_of_birth BETWEEN '2000-01-01' AND '2024-01-10';
SELECT * FROM employee WHERE email LIKE '%.com';
SELECT * FROM employee WHERE email RLIKE 'pet';
SELECT * FROM employee WHERE country ILIKE 'r%'; -- Ignore letter case 

SELECT country, COUNT(*) FROM employee GROUP BY country; 
SELECT country, COUNT(*) FROM employee GROUP BY country ORDER BY COUNT(*) DESC;  
SELECT country, COUNT(*) FROM employee GROUP BY country ORDER BY COUNT(*) DESC;  
SELECT country, COUNT(*) FROM employee GROUP BY country HAVING COUNT(*) > 10 ORDER BY COUNT(*) DESC;  

SELECT id, first_name AS name, last_name AS surname, gender AS sex FROM employee ORDER BY first_name, last_name ASC;

SELECT COALESCE(email, '-') FROM employee;  -- Replace null value to pointed value


SELECT id, first_name AS name, last_name AS surname, country FROM employee ORDER BY name, surname ASC LIMIT 20 OFFSET 2 * 20;

-- !Holiday Table


SELECT MAX(price) FROM holiday;
SELECT AVG(price) FROM holiday;
SELECT MIN(price) FROM holiday;
SELECT ROUND(MIN(price)) FROM holiday;

SELECT country, city, MIN(price) FROM holiday GROUP BY country, city;
SELECT country, SUM(price) FROM holiday GROUP BY country;

SELECT id, country, city, ROUND(price) FROM holiday;