
# JSP Employee Database Web Application

## Description

This project is a simple **JSP web application** that connects to a **MySQL database** using **JDBC**.
It allows users to insert employee details and display them from the database.

## Technologies Used

* Java
* JSP (Java Server Pages)
* MySQL Database
* JDBC
* Apache Tomcat
* Eclipse IDE

## Features

* Insert employee details into the database
* Display employee records in a table
* Database connectivity using JDBC

## Database Table

Table name: `employees`

Columns:

* eno (Employee Number)
* name (Employee Name)
* gender (Employee Gender)
* dept (Department)
* salary (Employee Salary)

## How to Run the Project

1. Start MySQL and create the database `god`.
2. Create the `employees` table.
3. Add the MySQL JDBC driver to the project.
4. Deploy the project on **Apache Tomcat**.
5. Open the following URLs in the browser:

Insert Page:
http://localhost:8080/LAB6/Insert.jsp

Display Page:
http://localhost:8080/LAB6/Disp.jsp

## Author

Manoj Kumar
