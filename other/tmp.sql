-- Drop the database 'projDB1'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Uncomment the ALTER DATABASE statement below to set the database to SINGLE_USER mode if the drop database command fails because the database is in use.
ALTER DATABASE projDB1 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
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

INSERT INTO [User_]
( [id], [phone], [code], [fname], [lname], [pass], [invatation], [is_logged_in])
VALUES
(11, '09026743937', 'r00nh2lt', 'Ali', 'Karimi', 'pass', 5, 1),
(12, '09018110650', 'ygupw435', 'Mohammad', 'Amiri', 'pass', 8, 1),
(13, '09129615681', 'tmvx37i0', 'Mahda', 'Ashrafi', 'pass', 7, 1),
(14, '09371752150', 'qvri9z9g', 'Hossein', 'Mortazavi', 'pass', 10, 0),
(15, '09025807894', '13czlwwg', 'Helma', 'Akhgar', 'pass', 4, 1),
(16, '09374787030', 'pye761w9', 'Roqaye', 'Azizi', 'pass', 7, 1),
(17, '09308687695', '934bo6me', 'Kasra', 'Siyavashpoor', 'pass', 3, 1),
(18, '09027061854', 'yca0mvyl', 'Nikan', 'Norafkan', 'pass', 8, 0),
(19, '09509879142', 'dul70p8r', 'Erfan', 'Riyazati', 'pass', 10, 1),
(20, '09503672963', 'hr2kyfej', 'Reza', 'Najafi', 'pass', 10, 1)
GO

