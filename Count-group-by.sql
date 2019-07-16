--Join view employee/job showing salary in descending order
--sorting by salary and last name
select Description, Count (*) as 'Count', FORMAT(sum(salary), 'C')as 'Total Salary'
from Employee
join Job
	on jobid = job.id
Group by Description
Having sum(salary) <= 250000
order by 'total salary' desc
