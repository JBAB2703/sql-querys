--Join view employee/job showing salary in descending order
--sorting by salary and last name
select CONCAT (Lastname, ', ', Firstname) as'Name', Description, FORMAT(Salary, 'C') as 'Salary'
from Employee
join Job
	on jobid = job.id
order by job.salary desc, name desc
