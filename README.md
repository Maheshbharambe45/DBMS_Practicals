# DBMS_Practicals
1. Demonstrate the use of Group by and Order by clause.

------------------------------------------------------------------------------------------
2.Consider the following schema for a Hospital Database:

DOCTOR (Did, Dname, DAddress, Qualification)

PATIENTMASTER (Pcode, Pname, Padd, age, gender, bloodgroup, Pid)

ADMITTEDPATIENT (Pcode, EntryDate, DischargeDate, WardNo, Disease)

a) Find the detail of the doctor who is treating the patient of ward no 3.

b) Find the detail of patients who are admitted within the period 03/03/2020 to 25/05/2020.

c) Find the detail of patients who are suffering from blood cancer.

d) Create a view on DOCTOR & PATIENTMASTER tables.

------------------------------------------------------------------------------------------
3. Create department table with the following structure
Field Name	    Data Type
--------------------------
Deptno	Int - 
DeptName	-   Varchar(30)
Location	-   Varchar(30)

a) Add column designation to the department table.
b) Insert values into the table.
c) List the records of dept table grouped by deptno.
d) Update the record where deptno is 9.
e) Delete any column data from the table.

------------------------------------------------------------------------------------------
4. Create database using following schema
Apply Integrity Constraints and answer the following queries using SQL.

DOCTOR (Did, Dname, Daddress, qualification)
PATIENT (Pid, Pname, age, gender, address)

Integrity Constraints:
The values of any attributes should not be null.
Did should be unique constraints.
Pid should be unique constraints.
Gender value should be M (male) or F (female).

Queries:
a) Insert at least 10 records in the table.
b) Find details of all doctors.
c) Delete the records from DOCTOR where qualification is M.S
d) Find details of patient where age is less than 40.
e) Update the patient name where patient id is 5.

------------------------------------------------------------------------------------------
5. Write a PL/SQL code to create an employee database
Create the tables with the fields specified as below:

Employee | (Emp_no, Employee_name, Street, City)
Works | (Emp_no, Company_name, Joining_date, Designation, Salary)
Company | (Emp_no, City)
Manages | (Emp_no, Manager_name, Mang_no)

------------------------------------------------------------------------------------------
6. PL/SQL code to retrieve the employee name, join date, and designation
Retrieve details from the employee database of an employee whose number is input by the user.

------------------------------------------------------------------------------------------
7. Write a PL/SQL code to update the salary
Update the salary of employees who earn less than the average salary using cursor.