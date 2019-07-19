Select Name, Price, Quantity
From Products
Join OrderLines
on productid = OrderLines.ProductId
where price < 50