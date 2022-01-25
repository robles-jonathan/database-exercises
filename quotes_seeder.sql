USE codeup_test_db;

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES('Douglas', 'Adams', 'Time is an illusion. Lunchtime doubly so.'),
       ('Mark', 'Twain', 'Clothes make the man. Naked people have little or no influence on society.'),
       ('Steve', 'Maraboli', 'Life doesn’t get easier or more forgiving; we get stronger and more resilient.'),
       ('Kurt',    'Vonnegut', 'The universe is a big place, perhaps the biggest.');

SELECT id, author_first_name, content FROM quotes;
-- SELECT * FROM quotes;

-- TRUNCATE quotes;