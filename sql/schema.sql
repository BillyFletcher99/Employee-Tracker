/* Will conditionally delete database if the database already exists */
DROP DATABASE IF EXISTS employeeDataBase;

/* Creates new database */
CREATE DATABASE employeeDataBase;

/* Uses specific database */
USE employeeDataBase;

/* Creates first table for Employees data */
CREATE TABLE Employees (
    ID INT NOT NULL AUTO_INCREMENT,
    First_Name VARCHAR(30) NULL,
    Last_Name VARCHAR(30) NULL,
    Role_ID INT NULL,
    Manager_ID INT NULL,
    PRIMARY KEY (ID)
)
/* Creates second table for Department data */
CREATE TABLE Department (
    ID INT NOT NULL AUTO_INCREMENT,
    Department_Name VARCHAR(30) NULL,
    PRIMARY KEY (ID)
)
/* Creates third table for Role data */
CREATE TABLE Role (
    ID INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(30) NULL,
    Salary DECIMAL(18,4) NULL,
    Department_Name INT NULL,
    PRIMARY KEY (ID)
)