-- find the prosucts that will fall within the highest 40% of the prices
select *

from (
select 
Product,
Price,
CUME_DIST() over(order by Price desc) distrank
from sales.Products
)t where distrank <=0.4