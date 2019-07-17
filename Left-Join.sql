select firstname, lastname, description, salary
From Job
	left join employee
		on employee.jobid = job.id
where description  = 'Asst. Supervisor'
	order by Description;