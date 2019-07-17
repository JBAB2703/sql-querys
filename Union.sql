select firstname, lastname, description, salary, 'Yes' as 'SR. EXEC'
From Job
	join employee
		on employee.jobid = job.id
where description = 'President' or description = 'VP'
UNION

select firstname, lastname, description, salary, 'No' as 'SR. EXEC'
From Job
	join employee
		on employee.jobid = job.id
where NOT (description = 'President' or description = 'VP')
	order by [SR. EXEC] desc