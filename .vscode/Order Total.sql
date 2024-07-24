#Average Size of Product per customer
SELECT
  Customer.FirstName,
  Customer.LastName,
  SUM(Price * Quantity)
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
  JOIN OrderItem ON Orders.OrderID = OrderItem.OrderID
  JOIN Product ON OrderItem.ProductID = Product.ProductID
GROUP BY OrderItem.OrderID



  

