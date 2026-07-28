DROP VIEW dim_customers;

CREATE OR REPLACE VIEW dim_customers AS

SELECT 
	c.customer_city,
	c.customer_unique_id,
	c.customer_id,
	c.customer_state
FROM customers c 