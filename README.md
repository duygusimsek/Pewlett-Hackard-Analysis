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
