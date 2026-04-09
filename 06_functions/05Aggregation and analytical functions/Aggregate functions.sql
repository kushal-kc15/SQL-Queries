--find the total numbers of orders
select 
Count(*) as total_nr_orders
from orders

--find the total sales of all orders
select 
sum(sales) as total_sales
from orders

--find the average sales of all orders
select
AVG(sales) as avg_sales
from orders

--find the highest sales of among customers
select
max(sales) as max_sales
from orders

--find the lowest sales of among customers
select
min(sales) as max_sales
from orders