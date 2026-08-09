DROP VIEW dim_product;

CREATE OR REPLACE VIEW dim_product AS

SELECT 
	p.product_id,
	pcnt.product_category_name_english,
	COALESCE(p.product_weight_g, 0) AS product_weight_g,
	COALESCE(p.product_length_cm, 0) AS product_lenght_cm,
	COALESCE(p.product_height_cm, 0) AS product_height_cm,
	COALESCE(p.product_width_cm, 0) AS product_width_cm 
FROM products p 
JOIN product_category_name_translation pcnt ON p.product_category_name = pcnt.product_category_name