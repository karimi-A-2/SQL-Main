-- Drop the database 'projDB1'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Uncomment the ALTER DATABASE statement below to set the database to SINGLE_USER mode if the drop database command fails because the database is in use.
-- ALTER DATABASE projDB1 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- Drop the database if it exists
IF EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'projDB1'
)
DROP DATABASE projDB1
GO

USE master;
CREATE DATABASE projDB1;
GO

USE projDB1;
GO

CREATE TABLE [Province](
	[id] INT NOT NULL PRIMARY KEY,
	[name] NVARCHAR(30)
);
GO

CREATE TABLE [City](
	[id] INT NOT NULL PRIMARY KEY,
	[name] NVARCHAR(30),
	[province_id] INT FOREIGN KEY REFERENCES Province(id)
);
GO

CREATE TABLE [Type](
	[id] INT NOT NULL PRIMARY KEY,
	[type] NVARCHAR(15) NOT NULL
);
GO

INSERT INTO [Type]
( [id], [type])
VALUES
(1, 'Life'),
(2, 'Health'),
(3, 'Fire'),
(4, 'Earthquake')
GO

CREATE TABLE [User_](
	[id] INT NOT NULL PRIMARY KEY,
	[phone] NVARCHAR(11) NOT NULL UNIQUE,
	[code] NVARCHAR(8) NOT NULL UNIQUE,
	[fname] NVARCHAR(50),
	[lname] NVARCHAR(50),
	[pass] NVARCHAR(25),
	[invatation] TINYINT DEFAULT 10,
	[is_logged_in] BIT DEFAULT 1
);
GO

create table [Reminder](
	[id] INT NOT NULL PRIMARY KEY,
	[user_id] INT FOREIGN KEY REFERENCES [User_](id),
	[ins_type] INT FOREIGN KEY REFERENCES [Type](id),
	[ins_description] NVARCHAR(100),
	[due_date] NVARCHAR(10) NOT NULL,
	[ins_period] TINYINT NOT NULL CHECK ([ins_period] IN (0, 1, 3, 6, 12)),
	[province_id] INT FOREIGN KEY REFERENCES [Province](id),
	[city_id] INT FOREIGN KEY REFERENCES [City](id),
);
GO

CREATE TABLE [Inqury](
	[id] INT NOT NULL PRIMARY KEY,
    [inq_type] INT FOREIGN KEY REFERENCES [Type](id),
);
GO

CREATE TABLE [Life_inq](
	[id] INT NOT NULL PRIMARY KEY,
	[inq_id] INT FOREIGN KEY REFERENCES Inqury(id),
	[birth_date] NVARCHAR(10),
	[contract_period] TINYINT NOT NULL DEFAULT 5 CHECK (5 <= [contract_period] AND [contract_period] <= 30),
	[payment_way] TINYINT NOT NULL CHECK ([payment_way] IN (3, 6, 12)),
	[monthly_payment] BIGINT NOT NULL CHECK ([monthly_payment] >= 50000),
	[premiums_increase] TINYINT DEFAULT 25 CHECK (0 <= [premiums_increase] AND [premiums_increase] <= 25),
	[capital_increase] TINYINT DEFAULT 10 CHECK (0 <= [capital_increase] AND [capital_increase] <= 20),
	[death_coefficient] TINYINT DEFAULT 20 CHECK (3 <= [death_coefficient] AND [death_coefficient] <= 25)
);
GO

CREATE TABLE [Health_inq](
	[id] INT NOT NULL PRIMARY KEY,
	[inq_id] INT FOREIGN KEY REFERENCES [Inqury](id),
	[is_family] BIT,
	[count_of_memeber] TINYINT NOT NULL CHECK (1 <= [count_of_memeber] AND [count_of_memeber] <= 10)
);
GO

CREATE TABLE [BaseIns](
	[id] INT NOT NULL PRIMARY KEY,
	[base_ins] NVARCHAR(30)
);
GO

INSERT INTO [BaseIns]
( [id], [base_ins])
VALUES
(1, 'No Base Insurance'),
(2, 'Tamin Ejtemayee'),
(3, 'Khadamat Darman'),
(4, 'Niro Mosalah'),
(5, 'Bank ha'),
(6, 'Salamat Iranian'),
(7, 'Other Insurance')
GO

CREATE TABLE [Relation](
	[id] INT NOT NULL PRIMARY KEY,
	[relation] NVARCHAR(30)
);
GO

INSERT INTO [Relation]
( [id], [relation])
VALUES
(0, 'Head'),
(1, 'Hamsar'),
(2, 'Farzand dokhtar'),
(3, 'Farzand pesar'),
(4, 'Pedar'),
(5, 'Madar'),
(6, 'Pedar bozorg'),
(7, 'Madar bozorg'),
(8, 'Nave'),
(9, 'Other')
GO

CREATE TABLE [AgeRange](
	[id] INT NOT NULL PRIMARY KEY,
	[range] NVARCHAR(30)
);
GO

INSERT INTO [AgeRange]
( [id], [range])
VALUES
(1, '5 to 15'),
(2, '16 to 45'),
(3, '46 to 50'),
(4, '51 to 60'),
(5, '61 to 70')
GO

CREATE TABLE [Member](
	[id] INT NOT NULL PRIMARY KEY,
    [health_inq_id] INT FOREIGN KEY REFERENCES [Health_inq](id),
	[base_ins] INT FOREIGN KEY REFERENCES [BaseIns](id),
	[age_range] INT FOREIGN KEY REFERENCES [AgeRange](id),
	[head_id] INT FOREIGN KEY REFERENCES [Member](id),
	[relation] INT FOREIGN KEY REFERENCES [Relation](id)
);
GO

CREATE TABLE [StructureType](
	[id] INT NOT NULL PRIMARY KEY,
	[type] NVARCHAR(30)
);
GO

INSERT INTO [StructureType]
( [id], [type])
VALUES
(1, '1 vahed dar aparteman'),
(2, '1 sakhteman vilayee'),
(3, 'aparteman ya mojtama')
GO

CREATE TABLE [BuildingMaterial](
	[id] INT NOT NULL PRIMARY KEY,
	[material] NVARCHAR(30)
);
GO

INSERT INTO [BuildingMaterial]
( [id], [material])
VALUES
(1, 'Ajori'),
(2, 'Felezi'),
(3, 'Betoni')
GO

CREATE TABLE [Property_inq](
	[id] INT NOT NULL PRIMARY KEY,
	[inq_id] INT FOREIGN KEY REFERENCES [Inqury](id),
    [province_id] INT FOREIGN KEY REFERENCES [Province](id),
	[city_id] INT FOREIGN KEY REFERENCES [City](id),
	[structure_type] INT FOREIGN KEY REFERENCES [StructureType](id),
	[uinit_count] INT DEFAULT 1 CHECK ([uinit_count] >= 1),
	[building_material] INT FOREIGN KEY REFERENCES [BuildingMaterial](id),
	[life_building] TINYINT NOT NULL CHECK (0 <= [life_building] AND [life_building] <= 35),
	[meterage] INT NOT NULL,
	[cost_per_meter] TINYINT NOT NULL CHECK (0 <= [cost_per_meter] AND [cost_per_meter] <= 10),
	[appliance_price] BIGINT NOT NULL,
);
GO

CREATE TABLE [Company](
	[id] INT NOT NULL PRIMARY KEY,
	[name] NVARCHAR(50) NOT NULL
);
GO

CREATE TABLE [Insurance](
	[id] INT NOT NULL PRIMARY KEY,
	[company_id] Int FOREIGN KEY REFERENCES [Company](id),
	[ins_type] INT FOREIGN KEY REFERENCES [Type](id),
	[price] BIGINT NOT NULL,
	[discount] TINYINT DEFAULT 0 CHECK (0 <= [discount] AND [discount] <= 100),
);
GO

CREATE TABLE [Life_insurance](
	[id] INT NOT NULL PRIMARY KEY,
	[ins_id] INT FOREIGN KEY REFERENCES [Insurance](id),
	[redemption_value] BIGINT NOT NULL,
	[death_capital] BIGINT NOT NULL,
	[medical_expences] BIGINT NOT NULL,
);
GO

CREATE TABLE [Health_insurance](
	[id] INT NOT NULL PRIMARY KEY,
	[ins_id] INT FOREIGN KEY REFERENCES [Insurance](id),
	[ins_service] NVARCHAR(50),
	[child_birth] INT DEFAULT 9,
	[chronic_disease] INT DEFAULT 3,
	[share_of_costs] INT DEFAULT 10 CHECK (0 <= [share_of_costs] AND [share_of_costs] <= 100),
);
GO

CREATE TABLE [Property_ins](
	[id] INT NOT NULL PRIMARY KEY,
	[ins_id] INT FOREIGN KEY REFERENCES [Insurance](id),
	[rating] DECIMAL(2, 1) CHECK (0.0 <= [rating] AND [rating] <= 5.0),
	[ability] TINYINT CHECK (0 <= [ability] AND [ability] <= 5),
	[satisfaction] DECIMAL(2, 1) CHECK (0.0 <= [satisfaction] AND [satisfaction] <= 5.0),
	[branch] INT NOT NULL,
);
GO

CREATE TABLE [Buy](
	[id] INT NOT NULL PRIMARY KEY,
	[user_id] INT FOREIGN KEY REFERENCES [User_](id),
	[ins_id] INT FOREIGN KEY REFERENCES [Insurance](id),
	[inq_id] INT FOREIGN KEY REFERENCES [inqury](id),
	[final_price] BIGINT NOT NULL,
	[discount_code] NVARCHAR(15)
);
GO

INSERT INTO [Province]
( [id], [name])
VALUES
(1, 'Azarbayjan Shargi'),
(2, 'Azarbayjan gharbi'),
(3, 'Ardabil'),
(4, 'Esfahan'),
(5, 'Alborz'),
(6, 'Ilam'),
(7, 'Boshehr'),
(8, 'Tehran'),
(9, 'Charmahal'),
(10, 'khorasan Jonobi'),
(11, 'khorasan Razavi'),
(12, 'khorasan Shomali'),
(13, 'Khozestan'),
(14, 'Zanjan'),
(15, 'Semnan'),
(16, 'Sistan'),
(17, 'Fars'),
(18, 'Qazvin'),
(19, 'Qom'),
(20, 'Kordestan'),
(21, 'Kerman'),
(22, 'Kermanshah'),
(23, 'Kohkiloye'),
(24, 'Golestan'),
(25, 'Gilan'),
(26, 'Lorestan'),
(27, 'Mazandaran'),
(28, 'Markazi'),
(29, 'Hormozgan'),
(30, 'Hamedan'),
(31, 'Yazd')
GO

INSERT INTO [City]
( [id], [name], [province_id])
VALUES
(1, 'Tehran', 8),
(2, 'Varamin', 8),
(3, 'Qaen', 10),
(4, 'Ferdos', 10),
(5, 'Birjand', 10),
(6, 'Mashhad', 11),
(7, 'Neyshabor', 11),
(8, 'Sabzevar', 11),
(9, 'Bojnord', 12),
(10, 'Shiravan', 12),
(11, 'Garme', 12),
(12, 'Esfahan', 4),
(13, 'Golpaygan', 4),
(14, 'Natanz', 4)
GO

INSERT INTO [User_]
( [id], [phone], [code], [fname], [lname], [pass], [invatation], [is_logged_in])
VALUES
(1, '09022226761', 'azk4n3ki', 'Ali', 'Karimi', 'heyThisPass2', 10, 1),
(2, '09022226700', 'b00003ki', 'Zohre', 'Rasouli', 'pass3', 10, 1),
(3, '09022221155', 'c0000ddd', 'Elham', 'Niyayeshi', 'pass4', 10, 1),
(4, '09022222233', 'd0000eee', 'Reza', 'Maleki', 'pass5', 10, 1),
(5, '09022220044', 'f0000kkk', 'Morteza', 'Molayee', 'pass6', 10, 1),
(6, '09022220022', 'e0000jjj', 'Omid', 'Ahmadi', 'pass7', 10, 1),
(7, '09022224466', 's0000bbb', 'Mohammad', 'Sajjadi', 'pass8', 10, 1)
GO

INSERT INTO [Reminder]
( [id], [user_id], [ins_type], [ins_description], [due_date], [ins_period], [province_id], [city_id])
VALUES
(1, 5, 1, 'test purpose', '1401-10-10', 6, 1, 8),
(2, 5, 2, 'test purpose', '1401-11-11', 1, 4, 10)
GO

INSERT INTO [Inqury]
( [id], [inq_type])
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 4),
(8, 4),
(12, 3),
(13, 3)
GO

INSERT INTO [Life_inq]
( [id], [inq_id], [birth_date], [contract_period], [payment_way], [monthly_payment], [premiums_increase], [capital_increase], [death_coefficient])
VALUES
(1, 1, '1400-10-10', 5, 3, 50000, 25, 10, 20),
(2, 2, '1360-01-01', 10, 6, 100000, 25, 10, 20)
GO

INSERT INTO [Health_inq]
( [id], [inq_id], [is_family], [count_of_memeber])
VALUES
(1, 3, 0, 1),
(2, 4, 0, 3),
(3, 5, 1, 3),
(4, 6, 1, 4)
GO
INSERT INTO [Member]
( [id], [health_inq_id], [base_ins], [age_range], [head_id], [relation])
VALUES
(1, 1, 2, 3, NULL, NULL),
(2, 2, 3, 1, NULL, NULL),
(3, 2, 3, 2, NULL, NULL),
(4, 2, 3, 2, NULL, NULL),
(5, 3, 6, 3, NULL, 0),
(6, 3, 6, 3, 5, 1),
(7, 3, 6, 1, 5, 2),
(8, 4, 1, 4, NULL, 0),
(9, 4, 1, 3, 8, 1),
(10, 4, 1, 1, 8, 2),
(11, 4, 1, 1, 8, 3)
GO

INSERT INTO [Property_inq]
( [id], [inq_id], [province_id], [city_id], [structure_type], [uinit_count], [building_material], [life_building], [meterage], [cost_per_meter], [appliance_price] )
VALUES
(1, 7, 6, 11, 1, 1, 1, 7, 150, 5, 500000000),
(2, 8, 6, 11, 2, 1, 2, 15, 300, 6, 500000000),
(3, 12, 6, 11, 3, 5, 3, 8, 800, 10, 500000000),
(4, 13, 6, 11, 3, 6, 2, 30, 900, 7, 500000000)
GO

INSERT INTO [Company]
( [id], [name])
VALUES
(1, 'Iran'),
(2, 'Asia'),
(3, 'Parsian'),
(4, 'Dana'),
(5, 'Razi'),
(6, 'Ma'),
(7, 'Moalem'),
(8, 'Pasadgad'),
(9, 'Alborz'),
(10, 'Dey'),
(11, 'Melat'),
(12, 'Karafarin'),
(13, 'Novin'),
(14, 'Saman'),
(15, 'Tejarat No'),
(16, 'Kosar'),
(17, 'Arman'),
(18, 'Sina'),
(19, 'Taavon'),
(20, 'Asmari'),
(21, 'Sarmad'),
(22, 'Mihan'),
(23, 'Hafez'),
(24, 'Tosee')
GO

INSERT INTO [Insurance]
( [id], [company_id], [ins_type], [price], [discount])
VALUES
(1, 14, 1, 300000, 0),
(2, 1, 1, 500000, 0),
(3, 8, 1, 100000, 0),
(4, 10, 2, 100000, 20),
(5, 10, 2, 150000, 10),
(6, 10, 2, 170000, 0),
(7, 10, 2, 130000, 5),
(8, 14, 2, 190000, 0),
(9, 14, 2, 200000, 0),
(10, 14, 2, 210000, 0),
(30, 19, 3, 210000, 0),
(31, 2, 3, 220000, 0),
(32, 5, 3, 230000, 0),
(33, 3, 3, 240000, 0),
(34, 10, 3, 250000, 0)
GO

INSERT INTO [Life_insurance]
( [id], [ins_id], [redemption_value], [death_capital], [medical_expences])
VALUES
(1, 1, 600000, 900000, 0),
(2, 2, 1000000, 1500000, 0),
(3, 3, 1100000, 1900000, 0)
GO

INSERT INTO [Health_insurance]
( [id], [ins_id], [ins_service], [child_birth], [chronic_disease], [share_of_costs])
VALUES
(1, 4, 'shakhs vahed 3 star', 9, 3, 10),
(2, 5, 'shakhs vahed 4 star', 9, 3, 10),
(3, 6, 'shakhs vahed 4 star plus', 9, 3, 10),
(4, 7, 'shakhs vahed 5 star', 9, 3, 10),
(5, 8, 'tarh sero', 9, 3, 10),
(6, 9, 'tarh sepidar', 9, 3, 10),
(7, 10, 'tarh afra', 9, 3, 10)
GO

INSERT INTO [Property_ins]
( [id], [ins_id], [rating], [ability], [satisfaction], [branch])
VALUES
(1, 30, 4.2, 5, 5.0, 29),
(2, 31, 4.2, 5, 4.0, 99),
(3, 32, 3.9, 5, 4.1, 47),
(4, 33, 4.0, 5, 4.3, 62),
(5, 34, 3.7, 4, 3.0, 49)
GO

INSERT INTO [Buy]
( [id], [user_id], [ins_id], [inq_id], [final_price], [discount_code] )
VALUES
(1, 1, 1, 1, 1500000, NULL),
(2, 2, 2, 2, 1500000, 'a2bcde'),
(3, 2, 4, 4, 1500000, NULL)
GO



SELECT * FROM [Province];
SELECT * FROM [City];
SELECT * FROM [Type];
SELECT * FROM [User_];
SELECT * FROM [Reminder];
SELECT * FROM [Inqury];
SELECT * FROM [Life_inq];
SELECT * FROM [Health_inq];
SELECT * FROM [BaseIns];
SELECT * FROM [Relation];
SELECT * FROM [AgeRange];
SELECT * FROM [Member];
SELECT * FROM [StructureType];
SELECT * FROM [BuildingMaterial];
SELECT * FROM [Property_inq];
SELECT * FROM [Company];
SELECT * FROM [Insurance];
SELECT * FROM [Life_insurance];
SELECT * FROM [Health_insurance];
SELECT * FROM [Property_ins];
SELECT * FROM [Buy];