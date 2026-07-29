DROP VIEW dim_customers;

CREATE OR REPLACE VIEW dim_customers AS

SELECT 
	c.customer_unique_id,
	MAX(c.customer_city) AS customer_city,
	MAX(c.customer_state) AS customer_state
FROM customers c 
GROUP BY c.customer_unique_id 