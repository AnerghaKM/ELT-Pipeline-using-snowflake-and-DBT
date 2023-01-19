select *, OrderSellingPrice - OrderCostPrice
as orderProfit 
from {{ ref('raw_orders') }}