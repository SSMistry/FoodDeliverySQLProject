-- Problem: Analyse menu-item prices by finding the cheapest, most expensive and average-priced item across the platform. 
-- Skills practised: aggregate functions

SELECT MIN(price) as cheapest_item,
	   MAX(price) as most_expensive_item,
	   ROUND(AVG(price), 2) as average_priced_item
FROM menu_items;