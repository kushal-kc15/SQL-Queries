----show all the customers details and find the total orders of each customers
select 
*,
(select Count(*) from sales.Orders o where CustomerID =c.CustomerID) TotalSales
from sales.Customers c

