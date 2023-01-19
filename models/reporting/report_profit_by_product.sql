select Category, productid, productname, subcategory, sum(orderprofit) as profit
from {{ ref("stg_orders") }}
group by Category, productid, productname, subcategory
