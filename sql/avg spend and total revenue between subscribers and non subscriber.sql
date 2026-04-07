/* do suscribed customers spend more ?
   compare average spend and total revenue between suscribers
   and non suscribers */
   
SELECT
	subscription_status,
    COUNT(customer_id) AS total_customer,
    ROUND(AVG(purchase_amount),2) AS avg_spend,
    SUM(purchase_amount) AS revenue
FROM customer
GROUP BY subscription_status
ORDER BY revenue DESC, avg_spend