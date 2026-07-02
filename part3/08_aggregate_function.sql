


-- calculate one result from many rows
-- COUNT() number of rows
-- SUM() total value
-- AVG() avg value
-- MIN() smallet value
-- MAX() largets value 


SELECT COUNT(*) AS total_posts,
COUNT(*) FILTER(WHERE status = 'draft') AS Draft_posts,
SUM(views) AS total_views,
AVG(views) AS avg_views,
MIN(views) AS lowest_views,
MAX(views) AS highest_views
FROM posts;
