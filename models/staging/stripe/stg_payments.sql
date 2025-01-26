SELECT
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount,
    created as created_on,
    _batched_at as batched_on

FROM {{ source('stripe', 'payment') }}