select CustomerID,CustomerName,Segment,Country,State,
sum(orderProfit) as profit  
from {{ ref('stg_orders') }}
group by CustomerID,CustomerName,Segment,Country,State



