USE [s17guest43]
GO
/****** Object:  User [s17guest43]    Script Date: 5/18/2017 6:49:27 AM ******/
CREATE USER [s17guest43] FOR LOGIN [s17guest43] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [s17guest43]
GO
