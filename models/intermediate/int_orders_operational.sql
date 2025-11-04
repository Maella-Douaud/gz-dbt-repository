-- Operational_margin = margin + shipping_fee - log_cost - ship_cost

--(margin + shipping_fee) - log_cost - ship_cost AS Operational_margin
SELECT *,
margin + shipping_fee - logcost - ship_cost AS operational_margin
FROM {{ ref('int_orders_margin')}} 
JOIN {{ ref('stg_raw__ship')}}
USING (orders_id)