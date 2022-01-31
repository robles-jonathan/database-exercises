USE employees;

SHOW tables;
DESCRIBE current_dept_emp;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_emp_latest_date;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

USE codeup_test_db;
SHOW tables;
SELECT * FROM albums;
ALTER TABLE albums
ADD UNIQUE (artist, name);
DESCRIBE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES('Michael Jackson', 'Thriller', 1982, 25, 'Pop');
