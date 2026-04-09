select
OrderID,
CreationTime,
EOMONTH(CreationTime) EndOfMonth,
cast(DATETRUNC(month,CreationTime) as date) StartOfMonth
from Sales.Orders