-- Problem: Create a monthly performance report showing order volume, unique customers and revenue over time. 
-- Skills practised: date functions, aggregation, DISTINCT, CTEs

WITH OrderRevenue as
(
	SELECT A.order_id,
		   SUM(B.quantity * B.price) as total_order_price   
	FROM orders as A
	INNER JOIN order_items as B
	ON A.order_id = B.order_id
	GROUP BY A.order_id
)

SELECT DATE(A.order_time, 'start of month') as month,
	   COUNT(DISTINCT(A.customer_id)) as unique_customers,
 	   COUNT(A.order_id) as num_orders,
	   SUM(B.total_order_price) as monthly_revenue
FROM orders as A
INNER JOIN OrderRevenue as B
ON A.order_id = B.order_id
GROUP BY month
ORDER BY month;