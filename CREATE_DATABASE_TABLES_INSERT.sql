--CREATE DATABASE SqlPRS;
use Master;
go
drop database if exists SqlPrs;
go
Create Database SqlPrs;
go 
use SqlPrs;
go

Create Table Users(

	ID int not null primary key identity(1,1),
	Username nvarchar(30) unique not null,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12),
	Email nvarchar(255),
	IsReviewer BIT not null Default 1,
	IsAdmin BIT not null Default 1,
);

Insert into Users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	Values ('KyleB', 'K1234', 'Bailey', 'Kyle', '5139652356', 'B.Kyle@gmail.com', '1', '1')
Insert into Users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	Values ('AbbyK', 'K1235', 'Abby', 'Kyle', '5139657458', 'A.Kyle@gmail.com', '1', '1')
Insert into Users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	Values ('KyleBeth', 'K1236', 'Elizabeth', 'Kyle', '5139659586', 'Beth.Kyle@gmail.com', '1', '1')
Insert into Users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	Values ('KyleM', 'K1237', 'Mike', 'Kyle', '5139652563', 'M.Kyle@gmail.com', '1', '1')
Insert into Users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	Values ('KyleS', 'K1238', 'Sulley', 'Kyle', '5139652412', 'S.Kyle@gmail.com', '1', '1')


Create Table Vendor(
	ID int not null primary key identity(1,1),
	Code nvarchar(30) unique not null,
	Name nvarchar(30) not null,
	Address nvarchar(30) not null,
	City nvarchar(30) not null,
	State nvarchar(2) not null,
	Zip nvarchar(5) not null,
	Phone nvarchar(12) null,
	Email nvarchar(255) null,
);

Insert into Vendor (Code, Name, Address, City, State, Zip, Phone, Email)
	Values ('Wur', 'Wurth Baer Supply Co', '123 Wurth Road', 'Middletown', 'OH', '45150', '9375552361', 'Wurth@gmail.com')
Insert into Vendor (Code, Name, Address, City, State, Zip, Phone, Email)
	Values ('Roc', 'Rockler Woodworking', '456 Rockler Road', 'Cincinnati', 'OH', '45156', '5134586214', 'Rockler@gmail.com')
Insert into Vendor (Code, Name, Address, City, State, Zip, Phone, Email)
	Values ('Sta', 'Stanton Millworks', '789 Stanton Road', 'Cincinnati', 'OH', '45150', '5138964123', 'Stanton@gmail.com')
Insert into Vendor (Code, Name, Address, City, State, Zip, Phone, Email)
	Values ('Ohi', 'Ohio Woodworking Co', '321 Ohio Road', 'Cincinnati', 'OH', '45150', '5139456875', 'OhioWood@gmail.com')
Insert into Vendor (Code, Name, Address, City, State, Zip, Phone, Email)
	Values ('Woo', 'Woodcraft of Cincinnati', '654 Woodcraft Road', 'Cincinnati', 'OH', '45150', '5132645684', 'Woodcraft@gmail.com')

Create Table Product(
	ID int not null primary key identity(1,1),
	PartNbr nvarchar(30) unique not null,
	Name nvarchar(30) not null,
	Price decimal(11,2) not null,
	Unit nvarchar(30) not null,
	Photopath nvarchar(255) null,
	VendorId int not null foreign key references Vendor(Id)
);

Insert into Product (PartNbr, Name, Price, Unit, VendorId)
	Values ('Rou005', '1/4" Square End', '64.99', 'ea', 1)
Insert into Product (PartNbr, Name, Price, Unit, VendorId)
	Values ('Rou006', '1/2" Square End', '85.99', 'ea', 2)
Insert into Product (PartNbr, Name, Price, Unit, VendorId)
	Values ('Rou007', '3/4" Round End', '105.99', 'ea', 3)
Insert into Product (PartNbr, Name, Price, Unit, VendorId)
	Values ('Rou008', '1/4" Round End', '75.99', 'ea', 4)
Insert into Product (PartNbr, Name, Price, Unit, VendorId)
	Values ('Rou009', '1/2" Round End', '95.99', 'ea', 5)


Create Table Request(
	ID int not null primary key identity(1,1),
	Description nvarchar(80) not null,
	Justification nvarchar(80) not null,
	RejectionReason nvarchar(80) null,
	DeliveryMode nvarchar(20) not null default 'Pickup',
	Status nvarchar(10) not null default 'NEW',
	Total decimal(11,2) not null default '0',
	UserId int not null foreign key references Users(Id),
);

Insert into Request (Description, Justification, RejectionReason, UserId)
	Values ('New Request', 'Level 1', 'Expensive', 1)
Insert into Request (Description, Justification, RejectionReason, UserId)
	Values ('New Request', 'Level 2', 'Not Needed', 2)
Insert into Request (Description, Justification, RejectionReason, UserId)
	Values ('New Request', 'Level 3', 'Not Essential', 3)
 

Create Table RequestLine(
	ID int not null primary key identity(1,1),
	RequestId int not null foreign key references Request(Id),
	ProductID int not null foreign key references Product(Id),
	Quantity int not null default '1',
);

Insert into RequestLine (RequestId, ProductID, Quantity)
	Values (1, 1, 2)
Insert into RequestLine (RequestId, ProductID, Quantity)
	Values (2, 1, 3)
Insert into RequestLine (RequestId, ProductID, Quantity)
	Values (3, 2, 4)


--SELECT * from Users
--SELECT * from Vendor
--SELECT * from Product
--SELECT * from Request
--SELECT * from RequestLine

--Delete from Product where Id = 11