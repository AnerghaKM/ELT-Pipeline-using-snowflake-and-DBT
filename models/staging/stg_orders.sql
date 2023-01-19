select *, OrderSellingPrice - OrderCostPrice
as orderProfit 
from {{ ref('raw_orders') }}

select 
--from orders
o.OrderID,o.OrderDate,o.ShipDate,o.ShipMode,
o.OrderSellingPrice - o.OrderCostPrice as orderProfit ,
--from customer
c.CustomerID,c.CustomerName,c.country,
--from product
p.Category , p.ProductName , p.Subcategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} as c
on o.CustomerID = c.CustomerID
left join {{ ref('raw_product') }} as p
on o.productId = p.productId

