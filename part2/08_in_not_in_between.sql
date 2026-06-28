

--  IN value must match one item from the list
-- Not IN  value must not match any item from the list
-- BETWEEN Value must be inside a range

-- SELECT name, category, price
-- FROM products
-- WHERE category IN ('electronics', 'Furniture');


-- SELECT name, category, price
-- FROM products
-- WHERE category NOT IN ('electronics', 'Furniture');

-- SELECT name, price
-- FROM products
-- WHERE price BETWEEN 100 AND 2000;

-- SELECT name, price, category, stock
-- FROM products
-- WHERE category IN ('electronics', 'Furniture')
--    AND price BETWEEN 10 AND 1500; 