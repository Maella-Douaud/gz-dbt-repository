-- Daily granularity with :

SELECT 
    date_date,  -- Date
    COUNT(DISTINCT orders_id) AS nb_transactions,-- Total number of transactions
    ROUND(SUM(revenue),2) AS tot_revenue, -- Total revenue
    ROUND(AVG(revenue),2) AS avg_basket, -- Average Basket
    ROUND(SUM(operational_margin),2) AS operational_margin, -- Operational Margin
    ROUND(SUM(purchase_cost),2) AS tot_purchase_cost, -- Total purchase cost
    ROUND(SUM(shipping_fee),2) AS tot_shipping_fees, -- Total shipping fees
    ROUND(SUM(logcost),2) AS tot_log_cost, -- Total log costs
    ROUND(SUM(quantity),2) tot_quantity -- Total quantity of products sold
FROM {{ref("int_orders_operational")}}
GROUP BY date_date
ORDER BY  date_date DESC


