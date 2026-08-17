DROP VIEW dim_customers;

CREATE OR REPLACE VIEW dim_customers AS

WITH customer_summary AS (
SELECT
	c.customer_unique_id,
	c.customer_city,
	c.customer_state,
	ROW_NUMBER() OVER (PARTITION BY c.customer_unique_id ORDER BY o.order_purchase_timestamp::DATE) AS scoring_order,
	t.review_score 
FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id 
JOIN order_reviews t ON o.order_id = t.order_id 
)

SELECT 
	customer_unique_id,
	customer_city,
	customer_state,
	review_score AS first_score
FROM customer_summary
WHERE scoring_order = 1
