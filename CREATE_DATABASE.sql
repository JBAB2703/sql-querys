--SYNTAX 
--CREATE DATABASE BootcampDb;

--Creating a Table
	--give the table a name and then you must define the columns which go into the parens
	--Good Programming practice to being the columns with the primary key
	--Column Definitions
		--Name (make it as brief as possible but descriptive)
		--Type (this is the type of data that is allowed to be put into this column)
			--typical types used int, nvarchar, bit (use when you only want to store two values), DateTime (this is one thing), money
				--Name and Type are required for every column in my table
		--Nullable (default is yes, if i dont want yes, then i must say not null)
/*
CREATE TABLE Students 
(
	Id int not null primary key identity(1, 1), --How to autogenerate a Primary Key, 'Primary Key' and 'identity' are a clause
	Firstname nvarchar(30) not null,
	Lastname nvarchar(50) not null,
	Email nvarchar(255) null, --or leave blank
	Phone nvarchar(10),
	DateEnrolled DateTime not null default getdate(), --'getdate' is a function

);

Insert into Students (Firstname, Lastname, Email, Phone)
	Values ('Titus',  'Moore', 'tmoore@edgewebware.com', '9374741083');

select * from Students

Create Table Bootcamps
(
	Id int not null primary key identity(1,1),
	Description nvarchar(80) not null,
);


INSERT into Bootcamps (Description) VALUES ('.NET');
INSERT into Bootcamps (Description) VALUES ('JAVA');

Select * from bootcamps;


ALTER TABLE Students  --Alter Table example; each Alter Table is one statement
	Add  BootcampId int null
		foreign key references Bootcamps(Id);
*/
select * from students
select * from bootcamps


UPDATE Students	
	SET BootcampId = (Select id from Bootcamps where description like '%java%') --subselect
	Where Lastname = 'Doe';

UPDATE Students	
	SET BootcampId = (Select id from Bootcamps where description like '%net%')
	Where Lastname <> 'Doe';



