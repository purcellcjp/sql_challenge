ALTER TABLE salaries
ADD CONSTRAINT fk_salaries_emp_no
FOREIGN KEY(emp_no)
REFERENCES employees(emp_no)
ON DELETE CASCADE;

		
ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_dept_no
FOREIGN KEY(dept_no)
REFERENCES departments(dept_no)
ON DELETE CASCADE;
  
ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_emp_no
FOREIGN KEY(emp_no)
REFERENCES employees(emp_no)
ON DELETE CASCADE;	


ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_emp_no
FOREIGN KEY(emp_no)
REFERENCES employees(emp_no)
ON DELETE CASCADE;


ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_dep_no
FOREIGN KEY(dept_no)
REFERENCES departments(dept_no)
ON DELETE CASCADE;


ALTER TABLE employees
ADD CONSTRAINT fk_employees_emp_title_id
FOREIGN KEY(emp_title_id)
REFERENCES titles(title_id)
ON DELETE SET NULL;
		