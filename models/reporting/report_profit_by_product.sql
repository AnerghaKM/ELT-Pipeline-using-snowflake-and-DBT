select Category , ProductID , ProductName , SubCategory ,
sum(orderProfit) as profit
from {{ ref('stg_orders') }}
group by Category , ProductID , ProductName , SubCategory 
