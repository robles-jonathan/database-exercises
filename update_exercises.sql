-- set by using the USE keyword the DATABASE to codeup_test_db
USE codeup_test_db;

SELECT 'All albums in your table' AS 'INFO';
SELECT id, name, sales FROM albums;

SELECT 'All albums in your table with sales multiplied by 10' AS 'INFO';
UPDATE albums SET sales = (sales * 10);
SELECT id, name, sales FROM albums;

SELECT 'All albums released before 1980.' AS 'INFO';
SELECT name, release_date FROM albums where release_date < 1980;

SELECT 'Updated albums release before 1980 to be released before 1880.' AS 'INFO';
UPDATE albums SET release_date = (release_date + 100);
SELECT name, release_date FROM albums where release_date < 1880;

-- SELECT 'All albums by Michael Jackson' AS 'INFO';
-- SELECT name FROM albums where artist = 'Michael Jackson';

