ALTER DATABASE "EmployeesSQL" SET datestyle TO "ISO, MDY";


CREATE TABLE Departments(
dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Title(
title_id VARCHAR(10) NOT NULL PRIMARY KEY,
title VARCHAR(50) NOT NULL);

CREATE TABLE Employees(
emp_no INT NOT NULL PRIMARY KEY,
emp_title_id VARCHAR(10),
FOREIGN KEY (emp_title_id) REFERENCES Title(title_id),
birth_date DATE,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
sex VARCHAR (50),
hire_date DATE);


CREATE TABLE Dept_employees(
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
dept_no VARCHAR(10),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no));


CREATE TABLE Dept_manager(
dept_no VARCHAR(10),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no));

CREATE TABLE Salaries(
emp_no INT,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),	
salary FLOAT
);


SELECT *FROM Departments
SELECT * FROM Title
SELECT * FROM Employees
SELECT * FROM Dept_employees
SELECT * FROM Dept_manager
SELECT * FROM Salaries
