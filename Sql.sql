--List the following details of each employee: 
--employee number, last name, first name, sex, and salary
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
left join salaries as s on
e.emp_no=s.emp_no;


--List first name, last name, and hire date for 
--employees who were hired in 1986.
select first_name, last_name, hire_date
from employees 
where hire_date between '1986-1-1' and '1986-12-31'
order by hire_date ASC;


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from employees as e
inner join dept_manager as dm on dm.emp_no=e.emp_no
inner join departments as d on d.dept_no=dm.dept_no
order by dept_no ASC;


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees as e
left join dept_emp as d on e.emp_no=d.emp_no
left join departments as dp on d.dept_no=dp.dept_no
order by last_name ASC;


--List first name, last name, and sex for employees whose first name is
--"Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees 
where first_name = 'Hercules' and last_name like 'B%'
order by last_name ASC;


--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees as e
left join dept_emp as d on e.emp_no=d.emp_no
left join departments as dp on d.dept_no=dp.dept_no
where dp.dept_name = 'Sales';


--List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees as e
left join dept_emp as d on e.emp_no=d.emp_no
left join departments as dp on d.dept_no=dp.dept_no
where dp.dept_name = 'Sales' OR dp.dept_name = 'Development';


--List the frequency count of employee last names 
--(i.e., how many employees share each last name) in descending order.
select last_name, count(*) as "Last Name Count"
from employees
group by last_name
order by "Last Name Count" DESC;