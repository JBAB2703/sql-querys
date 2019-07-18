USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_Job_List]    Script Date: 7/18/2019 10:57:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--STORED PROCEDURES are simply scripts that have been stored in the database and can be executed
--CREATE PROCEDURE <name>
--ONLY CREATE SOMETHING ONCE!!
--Not case sensitive
--Everything must be in between BEGIN and END

ALTER PROCEDURE [dbo].[Employee_Job_List]
AS 
BEGIN
	select CONCAT (Lastname, ', ', Firstname) as'Name', Description as 'Job', FORMAT(Salary, 'C') as 'Salary'
		from Employee
			join Job
				on jobid = job.id
END