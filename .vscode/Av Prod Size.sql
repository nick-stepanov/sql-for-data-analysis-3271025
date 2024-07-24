#Average Size of Product per customer
SELECT
  Customer.FirstName,
  Customer.LastName,
  AVG(Product.Size)
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
  JOIN OrderItem ON Orders.OrderID = OrderItem.OrderID
  JOIN Product ON OrderItem.ProductID = Product.ProductID
GROUP BY Customer.CustomerID



  

