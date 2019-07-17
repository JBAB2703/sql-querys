--Rule - never insert data into the primary key
-- Insert into <tablename> (Salary, Description)
-- after columnlist then values (50000, 'Admin to President');
-- when I run an Insert the answer I want is (1 row attected)

DECLARE @Salary decimal(9,2) = 35000; 
DECLARE @Description nvarchar(30) = 'Asst. Foreman';

insert into Job 
(Salary, Description) values (@Salary, @Description);
