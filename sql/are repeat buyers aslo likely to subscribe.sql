-- are customers who are repeat buyers(5+ previous purchase) 
-- aslo likely to subscribe ?

SELECT
    subscription_status,
    COUNT(customer_id) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status