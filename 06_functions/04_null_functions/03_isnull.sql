--identify the customers who have no scores
select *
from sales.Customers
where Score is null


--identify the customers who have  scores
select *
from sales.Customers
where Score is not null