--update all customers with a 0 score by setting their score to 100

update customers
set score=100
where score =0

select * from customers