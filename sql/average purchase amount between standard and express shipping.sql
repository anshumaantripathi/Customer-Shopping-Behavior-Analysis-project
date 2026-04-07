-- compare the average purchase amount between standard and express shipping.
SELECT
	shipping_type,
    AVG(purchase_amount) AS avg_purchase
FROM customer
WHERE shipping_type IN ('Standard','Express')
GROUP BY shipping_type