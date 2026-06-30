

--  left joins keep all rows from the left table 
--  if te right table has matching data, postgresql includes that
--  if it's don't matching any data it will return null

-- posts left table
-- comments rigt table

--  because not every posts is going have comments
-- some post will have 100 comments and some will have 0

SELECT posts.title AS post_title,
comments.body AS comment_body
FROM posts
LEFT JOIN comments
ON posts.id = comments.post_id
ORDER BY posts.title;