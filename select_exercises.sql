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

SELECT 'Which albums were released in the 1990s.' AS 'INFO';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Which albums had less than 20 million certified sales.' AS 'INFO';
SELECT name FROM albums WHERE sales < 20;
-- Display list is empty because there are no albums on this list with less than 20 million certified sales.

SELECT 'All the albums with a genre of "Rock".' AS 'INFO';
SELECT name, genre FROM albums where genre = 'Rock';
-- Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
-- Because the query only looks for genre 'Rock' not genre that contains the string 'Rock'