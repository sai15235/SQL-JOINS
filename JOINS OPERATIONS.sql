CREATE DATABASE avn;

use avn;

-- Create the employee table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    occupation VARCHAR(100),
    salary INT,
    dept_id INT
);

-- Insert values into employees
INSERT INTO employees (employee_id, first_name, last_name, occupation, salary, dept_id) VALUES
(1, 'Leslie', 'Knope', 'Deputy Director of Parks and Recreation', 75000, 1),
(2, 'Ron', 'Swanson', 'Director of Parks and Recreation', 70000, 1),
(3, 'Tom', 'Haverford', 'Entrepreneur', 50000, 1),
(4, 'April', 'Ludgate', 'Assistant to the Director of Parks and Recreation', 25000, 1),
(5, 'Jerry', 'Gergich', 'Office Manager', 50000, 1),
(6, 'Donna', 'Meagle', 'Office Manager', 60000, 1),
(7, 'Ann', 'Perkins', 'Nurse', 55000, 4),
(8, 'Chris', 'Traeger', 'City Manager', 90000, 3),
(9, 'Ben', 'Wyatt', 'State Auditor', 70000, 6),
(10, 'Andy', 'Dwyer', 'Shoe Shiner and Musician', 20000, 3),
(11, 'Mark', 'Brendanawicz', 'City Planner', 57000, 3),
(12, 'Craig', 'Middlebrooks', 'Parks Director', 65000, 1);

select * from employees;

-- Create employee_details table
CREATE TABLE employee_details (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    birth_date DATE
);

-- Insert values into employee_details
INSERT INTO employee_details (employee_id, first_name, last_name, age, gender, birth_date) VALUES
(1, 'Leslie', 'Knope', 44, 'Female', '1979-09-25'),
(3, 'Tom', 'Haverford', 36, 'Male', '1987-03-04'),
(4, 'April', 'Ludgate', 29, 'Female', '1994-03-27'),
(5, 'Jerry', 'Gergich', 61, 'Male', '1962-08-28'),
(6, 'Donna', 'Meagle', 46, 'Female', '1977-07-30'),
(7, 'Ann', 'Perkins', 35, 'Female', '1988-12-01'),
(8, 'Chris', 'Traeger', 43, 'Male', '1980-11-11'),
(9, 'Ben', 'Wyatt', 38, 'Male', '1985-07-26'),
(10, 'Andy', 'Dwyer', 34, 'Male', '1989-03-25'),
(11, 'Mark', 'Brendanawicz', 40, 'Male', '1983-06-14'),
(12, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');

-- View the data
SELECT * FROM employee_details;

--  JOINS
-- joins allow you to combine 2 tables together (or more) if they have a common column.
-- doesn't mean they need the same column name, but the data in it are the same and can be used to join the tables together


-- inner join 
select emp.employee_id, age ,occupation from employees as emp
inner join employee_details as emp_det
  on emp.employee_id = emp_det.employee_id;


-- left  join 
select * from employees as emp
left join employee_details as emp_det
  on emp.employee_id = emp_det.employee_id;


-- right join 
select * from employees as emp
right join employee_details as emp_det
  on emp.employee_id = emp_det.employee_id;
  
  -- self join
SELECT *
FROM employees emp1
JOIN employees emp2
	ON emp1.employee_id = emp2.employee_id;
    
