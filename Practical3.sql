CREATE TABLE Department (
    Deptno INT PRIMARY KEY,
    DeptName VARCHAR(30),
    Location VARCHAR(30)
);

INSERT INTO Department (Deptno, DeptName, Location) VALUES
(1, 'HR', 'Mumbai'),
(2, 'Finance', 'Pune'),
(3, 'IT', 'Bangalore'),
(4, 'Marketing', 'Delhi'),
(9, 'Operations', 'Hyderabad');

-- Add Column (Designation)
ALTER TABLE Department ADD Designation VARCHAR(30);

-- List Records Grouped by Deptno
SELECT Deptno, COUNT(*) AS TotalRecords
FROM Department
GROUP BY Deptno;

-- Update Record Where Deptno = 9
UPDATE Department
SET Location = 'Chennai'
WHERE Deptno = 9;

-- Delete Any Column (Removing Designation)
ALTER TABLE Department DROP COLUMN Designation;

