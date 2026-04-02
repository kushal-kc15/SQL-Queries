--combine the data from the employees and customers into one table including duplicates
select 
FirstName,
LastName
from Sales.Customers

union all

select 
FirstName,
LastName
from Sales.Employees