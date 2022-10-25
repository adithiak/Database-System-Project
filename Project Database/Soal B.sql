-- 2440016855 - Clarissa Belinda
-- 2440015884 - Adithia Kristyanto
-- 2440019586 - Ricky Pratama
CREATE DATABASE [HaLLoPharmacy]
GO
USE [HaLLoPharmacy]
GO

BEGIN TRAN
GO
CREATE TABLE MsCustomer(
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(30) NOT NULL,
	CustomerPhoneNumber VARCHAR(15) NOT NULL,
	CustomerAddress VARCHAR(50) NOT NULL,
	CustomerGender VARCHAR(10) NOT NULL CHECK (CustomerGender in ('Male','Female')),
	CustomerEmail VARCHAR(30) CHECK (CustomerEmail LIKE '%@hallo.com') NOT NULL,
	CustomerPassword VARCHAR(30) NOT NULL,
	CustomerDateOfBirth DATE NOT NULL
	)
SELECT *FROM MsCustomer

BEGIN TRAN
CREATE TABLE MsEmployee(
	EmployeeID CHAR(5) PRIMARY KEY CHECK (EmployeeID LIKE 'EM[0-9][0-9][0-9]'),
	EmployeeName VARCHAR(30) NOT NULL,
	EmployeeEmail VARCHAR(30) NOT NULL,
	EmployeePhoneNumber VARCHAR(30) NOT NULL,
	EmployeeAddress VARCHAR(50) NOT NULL,
	EmployeeDateOfBirth DATE NOT NULL,
	EmployeeGender VARCHAR(10) NOT NULL CHECK (EmployeeGender in ('Male','Female')),
	EmployeeSalary INT NOT NULL
)

SELECT *FROM MsEmployee

BEGIN TRAN
CREATE TABLE MsVendor(
	VendorID CHAR(5) PRIMARY KEY CHECK (VendorID LIKE 'VN[0-9][0-9][0-9]'),
	VendorName VARCHAR(50) NOT NULL,
	VendorPhone VARCHAR(15) NOT NULL,
	VendorAddress VARCHAR(50) NOT NULL,
	VendorEmail VARCHAR(30) CHECK (VendorEmail LIKE '%.com') NOT NULL,
	YearEstablished VARCHAR(5) NOT NULL
)

SELECT *FROM MsVendor

BEGIN TRAN
CREATE TABLE MsCategory(
	CategoryID CHAR(5) PRIMARY KEY CHECK (CategoryID LIKE 'CT[0-9][0-9][0-9]'),
	CategoryName VARCHAR(30) NOT NULL
)

SELECT *FROM MsCategory

BEGIN TRAN
CREATE TABLE MsMedicineDetails(
	MedicineID CHAR(5) PRIMARY KEY CHECK (MedicineID LIKE 'MD[0-9][0-9][0-9]'),
	CategoryID CHAR(5) FOREIGN KEY REFERENCES MsCategory(CategoryID) NOT NULL,
	MedicineName VARCHAR(30) NOT NULL,
	MedicinePrice INT NOT NULL,
	MedicineDescription VARCHAR(100) NOT NULL,
	MedicineStock INT NOT NULL
)

SELECT *FROM MsMedicineDetails

BEGIN TRAN
CREATE TABLE MsSalesTransaction(
	SalesTransactionID CHAR(5) PRIMARY KEY CHECK (SalesTransactionID LIKE 'SL[0-9][0-9][0-9]'),
	CustomerID CHAR(5) FOREIGN KEY REFERENCES MsCustomer(CustomerID) NOT NULL,
	EmployeeID CHAR(5) FOREIGN KEY REFERENCES MsEmployee(EmployeeID) NOT NULL,
	SalesTransactionDate DATE NOT NULL,
	Quantity INT NOT NULL
)


SELECT *FROM MsSalesTransaction


BEGIN TRAN
CREATE TABLE MsPurchaseTransaction(
	PurchaseTransactionID CHAR(5) PRIMARY KEY CHECK (PurchaseTransactionID LIKE 'PC[0-9][0-9][0-9]'),
	EmployeeID CHAR(5) FOREIGN KEY REFERENCES MsEmployee(EmployeeID) NOT NULL,
	VendorID CHAR(5) FOREIGN KEY REFERENCES MsVendor(VendorID) NOT NULL,
	PurchaseTransactionDate DATE NOT NULL
	)

BEGIN TRAN
CREATE TABLE MsSalesTransactionDetail(
	SalesTransactionID CHAR(5) FOREIGN KEY REFERENCES MsSalesTransaction(SalesTransactionID) NOT NULL,
	MedicineID CHAR(5) FOREIGN KEY REFERENCES MsMedicineDetails(MedicineID) NOT NULL,
	MedicineSold INT NOT NULL,
	)

SELECT * FROM MsSalesTransactionDetail

BEGIN TRAN
CREATE TABLE MsPurchaseTransactionDetail(
	PurchaseTransactionID CHAR(5) FOREIGN KEY REFERENCES MsPurchaseTransaction(PurchaseTransactionID)  NOT NULL,
	MedicineID CHAR(5) FOREIGN KEY REFERENCES MsMedicineDetails(MedicineID)  NOT NULL,
	Quantity INT NOT NULL
	)
	

ALTER TABLE MsSalesTransactionDetail
ADD CONSTRAINT PK_MsSalesTransactionDetail
PRIMARY KEY (SalesTransactionID, MedicineID)

ALTER TABLE MsPurchaseTransactionDetail
ADD CONSTRAINT PK_MsPurchaseTransactionDetail
PRIMARY KEY (PurchaseTransactionID, MedicineID)
