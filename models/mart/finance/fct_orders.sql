SELECT 
    t1.order_id as order_id,
    t1.customer_id as customer_id,
    SUM(t2.amount) as amount
FROM {{ ref('stg_orders') }} t1
LEFT JOIN {{ ref('stg_payments') }} t2 ON t1.order_id = t2.order_id
GROUP BY t1.order_id, t1.customer_id