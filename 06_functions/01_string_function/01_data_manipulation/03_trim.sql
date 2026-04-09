--find customers whose first_name contains leading or trailing spaces
select 
first_name
from customers
where first_name != TRIM(first_name)