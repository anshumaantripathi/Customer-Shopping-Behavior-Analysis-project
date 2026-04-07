-- which 5 products have the highest percentage of purchases with discount applied?
SELECT
    item_purchased,
    COUNT(*) AS total_purchases,
    SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) AS discounted_purchases,
    ROUND(
        SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*),
    2) AS discount_percentage
FROM customer
GROUP BY item_purchased
ORDER BY discount_percentage DESC
LIMIT 5;