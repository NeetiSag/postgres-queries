/* ==============================================================================
   GROUP BY
=============================================================================== */

-- Find the total score for each country

select 
	country,
	sum(score) as total_score
from customers
group by country

/* This will not work because 'first_name' is neither part of the GROUP BY 
   nor wrapped in an aggregate function. SQL doesn't know how to handle this column. */
SELECT 
    country,
    first_name,
    SUM(score) AS total_score
FROM customers
GROUP BY country

/* This will work because 'first_name' is  part of the GROUP BY 
   function. */
select 
	country,
	first_name,
	sum(score) as total_score
from customers
group by country,first_name


-- Find the total score and total number of customers for each country
select 
	country,
	count(id) as total_customer,
	sum(score) as total_score
from customers
group by country


