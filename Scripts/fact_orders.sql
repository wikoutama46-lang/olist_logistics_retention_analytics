--DROP VIEW fact_orders;
--
--CREATE OR REPLACE VIEW fact_orders AS

SELECT 
    o.order_id,
    oi.order_item_id,
   	c.customer_unique_id ,
    oi.seller_id,
    oi.product_id,
    o.order_approved_at,
    o.order_purchase_timestamp,
    o.order_estimated_delivery_date,
    o.order_delivered_customer_date,
    oi.shipping_limit_date,
    oi.freight_value,
    CASE 
    		WHEN seller_state = customer_state AND seller_city = customer_city 
    			THEN 'Local' 
    		WHEN seller_state = customer_state AND seller_city <> customer_city 
    			THEN 'Regional' 
    		ELSE 'Interprovincial'
    END AS delivery_distance_category
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN customers c ON o.customer_id = c.customer_id 
JOIN sellers s ON oi.seller_id = s.seller_id 
WHERE o.order_delivered_customer_date IS NOT NULL
