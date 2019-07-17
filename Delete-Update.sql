select lastname, firstname, description
from employee
	join Job
		on job.id = employee.jobid
where Description = 'Asst Director';

update employee set
firstname = 'Wyle E',
lastname = 'Coyote'
where firstname = 'Amy' and lastname = 'Everington'