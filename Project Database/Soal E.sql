-- 2440016855 - Clarissa Belinda
-- 2440015884 - Adithia Kristyanto
-- 2440019586 - Ricky Pratama
GO
USE HaLLoPharmacy
GO

--1
SELECT Customer.CustomerID as [Customer ID], CustomerName AS [Customer Name], 
convert (VARCHAR, SalesTransactionDate, 107) AS [Transaction Date],
sum (MedicineSold) AS [Medicine Bought]
FROM MsCustomer as Customer  JOIN MsSalesTransaction ON Customer.CustomerID = MsSalesTransaction.CustomerID JOIN MsSalesTransactionDetail 
ON MsSalesTransaction.SalesTransactionID = MsSalesTransactionDetail.SalesTransactionID
WHERE Day (SalesTransactionDate) BETWEEN 20 AND 30 AND CustomerGender = 'Female'
GROUP BY Customer.CustomerID , CustomerName , SalesTransactionDate

--2
SELECT RIGHT(Employee.EmployeeID, 3) AS [Employee Number], EmployeeName AS [Employee Name], CONCAT (count (CustomerID), ' Customer(s)') AS [Customer Served]
FROM MsEmployee AS Employee JOIN MsSalesTransaction ON Employee.EmployeeID = MsSalesTransaction.EmployeeID
WHERE  EmployeeGender = 'Female' AND EmployeeName LIKE '%b%' 
GROUP BY Employee.EmployeeID, EmployeeName

--3
SELECT Customer.CustomerID AS [Customer ID] , CustomerName As [Customer Name], CONVERT (Varchar, CustomerDateOfBirth, 106) AS [Date Of Birth], COUNT (SalesTransaction.SalesTransactionID) AS [Transaction Count],
SUM (MedicinePrice * MedicineSold) AS [Total Purchase]
FROM MsCustomer AS Customer JOIN MsSalesTransaction AS SalesTransaction ON Customer.CustomerID = SalesTransaction.CustomerID Join MsSalesTransactionDetail ON 
SalesTransaction.SalesTransactionID = MsSalesTransactionDetail.SalesTransactionID JOIN MsMedicineDetails ON 
MsSalesTransactionDetail.MedicineID = MsMedicineDetails.MedicineID
WHERE MONTH (SalesTransactionDate) BETWEEN 1 AND 6 AND (EmployeeID = 'EM004'  OR EmployeeID = 'EM006' OR EmployeeID = 'EM008')
GROUP BY Customer.CustomerID, CustomerName, CustomerDateOfBirth

--4
SELECT Employee.EmployeeID AS [Employee ID], EmployeeName AS [Employee Name], REPLACE(EmployeePhoneNumber, '08', '62') AS [Local Phone Number], COUNT (PurchaseTransaction.PurchaseTransactionID) 
AS [Transaction Done], CONCAT (SUM (Quantity), ' item(s)') AS [Medicine Bought]
FROM MsEmployee AS Employee JOIN MsPurchaseTransaction AS PurchaseTransaction ON Employee.EmployeeID = 
PurchaseTransaction.EmployeeID JOIN MsPurchaseTransactionDetail 
ON PurchaseTransaction.PurchaseTransactionID = MsPurchaseTransactionDetail.PurchaseTransactionID JOIN MsVendor 
ON PurchaseTransaction.VendorID = MsVendor.VendorID
WHERE DAY (PurchaseTransactionDate) BETWEEN 10 AND 20 AND YearEstablished > '2000'
GROUP BY Employee.EmployeeID, EmployeeName, EmployeePhoneNumber

--5
SELECT Medicine.[Medicine ID] , Medicine.[Medicine Name], Medicine.[Category Name], Medicine.[Medicine Price], Medicine.[Medicine Stock]
FROM (
SELECT RIGHT(MedicineID, 3) AS [Medicine ID], [Medicine Name] = UPPER(MedicineName), CategoryName AS [Category Name], CONCAT('Rp. ' , MedicinePrice) AS [Medicine Price],
MedicineStock AS [Medicine Stock]
FROM MsMedicineDetails JOIN MsCategory ON MsMedicineDetails.CategoryID = MsCategory.CategoryID
WHERE MedicinePrice > 50000 AND MedicineStock < (SELECT AVG (MedicineSold) FROM MsSalesTransactionDetail)
)AS Medicine

--6
SELECT Employee.[Employee Code], Employee.[Employee Name], Employee.[Transaction Date], Employee.[Medicine Name], Employee.[Medicine Price], Employee.[Quantity]
FROM(
SELECT REPLACE(MsEmployee.EmployeeID, 'EM', 'EMPLOYEE') AS [Employee Code], EmployeeName AS [Employee Name], 
CONVERT(VARCHAR, SalesTransactionDate, 106) AS [Transaction Date],
MedicineName AS [Medicine Name], MedicinePrice AS [Medicine Price], Quantity AS [Quantity] 
FROM MsEmployee JOIN MsSalesTransaction ON MsSalesTransaction.EmployeeID = MsEmployee.EmployeeID JOIN MsSalesTransactionDetail 
ON MsSalesTransactionDetail.SalesTransactionID = MsSalesTransaction.SalesTransactionID JOIN 
MsMedicineDetails ON MsSalesTransactionDetail.MedicineID = MsMedicineDetails.MedicineID
WHERE DAY(SalesTransactionDate) = 2 AND MsEmployee.EmployeeSalary < (Select AVG (EmployeeSalary) FROM MsEmployee)
)AS Employee

--7
SELECT Customer.[Customer ID], Customer.[Customer Name], Customer.[Local Phone Number], Customer.[Date Of Birth], Customer.[Medicine Bought]
FROM(
SELECT MsCustomer.CustomerID AS [Customer ID], CustomerName AS [Customer Name], REPLACE(CustomerPhoneNumber, '08' , '62') AS [Local Phone Number], 
CONVERT(VARCHAR, CustomerDateOfBirth, 107) AS [Date Of Birth], CONCAT (SUM (Quantity), ' item(s)') AS [Medicine Bought]
FROM MsCustomer JOIN MsSalesTransaction ON MsSalesTransaction.CustomerID = MsCustomer.CustomerID
WHERE CustomerGender <> 'Male' AND (SELECT SUM(Quantity) FROM MsSalesTransaction) > (SELECT AVG(Quantity) FROM MsSalesTransaction)
GROUP BY MsCustomer.CustomerID, CustomerName, CustomerPhoneNumber, CustomerDateOfBirth
)AS Customer


--8
SELECT
	Employee.EmployeeID AS [Employee ID],
	SUBSTRING(EmployeeName, 1, CHARINDEX(' ', EmployeeName + ' ') -1) AS [Employee Name],
	CONCAT('Rp. ', EmployeeSalary) AS [Salary], 
	CONVERT(VARCHAR, EmployeeDateOfBirth, 107) AS [Date Of Birth],
	c.TransactionCOUNT AS[Transaction Served] 
FROM MsEmployee Employee
	JOIN MsSalesTransaction ON MsSalesTransaction.EmployeeID = Employee.EmployeeID JOIN MsSalesTransactionDetail 
	ON MsSalesTransactionDetail.SalesTransactionID = MsSalesTransaction.SalesTransactionID,
	(
		SELECT
			AVG(a.TransactionCount) AS [TransactionAVG]
		FROM
		(
			SELECT
			COUNT(SalesTransactionID) AS [TransactionCOUNT]
			FROM MsSalesTransaction
			GROUP BY EmployeeID
		)as a
	) b,
	(
		SELECT
			COUNT(SalesTransactionID) AS [TransactionCOUNT]
		FROM MsSalesTransaction
		GROUP BY EmployeeID
	) c
WHERE EmployeeName LIKE '% %'
	AND c.TransactionCount > b.[TransactionAVG]
GROUP BY Employee.EmployeeID, EmployeeName, EmployeeSalary, EmployeeDateOfBirth, c.TransactionCOUNT

--9
CREATE VIEW VendorMaximumAverageQuantityViewer AS 
SELECT Vendor.[Vendor ID], Vendor.[Vendor Name], Vendor.[Average Suplied Quantity], Vendor.[Maximum Supplied Quantity] 
FROM(
SELECT MsVendor.VendorID AS [Vendor ID], VendorName AS [Vendor Name], CONCAT ((SELECT AVG(Quantity) FROM MsSalesTransaction), ' item(s)') AS [Average Suplied Quantity], 
CONCAT ((SELECT MAX(Quantity) FROM MsSalesTransaction), ' item(s)') AS [Maximum Supplied Quantity]
FROM MsVendor JOIN MsPurchaseTransaction ON MsPurchaseTransaction.VendorID = MsVendor.VendorID
WHERE VendorName like '%a%' and (SELECT MAX(Quantity) FROM MsSalesTransaction) >5
)AS Vendor
DROP VIEW VendorMaximumAverageQuantityViewer
SELECT * FROM VendorMaximumAverageQuantityViewer

--10
CREATE VIEW VendorSupplyViewer AS
SELECT Vendor.[Vendor Number], Vendor.[Vendor Name], Vendor.[Vendor Address], Vendor.[Vendor Supplied Value], Vendor.[Medicine Type Supplied]
FROM(
SELECT RIGHT(MsVendor.VendorID, 3) AS [Vendor Number], VendorName AS [Vendor Name], VendorAddress AS [Vendor Address], 
CONCAT(SUM(MsMedicineDetails.MedicinePrice * Quantity) , 'Rp. ') AS [Vendor Supplied Value],
COUNT(MsMedicineDetails.MedicineID) AS [Medicine Type Supplied]
FROM MsVendor JOIN MsPurchaseTransaction ON MsPurchaseTransaction.VendorID = MsVendor.VendorID JOIN MsPurchaseTransactionDetail ON MsPurchaseTransaction.PurchaseTransactionID =
MsPurchaseTransactionDetail.PurchaseTransactionID JOIN MsMedicineDetails ON MsPurchaseTransactionDetail.MedicineID = MsMedicineDetails.MedicineID
GROUP BY MsVendor.VendorID, VendorName, VendorAddress
HAVING SUM(MsMedicineDetails.MedicinePrice * Quantity) > 150000 AND COUNT(MsMedicineDetails.MedicineID) > 2
)AS Vendor

SELECT * FROM VendorSupplyViewer



