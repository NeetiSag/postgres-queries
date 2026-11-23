select * from customers;

select first_name,country
from customers
where country = 'Germany';

select * from customers order by score DESC;

select * from customers order by country , score DESC;