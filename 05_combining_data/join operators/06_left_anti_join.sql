--get all customers who havent place any order
select c.id,c.first_name,o.order_id,o.sales
from customers as c
left join orders as o
on c.id =o.customer_id
where o.customer_id is null