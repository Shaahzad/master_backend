
DROP TABLE IF EXISTS basics.product_basic;


CREATE TABLE basics.product_basic (
    id SERIAL PRIMARY KEY,

    -- string => max length of 100 character
    name VARCHAR(100) NOT NULL,

    description TEXT,

    stock INTEGER DEFAULT 0,

    -- store larger whole number than INTEGER
    total_views BIGINT DEFAULT 0,

--  exact decimal values
-- 10 means total digits
-- 2 means digits after decimal point, 999.23
    price NUMERIC(10, 2),
     
    is_active BOOLEAN DEFAULT true
);


-- queries

INSERT INTO basics.product_basic 
(name, description, stock, total_views, price, is_active)
VALUES 
(
    'product1',
    'Good Product',
    20,
    1200,
    2455.50,
    true
);

SELECT * FROM basics.product_basic;

SELECT id, name, price, is_active
FROM basics.product_basic
WHERE is_active;