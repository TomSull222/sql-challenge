--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS titles;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS dept_emp;
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS salaries;


CREATE TABLE departments(
dept_no VARCHAR(4) NOT NUll, 
dept_name VARCHAR(30) NOT NULL,
Primary Key (dept_no),
Unique (dept_name)
);

SELECT * FROM departments;

CREATE TABLE titles (
title_id VARCHAR(10) PRIMARY KEY,
title VARCHAR(50) NOT NULL
);

SELECT * FROM titles;

CREATE TABLE employees(
emp_no INT NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL, 
PRIMARY KEY (emp_no)
);

SELECT * FROM employees;

CREATE TABLE salaries (
emp_no INTEGER PRIMARY KEY,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INTEGER NOT NULL
);

SELECT * FROM salaries

CREATE TABLE dept_emp (
emp_no INT   NOT NULL,
dept_no VARCHAR   NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
dept_no VARCHAR (4) NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no) 
);

SELECT * FROM dept_manager;



