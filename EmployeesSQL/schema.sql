-- Create a department table
CREATE TABLE department(
    dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(30),
	PRIMARY KEY(dept_no)
);
-- Create titles table
CREATE TABLE titles(
title_id VARCHAR(5) NOT NULL,
title VARCHAR(30),
PRIMARY KEY(title_id)
);

-- Create department employee table
CREATE TABLE dept_emp(
emp_no INTEGER NOT NULL,
dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY(emp_no,dept_no),
    FOREIGN KEY(dept_no) REFERENCES department(dept_no),
	--FOREIGN KEY(emp_no) REFERENCES employees(emp_no)

);



);
-- Create employees table
CREATE TABLE employees(
emp_no INTEGER NOT NULL,
emp_title_id VARCHAR(50),
birth_date DATE,
first_name VARCHAR(50),
last_name VARCHAR(50),
sex VARCHAR(1),
hire_date DATE,
PRIMARY KEY(emp_no),
FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)

);
--Create manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
    emp_no INTEGER NOT NULL,
	PRIMARY KEY(emp_no,dept_no),
    FOREIGN KEY(dept_no) REFERENCES department(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)

--  Create salaries table
CREATE TABLE salaries(
emp_no INTEGER NOT NULL,
salary INTEGER,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)

);

SELECT * FROM dept_manager;

