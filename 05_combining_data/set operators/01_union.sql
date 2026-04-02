--combine the data from the employees and customers into one table
select 
FirstName,
LastName
from Sales.Customers

union

select 
FirstName,
LastName
from sales.Employees