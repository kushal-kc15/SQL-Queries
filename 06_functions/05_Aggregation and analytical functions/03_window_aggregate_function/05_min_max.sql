/*find the highest and lowest sales accross all orders
and the highest and lowest sales for each product
Additionally provide details such as order id and ordes date*/

select 
OrderID,
OrderDate,
ProductID,
sales,
Min(sales) over () MinSales,
Max(sales) over () MaxSales,
Min(sales) over (partition by ProductId) MinSalesByProduct,
Max(sales) over (partition by ProductId) MaxSalesByProduct
from sales.Orders

--show the employees who have the highest salaries
select
*
from(
select 
*,
Max(Salary) over() HighestSalary
from sales.Employees
)t where salary =HighestSalary

/*calculate the deviation of each sales from both the maximum and mininmum sales amount*/
select 
OrderID,
OrderDate,
ProductID,
sales,
Min(sales) over () MinSales,
Max(sales) over () MaxSales,
sales-Min(sales) over () DevFromMin,
Max(sales) over () - sales DevFromMax
from sales.Orders