/* get all the customers along with their orders
including those without orders*/
select c.id,c.first_name,o.order_id,o.sales
from customers as c
left join orders as o
on c.id =o.customer_id

select c.id,c.first_name,o.order_id,o.sales
from orders as o
left join customers as c
on c.id =o.customer_id