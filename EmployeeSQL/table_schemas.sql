--------------------------------------------------
--  Drop Tables if they Exists
--------------------------------------------------

DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;


--------------------------------------------------
-- Create table titles
--------------------------------------------------
CREATE TABLE titles 
(
 title_id		CHAR(5)			PRIMARY KEY,
 titles			VARCHAR(20)		NOT NULL
);


--------------------------------------------------
-- Create table employees
--------------------------------------------------
CREATE TABLE employees 
(
 emp_no			SERIAL 			PRIMARY KEY,
 emp_title_id	CHAR(5)			NOT NULL,
 birth_date		DATE			NOT NULL,
 first_name		VARCHAR(30)		NOT NULL,
 last_name		VARCHAR(30)		NOT NULL,
 sex			CHAR(1)			NOT NULL,
 hire_date		DATE			NOT NULL
);


--------------------------------------------------
-- Create table salaries
--------------------------------------------------
CREATE TABLE salaries 
(
 emp_no			INT 			PRIMARY KEY,
 salary			DECIMAL(18,2)	NOT NULL
);


--------------------------------------------------
-- Create table departments
--------------------------------------------------
CREATE TABLE departments
(
 dept_no		CHAR(4)			PRIMARY KEY,
 dept_name		VARCHAR(20)		NOT NULL
);


--------------------------------------------------
-- Create table dept_manager
--------------------------------------------------
CREATE TABLE dept_manager
(
 dept_no		CHAR(4),
 emp_no			INT,
 CONSTRAINT pk_dept_manager PRIMARY KEY (dept_no, emp_no)
);


--------------------------------------------------
-- Create new dept_emp
--------------------------------------------------
CREATE TABLE dept_emp
(
 emp_no			INT				NOT NULL, 
 dept_no		CHAR(4)			NOT NULL,
 CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no)
);
