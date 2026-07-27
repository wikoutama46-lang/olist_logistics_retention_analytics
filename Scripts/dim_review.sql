DROP VIEW dim_review;

CREATE VIEW dim_review AS 

SELECT  
	order_id,
	review_score,
	review_comment_title,
	review_comment_message,
	review_creation_date,
	review_answer_timestamp
FROM order_reviews t 