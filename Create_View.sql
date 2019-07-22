CREATE VIEW RequestsForUsers AS
--Display Requests for a user
select u.Id, u.Username, CONCAT(u.Firstname, ' ', u.Lastname) as 'Name', 
	   r.Id as 'Request Id', r.Description
	from Users u
	join Requests r
		on r.UserId = u.id;

select * from RequestsForUsers


