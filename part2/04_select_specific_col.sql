-- SELCT * FROM return every cols
--  SELECT specific col return the col that i want

-- SELECT * FROM products;

-- SELECT name, category, price, stock
-- FROM products;

-- AS creates an aliases for the output of tat column name
-- make te column name easier to read

SELECT name AS product_name,
price AS selling_price,
stock AS available_quantity
FROM products;