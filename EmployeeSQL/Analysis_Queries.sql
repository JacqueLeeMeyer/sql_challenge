--Data Analysis Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employee AS e
JOIN salaries AS s ON e.emp_no=s.emp_no;
--SELECT COUNT (emp_no) FROM Employee_Table;

--Data Analysis Question 2
SELECT first_name, last_name, hire_date
FROM employee WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

--Data Analysis Question 3
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM department AS d 
JOIN dept_mang AS dm ON d.dept_no=dm.dept_no
	JOIN employee AS e ON e.emp_no=dm.emp_no;
	
--Data Analysis Question 4
SELECT de.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employee AS e
JOIN dept_emp AS de ON e.emp_no=de.emp_no
	JOIN department AS d ON d.dept_no=de.dept_no 

--Data Analysis Question 5
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Data Analysis Question 6
SELECT e.emp_no, e.first_name, e.last_name
FROM employee AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
WHERE dept_no = 'd007';

--Data Analysis Question 7
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employee AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
	JOIN department AS d ON de.dept_no = d.dept_no
WHERE d.dept_no = 'd007' OR d.dept_no = 'd005';

--Data Analysis Question 8
SELECT last_name, Count(emp_no) AS "frequency"
FROM employee
GROUP BY last_name
ORDER BY "frequency" DESC; 


