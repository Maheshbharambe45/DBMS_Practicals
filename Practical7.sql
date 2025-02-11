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


-- insert data
INSERT INTO Employee (Emp_no, Employee_name, Street, City) VALUES
(101, 'John Doe', '123 Main St', 'New York'),
(102, 'Alice Smith', '456 Oak St', 'Los Angeles'),
(103, 'Robert Johnson', '789 Pine St', 'Chicago'),
(104, 'Emily Davis', '567 Elm St', 'Houston'),
(105, 'Michael Brown', '321 Maple St', 'San Francisco');


-- insert data
INSERT INTO Works (Emp_no, Company_name, Joining_date, Designation, Salary) VALUES
(101, 'TechCorp', TO_DATE('2018-06-15', 'YYYY-MM-DD'), 'Software Engineer', 70000),
(102, 'FinanceInc', TO_DATE('2017-03-20', 'YYYY-MM-DD'), 'Accountant', 65000),
(103, 'HealthCare Ltd', TO_DATE('2019-08-10', 'YYYY-MM-DD'), 'Doctor', 80000),
(104, 'EduWorld', TO_DATE('2016-05-25', 'YYYY-MM-DD'), 'Professor', 75000),
(105, 'BuildIt', TO_DATE('2020-01-30', 'YYYY-MM-DD'), 'Civil Engineer', 72000);


-- plsql code
DECLARE
    CURSOR emp_cursor IS 
        SELECT Emp_no, Salary FROM Works 
        WHERE Salary < (SELECT AVG(Salary) FROM Works);
    
    v_emp_no Works.Emp_no%TYPE;
    v_salary Works.Salary%TYPE;
    
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_emp_no, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;

        -- Increase salary by 10% (You can modify the percentage)
        UPDATE Works
        SET Salary = v_salary * 1.10
        WHERE Emp_no = v_emp_no;
    END LOOP;
    
    CLOSE emp_cursor;
    COMMIT;  -- Save changes

    DBMS_OUTPUT.PUT_LINE('Salary updated for employees earning below average.');
END;
/



