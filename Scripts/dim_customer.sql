DROP VIEW dim_customers;

CREATE OR REPLACE VIEW dim_customers AS

SELECT 
	customer_id,
	c.customer_unique_id,
	c.customer_zip_code_prefix 
FROM customers c 