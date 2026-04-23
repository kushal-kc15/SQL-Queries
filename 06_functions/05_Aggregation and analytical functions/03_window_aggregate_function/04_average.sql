--find the average sales for each product
select 
OrderID,
OrderDate,
ProductID,
sales,
avg(sales) over () AverageSales,
Avg(coalesce(sales,0)) over(partition by ProductID) AverageSalesByProduct
from sales.Orders

/*find the average scores of customers 
Additionally provide details such CustomerId and lastname*/
select 
CustomerID,
LastName,
Score,
Avg(coalesce(score,0)) over() averagescore
from sales.Customers

--find the orders where sales are higher than the average sales accross all orders
select
*
from(
select 
OrderID,
ProductID,
sales,
avg(sales) over() AvgSales
from sales.orders
)t where sales>AvgSales