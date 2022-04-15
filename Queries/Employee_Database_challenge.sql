--Deliverable 1: The Number of Retiring Employees by Title (50 points)

SELECT 	e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as e 
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_retirement_titles
FROM retirement_titles as ret
WHERE ret.to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

--Retrieve number of pre-retire employees by their most recent job title
SELECT COUNT (urt.emp_no), urt.title
INTO retiring_titles
FROM unique_retirement_titles as urt
GROUP BY title
ORDER BY COUNT(title) DESC;

--Deliverable 2: The Employees Eligible for the Mentorship Program (30 points)

SELECT DISTINCT ON (emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date, 
		ti.title	
INTO mentorship_eligibility 
FROM employees as e 
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE de.to_date = ('9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

--Summary additional queries 
--Retirement employee nos by departments
SELECT DISTINCT ON (emp_no)
urt.emp_no,
urt.title,
d.dept_name
INTO tit_by_dept
FROM unique_retirement_titles as urt	
INNER JOIN dept_emp as de
ON (urt.emp_no = de.emp_no)
INNER JOIN departments as d 
ON (d.dept_no = de.dept_no)
ORDER BY urt.emp_no, de.to_date DESC;

-- The number of roles that need to be filled by title and department
SELECT td.dept_name, td.title, COUNT(td.title) 
INTO positions_to_fill
FROM (SELECT title, dept_name from tit_by_dept) as td
GROUP BY td.dept_name, td.title
ORDER BY td.dept_name DESC;

--Qualified retirement-ready employees to mentor next generation.
SELECt me.title, COUNT(me.title) 
INTO qualified_mentors_bytitle
FROM mentorship_eligibility as me 
--Retrieve the qualified most senior leaders to mentor next generation  
WHERE me.title IN ('Manager', 'Senior Staff', 'Technique Leader','Senior Engineer')
GROUP BY  me.title;

