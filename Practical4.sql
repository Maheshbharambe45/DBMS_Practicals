CREATE TABLE DOCTOR (
    Did NUMBER PRIMARY KEY,
    Dname VARCHAR2(50),
    Daddress VARCHAR2(100),
    Qualification VARCHAR2(50)
);


CREATE TABLE PATIENT (
    Pid NUMBER PRIMARY KEY,
    Pname VARCHAR2(50),
    Age NUMBER,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F'))
);

-- Insert Records into DOCTOR
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (1, 'Dr. A', 'Mumbai', 'M.D.');
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (2, 'Dr. B', 'Delhi', 'M.S.');
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (3, 'Dr. C', 'Pune', 'M.D.');
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (4, 'Dr. D', 'Chennai', 'M.B.B.S.');
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (5, 'Dr. E', 'Bangalore', 'M.S.');
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (6, 'Dr. F', 'Hyderabad', 'M.D.');
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (7, 'Dr. G', 'Kolkata', 'M.D.');
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (8, 'Dr. H', 'Ahmedabad', 'M.B.B.S.');
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (9, 'Dr. I', 'Surat', 'M.S.');
INSERT INTO DOCTOR (Did, Dname, Daddress, Qualification) VALUES (10, 'Dr. J', 'Jaipur', 'M.D.');


-- Insert Records into PATIENT
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (1, 'John', 30, 'M');
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (2, 'Mary', 25, 'F');
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (3, 'David', 35, 'M');
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (4, 'Emma', 40, 'F');
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (5, 'Robert', 50, 'M');
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (6, 'Sophia', 45, 'F');
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (7, 'James', 38, 'M');
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (8, 'Olivia', 28, 'F');
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (9, 'Michael', 60, 'M');
INSERT INTO PATIENT (Pid, Pname, Age, Gender) VALUES (10, 'Linda', 33, 'F');

--  Query to Find Details of All Doctors
SELECT * FROM DOCTOR;

-- Query to Delete DOCTOR Records Where Qualification is 'M.S.'
DELETE FROM DOCTOR WHERE Qualification = 'M.S.';


-- Query to Find Patients Where Age is Less Than 40
SELECT * FROM PATIENT WHERE Age < 40;


-- Query to Update Patient Name Where Pid is 5
UPDATE PATIENT SET Pname = 'Robert Smith' WHERE Pid = 5;



