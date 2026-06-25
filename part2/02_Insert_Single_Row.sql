
INSERT INTO products (
    name, 
    category,
    price,
    stock,
    sku,
    description
)
VALUES 
(
    'laptop Stands',
    'electronics',
    '2000.00',
    23,
    'ELEC-KEY-001',
    'laptop stand description'
);

SELECT * FROM products WHERE sku = 'ELEC-KEY-001';