select

o.order_id,
o.order_date,
o.ship_date,
o.ship_mode,
o.ORDER_SELLING_PRICE,
o.ORDER_COST_PRICE,
c.customerid,
c.customername,
c.segment,
c.country,
p.productid,
p.category,
p.productname,
p.subcategory,
(o.ORDER_SELLING_PRICE - o.ORDER_COST_PRICE) as order_profit
from {{ ref('orders') }} as o
left join {{ ref('customer_dbt') }} as c
on
o.customerid = c.customer_id
left join {{ ref('product') }} as p
on 
p.productid = o.product_id