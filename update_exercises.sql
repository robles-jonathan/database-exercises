-- set by using the USE keyword the DATABASE to codeup_test_db
USE codeup_test_db;

SELECT 'All albums in your table' AS 'INFO';
SELECT id, name FROM albums;

SELECT 'All albums released before 1980.';
SELECT name, release_date FROM albums where release_date < 1980;