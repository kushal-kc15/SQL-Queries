--retrieve the first two characters from the first name
select
first_name,
left(first_name,2) as char
from customers

--retrieve the last two chars from each first name
select
first_name,
right(first_name,2) as char
from customers