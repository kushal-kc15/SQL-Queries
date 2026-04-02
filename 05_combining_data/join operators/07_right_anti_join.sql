--get all customers whthout matching customers
select c.id,c.first_name,o.order_id,o.sales
from customers as c
right join orders as o
on c.id =o.customer_id
where o.customer_id is null