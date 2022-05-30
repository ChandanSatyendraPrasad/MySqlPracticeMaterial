use employees;
-- Create Employee Using Transaction
/*• Start Transaction
• Create a new Employee in the employee database
• Create Employee record
• Create Title Record
• Assign Employee to a department
• Give Employee a salary
• Commit Transaction*/
begin;

INSERT INTO employees SELECT max(emp_no) + 1, '1985-01-01', 'Jessie', 'Porter', 'M', '2018-01-01' FROM employees;

INSERT INTO titles SELECT max(emp_no), 'Staff', '2018-01-01', '9999-01-01'FROM employees;

INSERT INTO dept_emp SELECT max(emp_no), 'd008', '2018-01-01', '9999-01-01'FROM employees;

INSERT INTO salaries SELECT max(emp_no), 120000, '2018-01-01', '9999-01-01' FROM employees;

commit;

SELECT * from employees where first_name = 'Jessie' and last_name = 'Porter';