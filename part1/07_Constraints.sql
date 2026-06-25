
-- NOT NULL, UNIQUE, CHECK, DEFAULT
-- app, script, developer

DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT true,
    age INTEGER CHECK (age >= 18),
    craeted_at TIMESTAMP DEFAULT NOW()
)