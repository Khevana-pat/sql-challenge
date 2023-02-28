SELECT *FROM Departments
SELECT * FROM Title
SELECT * FROM Employees
SELECT * FROM Dept_employees
SELECT * FROM Dept_manager
SELECT * FROM Salaries

--List the employee number, last name, first name, sex, and salary of each employee
SELECT E.emp_no,E.last_name,E.first_name,E.sex,S.salary
FROM Employees AS E
INNER JOIN Salaries AS S ON
S.emp_no = E.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name,last_name,hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31' 

--List the manager of each department along with their department number, department name, employee number, last name, and first name 

SELECT M.emp_no,M.dept_no,E.last_name,E.first_name,D.dept_name
FROM Dept_manager as M
INNER JOIN Departments as D ON
D.dept_no = M.dept_no
INNER JOIN Employees as E ON
E.emp_no = M.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT b.dept_no,E.emp_no, E.last_name, E.first_name, D.dept_name
FROM Employees as E
INNER JOIN  Dept_employees  as b
ON E.emp_no = b.emp_no
INNER JOIN Departments D
ON b.dept_no = D.dept_no;



--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 

SELECT first_name,last_name,sex
FROM Employees
WHERE first_name = 'Hercules' AND
      last_name LIKE 'B%'
      
      
      
--List each employee in the Sales department, including their employee number, last name, and first name 

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM Employees as E
JOIN  Dept_employees as b
ON E.emp_no = b.emp_no
JOIN Departments as D
ON b.dept_no = D.dept_no
WHERE D.dept_name = 'Sales';





--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM Employees as E
JOIN  Dept_employees as b
ON E.emp_no = b.emp_no
JOIN Departments as D
ON b.dept_no = D.dept_no
WHERE D.dept_name IN ('Sales','Development')

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name,COUNT(last_name) AS "last_name_count"
FROM Employees
group by last_name
Order by "last_name_count" DESC;


