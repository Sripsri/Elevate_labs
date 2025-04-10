
-- Find all employees
SELECT *
FROM employee;

-- Find all clients
SELECT *
FROM clients;

-- Find all employees ordered by salary

SELECT *
FROM employee;
-- ORDER BY salary ASC/DESC;

-- Find all employees ordered by sex then name
SELECT *
from employee
ORDER BY sex, name;

-- Find the first 5 employees in the table
select emp_id
from employee
limit 5;
SELECT *
from employee
LIMIT 5;

-- Find the first and last names of all employees
select first_name,last_name
from employee;

SELECT first_name, employee.last_name
FROM employee;

-- Find the forename and surnames names of all employees
SELECT first_name AS forename, employee.last_name AS surname
FROM employee;
-- Find out all the different genders
 select sex
 from employee;
 
SELECT distinct sex
FROM employee;

-- Find all male employees
SELECT *
FROM employee
WHERE sex = 'M';

-- Find all employees at branch 2
SELECT *
FROM employee
WHERE branch_id = 2;

-- Find all employee's id's and names who were born after 1969
SELECT emp_id, first_name, last_name
FROM employee
WHERE birth_day >= 1970-01-01;

select emp_id,concat(first_name, '  ' ,last_name) as fullname
from employee
where birth_day >= 1970-01-01;

-- Find all female employees at branch 2
SELECT *
FROM employee
WHERE branch_id = 2 AND sex = 'F';


-- Find all employees who are female & born after 1969 or who make over 80000
select * 
from employee
where sex="F" and birth_day >= '1970-01-01'  or salary >= 80000;

SELECT *
FROM employee
WHERE (birth_day >= '1970-01-01' AND sex = 'F') OR salary > 80000;

-- Find all employees born between 1970 and 1975
SELECT *
FROM employee
WHERE birth_day BETWEEN '1970-01-01' AND '1975-01-01';

-- Find all employees named Jim, Michael, Johnny or David
SELECT *
FROM employee
WHERE first_name IN ('Jim', 'Michael', 'Johnny', 'David');

-- Find the number of employees
SELECT COUNT(super_id)
FROM employee;

-- Find the number of employees
SELECT COUNT(*)
FROM employee;

-- Find the average of all employee's salaries
SELECT AVG(salary)
FROM employee;

-- Find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee;

-- Find out how many males and females there are ## 
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

-- Find the total sales of each salesman ##
SELECT emp_id, SUM(total_sales) AS total_sales
FROM works_with
GROUP BY emp_id;
-- Find the total amount of money spent by each client
SELECT client_id,SUM(total_sales) as Total_Sales
FROM works_with
GROUP BY client_id;

-- % = any # characters, _ = one character
-- Find any client's who are an LLC
SELECT *
FROM client
Where client_name LIKE '%LLC%';

SELECT *
FROM client
WHERE client_name LIKE '%LLC';

-- Find any branch suppliers who are in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '% Label%'; 

-- Find any employee born on the 10th day of the month
SELECT *
FROM employee
WHERE birth_day LIKE '%10%';

SELECT *
FROM employee
WHERE birth_day LIKE '_____10%';

-- Find any clients who are schools
SELECT * 
FROM client
WHERE client_name LIKE '%school%';

SELECT *
FROM client
WHERE client_name LIKE '%Highschool%';



