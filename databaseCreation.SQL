/*
Crusts: Thin, Thick
Sizes: Small, Medium, Large
Order Statuses: Open, Complete
*/

INSERT Crusts ([Name]) VALUES ('Thin')
INSERT Crusts ([Name]) VALUES ('Thick')
SELECT * FROM Crusts

INSERT Sizes ([Name]) VALUES ('Small')
INSERT Sizes ([Name]) VALUES ('Medium')
INSERT Sizes ([Name]) VALUES ('Large')
SELECT * FROM Sizes

INSERT OrderStatus ([Name]) VALUES ('Open')
INSERT OrderStatus ([Name]) VALUES ('Closed')
SELECT * FROM OrderStatus

/*
Clark Kent
123 E Main St
Metropolis, NY
201-555-1212

2 Large thin-crust pizzas with cheese, 
sausage and mushrooms, $12 each 
(Open status, ordered today at 7pm)
*/

INSERT Customers (PhoneNumber, [Name], [Address], City, [State])
VALUES ('2015551212', 'Clark Kent', '123 E Main St', 'Metropolis', 'NY')

INSERT Orders (CustomerId, OrderTotal, OrderStatusId, OrderDate)
VALUES (1, 12, 1, 'December 2, 2016 7:00 pm')
UPDATE Orders SET OrderTotal = 24 WHERE OrderId = 1

INSERT OrderItems (OrderId, SizeId, CrustId, Cheese, Sausage, Mushroom)
VALUES (1, 3, 1, 1, 1, 1)
INSERT OrderItems (OrderId, SizeId, CrustId, Cheese, Sausage, Mushroom)
VALUES (1, 3, 1, 1, 1, 1)
SELECT * FROM OrderItems


/*
Bruce Wayne
456 W Arkham Ave.
Gotham, NY
302-555-5676

1 medium thick-crust with cheese, onions, green peppers, 
bacon, $10 (Open status, ordered today at 7:10pm)
*/

INSERT Customers (PhoneNumber, [Name], [Address], City, [State])
VALUES ('3025555676', 'Bruce Wayne', '456 W Arkham Ave.', 'Gotham', 'NY')

INSERT Orders (CustomerId, OrderTotal, OrderStatusId, OrderDate)
VALUES (2, 10.0, 1, 'December 2, 2016 7:10 pm')

INSERT OrderItems (OrderId, SizeId, CrustId, Cheese, Onion, GreenPepper)
VALUES (2, 2, 2, 1, 1, 1)
