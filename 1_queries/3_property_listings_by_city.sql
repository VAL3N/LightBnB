-- SELECT properties.*, title, cost_per_night, AVG(property_reviews.rating) AS average_rating
-- FROM properties
-- JOIN property_reviews ON properties.id = property_id
-- GROUP BY properties.id
-- WHERE city = 'Vancouver'
-- ORDER BY cost_per_night;


-- SELECT properties.*, avg(property_reviews.rating) as average_rating
-- FROM properties
-- JOIN property_reviews ON properties.id = property_id
-- WHERE city LIKE '%ancouv%'
-- GROUP BY properties.id
-- HAVING avg(property_reviews.rating) >= 4
-- ORDER BY cost_per_night
-- LIMIT 10;

SELECT properties.id as id, properties.title as title, properties.cost_per_night as cost_per_night, AVG(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE properties.city LIKE '%ancouv%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;