-- which are the top 5 products with the highest average review rating?

SELECT
	item_purchased AS product,
    ROUND(AVG(review_rating),2) AS avg_rating
FROM customer
GROUP BY item_purchased
HAVING COUNT(review_rating) >=10
ORDER BY avg_rating DESC
LIMIT 5