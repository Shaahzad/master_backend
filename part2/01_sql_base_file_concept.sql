

CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    is_active BOOLEAN NOT NULL DEFAULT true,
    sku TEXT UNIQUE,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

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
    'iPhone 15',
    'Electronics',
    999.99,
    50,
    'IPH15-001',
    'Apple iPhone 15 with 128GB storage.'
),
(
    'Gaming Mouse',
    'Accessories',
    49.99,
    120,
    'GM-002',
    'RGB wired gaming mouse with 7 programmable buttons.'
),
(
    'Mechanical Keyboard',
    'Accessories',
    89.99,
    75,
    'MK-003',
    'Hot-swappable mechanical keyboard with blue switches.'
),
(
    'Dell Monitor 27"',
    'Electronics',
    249.99,
    30,
    'DM27-004',
    '27-inch QHD IPS monitor with 165Hz refresh rate.'
),
(
    'Office Chair',
    'Furniture',
    179.50,
    20,
    'OC-005',
    'Ergonomic office chair with adjustable lumbar support.'
);

SELECT * FROM products;