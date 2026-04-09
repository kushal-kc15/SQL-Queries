--sort the customers from lowest to highest scores,
--with nulls appearing last
select 
CustomerID,
Score,

case when score is null then 1 else 0 end flag
from sales.Customers
Order by case when score is null then 1 else 0 end,score