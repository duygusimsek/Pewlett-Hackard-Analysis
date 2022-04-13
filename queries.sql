--retirement eligilibility
SELECT first_name, last_name
FROM employees
Where (birth_date BETWEEN '1952-01-01' and '1955-12-31')
And (hire_date between '1985-01-01' and '1988-12-31');

--retirement eligilibility
SELECT count(first_name)
FROM employees
Where (birth_date BETWEEN '1952-01-01' and '1955-12-31')
And (hire_date between '1985-01-01' and '1988-12-31');


--retirement eligilibility
SELECT first_name, last_name
INTO retirement_info
FROM employees
Where (birth_date BETWEEN '1952-01-01' and '1955-12-31')
And (hire_date between '1985-01-01' and '1988-12-31');

SELECT * FROM retirement_info;
