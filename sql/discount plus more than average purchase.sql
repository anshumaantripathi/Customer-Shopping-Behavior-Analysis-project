/*Which customers used the discount but still spent more than
the average purchase amount ?*/

SELECT
	customer_id,
    discount_applied,
    purchase_amount
FROM customer
WHERE discount_applied = 'Yes' AND purchase_amount > (
SELECT AVG(purchase_amount)
FROM customer
)
