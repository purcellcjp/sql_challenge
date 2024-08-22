----------------------------------------------------------------------------------------------------
-- 1. List the employee number, last name, first name, sex, and salary of each employee.
----------------------------------------------------------------------------------------------------
SELECT emp.emp_no
     , emp.last_name
	 , emp.first_name
	 , emp.sex
	 , sal.salary
FROM employees emp
JOIN salaries sal ON
	(emp.emp_no = sal.emp_no);


----------------------------------------------------------------------------------------------------
-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
----------------------------------------------------------------------------------------------------
SELECT emp.first_name
     , emp.last_name
     , emp.hire_date
FROM employees emp
WHERE (
       (emp.hire_date > '1985-12-31') AND 
	   (emp.hire_date < '1987-01-01')
	  );

----------------------------------------------------------------------------------------------------
-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
----------------------------------------------------------------------------------------------------
SELECT dm.dept_no
     , dept.dept_name
	 , dm.emp_no AS dept_manager_emp_no
	 , emp.last_name AS dept_manager_last_name
	 , emp.first_name AS dept_manager_first_name
FROM dept_manager dm
JOIN employees emp ON
    (dm.emp_no = emp.emp_no)
JOIN departments dept ON
    (dm.dept_no = dept.dept_no);


----------------------------------------------------------------------------------------------------
-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
----------------------------------------------------------------------------------------------------
SELECT de.dept_no
	 , emp.emp_no
     , emp.last_name
	 , emp.first_name
	 , dept.dept_name
FROM employees emp
JOIN dept_emp de ON
     (emp.emp_no = de.emp_no)
JOIN departments dept ON
     (de.dept_no = dept.dept_no);
	 

----------------------------------------------------------------------------------------------------
-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
----------------------------------------------------------------------------------------------------
SELECT emp.first_name
     , emp.last_name
	 , emp.sex
FROM employees emp
WHERE (emp.first_name = 'Hercules')
  AND (emp.last_name LIKE 'B%');

----------------------------------------------------------------------------------------------------
-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
----------------------------------------------------------------------------------------------------
SELECT emp.emp_no
     , emp.last_name
	 , emp.first_name
FROM dept_emp de
JOIN employees emp ON
    (de.emp_no = emp.emp_no)
WHERE (de.dept_no IN (
                      SELECT dept_no FROM departments WHERE (dept_name = 'Sales')
                     ));


----------------------------------------------------------------------------------------------------
-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
----------------------------------------------------------------------------------------------------
SELECT de.emp_no
     , emp.last_name
	 , emp.first_name
	 , dept.dept_name
FROM dept_emp de
JOIN employees emp ON
    (de.emp_no = emp.emp_no)
JOIN departments dept ON
    (de.dept_no = dept.dept_no)
WHERE (de.dept_no IN ('d005','d007'));


----------------------------------------------------------------------------------------------------
-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
----------------------------------------------------------------------------------------------------
SELECT emp.last_name
     , count(emp.last_name) AS last_name_frequency_count
FROM employees emp
GROUP BY emp.last_name
ORDER BY last_name_frequency_count DESC;

