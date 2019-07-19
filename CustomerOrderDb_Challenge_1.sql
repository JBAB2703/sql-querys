Select Name, City, State, Date, CustomerId
From Customers
Join Orders
on customers.id = orders.CustomerId
where state = 'OH'


	