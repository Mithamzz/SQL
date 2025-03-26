SELECT
*
FROM dbo.Payment

--#Payments made between 2015 and 2016--
SELECT
CustomerID, PaymentDate, TotalPayment
FROM dbo.Payment
WHERE Paymentdate BETWEEN '2015-01-01' AND '2016-12-31'
ORDER BY PaymentDate


--Maximum Payments made per month in each year--
SELECT
YEAR(PaymentDate) as Year, 
MONTH(PaymentDate) as Month,
MAX(TotalPayment) as TotalPayment
FROM dbo.Payment
GROUP BY PaymentDate


---How many times a customer has paid--
SELECT
CustomerID,
COUNT(CustomerID) as Number_of_times_paid,
SUM(TotalPayment) as Total_Payment
FROM dbo.Payment
GROUP BY CustomerID

--How much a customer has paid per year--
SELECT
CustomerID,
YEAR(PaymentDate) Year_paid,
MONTH(PaymentDate) Month_paid,
SUM(TotalPayment) Total_Payment
FROM dbo.Payment
GROUP BY CustomerID, PaymentDate

--How many times per year a customer has made payments --
SELECT
CustomerID,
COUNT(CustomerID) Count_of_times_paid,
YEAR(PaymentDate) as Year,
SUM(TotalPayment)as Total_Payment
FROM dbo.Payment
GROUP BY CustomerID, YEAR(PaymentDate)
ORDER BY Year




