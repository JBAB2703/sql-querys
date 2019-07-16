--Subselect 

Select firstname, lastname, description, Salary
From Employee
join job
	on job.Id = jobID
where salary > (
					Select AVG(salary) as'Salary'
					From Employee
					join job
						on job.Id = jobID
				)