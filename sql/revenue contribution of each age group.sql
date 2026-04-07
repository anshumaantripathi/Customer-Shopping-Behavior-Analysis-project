-- what is the revenue contribution of each age group?

SELECT
	age_group,
	SUM(purchase_amount) AS revenue
FROM customer
GROUP BY age_group
ORDER BY revenue DESC