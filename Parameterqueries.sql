--must use DECLARE first then the @ 
DECLARE @LowSalary int;
DECLARE @HighSalary int;

--must use SET to assign the variable
SET @LowSalary = 90000;
SET @HighSalary = 120000;

select firstname, lastname, description, salary
From Job
	join employee
		on employee.jobid = job.id
where salary >= @LowSalary and salary < @HighSalary; 