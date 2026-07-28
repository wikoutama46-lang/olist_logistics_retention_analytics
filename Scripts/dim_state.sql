DROP VIEW dim_state;

CREATE VIEW dim_state AS

SELECT DISTINCT
	g.geolocation_state 
FROM geolocation g