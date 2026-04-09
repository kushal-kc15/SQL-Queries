--concatenate fisrt name and country into one column

select 
first_name,
country,
CONCAT(first_name, ' ','from',' ',country) as name_country
from customers