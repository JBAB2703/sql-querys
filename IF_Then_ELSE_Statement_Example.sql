Declare @job nvarchar(30) = 'Director';

IF EXISTS (Select id from job where description = @job)
BEGIN
	PRINT 'That job exists'
END
ELSE
BEGIN
	PRINT 'That job DOES NOT exist'
END

