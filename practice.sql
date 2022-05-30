use employees;
-- select COUNT(*) from employees; 
-- select COUNT(*) from departments; 
-- select COUNT(*) from dept_emp; 
-- select COUNT(*) from dept_manager; 
-- select COUNT(*) from salaries; 
-- select COUNT(*) from titles;
-- select * from employees;

/*select emp_no,count(*) as emp_count 
from employees
where emp_no>1
group by emp_no having emp_count>0 order by emp_no
limit 5,5;*/

-- SELECT EMP_NO,FIRST_NAME,LAST_NAME,GENDER   FROM EMPLOYEES;

/*SELECT E.EMP_NO,E.FIRST_NAME,E.LAST_NAME,E.GENDER,S.SALARY,S.FROM_DATE,S.TO_DATE  
FROM EMPLOYEES E
JOIN SALARIES S 
WHERE S.EMP_NO = E.EMP_NO
GROUP BY 1;*/

-- SELECT FIRST_NAME AS 'FIRST NAME',LAST_NAME AS 'LAST NAME' FROM EMPLOYEES;
-- SELECT CONCAT(FIRST_NAME,'  ',LAST_NAME) AS 'FULL NAME' FROM EMPLOYEES;


 -- select * from salaries;
-- select emp_no,salary,date_format(from_date,'%M %d %Y') AS from_date,date_format(to_date,'%m-%D-%Y') AS to_date ,date_format(from_date,'%M, %d, %Y') AS from_date1 from salaries;


-- Left and Right functions
 -- select * from employees;
-- SELECT RIGHT('asdf', 1);
-- SELECT LEFT('asdf', 2);
-- SELECT first_name, last_name,concat(LEFT(first_name, 1), LEFT(last_name, 1)) as Initials from employees;
-- SELECT first_name, last_name,concat(RIGHT(first_name, 1), RIGHT(last_name, 1)) as Last_Initials from employees;

-- WHERE STATEMENT ,AND,OR,IN, NOT IN
-- SELECT * FROM EMPLOYEES WHERE FIRST_NAME='ELVIS';
-- SELECT * FROM EMPLOYEES WHERE FIRST_NAME !='ELVIS';
-- SELECT * FROM EMPLOYEES WHERE FIRST_NAME='ELVIS' AND GENDER='F';
--  SELECT * FROM EMPLOYEES WHERE FIRST_NAME IN ('ELVIS');
-- SELECT * FROM EMPLOYEES WHERE FIRST_NAME NOT IN ('ELVIS');
-- SELECT * FROM TITLES WHERE TO_DATE IS NULL;
-- SELECT * FROM INFORMATION_SCHEMA.PLUGINS;
-- SELECT * FROM INFORMATION_SCHEMA.PLUGINS WHERE PLUGIN_LIBRARY IS NULL;
-- SELECT * FROM INFORMATION_SCHEMA.PLUGINS WHERE PLUGIN_LIBRARY IS NOT NULL;

/*
select * from employees where first_name like 'E%';
select * from employees where first_name like 'Elv%' and last_name like '_e%';

select * from employees where first_name like 'Elv%' and last_name like '_e%' 
and last_name not like '%n' ;*/

-- Using BETWEEN and NOT BETWEEN with SQL WHERE Clause
-- select * from salaries;
-- select * from salaries where salary > 66074 and salary < 71046;

-- select count(*) from salaries where salary >= 66074 and salary <= 71046;

-- select count(*) from salaries where salary between 66074 and 71046;

-- select * from employees;

-- select * from employees where birth_date between '1954-05-01' and '1956-04-20';

-- select count(*) from employees where birth_date between '1954-05-01' and '1956-04-20';

-- select * from employees where birth_date not between '1954-05-01' and '1956-04-20';

-- select count(*) from employees where birth_date not between '1954-05-01' and '1956-04-20';

-- Ordering Results with SQL ORDER BY
-- SELECT * FROM SALARIES;
-- SELECT * FROM SALARIES ORDER BY SALARY;
-- SELECT * FROM SALARIES ORDER BY SALARY ASC;
-- SELECT * FROM SALARIES ORDER BY SALARY DESC;
-- SELECT * FROM SALARIES  ORDER BY FROM_DATE,SALARY DESC;
-- SELECT * FROM EMPLOYEES ORDER BY FIRST_NAME;

-- Limit Results with SQL LIMIT Clause
-- SELECT * FROM EMPLOYEES;
-- SELECT COUNT(*) FROM EMPLOYEES;
-- SELECT * FROM EMPLOYEES LIMIT 20;
-- SELECT * FROM EMPLOYEES LIMIT 0,20;

-- Using SQL to Select DISTINCT Values
-- SELECT * FROM EMPLOYEES;
-- SELECT DISTINCT FIRST_NAME FROM EMPLOYEES;
-- SELECT COUNT(DISTINCT FIRST_NAME) FROM EMPLOYEES;

-- Using SQL Sub-selects with IN in SQL Where Clause
-- SELECT  DISTINCT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE 'C%';
-- SELECT * FROM EMPLOYEES WHERE FIRST_NAME IN (SELECT  DISTINCT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE 'C%');


-- Assignment - Fix SQL Statements
/*
SELECT first_name last_name FROM employees;

SELECT emp_no, salary FROM salaries:

SELECT first_name as 'First Name', last_name is 'Last Name' FROM employees;

SELECT first_name, last_name, concat(first_name, ' '', last_name') as 'Name' FROM employees;

SELECT salary, 
salary * .01 as weekly,
salary * .01 * 4 as monthly,
salary * .01  52 as yearly  FROM salaries;

SELECT from_date as original, DATE_FORMAT(from_date, "%M %d %YYYY") FROM salaries; 

SELECT first_name, last_name, 
concat(LEFT(first_name, 1), LEFT(last_name, 1))) as Initials from employees;

SELECT * FROM employees WHERE first_name = 'Elvis' and last_name = 'Velasco'
and first_name = 'Chenye' and last_name = 'Velasco';

SELECT * FROM employees WHERE first_name IS IN ('Elvis', 'Sumant','Berni', 'Lillian' );

select * from employees where first_name IS LIKE 'Elv%' and last_name IS LIKE '_e%';

select * from employees where birth_date between ('1954-05-01' and '1956-04-20');

select * from employees order by first_name DESCENDING;

select * from employees order by emp_no LIMIT 0, 20, 88;
*/

-- Assignment - Fix SQL Statements SOLUTION
-- SELECT first_name,last_name FROM employees;
-- SELECT emp_no, salary FROM salaries;

-- SELECT first_name as 'First Name', last_name as 'Last Name' FROM employees;
-- SELECT first_name, last_name, concat(first_name, ' ', last_name) as Name FROM employees;

-- SELECT salary, salary * .01 as weekly,salary * .01 * 4 as monthly,salary * .01 *52 as yearly  FROM salaries;

-- SELECT from_date as original, DATE_FORMAT(from_date, "%M %d %Y") FROM salaries; 

-- SELECT first_name, last_name,concat(LEFT(first_name, 1), LEFT(last_name, 1)) as Initials from employees;

-- SELECT * FROM employees WHERE first_name = 'Elvis' and last_name = 'Velasco' OR first_name = 'Chenye' and last_name = 'Velasco';

-- SELECT * FROM employees WHERE first_name  IN ('Elvis', 'Sumant','Berni', 'Lillian' );

-- select * from employees where first_name  LIKE 'Elv%' and last_name  LIKE '_e%';

-- select * from employees where birth_date between '1954-05-01' and '1956-04-20';

-- select * from employees order by first_name DESC;

-- select * from employees order by emp_no LIMIT 0, 20;


--  Using the SQL GROUP By clause
-- SELECT FIRST_NAME,COUNT(*) FROM EMPLOYEES GROUP BY FIRST_NAME;
-- SELECT BIRTH_DATE,COUNT(*) FROM EMPLOYEES GROUP BY BIRTH_DATE;
-- SELECT SALARY,COUNT(*) AS SAL_COUNT FROM SALARIES GROUP BY SALARY ORDER BY SAL_COUNT DESC;
-- Assignment - Write SQL Report for Salary Information by Year Excluding Managers
/*
• Create Report Showing by year: total, max, min, and average salary
• Exclude Managers from Report
• Managers are defined in the table DEPT_MANAGER
• Don’t worry about active dates at this time.
• Hint use NOT IN clause
*/

-- SOLUTION
/*
SELECT * FROM SALARIES;
SELECT * FROM DEPT_MANAGER;
SELECT DISTINCT EMP_NO FROM DEPT_MANAGER;
SELECT * FROM SALARIES WHERE EMP_NO NOT IN (SELECT DISTINCT EMP_NO FROM DEPT_MANAGER);
SELECT 
    date_format(from_date, '%Y') as salary_year,
    sum(salary) as total_salary,
    max(salary) as max_salary,
    min(salary) as min_salary,
    avg(salary) as avg_salary
FROM
    salaries
WHERE
    emp_no NOT IN (SELECT DISTINCT
            emp_no
        FROM
            dept_manager)
GROUP BY salary_year;*/


--  SQL Inner Joins,LIMIT,WHERE,JOIN
-- SELECT * FROM EMPLOYEES INNER JOIN DEPT_MANAGER ON EMPLOYEES.EMP_NO=DEPT_MANAGER.EMP_NO;
-- SELECT E.EMP_NO,E.FIRST_NAME,E.LAST_NAME,D.DEPT_NO FROM EMPLOYEES AS E INNER JOIN DEPT_MANAGER AS D ON E.EMP_NO=D.EMP_NO;
-- SELECT E.EMP_NO,E.FIRST_NAME,E.LAST_NAME,D.DEPT_NO FROM EMPLOYEES AS E INNER JOIN DEPT_MANAGER AS D ON E.EMP_NO=D.EMP_NO LIMIT 10;
-- SELECT dept_name, emp.emp_no, first_name, last_name FROM employees AS emp  JOIN  dept_manager AS dm  ON emp.emp_no = dm.emp_no  JOIN departments AS dept  ON dm.dept_no = dept.dept_no WHERE  dm.to_date = '9999-01-01' order by dept_name; 

/*SELECT dept_name, emp.emp_no, first_name, last_name FROM employees AS emp  JOIN dept_manager AS dm  ON emp.emp_no = dm.emp_no
 JOIN  departments AS dept  ON dm.dept_no = dept.dept_no WHERE  dm.to_date = '9999-01-01'  AND emp.gender = 'F' order by dept_name;  */
 
/* SELECT dept_name, emp.emp_no, first_name, last_name, emp.gender FROM employees AS emp  JOIN  dept_manager AS dm ON emp.emp_no = dm.emp_no  
JOIN  departments AS dept  ON dm.dept_no = dept.dept_no WHERE  dm.to_date = '9999-01-01'  AND emp.gender = 'M' order by dept_name; */

/*
• Similar to Department Manager Report, but use table DEPT_EMP instead.
• Report should show:
• Department Name, First Name, Last Name, and Title
• Limit to active assignment to Department
• Limit to active assignment to Title
• Order by Department, Last Name
*/
-- MY SOLUTION
/*
SELECT FIRST_NAME,LAST_NAME,DEPT_NAME,TITLE 
FROM 
EMPLOYEES AS E 
JOIN 
DEPT_EMP AS D ON E.EMP_NO = D.EMP_NO 
JOIN 
DEPARTMENTS AS DP ON D.DEPT_NO = DP.DEPT_NO 
JOIN 
TITLES AS T ON  T.EMP_NO=E.EMP_NO
ORDER BY DEPT_NAME,E.LAST_NAME;
*/

-- SQL Natural Joins
/*
SELECT 
	dept_name, first_name, last_name, title
FROM 
	employees AS emp
		JOIN
    dept_emp AS de ON emp.emp_no = de.emp_no
        JOIN
    departments AS dept ON de.dept_no = dept.dept_no
        JOIN
    titles AS t ON t.emp_no = emp.emp_no    
WHERE
    de.to_date = '9999-01-01' and 
    t.to_date = '9999-01-01'
ORDER BY dept_name, last_name;*/
/*
SELECT 
	dept_name, first_name, last_name, title
FROM 
	employees AS emp
		NATURAL JOIN
    dept_emp AS de
        NATURAL JOIN
    departments AS dept 
        NATURAL JOIN
    titles AS t 
WHERE
    de.to_date = '9999-01-01' and 
    t.to_date = '9999-01-01'
ORDER BY dept_name, last_name;  */

-- SQL Equi-Joins-IT IS SUPPORTED IN MYSQL AND IN ORACLE " AS it is not following the ANSI standard".
/*SELECT 
	dept_name, first_name, last_name, title
FROM 
	employees AS emp,
    dept_emp AS de, 
    departments AS dept, 
    titles AS t   
WHERE
    emp.emp_no = de.emp_no AND
    de.dept_no = dept.dept_no AND
    t.emp_no = emp.emp_no AND
    de.to_date = '9999-01-01' AND 
    t.to_date = '9999-01-01'
ORDER BY dept_name, last_name; */
/*
-- dept manager query 
SELECT 
    dept_name, emp.emp_no, first_name, last_name
FROM
    employees AS emp
        JOIN
    dept_manager AS dm ON emp.emp_no = dm.emp_no
        JOIN
    departments AS dept ON dm.dept_no = dept.dept_no
WHERE
    dm.to_date = '9999-01-01'
ORDER BY dept_name; 
 
-- dept employee query 
SELECT 
    dept_name, first_name, last_name, title
FROM
    employees AS emp
        JOIN
    dept_emp AS de ON emp.emp_no = de.emp_no
        JOIN
    departments AS dept ON de.dept_no = dept.dept_no
        JOIN
    titles AS t ON t.emp_no = emp.emp_no
WHERE
    de.to_date = '9999-01-01'
        AND t.to_date = '9999-01-01'
ORDER BY dept_name , last_name;     


select * from employees where emp_no not in (select emp_no from dept_manager);

SELECT * FROM employees as emp
  LEFT JOIN dept_manager as dm
  ON emp.emp_no = dm.emp_no;
  
SELECT emp.emp_no, dm.emp_no, first_name, last_name FROM employees as emp
  LEFT JOIN dept_manager as dm
  ON emp.emp_no = dm.emp_no;  
  
SELECT emp.emp_no, dm.emp_no, first_name, last_name FROM employees as emp
  LEFT JOIN dept_manager as dm
  ON emp.emp_no = dm.emp_no
  where dm.emp_no is not null;*/
  
  -- UPDATE
 /*
 select * from departments; 

insert into departments values ('d999', 'foo');

SELECT * FROM departments
WHERE dept_no = 'd999';

UPDATE departments
SET dept_name = 'Social Media Marketing'
WHERE dept_no = 'd999';
*/
-- Database Transactions
/*

select * from employees;

begin;

INSERT INTO employees SELECT max(emp_no) + 1, '1976-02-02', 'Chandan', 'Prasad', 'M', '2015-01-02' FROM employees;

commit;

SELECT * from employees where last_name = 'Prasad';

commit;

UPDATE employees
SET birth_date = '1988-08-10'
WHERE emp_no = 500000;

DELETE FROM employees 
WHERE emp_no = 500000;


rollback;

-- turn off
set autocommit=0;

-- turn on
set autocommit=1;
*/



