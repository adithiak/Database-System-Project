-- 2440016855 - Clarissa Belinda
-- 2440015884 - Adithia Kristyanto
-- 2440019586 - Ricky Pratama
GO
USE [HaLLoPharmacy]
GO

--1
-- Pada tanggal Des 08, 2021 ada Customer dengan ID CU042 bernama Eli membeli suplemen 'Nourish skin'
-- dengan ID MD015 sebanyak 3 botol dilayani oleh petugas kasir dengan ID EM006.
BEGIN TRAN
INSERT INTO MsSalesTransaction VALUES ('SL016','CU042','EM006','2021-12-08',3)
INSERT INTO MsSalesTransactionDetail VALUES('SL016','MD015',3)
ROLLBACK

--2
-- Pada tanggal Nov 11, 2021 ada employee dengan ID EM009 bernama Viola ingin memasok obat 'Parachetamol',
-- dengan ID MD008 sebanyak 15. dan 'alcOhol bottle 70% dengan ID MD001 sebanyak 5 botol 
--  di vendor dengan ID VN015 bernama PT. Indonesia Sehat 
BEGIN TRAN
INSERT INTO MsPurchaseTransaction VALUES ('PC016','EM009','VN015','2021-11-11')
INSERT INTO MsPurchaseTransactionDetail VALUES ('PC016','MD008',15),  ('PC016','MD001',5)


--3
-- Pada tanggal Jun 21, 2021 ada Customer dengan ID CU404 bernama Erika membeli vitamin 'Methylcobalain 5000'
-- dengan ID MD014 sebanyak 1 botol dan 'vitamin Blackmores Vitamin A 5000' dengan ID MD010
-- sebanyak 1 botol dilayani oleh petugas kasir dengan ID EM008.
BEGIN TRAN
INSERT INTO MsSalesTransaction VALUES ('SL017','CU404','EM008','2021-06-21',3)
INSERT INTO MsSalesTransactionDetail VALUES('SL017','MD014',1),('SL017','MD010',1)

--4
-- Pada Tanggal Dec 12, 2021 terdapat Customer dengan ID CU306 bernama Mica membeli obat nyeri Counterpain
-- dengan ID MD007 sebanyak 1 kotak dan obat sakit kepala 'Parachetamol' dengan ID MD008 sebanyak 10 kaplet 
-- dilayani oleh petugas kasir dengan ID EM010.
BEGIN TRAN
INSERT INTO MsSalesTransaction VALUES ('SL018','CU306','EM010','2021-12-12',2)
INSERT INTO MsSalesTransactionDetail VALUES('SL018','MD007',1),('SL018','MD008',10)

--5 
-- Pada Tanggal July 13, 2021 terdapat Customer dengan ID CU205 bernama Moro membeli persediaan 'alcohol bottle 70%'
-- dengan ID MD001 sebanyak 5 botol yang dilayani oleh Petugas Apoteker dengan ID EM015.
BEGIN TRAN
INSERT INTO MsSalesTransaction VALUES ('SL019','CU205','EM015','2021-07-13',5)
INSERT INTO MsSalesTransactionDetail VALUES('SL019','MD001',5)