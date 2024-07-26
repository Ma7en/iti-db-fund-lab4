SELECT * FROM lab4.employee;
/*
Q1 => 
*/ 
insert into employee 
		(SSN, Fname, Lname, Bdate, Address, Gender, Salary, SuperSSN, DNO)
values(102672, 'Mazen', 'Saad', '2001-04-20', 'Fayoum', 'M', 500, 321654, 30);

SELECT * FROM lab4.employee;













/*
Q2 => 
*/
insert into employee 
		(SSN, Fname, Lname, Bdate, Address, Gender, Salary, SuperSSN, DNO)
values(102660, 'Ali', 'Ahmed', '2002-04-10', 'Fayoum', 'M', null, null, 30);

SELECT * FROM lab4.employee;













/*
Q4 => 
*/
SET SQL_SAFE_UPDATES = 0;
update employee
set Salary = Salary * 1.20;
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM lab4.employee;













/*
Q5 =>
*/
select Fname, Lname, Salary, DNO from employee;




/*
Q6 => 
*/
select concat(Fname, ' ', Lname) as Full_Name, 
       (Salary * 12 * 0.10) as ANNUAL_COMM
from employee;




/*
Q7 => 
*/
select SSN, Fname, Lname
from employee
where Salary > 1000;



/*
Q10
*/
select e.Fname, e.Lname
from employee e
join employee s on e.SuperSSN = s.SuperSSN
where s.Fname = 'Kamel' and s.Lname = 'Mohamed';


SELECT * FROM lab4.employee;

/*
Q11
*/
select concat(e.Fname, ' ',e.Lname) as Names_Employees, p.Pname as Names_Projects
from employee e
join works_for w on e.SSN = w.Essn
join project p on w.Pno = p.Pnumber
order by p.Pname;


