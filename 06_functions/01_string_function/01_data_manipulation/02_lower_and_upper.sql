--convert the firstname to lowercase
select 
first_name,
lower(first_name) as low_name,
country
from customers

--convert the firstname to uppercase
select 
first_name,
upper(first_name) as up_name,
country
from customers