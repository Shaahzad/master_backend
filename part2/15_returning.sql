

-- returning usually returns back the rows immediately after insert update and delete 


-- INSERT INTO products (name, category, price, stock, sku, description)
-- VALUES ('web Cam', 'electronics', 2000.00, 200, 'web-cam', 'Good Web Camera')
-- returning id, name, category, price, stock, sku, description, created_at;


-- UPDATE products
-- SET stock = stock + 100
-- Where sku = 'web-cam'
-- returning id, name, stock;

-- delete FROM products
-- Where sku = 'web-cam'
-- returning id, name, sku;


-- Select name, sku
-- FROM products
-- Where sku = 'web-cam';