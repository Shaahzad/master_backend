
--  group by creates groups of rows
-- WHERE filters normal rows before grouping
-- HAVING filters group after grouping

-- find author who have written atleast 2 post

SELECT 
u.name AS author_name,
COUNT(p.id) AS total_post,
SUM(p.views) AS total_views
FROM users AS u 
LEFT JOIN posts AS p 
  ON u.id = p.user_id
GROUP BY u.id, u.name
HAVING COUNT(p.id) = 1
ORDER BY total_post DESC;