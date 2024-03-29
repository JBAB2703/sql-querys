USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Insert_Employee]    Script Date: 7/18/2019 12:19:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Insert_Employee]
	@firstname nvarchar (30),
	@lastname nvarchar (30),
	@job nvarchar(30)
as
begin
	DECLARE @jobid int;

	select @jobid = id from Job where description = @job;

	INSERT into Employee (Firstname, Lastname, JobId)
		VALUES (@firstname, @lastname, @jobid)
end
go
EXEC Insert_Employee @firstname = 'John', @lastname = 'Doe', @job = 'Director'