.open dreamhome.sqlite 
.mode columns
.mode box

--List full details of staff
/*SELECT * 
FROM staff 
*/

--Produce a list of salaries for all staff
/*SELECT staffno, fname, lname, salary, branchno
FROM staff
;
*/

--List property numbers of all that have been viewed
/*SELECT DISTINCT propertyno 
FROM viewing
; */

--List monthly salaries for all staff
/*SELECT staffno, fname, lname, salary/12, branchno
FROM staff 
;*/


--List staff whose salaries are greater than 10000
/*SELECT *
FROM staff 
WHERE salary > 10000
; */

--List the addresses of all branch offices in London or Glasglow
/*SELECT * 
FROM branch 
WHERE city = 'London' OR city = 'Glasgow';
*/

--List all staff with salary between 20000 and 30000
/*SELECT *
FROM staff
WHERE salary >= 20000 AND salary <= 30000
; */

--List all managers and supervisors
/*SELECT *
FROM staff 
WHERE position = 'Manager' OR position = 'Supervisor'
;*/

--Find all owners with Glasgow in the address 
/*SELECT *
FROM privateowner 
WHERE address LIKE '%Glasgow%'
; */

--List details of viewings on property PG4 where comments have not been applied
/*SELECT *
FROM viewing
WHERE propertyno LIKE 'PR4%' AND comment is NULL
;
*/


--Produce a list of salaries, arranged in descednding order of salary 
/*SELECT salary
FROM staff 
ORDER BY salary DESC
;*/

--Produce list of properties arranged in order of property type
/*SELECT propertyno, type, rooms
FROM propertyforrent 
ORDER BY type
*/

--Properties that cost more than £350pm to rent? 
/*SELECT COUNT(*) AS propertiesmorethan350
FROM propertyforrent 
WHERE rent > 350
;*/

--Different properties viewed in May 2013
/*SELECT COUNT (DISTINCT propertyno) AS propertyviewsmay2013
FROM viewing
WHERE viewdate BETWEEN '2013-05-01' AND '2013-05-31'
;
*/
--Count of managers and sum of salaries
/*SELECT COUNT(staffno) AS managercount, SUM(salary) AS managersalary
FROM staff
WHERE position = 'Manager'
; 
*/

--Min, max and average of staff salary
/*SELECT MIN(salary) AS MyMin, MAX(salary) AS MyMax, AVG(salary) as MyAvg
FROM staff
;
*/

--No of staff working in each branch and the sum of their salaries
/*SELECT branchno, COUNT(staffno) AS staffinbranch, SUM(salary) AS staffsalary
FROM staff
GROUP BY branchno
ORDER BY branchno
;
*/

--For branch with more than one staff, find no of staff working and sum of salaries
/*SELECT branchno, COUNT (staffno) AS staffinbranch, SUM(salary) AS staffsalary
FROM staff
HAVING COUNT(staffno) > 1 
GROUP BY branchno
ORDER BY branchno
;
*/

--List the staff who worked in the branch at '163 Main St'
/*SELECT * 
FROM staff
WHERE branchno = (SELECT branchno 
FROM branch
WHERE street = '163 Main St' )
;
*/

--List staff with a salary greater than average and by how much
/*SELECT staffno, fname, lname, salary - (SELECT AVG (salary) AS saldifference)
FROM staff
WHERE salary > (SELECT AVG(salary) FROM staff)
; 
*/

--List properties of staff who work on the branch '163 Main St'
/*SELECT propertyno, street, city, postcode, type 
FROM propertyforrent
WHERE staffno IN (SELECT staffno
FROM staff 
WHERE branchno = (SELECT branchno 
FROM branch 
WHERE street = '163 Main St'))
;
*/

--find all staff whose salary is larger than one member of staff at branch B003
/*SELECT staffno, fname, lname, position, salary
FROM staff
WHERE salary > SOME (SELECT salary 
FROM staff 
WHERE branchno = 'BOO3')
;
*/

--find all staff whose salary is larger than all members of staff at branch B003
/*SELECT staffno, fname, lname, position, salary
FROM staff
WHERE salary > ALL (SELECT salary 
FROM staff 
WHERE branchno = 'BOO3')
;
*/