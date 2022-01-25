-- set by using the USE keyword the DATABASE to codeup_test_db
USE codeup_test_db;
-- To execute use mysql -u codeup_test_user -p -t < select_exercises.sql
-- Output a caption explaining the results of query.

SELECT 'The name of all albums by Pink Floyd.' AS 'INFO';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released.' AS 'INFO';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind.' AS 'INFO';
SELECT genre FROM albums WHERE name = 'Nevermind';
