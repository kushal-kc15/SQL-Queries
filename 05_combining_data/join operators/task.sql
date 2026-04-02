/*using sales db retrieve a lost of all orders along with the releted customers,product,
and employee details for each order display:
order id,customers name,product name,sales,price,sales person's name*/
select 
o.OrderID,
o.Sales,
c.FirstName as CustomerFirstName,
c.LastName as CustomerLastName,
p.Product as product_name,
p.Price,
e.FirstName as EmployeeFisrtName,
e.LastName as EmployeeLastName
from sales.Orders as o
left join sales.Customers as c
on o.CustomerID =c.CustomerID
left join sales.Products as p
on o.ProductID=p.ProductID
left join sales.Employees as e
on o.SalesPersonID=e.EmployeeID
