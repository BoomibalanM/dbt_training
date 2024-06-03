select 
productid,
productname,
category,
subcategory,
order_profit
from 
{{ ref('orders') }}
