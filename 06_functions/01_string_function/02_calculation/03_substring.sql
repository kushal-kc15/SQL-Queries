--retrieve a list of first_name after removing first char
select 
first_name,
SUBSTRING(first_name,2,len(first_name))as char
from customers