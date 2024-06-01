select * , (ORDER_SELLING_PRICE - ORDER_COST_PRICE  ) as order_profit
from  {{ ref('orders') }}