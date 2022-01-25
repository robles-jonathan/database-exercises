USE codeup_test_db;

SELECT 'Albums released after 1991.' AS 'INFO';
DELETE FROM albums WHERE release_date > 1994;

SELECT 'Albums with the genre of ''disco''.' AS 'INFO';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Albums by ''The Beatles''.' AS 'INFO';
DELETE FROM albums WHERE artist = 'The Beatles';

