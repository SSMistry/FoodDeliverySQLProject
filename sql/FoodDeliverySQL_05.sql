-- Problem: Produce a customer-level report showing how many orders each customer has placed. 
-- Skills practised: LEFT JOIN, COUNT, GROUP BY, ORDER BY

SELECT A.customer_id,
	   COUNT(B.order_id) as num_of_orders
FROM customers as A
LEFT JOIN orders as B
ON A.customer_id = B.customer_id
GROUP BY A.customer_id
ORDER BY num_of_orders DESC;