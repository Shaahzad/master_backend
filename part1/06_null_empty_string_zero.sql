-- null unknown/missing values
-- empty string - knows string val but it contain no character
-- zero actual numeric value of 0


DROP TABLE IF EXISTS basics.value_examples;


CREATE TABLE basics.value_examples
(
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);

INSERT INTO basics.value_examples
(nickname, bio, score)
VALUES
(null, 'learning PostgreSQL', 20),
('', 'Empty nickname', 20),
('Shahzad', '', 0),
('john', null, null);


-- SELECT * FROM basics.value_examples;
-- SELECT * FROM basics.value_examples WHERE nickname IS NULL;
-- SELECT * FROM basics.value_examples WHERE nickname = '';
-- SELECT * FROM basics.value_examples WHERE score = 0;
SELECT * FROM basics.value_examples WHERE nickname IS NOT NULL;