select
o.*,
c.*,
p.*,
(o.ORDER_SELLING_PRICE - o.ORDER_COST_PRICE) as order_profit
from {{ ref('orders') }} as o
left join {{ ref('customer_dbt') }} as c
on
o.customer_id = c.customerid
left join {{ ref('product') }} as p
on 
p.product_id = o.product_id
