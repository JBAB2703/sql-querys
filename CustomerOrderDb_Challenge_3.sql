Select Name, City, State, Active, Note, CustomerId
From Customers
Join Orders
on Customers.id = Orders.CustomerId
where CustomerId = 1029