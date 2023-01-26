/*
Run this script on:

        (local)\SQL2019.dbPr    -  This database will be modified

to synchronize it with:

        (local)\SQL2019.MyTestDB

You are recommended to back up your database before running this script

Script created by SQL Compare version 14.4.4.16824 from Red Gate Software Ltd at 06/10/1401 12:01:01 ق.ظ

*/
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL Serializable
GO
BEGIN TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Buy]'
GO
ALTER TABLE [dbo].[Buy] DROP CONSTRAINT [FK__Buy__inq_id__5224328E]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Buy] DROP CONSTRAINT [FK__Buy__ins_id__51300E55]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Buy] DROP CONSTRAINT [FK__Buy__userid__503BEA1C]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Earthquake_Insurance]'
GO
ALTER TABLE [dbo].[Earthquake_Insurance] DROP CONSTRAINT [FK__Earthquak__in_id__40058253]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Fire_Insurance]'
GO
ALTER TABLE [dbo].[Fire_Insurance] DROP CONSTRAINT [FK__Fire_Insu__in_id__42E1EEFE]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[health_inq]'
GO
ALTER TABLE [dbo].[health_inq] DROP CONSTRAINT [FK__health_in__inqid__339FAB6E]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Health_insurance]'
GO
ALTER TABLE [dbo].[Health_insurance] DROP CONSTRAINT [FK__Health_in__hinq___37703C52]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Health_insurance] DROP CONSTRAINT [FK__Health_in__in_id__367C1819]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[inqury]'
GO
ALTER TABLE [dbo].[inqury] DROP CONSTRAINT [FK__inqury__userID__2CF2ADDF]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Insurance]'
GO
ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__inqid__30C33EC3]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__useri__2FCF1A8A]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Life_inq]'
GO
ALTER TABLE [dbo].[Life_inq] DROP CONSTRAINT [FK__Life_inq__inqid__498EEC8D]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Life_insurance]'
GO
ALTER TABLE [dbo].[Life_insurance] DROP CONSTRAINT [FK__Life_insu__in_id__3A4CA8FD]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Member]'
GO
ALTER TABLE [dbo].[Member] DROP CONSTRAINT [FK__Member__in_id__45BE5BA9]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Member] DROP CONSTRAINT [FK__Member__mem_id__46B27FE2]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Property_inq]'
GO
ALTER TABLE [dbo].[Property_inq] DROP CONSTRAINT [FK__Property___inqid__4D5F7D71]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Property_inq] DROP CONSTRAINT [FK__Property___useri__4C6B5938]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Property_ins]'
GO
ALTER TABLE [dbo].[Property_ins] DROP CONSTRAINT [FK__Property___in_id__3D2915A8]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping foreign keys from [dbo].[Reminder]'
GO
ALTER TABLE [dbo].[Reminder] DROP CONSTRAINT [FK__Reminder__userID__2A164134]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Buy]'
GO
ALTER TABLE [dbo].[Buy] DROP CONSTRAINT [PK__Buy__F8F9DBAEA9D10982]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Earthquake_Insurance]'
GO
ALTER TABLE [dbo].[Earthquake_Insurance] DROP CONSTRAINT [PK__Earthqua__3213E83FD65A5B3F]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Fire_Insurance]'
GO
ALTER TABLE [dbo].[Fire_Insurance] DROP CONSTRAINT [PK__Fire_Ins__3213E83F050D8A25]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[health_inq]'
GO
ALTER TABLE [dbo].[health_inq] DROP CONSTRAINT [PK__health_i__3213E83F5D90CBA2]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Health_insurance]'
GO
ALTER TABLE [dbo].[Health_insurance] DROP CONSTRAINT [PK__Health_i__3213E83F98DD21A4]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[inqury]'
GO
ALTER TABLE [dbo].[inqury] DROP CONSTRAINT [PK__inqury__3213E83FFE63C057]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Insurance]'
GO
ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [PK__Insuranc__1CD08BE90CEC590A]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Life_inq]'
GO
ALTER TABLE [dbo].[Life_inq] DROP CONSTRAINT [PK__Life_inq__3213E83F91E38BC0]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Life_insurance]'
GO
ALTER TABLE [dbo].[Life_insurance] DROP CONSTRAINT [PK__Life_ins__3213E83FEEEEC48C]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Member]'
GO
ALTER TABLE [dbo].[Member] DROP CONSTRAINT [PK__Member__3213E83FB46672BF]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Property_inq]'
GO
ALTER TABLE [dbo].[Property_inq] DROP CONSTRAINT [PK__Property__3213E83FEED4DB20]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Property_ins]'
GO
ALTER TABLE [dbo].[Property_ins] DROP CONSTRAINT [PK__Property__3213E83FE743F815]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[Reminder]'
GO
ALTER TABLE [dbo].[Reminder] DROP CONSTRAINT [PK__Reminder__3213E83F09AD2F80]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[User_]'
GO
ALTER TABLE [dbo].[User_] DROP CONSTRAINT [PK__User___3213E83FE48E7072]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping constraints from [dbo].[User_]'
GO
ALTER TABLE [dbo].[User_] DROP CONSTRAINT [UQ__User___B43B145F4E54D32D]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping [dbo].[t]'
GO
DROP TABLE [dbo].[t]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping [dbo].[T1]'
GO
DROP TABLE [dbo].[T1]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping [dbo].[Node]'
GO
DROP TABLE [dbo].[Node]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping [dbo].[Edge]'
GO
DROP TABLE [dbo].[Edge]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Inqury]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Inqury] ADD
[inq_type] [nvarchar] (15) COLLATE Persian_100_CI_AI NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Inqury] DROP
COLUMN [userID]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Inqury__3213E83F20480D45] on [dbo].[Inqury]'
GO
ALTER TABLE [dbo].[Inqury] ADD CONSTRAINT [PK__Inqury__3213E83F20480D45] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Buy]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Buy] ADD
[final_price] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Buy] ALTER COLUMN [discount_code] [nvarchar] (15) COLLATE Persian_100_CI_AI NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Buy__F8F9DBAE2A22D5F3] on [dbo].[Buy]'
GO
ALTER TABLE [dbo].[Buy] ADD CONSTRAINT [PK__Buy__F8F9DBAE2A22D5F3] PRIMARY KEY CLUSTERED  ([buy_id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Insurance]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Insurance] DROP
COLUMN [ins_name]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Insurance].[in_id]', N'id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Insurance].[company]', N'ins_type', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Insurance].[userid]', N'discount', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Insurance].[inqid]', N'company_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Insuranc__3213E83F35F70FC6] on [dbo].[Insurance]'
GO
ALTER TABLE [dbo].[Insurance] ADD CONSTRAINT [PK__Insuranc__3213E83F35F70FC6] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[User_]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[User_] ADD
[is_logged_in] [bit] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[User_] DROP
COLUMN [isLogedIn]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding constraints to [dbo].[User_]'
GO
ALTER TABLE [dbo].[User_] ADD CONSTRAINT [DF__User___invatatio__2A4B4B5E] DEFAULT ((10)) FOR [invatation]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__User___3213E83FECF788B1] on [dbo].[User_]'
GO
ALTER TABLE [dbo].[User_] ADD CONSTRAINT [PK__User___3213E83FECF788B1] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding constraints to [dbo].[User_]'
GO
ALTER TABLE [dbo].[User_] ADD CONSTRAINT [UQ__User___B43B145FC850FBA1] UNIQUE NONCLUSTERED  ([phone])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating [dbo].[Province]'
GO
CREATE TABLE [dbo].[Province]
(
[id] [int] NOT NULL,
[name] [nvarchar] (20) COLLATE Persian_100_CI_AI NULL
)
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Province__3213E83F3E9AA52B] on [dbo].[Province]'
GO
ALTER TABLE [dbo].[Province] ADD CONSTRAINT [PK__Province__3213E83F3E9AA52B] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating [dbo].[City]'
GO
CREATE TABLE [dbo].[City]
(
[id] [int] NOT NULL,
[name] [nvarchar] (20) COLLATE Persian_100_CI_AI NULL,
[province_id] [int] NULL
)
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__City__3213E83FB067CE78] on [dbo].[City]'
GO
ALTER TABLE [dbo].[City] ADD CONSTRAINT [PK__City__3213E83FB067CE78] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Property_ins]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Property_ins] ALTER COLUMN [rating] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Property__3213E83F86CE5A15] on [dbo].[Property_ins]'
GO
ALTER TABLE [dbo].[Property_ins] ADD CONSTRAINT [PK__Property__3213E83F86CE5A15] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Health_inq]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Health_inq] DROP
COLUMN [count_of_member]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Health_inq].[inqid]', N'inq_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Health_inq] ALTER COLUMN [is_family] [bit] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Health_i__3213E83FAA80E68D] on [dbo].[Health_inq]'
GO
ALTER TABLE [dbo].[Health_inq] ADD CONSTRAINT [PK__Health_i__3213E83FAA80E68D] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Health_insurance]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Health_insurance] ADD
[is_family] [bit] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Health_insurance] DROP
COLUMN [in_id]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Health_insurance].[in_service]', N'ins_service', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Health_insurance].[hinq_id]', N'ins_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Health_insurance] ALTER COLUMN [child_birth] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Health_insurance] ALTER COLUMN [chronic_disease] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Health_insurance] ALTER COLUMN [share_of_costs] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Health_i__3213E83F14770A31] on [dbo].[Health_insurance]'
GO
ALTER TABLE [dbo].[Health_insurance] ADD CONSTRAINT [PK__Health_i__3213E83F14770A31] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating [dbo].[Company]'
GO
CREATE TABLE [dbo].[Company]
(
[id] [int] NOT NULL,
[name] [nvarchar] (20) COLLATE Persian_100_CI_AI NULL
)
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Company__3213E83F539A2C3C] on [dbo].[Company]'
GO
ALTER TABLE [dbo].[Company] ADD CONSTRAINT [PK__Company__3213E83F539A2C3C] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Life_inq]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Life_inq] ADD
[birth_date] [nvarchar] (10) COLLATE Persian_100_CI_AI NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Life_inq] DROP
COLUMN [birth_date_day],
COLUMN [birth_date_month],
COLUMN [birth_date_year]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Life_inq].[inqid]', N'inq_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Life_inq__3213E83FD6D23025] on [dbo].[Life_inq]'
GO
ALTER TABLE [dbo].[Life_inq] ADD CONSTRAINT [PK__Life_inq__3213E83FD6D23025] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Life_insurance]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Life_insurance].[in_id]', N'ins_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Life_insurance] ALTER COLUMN [redemption_value] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Life_insurance] ALTER COLUMN [death_capital] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Life_ins__3213E83F46EE0ABE] on [dbo].[Life_insurance]'
GO
ALTER TABLE [dbo].[Life_insurance] ADD CONSTRAINT [PK__Life_ins__3213E83F46EE0ABE] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Property_inq]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Property_inq] ADD
[building_material] [nvarchar] (10) COLLATE Persian_100_CI_AI NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Property_inq] DROP
COLUMN [provience],
COLUMN [city],
COLUMN [building_type]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Property_inq].[in_id]', N'province_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Property_inq].[inqid]', N'city_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Property_inq].[uinit#]', N'uinit_count', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Property_inq].[life_bulding]', N'life_building', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Property_inq].[userid]', N'inq_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Property_inq] ALTER COLUMN [cost_per_meter] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Property_inq] ALTER COLUMN [appliance_price] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Property__3213E83F11659996] on [dbo].[Property_inq]'
GO
ALTER TABLE [dbo].[Property_inq] ADD CONSTRAINT [PK__Property__3213E83F11659996] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Reminder]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Reminder] ADD
[user_id] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Reminder] DROP
COLUMN [location_provience],
COLUMN [location_city]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Reminder].[Rem#]', N'province_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Reminder].[userID]', N'city_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Reminder] ALTER COLUMN [ins_period] [int] NULL
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Reminder__3213E83F65365D87] on [dbo].[Reminder]'
GO
ALTER TABLE [dbo].[Reminder] ADD CONSTRAINT [PK__Reminder__3213E83F65365D87] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[Member]'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
ALTER TABLE [dbo].[Member] DROP
COLUMN [head],
COLUMN [in_id]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
EXEC sp_rename N'[dbo].[Member].[mem_id]', N'head_id', N'COLUMN'
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Member__3213E83F4418DDE8] on [dbo].[Member]'
GO
ALTER TABLE [dbo].[Member] ADD CONSTRAINT [PK__Member__3213E83F4418DDE8] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Earthqua__3213E83FA6E3D1BA] on [dbo].[Earthquake_Insurance]'
GO
ALTER TABLE [dbo].[Earthquake_Insurance] ADD CONSTRAINT [PK__Earthqua__3213E83FA6E3D1BA] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Creating primary key [PK__Fire_Ins__3213E83F0B313751] on [dbo].[Fire_Insurance]'
GO
ALTER TABLE [dbo].[Fire_Insurance] ADD CONSTRAINT [PK__Fire_Ins__3213E83F0B313751] PRIMARY KEY CLUSTERED  ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Buy]'
GO
ALTER TABLE [dbo].[Buy] ADD CONSTRAINT [FK__Buy__inq_id__5629CD9C] FOREIGN KEY ([inq_id]) REFERENCES [dbo].[Inqury] ([id])
GO
ALTER TABLE [dbo].[Buy] ADD CONSTRAINT [FK__Buy__ins_id__5535A963] FOREIGN KEY ([ins_id]) REFERENCES [dbo].[Insurance] ([id])
GO
ALTER TABLE [dbo].[Buy] ADD CONSTRAINT [FK__Buy__userid__5441852A] FOREIGN KEY ([userid]) REFERENCES [dbo].[User_] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Property_inq]'
GO
ALTER TABLE [dbo].[Property_inq] ADD CONSTRAINT [FK__Property___city___3D5E1FD2] FOREIGN KEY ([city_id]) REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Property_inq] ADD CONSTRAINT [FK__Property___inq_i__3E52440B] FOREIGN KEY ([inq_id]) REFERENCES [dbo].[Inqury] ([id])
GO
ALTER TABLE [dbo].[Property_inq] ADD CONSTRAINT [FK__Property___provi__3C69FB99] FOREIGN KEY ([province_id]) REFERENCES [dbo].[Province] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Reminder]'
GO
ALTER TABLE [dbo].[Reminder] ADD CONSTRAINT [FK__Reminder__city_i__2E1BDC42] FOREIGN KEY ([city_id]) REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Reminder] ADD CONSTRAINT [FK__Reminder__provin__2D27B809] FOREIGN KEY ([province_id]) REFERENCES [dbo].[Province] ([id])
GO
ALTER TABLE [dbo].[Reminder] ADD CONSTRAINT [FK__Reminder__user_i__2F10007B] FOREIGN KEY ([user_id]) REFERENCES [dbo].[User_] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[City]'
GO
ALTER TABLE [dbo].[City] ADD CONSTRAINT [FK__City__province_i__267ABA7A] FOREIGN KEY ([province_id]) REFERENCES [dbo].[Province] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Insurance]'
GO
ALTER TABLE [dbo].[Insurance] ADD CONSTRAINT [FK__Insurance__compa__4316F928] FOREIGN KEY ([company_id]) REFERENCES [dbo].[Company] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Earthquake_Insurance]'
GO
ALTER TABLE [dbo].[Earthquake_Insurance] ADD CONSTRAINT [FK__Earthquak__in_id__4E88ABD4] FOREIGN KEY ([in_id]) REFERENCES [dbo].[Property_ins] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Fire_Insurance]'
GO
ALTER TABLE [dbo].[Fire_Insurance] ADD CONSTRAINT [FK__Fire_Insu__in_id__5165187F] FOREIGN KEY ([in_id]) REFERENCES [dbo].[Property_ins] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Health_inq]'
GO
ALTER TABLE [dbo].[Health_inq] ADD CONSTRAINT [FK__Health_in__inq_i__398D8EEE] FOREIGN KEY ([inq_id]) REFERENCES [dbo].[Inqury] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Health_insurance]'
GO
ALTER TABLE [dbo].[Health_insurance] ADD CONSTRAINT [FK__Health_in__ins_i__48CFD27E] FOREIGN KEY ([ins_id]) REFERENCES [dbo].[Insurance] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Life_inq]'
GO
ALTER TABLE [dbo].[Life_inq] ADD CONSTRAINT [FK__Life_inq__inq_id__33D4B598] FOREIGN KEY ([inq_id]) REFERENCES [dbo].[Inqury] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Life_insurance]'
GO
ALTER TABLE [dbo].[Life_insurance] ADD CONSTRAINT [FK__Life_insu__ins_i__45F365D3] FOREIGN KEY ([ins_id]) REFERENCES [dbo].[Insurance] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Member]'
GO
ALTER TABLE [dbo].[Member] ADD CONSTRAINT [FK__Member__head_id__36B12243] FOREIGN KEY ([head_id]) REFERENCES [dbo].[Member] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Adding foreign keys to [dbo].[Property_ins]'
GO
ALTER TABLE [dbo].[Property_ins] ADD CONSTRAINT [FK__Property___in_id__4BAC3F29] FOREIGN KEY ([in_id]) REFERENCES [dbo].[Insurance] ([id])
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
COMMIT TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF
IF (@Success = 1) PRINT 'The database update succeeded'
ELSE BEGIN
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	PRINT 'The database update failed'
END
GO
