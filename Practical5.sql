-- after creating employee database

-- Creating Employee Table
CREATE TABLE Employee (
    Emp_no NUMBER,
    Employee_name VARCHAR2(50),
    Street VARCHAR2(100),
    City VARCHAR2(50)
);

-- Creating Works Table
CREATE TABLE Works (
    Emp_no NUMBER,
    Company_name VARCHAR2(50),
    Joining_date DATE,
    Designation VARCHAR2(50),
    Salary NUMBER
);

-- Creating Company Table
CREATE TABLE Company (
    Emp_no NUMBER,
    City VARCHAR2(50)
);

-- Creating Manages Table
CREATE TABLE Manages (
    Emp_no NUMBER,
    Manager_name VARCHAR2(50),
    Mang_no NUMBER
);
