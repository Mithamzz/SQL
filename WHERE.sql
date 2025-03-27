SELECT
*
FROM dbo.Payment

--Sum of amount of money paid per year
SELECT
SUM(TotalPayment) as Sum_Total_Payment,
Year(PaymentDate) as Year
FROM dbo.Payment
GROUP BY YEAR(PaymentDate)
ORDER BY Sum_Total_Payment

---Least amount of money paid per month in each year --
SELECT
Min(TotalPayment) as Minimum_Total_Payment,
MONTH(PaymentDate) as Month,
YEAR(PaymentDate) as Year
FROM dbo.Payment
GROUP BY Month(PaymentDate),Year(PaymentDate)
ORDER BY Minimum_Total_Payment;

--Average amount of money paid per month--
SELECT
AVG(TotalPayment) as Average_Total_Payment,
YEAR(PaymentDate) as Year
FROM dbo.Payment
GROUP BY YEAR(PaymentDate)


--Average amount of money each month per year--
SELECT
AVG(TotalPayment) as Average_Total_Payment,
Month(PaymentDate) as Month,
Year(PaymentDate) as Year
FROM dbo.Payment
GROUP BY Month(PaymentDate), YEAR(PaymentDate)
 
---WHERE--
SELECT
CustomerID,
TotalPayment
FROM dbo.Payment
WHERE CustomerID IN (9,10,12,13,15,16,57)

--WHERE --
SELECT
CustomerID,
TotalPayment
FROM dbo.Payment
WHERE CustomerID BETWEEN 1 AND 100
ORDER BY CustomerID

--Number of times a customer paid for something --
SELECT
CustomerId,
COUNT(CustomerID) as Count_of_Number_of_payments_made,
SUM(TotalPayment) as Total_Payments_Made
FROM
dbo.Payment
GROUP BY CustomerId

