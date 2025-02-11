CREATE TABLE StudentData (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age > 0),
    Class VARCHAR(10)
);

INSERT INTO StudentData (ID, Name, Age, Class) VALUES
(1, 'Rahul', 22, 'MCA'),
(2, 'Aisha', 21, 'BCA'),
(3, 'Vikas', 23, 'MCA'),
(4, 'Neha', 22, 'BCA'),
(5, 'Amit', 24, 'MCA');


-- Query for GROUP BY
SELECT Class, COUNT(*) AS StudentCount
FROM StudentData
GROUP BY Class;

--  Query for ORDER BY
SELECT * FROM StudentData
ORDER BY Age ASC;
