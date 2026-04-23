--find the total sales accross all the orders with info such as order id, order date
SELECT 
OrderID,
OrderDate,
sum(Sales) over () totalsales
from sales.Orders

--find the total sales for each product with info such as order id, order date
SELECT 
OrderID,
ProductID,
OrderDate,
sum(Sales) over (partition by ProductId) totalsales
from sales.Orders

--find the total sales for each product as well accross all orders with info such as order id, order date
SELECT 
OrderID,
ProductID,
Sales,
OrderDate,
sum(Sales) over () totalsales,
sum(Sales) over (partition by ProductId) totalsalesByProduct
from sales.Orders

--find the total sales for each combination of product and other status
SELECT 
OrderID,
ProductID,
Sales,
OrderStatus,
OrderDate,
sum(Sales) over () totalsales,
sum(Sales) over (partition by ProductId) totalsalesByProduct,
sum(sales) over (partition by ProductId,OrderStatus) salesByProductAndStatus
from sales.Orders