--select *, ordersellingprice - ordercostprice as orderprofit from {{ ref("raw_orders") }};

select
    o.orderid,
    o.orderdate,
    o.shipdate,
    o.shipmode,
    o.ordersellingprice - o.ordercostprice as orderprofit,
    o.ordercostprice,
    o.ordersellingprice,
    c.customerid,
    c.customername,
    c.country,
    c.Segment,
    c.State,
    p.category,
    p.productname,
    p.subcategory,
    p.productid
from {{ ref("raw_orders") }} as o
left join {{ ref("raw_customer") }} as c on o.customerid = c.customerid
left join {{ ref("raw_product") }} as p on o.productid = p.productid
