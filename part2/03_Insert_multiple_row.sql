

INSERT INTO products (
        name, 
    category,
    price,
    stock,
    sku,
    description
)
VALUES
('laptop-stand', 'electronics', 100, 25, 'ELEC-lamp-90', 'Nice Laptop Stand'),
('Computer', 'electronics', 1000, 25, 'ELEC-COMP-90', 'Nice Computer'),
('Computer-1', 'electronics', 1000, 25, 'ELEC-COMP-91', 'Nice Computer');


SELECT name, category, price, stock, sku
FROM products
WHERE sku IN ('ELEC-lamp-90', 'ELEC-COMP-90', 'ELEC-COMP-91');