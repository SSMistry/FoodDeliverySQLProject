-- Problem: Determine how many restaurants operate in each city and cuisine category. 
-- Skills practised: GROUP BY, COUNT, multi-column grouping

SELECT COUNT(restaurant_id) as num_restaurants,
	   city, 
	   cuisine
FROM restaurants
GROUP BY city, cuisine;