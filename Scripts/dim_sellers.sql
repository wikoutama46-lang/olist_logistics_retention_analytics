DROP VIEW dim_seller;

CREATE OR REPLACE VIEW dim_seller AS

SELECT 
	s.seller_id,
	s.seller_city,
	s.seller_state 
FROM sellers s