USE [EmploymentDb]
GO
/****** Object:  StoredProcedure [dbo].[Ten_PCT_Increase]    Script Date: 7/18/2019 3:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Ten_PCT_Increase]
	@dept nvarchar(20)
as
begin
	UPDATE Job Set
		Salary = Salary * 1.1
	Where Description = @dept;
end
