USE employees;
# The CONCAT() function takes in any number of strings or column names and will concatenate them all together.
SELECT CONCAT('Hello ', 'Codeup', '!');

SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1950 AND 1959
  AND month(birth_date) = 7
  AND day(birth_date) = 4;

# The NOW() function returns the current time in YYYY-MM-DD HH:MM:SS format.
SELECT NOW();

# The CURDATE() function returns just the current date with no time information in YYYY-MM-DD format.
SELECT CURDATE();

# The function CURTIME() returns the time formatted as HH:MM:SS.
SELECT CURTIME();

# The UNIX_TIMESTAMP() function is used to represent time as an integer. It will return the number of seconds since midnight January 1st, 1970. If you pass a date time value to UNIX_TIMESTAMP(), it will give you the number of seconds from the unix epoch to that date.
SELECT CONCAT(
               'Teaching people to code for ',
               UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
               ' seconds'
           );