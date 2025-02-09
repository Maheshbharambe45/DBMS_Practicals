CREATE TABLE DOCTOR (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100),
    DAddress VARCHAR(200),
    Qualification VARCHAR(50)
);


CREATE TABLE PATIENTMASTER (
    Pcode INT PRIMARY KEY,
    Pname VARCHAR(100),
    Padd VARCHAR(200),
    Age INT,
    Gender CHAR(1),
    BloodGroup VARCHAR(5)
);

CREATE TABLE ADMITTEDPATIENT (
    Pcode INT,
    EntryDate DATE,
    DischargeDate DATE,
    WardNo INT,
    Disease VARCHAR(100),
    PRIMARY KEY (Pcode, EntryDate),
    FOREIGN KEY (Pcode) REFERENCES PATIENTMASTER(Pcode)
);


INSERT INTO DOCTOR (Did, Dname, DAddress, Qualification) VALUES
(1, 'Dr. Sharma', 'New Delhi', 'MBBS'),
(2, 'Dr. Verma', 'Mumbai', 'MD'),
(3, 'Dr. Reddy', 'Hyderabad', 'MS');

INSERT INTO PATIENTMASTER (Pcode, Pname, Padd, Age, Gender, BloodGroup) VALUES
(101, 'John Doe', 'Pune', 30, 'M', 'O+'),
(102, 'Jane Smith', 'Chennai', 25, 'F', 'A+'),
(103, 'Mary Johnson', 'Bangalore', 40, 'F', 'B+'),
(104, 'Raj Patel', 'Ahmedabad', 35, 'M', 'AB-');

INSERT INTO ADMITTEDPATIENT (Pcode, EntryDate, DischargeDate, WardNo, Disease) VALUES
(101, TO_DATE('2020-03-01', 'YYYY-MM-DD'), TO_DATE('2020-03-10', 'YYYY-MM-DD'), 3, 'Flu'),
(102, TO_DATE('2020-03-15', 'YYYY-MM-DD'), TO_DATE('2020-05-20', 'YYYY-MM-DD'), 5, 'Diabetes'),
(103, TO_DATE('2020-03-05', 'YYYY-MM-DD'), TO_DATE('2020-03-25', 'YYYY-MM-DD'), 3, 'Blood Cancer'),
(104, TO_DATE('2020-04-01', 'YYYY-MM-DD'), TO_DATE('2020-05-10', 'YYYY-MM-DD'), 2, 'Malaria');



-- (a) Find the doctor treating the patient in Ward No. 3
SELECT *
FROM DOCTOR D
CROSS JOIN ADMITTEDPATIENT A
WHERE A.WardNo = 3;

-- (b) Find details of patients admitted between 03/03/2020 and 25/05/2020
SELECT *
FROM ADMITTEDPATIENT
WHERE EntryDate BETWEEN TO_DATE('2020-03-03', 'YYYY-MM-DD') and TO_DATE('2020-05-25', 'YYYY-MM-DD');

-- (c) Find details of patients suffering from blood cancer
SELECT P.*
FROM PATIENTMASTER P
JOIN ADMITTEDPATIENT A ON P.Pcode = A.Pcode
WHERE A.Disease = 'Blood Cancer';

-- (d) Create a view for DOCTOR and PATIENTMASTER tables
CREATE VIEW DoctorPatientView AS
SELECT D.Did, D.Dname, P.Pcode, P.Pname, P.BloodGroup
FROM DOCTOR D
JOIN ADMITTEDPATIENT A ON D.Did = A.Pcode
JOIN PATIENTMASTER P ON A.Pcode = P.Pcode;

