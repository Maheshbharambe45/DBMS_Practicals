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


-- Insertion code 
INSERT INTO Employee (Emp_no, Employee_name, Street, City) VALUES
(101, 'John Doe', '123 Main St', 'New York'),
(102, 'Alice Smith', '456 Oak St', 'Los Angeles'),
(103, 'Robert Johnson', '789 Pine St', 'Chicago'),
(104, 'Emily Davis', '567 Elm St', 'Houston'),
(105, 'Michael Brown', '321 Maple St', 'San Francisco');


-- Insertion code 
INSERT INTO Works (Emp_no, Company_name, Joining_date, Designation, Salary) VALUES
(101, 'TechCorp', TO_DATE('2018-06-15', 'YYYY-MM-DD'), 'Software Engineer', 70000),
(102, 'FinanceInc', TO_DATE('2017-03-20', 'YYYY-MM-DD'), 'Accountant', 65000),
(103, 'HealthCare Ltd', TO_DATE('2019-08-10', 'YYYY-MM-DD'), 'Doctor', 80000),
(104, 'EduWorld', TO_DATE('2016-05-25', 'YYYY-MM-DD'), 'Professor', 75000),
(105, 'BuildIt', TO_DATE('2020-01-30', 'YYYY-MM-DD'), 'Civil Engineer', 72000);

-- Insertion code 
INSERT INTO Company (Emp_no, City) VALUES
(101, 'New York'),
(102, 'Los Angeles'),
(103, 'Chicago'),
(104, 'Houston'),
(105, 'San Francisco');


-- pl/sql code
DECLARE
    v_Emp_name Employee.Employee_name%TYPE;
    v_Join_date Works.Joining_date%TYPE;
    v_Designation Works.Designation%TYPE;
    v_Emp_no NUMBER;
BEGIN
    -- Accept input from the user
    v_Emp_no := :Enter_Emp_no;

    -- Retrieve data from the Works table
    SELECT E.Employee_name, W.Joining_date, W.Designation
    INTO v_Emp_name, v_Join_date, v_Designation
    FROM Employee E
    JOIN Works W ON E.Emp_no = W.Emp_no
    WHERE E.Emp_no = v_Emp_no;

    -- Display the result
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_Emp_name);
    DBMS_OUTPUT.PUT_LINE('Joining Date: ' || TO_CHAR(v_Join_date, 'DD-MON-YYYY'));
    DBMS_OUTPUT.PUT_LINE('Designation: ' || v_Designation);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with the given number.');
END;
/




