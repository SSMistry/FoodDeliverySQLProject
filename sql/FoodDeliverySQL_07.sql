-- Problem: Restaurants ranked by total sales revenue and total number of orders. 
-- Skills practised: multi-table JOINS, aggregation, DISTINCT, GROUP BY, ranking

SELECT A.restaurant_id,
	   COUNT(DISTINCT(A.order_id)) as num_orders,
	   SUM(C.price * C.quantity) as total_revenue,
	   B.city,
	   B.cuisine,
	   B.rating
FROM orders as A
INNER JOIN restaurants as B
ON A.restaurant_id = B.restaurant_id
INNER JOIN order_items as C
ON A.order_id = C.order_id
GROUP BY A.restaurant_id,
		 B.city,
		 B.cuisine,
		 b.rating
ORDER BY total_revenue DESC;