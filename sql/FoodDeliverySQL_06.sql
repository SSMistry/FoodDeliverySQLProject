-- Problem: Calculate the value of each order from its individual order items and menu-item prices. 
-- Skills practised: multi-table JOINS, calculated columns, SUM, GROUP BY, ORDER BY

SELECT A.order_id,
	   SUM(C.price * B.quantity) as total_price
FROM orders as A
INNER JOIN order_items as B
ON A.order_id = B.order_id
INNER JOIN menu_items as C
ON B.item_id = C.item_id
GROUP BY A.order_id
ORDER BY total_price DESC;
