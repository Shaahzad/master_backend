

--  AND every condition must true
--  OR one condition atleast true
--  NOT reverse/exclude a condition

-- SELECT name, category, price
-- FROM products 
-- WHERE category = 'electronics' AND price > 100;

-- SELECT name, category, price
-- FROM products 
-- WHERE category = 'electronics' OR category = 'Accessories';

-- SELECT name, category
-- FROM products 
-- WHERE NOT category = 'Electronics' AND NOT category = 'electronics'

-- SELECT name, price, stock, is_active AS ACTIVE
-- FROM products
-- WHERE is_active = true
-- AND (stock >= 100 OR price >= 200);

