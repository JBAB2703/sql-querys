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
	@search nvarchar(30)
AS 
BEGIN
	SET @search = CONCAT('%', @search, '%');
	select CONCAT (e.Lastname, ', ', e.Firstname) as'Name', j.Description as 'Job', FORMAT(j.Salary, 'C') as 'Salary'
		from Employee e
			join Job j
				on j.id = e.JobId
			Where e.lastname like @search or e.firstname like @search or j.description like @search
			Order By Name;
END
Go
EXEC Employee_Job_List 'Am'
Go