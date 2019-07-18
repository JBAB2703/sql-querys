DECLARE @dept nvarchar(30) = 'Director'

Select * from Job where Description = @dept;

EXEC Ten_PCT_Increase 'Director';

Select * from Job where Description = @dept