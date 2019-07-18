--STORED PROCEDURES are simply scripts that have been stored in the database and can be executed
--CREATE PROCEDURE <name>
--ONLY CREATE SOMETHING ONCE!!
--Not case sensitive
--Everything must be in between BEGIN and END

CREATE PROCEDURE Employee_Job_List
AS 
BEGIN
	select CONCAT (Lastname, ', ', Firstname) as'Name', Description as 'Job', FORMAT(Salary, 'C') as 'Salary'
		from Employee
			join Job
				on jobid = job.id
END