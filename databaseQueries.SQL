SELECT * FROM Orders WHERE OrderStatusId = 1


SELECT c.[Name], c.[Address], o.OrderTotal, o.OrderDate, oi.Cheese, 
  os.[Name] as 'Order Status', s.[Name] as 'Size', cr.[Name] as 'Crust'
FROM Orders o
INNER JOIN OrderItems oi ON o.OrderId = oi.OrderId
INNER JOIN Customers c ON o.CustomerId = c.CustomerId
INNER JOIN OrderStatus os ON o.OrderStatusId = os.OrderStatusId
INNER JOIN Sizes s ON oi.SizeId = s.SizeId
INNER JOIN Crusts cr ON oi.CrustId = cr.CrustId
WHERE c.CustomerId = 2


SELECT * FROM Orders o 
INNER JOIN OrderStatus os ON o.OrderStatusId = os.OrderStatusId
WHERE os.[Name] = 'Open'


SELECT * FROM Orders ORDER BY OrderDate 
SELECT c.[Name], c.[Address], o.OrderTotal, o.OrderDate, 
  os.[Name] as 'Order Status'
FROM Orders o
INNER JOIN Customers c ON o.CustomerId = c.CustomerId
INNER JOIN OrderStatus os ON o.OrderStatusId = os.OrderStatusId
ORDER BY o.OrderDate


SELECT COUNT(*) as 'Number of Pizzas' 
FROM OrderItems oi 
INNER JOIN Orders o ON oi.OrderId = o.OrderId
WHERE o.OrderDate > 'December 2, 2016' 
AND o.OrderDate < 'December 3, 2016'


SELECT SUM(o.OrderTotal) as 'Gross Sales' 
FROM Orders o 
WHERE o.OrderDate > 'December 2, 2016' 
AND o.OrderDate < 'December 3, 2016'