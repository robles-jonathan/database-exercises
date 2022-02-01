USE employees;
SELECT d.dept_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
FROM dept_manager as dm
         JOIN employees as e
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS "Department Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
FROM dept_manager as dm
         JOIN employees as e
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title AS 'Title', COUNT(t.emp_no) AS 'Count'
FROM titles AS t
JOIN dept_emp AS de ON t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date > CURDATE()
  AND d.dept_name = 'Customer Service'
GROUP BY t.title
ORDER BY Count DESC;



SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary as 'Salary'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE s.to_date > CURDATE() AND dm.to_date > CURDATE()
ORDER BY d.dept_name;



# Bonus Find the names of all current employees, their department name, and their current manager's name .

