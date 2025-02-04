.open ddlPractise.sqlite

--delete the table so it can be recreated every time
DROP TABLE IF EXISTS Student;

/*--create our first table 
CREATE TABLE contacts (
    contactsID INTEGER PRIMARY KEY NOT NULL,
    fname VARCHAR(25),
    lname VARCHAR(25),
    email VARCHAR(40),
    phone CHAR(11)
);

--insterting data into the table
INSERT INTO contacts (fname, lname, email, phone)
VALUES ('shannon', 'holder', 'shannon.holder@ada.ac.uk', '01234567891'),
       ('eleanor', 'walsh', 'eleanor.walsh@ada.ac.uk', '01234537891'),
       ('sharn', 'virdi', 'sharn.virdi@ada.ac.uk', '01234567391');
       
*/

/*CREATE TABLE SalesStaff (
    EmployeeID INTEGER PRIMARY KEY NOT NULL,
    SalesPerson VARCHAR (30),
    SalesOffice VARCHAR (30), 
    OfficeNumber VARCHAR (30), 
    Customer1 VARCHAR (20),
    Customer2 VARCHAR (20), 
    Customer3 VARCHAR (20)
); 

INSERT INTO SalesStaff(SalesPerson, SalesOffice, OfficeNumber, Customer1, Customer2, Customer3)
VALUES ('Mary Smith', 'Chicago', '312-555-1212', 'Ford', 'GM', ' '),
       ('John Hunt', 'New York', '212-555-1212', 'Dell', 'HP', 'Apple'),
       ('Martin Hap', 'Chicage', '312-555-1212', 'Boeing', ' ', ' ');
*/

/*CREATE TABLE Student(
    StudentID INTEGER PRIMARY KEY NOT NULL,
    StudentName VARCHAR(30),
    MajorName VARCHAR(30),
    NoOfCreditHours INT,
    phone CHAR(11) DEFAULT '0000000000' 
); 

INSERT INTO Student(StudentName, MajorName, NoOfCreditHours)
VALUES ('Kirsten', 'Accounting', 152),
       ('Eve', 'IS', 138), 
       ('Zoe', 'IS', 138),
       ('Ben', 'Accounting', 152);
*/ 


