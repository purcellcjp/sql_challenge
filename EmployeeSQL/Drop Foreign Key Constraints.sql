ALTER TABLE salaries
DROP CONSTRAINT fk_salaries_emp_no;


		
ALTER TABLE dept_manager
DROP CONSTRAINT fk_dept_manager_dept_no;

 
 
ALTER TABLE dept_manager
DROP CONSTRAINT fk_dept_manager_emp_no;	


ALTER TABLE dept_emp
DROP CONSTRAINT fk_dept_emp_emp_no;


ALTER TABLE dept_emp
DROP CONSTRAINT fk_dept_emp_dep_no;	


ALTER TABLE employees
DROP CONSTRAINT fk_employees_emp_title_id;
		