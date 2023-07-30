# sql-challenge

Challenge 9 submission contains:

EmployeeSQL folder:

  employee_db_erd.png - image file of database sketch

  schema.sql - script for creating tables and relationships in employee_db

  query.sql - analysis script

Data folder:

  departments.csv - file imported into 'department' table

  dept_emp.csv - file imported into 'dept_employee' table

  dept_manager.csv - file imported into 'dept_manager' table

  employees.csv - file imported into 'employee' table

  salaries.csv - file imported into 'salary' table

  titles.csv - file imported into 'title' table

Code in line 10 in query.sql to split hire date column came from w3resource at https://w3resource.com/PostgreSQL/split_part-function.php

QuickDBD was used to create tables and relationships, and the export file was used in schema.sql to create the employee_db tables. The exported file was edited to add primary keys to the dept_manager and dept_employee tables. The code in lines 62 and 70 in schema.sql to add foreign key came from StackOverflow at https://stackoverflow.com/questions/8859353/alter-table-to-add-a-composite-primary-key
