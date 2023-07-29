-- Q1 list emp. number, last name, first name, sex, salary of each employee
SELECT e.emp_no, e.first_name, e.last_name, e.sex
FROM employee e
JOIN salary s
ON (e.emp_no = s.emp_no);

-- Q2 list first name, last name, hire date for emps. hired in 1986
SELECT first_name, last_name, hire_date
FROM employee
WHERE SPLIT_PART(hire_date, '/', 3) = '1986';

-- Q3 list manager of each dpt. with dept. no, dept, name, emp. no, last name, first name
SELECT d.dept_name, d.dept_no, e.emp_no, e.last_name, e.first_name
FROM employee e
JOIN dept_manager AS dm ON (e.emp_no = dm.emp_no)
JOIN department AS d ON (d.dept_no = dm.dept_no);

-- Q4 list dept. no of each emp., with emp. no, last name, first name, dept name
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employee e
JOIN dept_employee AS de ON (e.emp_no = de.emp_no)
JOIN department AS d ON (d.dept_no = de.dept_no);

-- Q5 list first name, last name, sex of each emp. whose first name is Hercules 
-- and last name begins with B.
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Q6 list each emp. in Sales, inlc. emp. no, last name, first name
SELECT emp_no, last_name, first_name
FROM employee
WHERE emp_no IN
	(SELECT emp_no
	FROM dept_employee
	WHERE dept_no IN 
		(SELECT dept_no
		FROM department
		WHERE dept_name = 'Sales'));
		
-- Q7 list each emp in Sales and Development, incl. emp no, last name, first name,
-- dept. name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employee e
JOIN dept_employee AS de ON (de.emp_no = e.emp_no)
JOIN department AS d ON (d.dept_no = de.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- Q8 list frequency counts, in desc. order, of all emp. last names
SELECT last_name, COUNT(emp_no) AS "Total Employees"
FROM employee
GROUP BY last_name
ORDER BY "Total Employees" DESC;
	