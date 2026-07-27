DROP VIEW fact_orders;

CREATE OR REPLACE VIEW fact_orders AS
SELECT 
    o.order_id,
    oi.order_item_id,
    o.customer_id,
    oi.seller_id,
    oi.product_id,
    o.order_purchase_timestamp,
    o.order_estimated_delivery_date,
    o.order_delivered_customer_date,
    oi.shipping_limit_date,
    oi.freight_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_delivered_customer_date IS NOT NULL
