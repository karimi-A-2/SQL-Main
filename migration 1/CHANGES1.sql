ALTER TABLE Reminder
DROP COLUMN Rem#;


ALTER TABLE [dbo].[inqury] DROP CONSTRAINT [FK__inqury__userID__2A4B4B5E];

ALTER TABLE inqury
DROP COLUMN USERID;

ALTER TABLE insurance
ADD rating int;

ALTER TABLE inqury
ADD type_ int;

ALTER TABLE Insurance
ADD type_ int;


ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__inqid__2E1BDC42];

ALTER TABLE INSURANCE 
DROP COLUMN INQID;


ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__useri__2D27B809];


ALTER TABLE INSURANCE 
DROP COLUMN USERID;


ALTER TABLE Health_insurance
ADD is_family BIT;

EXEC sp_rename 'Property_inq.uinit#', 'uinit_count';
--Caution: Changing any part of an object name could break scripts and stored procedures.



ALTER TABLE [dbo].[Property_inq] DROP CONSTRAINT [FK__Property___useri__49C3F6B7];

ALTER TABLE Property_inq
drop column userid;

ALTER TABLE reminder
ALTER COLUMN userid int NOT NULL;