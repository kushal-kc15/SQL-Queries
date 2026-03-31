 --copy data from cutomers table into persons
insert into person(id, person_name,birth_date,phone)
select 
id,
first_name,
null,
'Unknown'
from customers
select * from person