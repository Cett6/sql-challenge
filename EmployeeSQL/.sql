--employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
from employees
join salaries on employees.emp_no = salaries.emp_no;

--first name, last name, and hire date for employees who were hired in 1986.
SELECT  first_name,  last_name, hire_date 
FROM employees
WHERE hire_date like '%1986';

--managers 
--department number, department name, employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.last_name, employees.first_name
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no 
JOIN departments on departments.dept_no = dept_manager.dept_no;

--employee
--employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments on departments.dept_no = dept_emp.dept_no;

--"Hercules B."
--first name, last name, and sex  
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Sales  
--employee number, last name, first name, and department
SELECT * FROM departments

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments on departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
;

--employees in the Sales and Development 
--employee number, last name, first name, and department
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments on departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
OR  departments.dept_name = 'Development';

--List the frequency count of employee last names 
--(i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(last_name) AS "Frequency Count"
FROM employees 
GROUP by last_name
ORDER BY "Frequency Count" DESC;
