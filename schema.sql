drop table departments
drop table dept_emp
drop table titles
drop table dept_manager
drop table salaries
drop table employees

-- department table
create TABLE Departments(
  dept_no VARCHAR NOT NULL PRIMARY KEY, 
	dept_name VARCHAR NOT NULL)

-- DEPRTMENTS Q
SELECT *
FROM Departments	
-- dept_emp table
create TABLE dept_emp(
  emp_no INTEGER NOT NULl, 
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no))
	
-- dept_emp q
SELECT *
FROM dept_emp

--dept_manager table
create TABLE dept_manager(
  dept_no VARCHAR NOT NULL, 
	emp_no INTEGER NOT NULL PRIMARY KEY)

-- dept_manager q
SELECT *
FROM dept_manager
	
-- employees table
create TABLE Employees(
  emp_no INTEGER NOT NULL PRIMARY KEY, 
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL, 
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id))

-- employees table q
SELECT *
FROM Employees
	
-- salaries tale
create TABLE Salaries(
  emp_no INTEGER NOT NULL, 
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no))

-- salary q
SELECT *
FROM Salaries
	
--titles table
create TABLE Titles(
  title_id VARCHAR NOT NULL PRIMARY KEY, 
	title VARCHAR NOT NULL)
	
--tittles view
SELECT *
FROM Titles