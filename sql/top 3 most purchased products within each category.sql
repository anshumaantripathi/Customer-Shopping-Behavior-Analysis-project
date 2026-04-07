-- What are top 3 most purchased products within each category
SELECT *
FROM (
    SELECT
        item_purchased,
        category,
        purchase_count,
        ROW_NUMBER() OVER(
            PARTITION BY category 
            ORDER BY purchase_count DESC
        ) AS rnk
    FROM (
        SELECT
            item_purchased,
            category,
            COUNT(*) AS purchase_count
        FROM customer
        GROUP BY item_purchased, category
    ) AS t
) AS t2
WHERE rnk <= 3;