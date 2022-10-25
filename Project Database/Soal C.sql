-- 2440016855 - Clarissa Belinda
-- 2440015884 - Adithia Kristyanto
-- 2440019586 - Ricky Pratama
GO
USE [HaLLoPharmacy]
GO

BEGIN TRAN
INSERT INTO MsCustomer VALUES
	('CU201', 'Mira', '081295261156', 'Jelambar Barat No.56', 'Female', 'Mirasina@hallo.com', 'qwertyu', '1999-02-02'),
	('CU202', 'Sinta', '081296662456', 'Indraloka No.35', 'Female', 'Hunaikam@hallo.com', 'asdfgh', '1982-03-06'),
	('CU203', 'Monic', '081229387297', 'Teluk Gong No.29', 'Female', 'Monicaca@hallo.com', 'nomnomnom', '2000-11-05'),
	('CU204', 'Hardi', '081295232322', 'Masdaraya No.75', 'Male', 'Hardikani@hallo.com', '123turf', '2000-07-12'),
	('CU205', 'Moro', '081227827392', 'Bouverald No.25', 'Male', 'Moroto21@hallo.com', 'morkas34', '1992-12-22'),
	('CU206', 'Dimas', '081261829012', 'Housterald No.55', 'Male', 'Dimdimdimas@hallo.com', 'demons12', '1996-06-23'),
	('CU301', 'Ricky', '081251627183', 'Minrald No.45', 'Male', 'Ricky456@hallo.com', 'onepice452', '1998-02-09'),
	('CU303', 'Claudi', '081215264810', 'Jl Borodudur No.56', 'Female', 'Claudianat@hallo.com', 'duckxx', '2000-02-03'),
	('CU304', 'Angel', '081252164518', 'Bandengan No.13', 'Female', 'Angelxxx@hallo.com', 'angels342', '1999-06-14'),
	('CU305', 'Rey', '081218254619', 'Jelambar Fajar No.6', 'Male', 'Reynold91@hallo.com', 'reyreyno56', '2001-04-06'),
	('CU307', 'Adit', '081252410989', 'Jl Aladdin No.26', 'Male', 'Aditmorkx@hallo.com', 'ditdaysa77', '1999-08-07'),
	('CU042', 'Eli', '081252610982', 'Jl Iman bunan No.23', 'Female', 'Elianamor@hallo.com', 'elililili78', '1992-11-01'),
	('CU306', 'Mica', '081252619287', 'Jl Jelambar Baru No.42', 'Female', 'Micalex68@hallo.com', 'micelxad', '1994-09-04'),
	('CU309', 'Ardi', '0812091092516', 'Bekasi Barat No.12', 'Male', 'Ardiraww@hallo.com', 'adidawww', '1995-09-10'),
	('CU404', 'Erika', '081200162122', 'Jl Cuanica No.21', 'Female', 'Erikas34@hallo.com', 'erikasa89', '1993-02-17')


BEGIN TRAN
INSERT INTO MsEmployee VALUES
	('EM001', 'Wanni','Waninaw@hallo.com', '081267544456', 'Jelambar Barat No.23', '1998/08/05', 'Female', 1000000),
	('EM002', 'Didi','Didinono@hallo.com', '081266667182', 'Jelmbar Baru No.23', '1998/11/04', 'Male', 1000000),
	('EM003', 'Dodi','Dodisanto@hallo.com', '081299201846', 'Hostmanu No.44', '1998/09/15', 'Male', 1500000),
	('EM004', 'Minny','Minnnyyy@hallo.com', '081290001312', 'Bouverald No.65', '1998/11/25', 'Female', 2000000),
	('EM005', 'Audrey Aurel','Mochiakai@hallo.com', '081255241627', 'Jl Borobudur No.4', '1998/11/19', 'Female', 1500000),
	('EM006', 'Shery','Sheryyyy21@hallo.com', '081282910273', 'Bandengan No.23', '1998/02/23', 'Female', 2500000),
	('EM007', 'Bajang','Jajangsport@hallo.com', '081266621729', 'Bekasi Selatan No.45', '1998/02/14', 'Male', 1000000),
	('EM008', 'Valen','Valenciaga@hallo.com', '081229100291', 'Cikarang Timur No.4', '1998/07/03', 'Female', 1500000),
	('EM009', 'Viola','Violalala@hallo.com', '081266617192', 'Jl Aladdin No.4', '1998/02/27', 'Female', 2000000),
	('EM010', 'Bess','Jessyan@hallo.com', '081211212344', 'Kemayoran Selatan No.44', '1998/11/18', 'Female', 1500000),
	('EM011', 'Ferdi','Ferdianni78@hallo.com', '081262738193', 'Bandengan No.65', '1998/04/08', 'Male', 3000000),
	('EM012', 'Chio','Manusiambz@hallo.com', '081228372932', 'Jelambar Barat No.55', '1998/02/09', 'Male', 2500000),
	('EM013', 'Jordan','Betelgeuse@hallo.com', '081232736283', 'Teluk Gong No.67', '1998/01/30', 'Male', 2500000),
	('EM014', 'Wiren','Skylix727@hallo.com', '081237282888', 'Jelambar Barat No.24', '1998/02/27', 'Female', 3500000),
	('EM015', 'Tyas','Heartlesskun@hallo.com', '081292839201', 'Casa Jardin No.6', '1998/03/01', 'Female', 2500000)



BEGIN TRAN
INSERT INTO MsVendor VALUES
	('VN001' , 'Prima Solusi Medikal.PT' , ' 081776868683' , 'Jalan Malaka Utara No. 16' , 'Primasolusi@gmail.com' , '2015'),
	('VN002' , 'PT. Sinocare Healthcare Indonesia' , '08123818032' , 'Jalan U No. 99' , 'Sinocarehealthcare@gmail.com' , '2016'),
	('VN003' , 'PT.Hospi Medik Indonesia' , '081246861000' , 'Jalan Rawabelong No. 69' , 'Hospimedik@gmail.com' , '2015'),
	('VN004' , 'PT.Meiji Indonesian Pharmaceutical Industries' , '082245777812' , 'Jalan Pejajaran No. 1' , 'Apotik.makmur@yahoo.com' ,  '2016'),
	('VN005' , 'Simex Pharmaceutical Indonesia.PT' , '08779991256' , 'Jalan Muara Karang II No. 10' , 'SimexIndonesia@yahoo.com' , '2015'),
	('VN006' , 'PT.TIFANY USAHA MANDIRI' , '082250104998' , 'Jalan Bali No. 6' , 'Tifannymandiri@gmail.com' , '2010'),
	('VN007' , 'PT.Penta Valent' , '081255567810' , 'Jalan Pluit Raya No. 101' , 'Pentavalent@gmail.com' , '2013'),
	('VN008' , 'PT. Clarisa Belinda' , '081295662528' , 'Jalan  Harapan Raya No. 99' , 'Clarbelinda@gmail.com' , '2010'),
	('VN009' , 'PT. Belinda Mandiri' , '081254436668' , 'Jalan Bintaro Timur No.123' , 'Belindamandiri@gmail.com' , '2013'),
	('VN010' , 'PT. Onemed Indonesia' , '081165920087' , ' Jalan Kemanggisan No.111' , 'Onemedindonesia@gmail.com' , '2016'),
	('VN011' , 'PT. Solusi Kesehatan' , '082287436665' , ' Jalan Bakti No.3' , 'Solusikesehatan@gmail.com' , '2016'),
	('VN012' , 'PT. Cinta Kasih' , '082245458911' , ' Jalan Semanggi No. 99' , 'Cintakasih@yahoo.com' , '2015'),
	('VN013' , 'PT. Kasih Indonesia' , '081355561722' , 'Jalan Manggis No. 101' , 'kasihindonesia@gmail.com' , '2013'),
	('VN014' , 'PT. Pharmaceutical Medicine' , '089602729158' , 'Jalan Permata Harapan No. 7' , 'Pharmaceuticalmed@gmail.com' , '2012'),
	('VN015' , 'PT. Indonesia Sehat' , '089634451112' , 'Jalan Kacaraya No.86' , 'Indonesia.sehat@gmail.com' , '2010')

BEGIN TRAN
INSERT INTO MsCategory VALUES
	('CT001' , 'Alcohol'),
	('CT002' , 'Antibiotik'),
	('CT003' , 'NSAID'),
	('CT004' , 'Vitamin D'),
	('CT005' , 'Analgesic'),
	('CT006' , 'Hormone'),
	('CT007' , 'Retinoids'),
	('CT008' , 'Anesthetics'),
	('CT009' , 'Antihistamin'),
	('CT010' , 'Santonin'),
	('CT011' , 'Methylcobalain'),
	('CT012' , 'Antioxidant'),
	('CT013' , 'Diuretic'),
	('CT014' , 'Antikonvulsan'),
	('CT015' , 'Antidiabetic agents')

BEGIN TRAN
INSERT INTO MsMedicineDetails VALUES
	('MD001' , 'CT001' , 'alcohol bottle 70%' , 8000 , 'cairan yang digunakan sebagai antiseptik' , 100),
	('MD002' , 'CT002' , 'Penicillin' , 25000 , 'antibiotik untuk infeksi bakteri' , 50),
	('MD003' , 'CT002' , 'Amoxicillin', 20000 , 'antibiotik untuk infeksi bakteri' , 63),
	('MD004' , 'CT003' , 'Profis Ibuprofen' , 24000 , 'obat penurun panas anak' , 44),
	('MD005' , 'CT003' , 'Ibuprofen 400' , 18000 , 'penurun panas' , 20),
	('MD006' , 'CT004' , 'MYWELL D3 1000 IU' , 21000 , 'Vitamin D' , 67),
	('MD007' , 'CT005' , 'Counterpain' , 60000 , 'pereda nyeri otot dan sendi' , 4),
	('MD008' , 'CT005' , 'Parachetamol' , 23000 , 'Pereda nyeri dan panas' , 37),
	('MD009' , 'CT006' , 'Insuline' , 34000 , 'obat untuk memenuhi insulin' , 25),
	('MD010' , 'CT007' , 'Blackmores Vitamin A 5000' , 15000 , 'vitamin A' , 40),
	('MD011' , 'CT008' , 'Emla 5% Lidocaine prilocaine' , 33000 , 'anesthetics anti nyeri' , 20),
	('MD012' , 'CT009' , 'Chlorpheniramini maleas' , 30000 , 'obat alergi' , 85),
	('MD013' , 'CT010' , 'Combantrin' , 60000 , 'obat infeksi cacing' , 3),
	('MD014' , 'CT011' , 'Methylcobalain 5000' , 30000, 'Vitamin B12' , 20),
	('MD015' , 'CT012' , 'Nourish Skin' , 10000 , 'suplemen kulit' , 17),
	('MD016' , 'CT013' , 'Hydrochlorothiazide 25mg' , 13000 , 'obat tekanan darah tinggi' , 25),
	('MD017' , 'CT014' , 'Bamgetol 200mg' , 60000 , 'obat mencegah kejang' , 2),
	('MD018' , 'CT015' , 'Amadiab Glimepride 3mg' , 70000, 'menurunkan kadar gula darah' , 1)


BEGIN TRAN
INSERT INTO MsSalesTransaction VALUES
	('SL001','CU201','EM001','2021-01-20',1),
	('SL002','CU206','EM002','2021-02-19',2),
	('SL003','CU203','EM003','2021-02-18',1),
	('SL004','CU204','EM004','2021-03-14',7),
	('SL005','CU205','EM005','2021-06-12',3),
	('SL006','CU206','EM006','2021-06-26',4),
	('SL007','CU301','EM007','2021-06-25',2),
	('SL008','CU303','EM008','2021-07-24',1),
	('SL009','CU304','EM009','2021-07-23',3),
	('SL010','CU305','EM010','2021-08-02',6),
	('SL011','CU307','EM011','2021-09-09',5),
	('SL012','CU042','EM012','2021-10-05',2),
	('SL013','CU306','EM013','2021-10-03',1),
	('SL014','CU309','EM014','2021-11-01',8),
	('SL015','CU404','EM015','2021-12-22',1)

BEGIN TRAN
INSERT INTO MsPurchaseTransaction VALUES
	('PC001','EM001','VN001','2021-01-22'),
	('PC002','EM002','VN002','2021-03-15'),
	('PC003','EM003','VN003','2021-03-12'),
	('PC004','EM004','VN004','2021-06-13'),
	('PC005','EM005','VN005','2021-06-13'),
	('PC006','EM006','VN006','2021-06-21'),
	('PC007','EM007','VN007','2021-06-21'),
	('PC008','EM008','VN008','2021-06-21'),
	('PC009','EM009','VN009','2021-06-29'),
	('PC010','EM010','VN010','2021-07-20'),
	('PC011','EM011','VN011','2021-07-10'),
	('PC012','EM012','VN012','2021-08-01'),
	('PC013','EM013','VN013','2021-09-05'),
	('PC014','EM014','VN014','2021-10-13'),
	('PC015','EM015','VN015','2021-10-13')


BEGIN TRAN
INSERT INTO MsSalesTransactionDetail VALUES
	('SL001','MD001',10),
	('SL001','MD002',2),
	('SL002','MD002',3),
	('SL002','MD001',7),
	('SL002','MD005',2),
	('SL003','MD003',2),
	('SL004','MD004',5),
	('SL004','MD014',1),
	('SL004','MD007',2),
	('SL005','MD005',5),
	('SL006','MD006',2),
	('SL006','MD012',2),
	('SL007','MD007',1),
	('SL007','MD015',1),
	('SL008','MD008',4),
	('SL009','MD009',2),
	('SL010','MD010',6),
	('SL011','MD011',3),
	('SL011','MD013',3),
	('SL012','MD012',2),
	('SL013','MD013',2),
	('SL014','MD014',1),
	('SL015','MD015',4),
	('SL015','MD001',10),
	('SL015','MD008',2)

BEGIN TRAN
INSERT INTO MsPurchaseTransactionDetail VALUES
	('PC001','MD001',1),
	('PC001','MD002',2),
	('PC002','MD002',3),
	('PC002','MD001',1),
	('PC002','MD005',2),
	('PC003','MD003',2),
	('PC004','MD004',5),
	('PC004','MD014',1),
	('PC004','MD007',2),
	('PC005','MD005',5),
	('PC006','MD006',2),
	('PC006','MD012',2),
	('PC007','MD007',1),
	('PC007','MD015',1),
	('PC008','MD008',4),
	('PC009','MD009',2),
	('PC010','MD010',6),
	('PC011','MD011',1),
	('PC011','MD013',1),
	('PC012','MD012',2),
	('PC013','MD013',2),
	('PC014','MD014',1),
	('PC015','MD015',4),
	('PC015','MD001',1),
	('PC015','MD008',2)