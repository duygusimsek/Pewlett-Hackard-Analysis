# Pewlett-Hackard-Analysis

## Overview 

### History

The goal of the previous project was to analyze the number of eligible people to retire who work for Pewlett Hackard company. By the result of this analysis, the company will be preparing a retirement package for those who meet certain criteria. Also, after employee retirements which position will be in need to fill in the future can be known forehand. 

Because the company employee information was recorded by Excel and VBA, the employee data was needed was available only as six CSV files. To perform the analysis, the CSV files were updated to SQL tables.

To be able to understand the data and find the connections between the information, a flowchart  (a map of the database) was created. With this flowchart, the relationships between the six CSV files more easily were navigated. [EmployeeDB.png](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

### Purpose of The Analysis

After finding the number of people who are eligible for retirement in the previous analysis; for this analysis, the number of retiring employees per title was determined and the employees who are eligible to participate in a mentorship program were identified. 

## Result

The number of the employees who are retirement-ready and were born between January 1, 1952, and December 31, 1955, was determined by creating the “Retirement Titles Table”.  Because some of the employees had multiple titles, duplicate rows were removed and each employee’s recent title remained. To display the number of retirement-age employees by their job title, “Retiring Titles Table” was created. 

The “Mentorship Eligibility Table” was created to determine the employees who are eligible to participate in a mentorship program. [Employee_Database_challenge.sql](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql%20)

* The “Retirement Titles Table” displays the retirement-ready employees’ list with each employee’s several work positions and work duration. [retirement_titles.csv](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/Data_csv/retirement_titles.csv)

* The “Unique Titles Table” shows each retirement-ready employee’s most recent titles. [unique_titles.csv](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/Data_csv/unique_titles.csv)

* The “Retiring Titles Table” displays the majority of the retirement-ready employees are Senior Engineers and Senior Staff and there are 2 managers. [retiring_titles.csv](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/Data_csv/retiring_titles.csv)

* From the “Mentorship Eligibility Table” the information on retirement-ready employees’ age, work positions, and durations can be gathered. [mentorship_eligibilty.csv](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/Data_csv/mentorship_eligibilty.csv)

## Summary
 
The result of the “Unique Titles Table” shows that  72,458 total employees are retirement-ready. Approximately 50.1% of the retiring employees are all level “Engineers”, 44.9% of the retiring employees are all level “Staff”, %4.9 of the retiring employees are “Technique Leader” and only 2 are managers. According to the information in the “Mentorship Eligibility Table” 1,549 employees are eligible to be mentors in the mentorship program which is not enough when the number of retirement-ready employees is considered. 

That information suggests that the impact of the “silver tsunami” will be very important and the future of the company needs to be planned. 

There are two important problems;

1- All these opening positions for retired employees have to be filled and the impact on the department needs to determine. 

For that matter, by writing additional queries, the retirement-ready employee’s “titles by department” table were created and this table was used to create the “position to fill” table to determine the number of roles that need to be filled by title and department. [Employee_Database_challenge.sql](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql%20)

Examining those results shows some departments are affected by the “silver tsunami” more than others. The most impacted departments are Development (18,368 employees) and Production (16,172 employees).  

Two manager positions need to be filled in the Sales and Research departments. 
[tit_by_dept.csv](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/Data_csv/tit_by_dept.csv), 
[positions_to_fill.csv](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/Data_csv/positions_to_fill.csv)


2- The mentoring program has to be planned for preparing the new employees. To do that planning, the number of qualified, retirement-ready employees to mentor needs to be identified. 

For that reason, the “mentorship eligibility ” table was used to create the “qualified mentors by title” table which only has the count of experienced employees (Senior Engineer, Senior Staff, and Technique Leader). As a result, the company has only 816 retirement-ready employees who are eligible for the mentorship program. Because the “mentorship eligibility ” table does not have a Manager position on the list, the company does not have manager mentors. [qualified_mentors](https://github.com/duygusimsek/Pewlett-Hackard-Analysis/blob/main/Data_csv/qualified_mentors_bytitle.csv)



## Resources

* Data Sources
    * departments.csv
    * dept_emp.csv
    * dept_manager.csv
    * employees.csv
    * salaries.csv
    * titles.csv 

* Software: PostgreSQL, pgAdmin, Visual Studio Code 
* Language: SQL
