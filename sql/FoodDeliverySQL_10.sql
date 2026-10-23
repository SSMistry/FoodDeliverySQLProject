-- Problem: Build a customer segmentation report that classifies customers based on their total spend, order frequency and most recent order date. 
-- Skills required: LEFT JOINS, conditional logic, CASE, date calculations, aggregation

SELECT A.customer_id,
	   COUNT(DISTINCT(B.order_id)) as num_orders,
	   SUM(C.quantity * C.price) as total_order_price,
	   MAX(B.order_time) as recent_order,
	   CASE
			WHEN A.signup_date >= DATE('2023-12-30', '-30 days') THEN 'New' -- No DATEDIFF in SQLite
			WHEN SUM(C.quantity * C.price) >= 1000.00	    	 THEN 'High value'
			WHEN COUNT(B.order_id) = 0							 THEN 'Inactive'
			WHEN COUNT(DISTINCT(B.order_id)) < 3				 THEN 'Infrequent'
			ELSE 'Regular'
	   END as customer_category
FROM customers as A
LEFT JOIN orders as B
ON A.customer_id = B.customer_id
LEFT JOIN order_items as C
ON B.order_id = C.order_id
GROUP BY A.customer_id
ORDER BY customer_category, total_order_price DESC;