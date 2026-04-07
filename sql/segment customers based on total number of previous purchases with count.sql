-- segment customers into New, Returning, and loyal based on their
-- total number of previous purchases, and show the count of each segment

SELECT
	customer_segment,
    COUNT(customer_id) AS total_customer
FROM(
SELECT
	customer_id,
    previous_purchases,
    CASE
		WHEN previous_purchases >= 10 THEN 'Loyal'
        WHEN previous_purchases >= 2 THEN 'Returning'
        ELSE 'New'
        END AS customer_segment
FROM customer
) AS t
GROUP BY customer_segment
