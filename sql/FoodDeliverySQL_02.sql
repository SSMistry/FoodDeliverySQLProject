-- Problem: Find restaurants with a rating above a 3.8. 
-- Skills practised: WHERE, column selection, comparison operators, sorting

SELECT restaurant_id, 
	   rating
FROM restaurants
WHERE rating > '3.8'
ORDER BY rating DESC;