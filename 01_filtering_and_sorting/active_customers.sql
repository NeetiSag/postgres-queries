/* ==============================================================================
   SQL SELECT Query
-------------------------------------------------------------------------------
   This guide covers various SELECT query techniques used for retrieving, 
   filtering, sorting, and aggregating data efficiently.

   Table of Contents:
     1. SELECT ALL COLUMNS
     2. SELECT SPECIFIC COLUMNS
     3. WHERE CLAUSE
     4. ORDER BY
     5. GROUP BY
     6. HAVING
     7. DISTINCT
     8. TOP
     9. Combining Queries
	 10. COOL STUFF - Additional SQL Features
=================================================================================
*/

/* ==============================================================================
   COMMENTS
=============================================================================== */

-- This is a single-line comment.

/* This
   is
   a multiple-line
   comment
*/

/* ==============================================================================
   SELECT ALL COLUMNS
=============================================================================== */

-- Retrieve All Customer Data
select * from customers

-- Retrieve All Order Data

select *
from orders

/* ==============================================================================
   SELECT FEW COLUMNS
=============================================================================== */

select 
	first_name,
	country
from customers
where country = 'Germany'

/* ==============================================================================
   WHERE
=============================================================================== */

-- Retrieve customers with a score not equal to 0
SELECT *
FROM customers
WHERE score != 0

-- Retrieve customers from Germany
SELECT *
FROM customers
WHERE country = 'Germany'

-- Retrieve the name and country of customers from Germany
SELECT
    first_name,
    country
FROM customers
WHERE country = 'Germany'

/* ==============================================================================
   ORDER BY
=============================================================================== */

/* Retrieve all customers and 
   sort the results by the highest score first. */

select * 
from customers 
order by score DESC

/* Retrieve all customers and 
   sort the results by the lowest score first. */

SELECT *
FROM customers
ORDER BY score ASC

/* Retrieve all customers and 
   sort the results by the country. */
SELECT *
FROM customers
ORDER BY country ASC

/* Retrieve all customers and 
   sort the results by the country and then by the highest score. */

select * from customers order by country , score DESC

/* Retrieve the name, country, and score of customers 
   whose score is not equal to 0
   and sort the results by the highest score first. */
SELECT
    first_name,
    country,
    score
FROM customers
WHERE score != 0
ORDER BY score DESC

