USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Employee_By_Salary]    Script Date: 7/18/2019 12:01:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Employee_By_Salary]
	@search int
as
begin
	select CONCAT (Lastname, ', ', Firstname) as'Name', Description as 'Job', FORMAT(Salary, 'C') as 'Salary'
		from Employee e
			join Job j
				on j.id = e.jobid
			Where salary > @search
			Order By Name
end	
go
EXEC Employee_By_Salary '100000'
Go