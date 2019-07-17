--How to declare a string value as oppossed to an int
--unless otherwise told use nvarchar because this allows for multiple languages other than english

--DECLARING a partial string
	--do a Like operator which only applies to strings
		--Example: Where Description like not Where Description =
		-- % means 0 or more characters
		-- _ means exactly 1 character

DECLARE @jobdescription nvarchar(50) = '___';

select firstname, lastname, description, salary
From Job
	join employee
		on employee.jobid = job.id
where Firstname like @JobDescription