--While<boolean-expression>
--Begin
	--True
--End

DECLARE @index int = 0;
DECLARE @sum int = 0;

WHILE @index <=15
Begin
	SET @sum = @sum + @index;
	SET @index = @index + 1;
End
PRINT 'The sum of 1 to 15 is ' + CAST(@sum as nvarchar(10));