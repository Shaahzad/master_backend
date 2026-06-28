

-- INSERT INTO products (name, category, price, stock, sku, description)
-- VALUES ('temp product', 'Shunnay', 20.00, 20, 'ELEC-10', 'Good');

SELECT name, category, sku
FROM products
WHERE sku = 'ELEC-10';

DELETE FROM products
WHERE sku = 'ELEC-10';

SELECT name, category, sku
FROM products
WHERE sku = 'ELEC-10';

