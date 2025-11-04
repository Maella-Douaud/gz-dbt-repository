--margin per product : 
-- margin = revenue (dans sales) - purchase_cost (dans product)
-- purchase_cost = quantity (dans sales) * purchase_price (dans product)

SELECT *,
revenue - (quantity * purchase_price) AS margin,
quantity * purchase_price AS purchase_cost
FROM {{ ref('stg_raw__sales')}} AS sales
JOIN {{ ref('stg_raw__product')}} AS product
USING (products_id)