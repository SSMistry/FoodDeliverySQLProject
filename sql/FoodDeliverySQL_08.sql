-- Problem: Top-selling menu items by quantity sold and/or revenue generated. 
-- Skills practised: JOINS, aggregation, sorting, LIMIT

SELECT A.item_id,
	   SUM(B.quantity) as total_sold,
	   SUM(B.quantity * A.price) as total_revenue
FROM menu_items as A
INNER JOIN order_items as B
ON A.item_id = B.item_id
GROUP BY A.item_id
ORDER BY total_sold DESC
-- ORDER BY total_revenue DESC
LIMIT 10;