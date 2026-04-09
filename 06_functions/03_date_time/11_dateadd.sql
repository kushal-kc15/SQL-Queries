select
OrderId,
OrderDate,
DATEADD(year,2,OrderDate) as ThreeYearlater,
DATEADD(month,2,OrderDate) as ThreeMonthLater,
DATEADD(day,10,OrderDate) as TenDaysLater
from sales.Orders