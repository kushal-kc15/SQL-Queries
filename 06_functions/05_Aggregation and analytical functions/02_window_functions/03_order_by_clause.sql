--rank each orders based on their sales from higher to lower additionally provide 
--details such as order id, order date
SELECT 
OrderID,
OrderDate,
sales,
rank() over(order by sales DESC) RankSales
from sales.Orders