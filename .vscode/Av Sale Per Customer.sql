
SELECT
  FirstName,
  LastName,
  Sum(TotalDue)

FROM Salesperson
  JOIN Orders ON Orders.SalespersonID = Salesperson.SalespersonID
GROUP BY Salesperson.SalespersonID
ORDER BY TotalDue DESC



  

