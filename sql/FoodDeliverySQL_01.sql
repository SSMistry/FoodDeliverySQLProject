-- Problem: Create a report of all restaurants, showing their city, cuisine and in order of rating. 
-- Skills Practised: SELECT, column selection, ORDER BY

SELECT * -- Or restaurant_id, city, cuisine, rating
FROM restaurants
ORDER BY rating DESC;