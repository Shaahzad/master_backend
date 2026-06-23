

DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students (
    -- create an autoincremet integer primary key simply identify each col
    id SERIAL PRIMARY KEY,
    
    -- text string
    -- not null means this col required
    -- postgres reject value if this name value is not present
    name TEXT NOT NULL,

    -- unique means 2 students have not same email 
    email TEXT NOT NULL UNIQUE,
)