SELECT * FROM lab4.departments;

/*
Q3
*/
insert into departments (Dname, Dnum, MGRSSN, MGRSatrtDate)
values('DEPT IT', 100, 112233, '2006-11-01');

SELECT * FROM lab4.departments;













/*
Q8
*/
select d.Dnum, d.Dname, m.SSN as Manager_id, 
       concat(m.Fname, ' ', m.Lname) as Manager_Name
from departments d
join employee m on d.MGRSSN = m.SuperSSN;


/*
Q9
*/
select d.Dname as Name_Departments, p.Pname as Name_Projects
from departments d
join project p on d.Dnum = p.Dnum;


 