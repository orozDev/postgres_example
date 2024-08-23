Postgres commands:

1. CREATE DATABASE $db_name; - to create a database
2. \l - to see all databases 
3. \c $db_name - to connect the database by name
4. DROP DATABASE $db_name; - to delete the database by name
5.  
        CREATE TABLE employee (
             id BIGSERIAL NOT NULL PRIMARY KEY,
             first_name VARCHAR(50) NOT NULL,
             last_name VARCHAR(50) NOT NULL,
             gender VARCHAR(6) NOT NULL, 
             email VARCHAR(150),
             date_of_birth DATE  NOT NULL
        );
		- to create a new table
6. \d - to see all tables at the connected database
7. \d $table_name - to see information of table that we request
8. DROP TABLE $table_name - to delete the table
9.  INSERT INTO employee  ( first_name, last_name, gender, email, date_of_birth) VALUES ('oroz', 'Zhenishbek uulu', 'male', 'oroz@oroz.com', '2003-09-11'); - to create new data
10. \dt $table_name - to see count of data at $table_name
11. SELECT $column_name, $… FROM $table_name; - to get get data from $table_name
12. SELECT $column_name, $… FROM $table_name WHERE $column_name  = ‘condition’; - to get data by some conditions
    1. LIKE - to pass data that partial match. That depends on text case. You should use this operator like this LIKE(‘%value%’). % here means anything.
    2. iLike - to pass data that partial match. That undepends on text case
    3. IN - you can set some values and will be compared by those values. It is good solution to use instead of using several times OR
    4. OR  & AND - I guess it is to understand.
13. SELECT $column_name, $… FROM $table_name ORDER BY $column_name
14. SELECT $column_name, $… FROM $table_name LIMIT 20; - you can get first 20 data instead of getting all of them
15. SELECT $column_name, $… FROM $table_name OFFSET 10; - that will pass 10 items and return rest of them 
16. SELECT $column_name, $… FROM $table_name OFFSET 10 LIMIT 5; - you can use this method as pagination
17. SELECT DISTINCT $column_name, $… FROM $table_name; - that will return data with excluding duplicates by $column_name
18. SELECT country_of_birth, COUNT(*) FROM employee GROUP BY country_of_birth HAVING COUNT(*) > 10 ORDER BY country_of_birth ASC;  - that will return every countries with amount of employees and will return where  amount of employees more than 10
19. SELECT $column_name AS $temporary_name, $… FROM $table_name; - that will rename $column_name to $temporary_name only for one request
