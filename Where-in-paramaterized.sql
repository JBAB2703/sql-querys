select firstname, lastname, description, salary
From Job
	join employee
		on employee.jobid = job.id
where lastname in ('Dalton', 'Everington', 'Gatz');