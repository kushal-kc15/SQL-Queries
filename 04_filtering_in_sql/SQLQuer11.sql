--find all custpmers whose first name starts with 'M'

select * from customers
where first_name like 'M%'

--find all custpmers whose first name ends with 'N'
select * from customers 
where first_name like '%n'

--find all custpmers whose first name has 'r' in the thirst position
select * from customers
where first_name like  '__r%'