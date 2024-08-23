/*
TRUNCATE TABLE dept_emp;
TRUNCATE TABLE dept_manager;
TRUNCATE TABLE departments;
TRUNCATE TABLE salaries;
TRUNCATE TABLE employees;
TRUNCATE TABLE titles;
*/


COPY departments
FROM 'C:\Users\purce\Documents\GitHub\sql_challenge\EmployeeSQL\departments.csv'
DELIMITER ','
CSV HEADER;

COPY titles
FROM 'C:\Users\purce\Documents\GitHub\sql_challenge\EmployeeSQL\titles.csv'
DELIMITER ','
CSV HEADER;

COPY employees
FROM 'C:\Users\purce\Documents\GitHub\sql_challenge\EmployeeSQL\employees.csv'
DELIMITER ','
CSV HEADER;

COPY dept_emp
FROM 'C:\Users\purce\Documents\GitHub\sql_challenge\EmployeeSQL\dept_emp.csv'
DELIMITER ','
CSV HEADER;

COPY dept_manager
FROM 'C:\Users\purce\Documents\GitHub\sql_challenge\EmployeeSQL\dept_manager.csv'
DELIMITER ','
CSV HEADER;



COPY salaries
FROM 'C:\Users\purce\Documents\GitHub\sql_challenge\EmployeeSQL\salaries.csv'
DELIMITER ','
CSV HEADER;


