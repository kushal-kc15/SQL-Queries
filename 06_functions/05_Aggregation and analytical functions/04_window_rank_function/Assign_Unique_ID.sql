--Assign unique ids to the rows of the 'orders archive' table
select 
ROW_NUMBER() over (order by OrderId,OrderDate) UniqueId,
*
from sales.OrdersArchive