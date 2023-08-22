DECLARE @Lsid varbinary(85)
,@Usid varbinary(85)
USE [master]
BEGIN TRY
	SELECT @Usid = NULL 

SELECT @Usid = dp.sid
FROM sys.database_principals dp
LEFT JOIN sys.server_principals sp
ON dp.sid = sp.sid
LEFT JOIN sys.certificates c
ON dp.sid = c.sid
LEFT JOIN sys.asymmetric_keys a
ON dp.sid = a.sid
WHERE sp.sid IS NULL AND c.sid IS NULL AND a.sid IS NULL
AND dp.type IN ('U', 'S', 'C', 'K') 
AND dp.principal_id > 4
AND NOT (dp.type = 'S' AND LEN(dp.sid) = 28)
AND dp.name = 'aaronlim'

	IF @Usid IS NULL
		GOTO UserNotOrphaned1

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'aaronlim'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [aaronlim] WITH PASSWORD = 'Pa$$w0rd', SID = 0x2AB40E3065F7BC4BBAAB7DE31480C73F;
		PRINT N'LOGIN [aaronlim] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [aaronlim] WITH LOGIN = [aaronlim];
			PRINT 'USER [aaronlim] ON DATABASE [master] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [master];
			DROP USER [aaronlim];
			PRINT N'USER [aaronlim] ON DATABASE [master] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned1:
	PRINT N'USER [aaronlim] ON DATABASE [master] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [aaronlim] ON DATABASE [master] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [master]
BEGIN TRY
	SELECT @Usid = NULL 

SELECT @Usid = dp.sid
FROM sys.database_principals dp
LEFT JOIN sys.server_principals sp
ON dp.sid = sp.sid
LEFT JOIN sys.certificates c
ON dp.sid = c.sid
LEFT JOIN sys.asymmetric_keys a
ON dp.sid = a.sid
WHERE sp.sid IS NULL AND c.sid IS NULL AND a.sid IS NULL
AND dp.type IN ('U', 'S', 'C', 'K') 
AND dp.principal_id > 4
AND NOT (dp.type = 'S' AND LEN(dp.sid) = 28)
AND dp.name = 'mtech'

	IF @Usid IS NULL
		GOTO UserNotOrphaned2

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'mtech'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [mtech] WITH PASSWORD = 'Pa$$w0rd', SID = 0xAE2980288DAEA14D83FB50FFAE1C42AB;
		PRINT N'LOGIN [mtech] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [mtech] WITH LOGIN = [mtech];
			PRINT 'USER [mtech] ON DATABASE [master] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [master];
			DROP USER [mtech];
			PRINT N'USER [mtech] ON DATABASE [master] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned2:
	PRINT N'USER [mtech] ON DATABASE [master] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [mtech] ON DATABASE [master] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [msdb]
BEGIN TRY
	SELECT @Usid = NULL 

SELECT @Usid = dp.sid
FROM sys.database_principals dp
LEFT JOIN sys.server_principals sp
ON dp.sid = sp.sid
LEFT JOIN sys.certificates c
ON dp.sid = c.sid
LEFT JOIN sys.asymmetric_keys a
ON dp.sid = a.sid
WHERE sp.sid IS NULL AND c.sid IS NULL AND a.sid IS NULL
AND dp.type IN ('U', 'S', 'C', 'K') 
AND dp.principal_id > 4
AND NOT (dp.type = 'S' AND LEN(dp.sid) = 28)
AND dp.name = 'aaronlim'

	IF @Usid IS NULL
		GOTO UserNotOrphaned3

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'aaronlim'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [aaronlim] WITH PASSWORD = 'Pa$$w0rd', SID = 0x2AB40E3065F7BC4BBAAB7DE31480C73F;
		PRINT N'LOGIN [aaronlim] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [aaronlim] WITH LOGIN = [aaronlim];
			PRINT 'USER [aaronlim] ON DATABASE [msdb] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [msdb];
			DROP USER [aaronlim];
			PRINT N'USER [aaronlim] ON DATABASE [msdb] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned3:
	PRINT N'USER [aaronlim] ON DATABASE [msdb] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [aaronlim] ON DATABASE [msdb] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MFMB]
BEGIN TRY
	SELECT @Usid = NULL 

SELECT @Usid = dp.sid
FROM sys.database_principals dp
LEFT JOIN sys.server_principals sp
ON dp.sid = sp.sid
LEFT JOIN sys.certificates c
ON dp.sid = c.sid
LEFT JOIN sys.asymmetric_keys a
ON dp.sid = a.sid
WHERE sp.sid IS NULL AND c.sid IS NULL AND a.sid IS NULL
AND dp.type IN ('U', 'S', 'C', 'K') 
AND dp.principal_id > 4
AND NOT (dp.type = 'S' AND LEN(dp.sid) = 28)
AND dp.name = 'anbarasan'

	IF @Usid IS NULL
		GOTO UserNotOrphaned4

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x54A358F6DAD9AE40B51C3159DB2A43C9;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [MFMB] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MFMB];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [MFMB] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned4:
	PRINT N'USER [anbarasan] ON DATABASE [MFMB] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [MFMB] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MTECH_v7_HH_P]
BEGIN TRY
	SELECT @Usid = NULL 

SELECT @Usid = dp.sid
FROM sys.database_principals dp
LEFT JOIN sys.server_principals sp
ON dp.sid = sp.sid
LEFT JOIN sys.certificates c
ON dp.sid = c.sid
LEFT JOIN sys.asymmetric_keys a
ON dp.sid = a.sid
WHERE sp.sid IS NULL AND c.sid IS NULL AND a.sid IS NULL
AND dp.type IN ('U', 'S', 'C', 'K') 
AND dp.principal_id > 4
AND NOT (dp.type = 'S' AND LEN(dp.sid) = 28)
AND dp.name = 'anbarasan'

	IF @Usid IS NULL
		GOTO UserNotOrphaned5

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x54A358F6DAD9AE40B51C3159DB2A43C9;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [MTECH_v7_HH_P] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MTECH_v7_HH_P];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [MTECH_v7_HH_P] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned5:
	PRINT N'USER [anbarasan] ON DATABASE [MTECH_v7_HH_P] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [MTECH_v7_HH_P] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MTECH_V7_Intermediate_PROD]
BEGIN TRY
	SELECT @Usid = NULL 

SELECT @Usid = dp.sid
FROM sys.database_principals dp
LEFT JOIN sys.server_principals sp
ON dp.sid = sp.sid
LEFT JOIN sys.certificates c
ON dp.sid = c.sid
LEFT JOIN sys.asymmetric_keys a
ON dp.sid = a.sid
WHERE sp.sid IS NULL AND c.sid IS NULL AND a.sid IS NULL
AND dp.type IN ('U', 'S', 'C', 'K') 
AND dp.principal_id > 4
AND NOT (dp.type = 'S' AND LEN(dp.sid) = 28)
AND dp.name = 'INTERFACE_SAP_PI'

	IF @Usid IS NULL
		GOTO UserNotOrphaned6

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'INTERFACE_SAP_PI'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [INTERFACE_SAP_PI] WITH PASSWORD = 'Pa$$w0rd', SID = 0xBA57678D0B6F0D428FB377866EBF740B;
		PRINT N'LOGIN [INTERFACE_SAP_PI] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [INTERFACE_SAP_PI] WITH LOGIN = [INTERFACE_SAP_PI];
			PRINT 'USER [INTERFACE_SAP_PI] ON DATABASE [MTECH_V7_Intermediate_PROD] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MTECH_V7_Intermediate_PROD];
			DROP USER [INTERFACE_SAP_PI];
			PRINT N'USER [INTERFACE_SAP_PI] ON DATABASE [MTECH_V7_Intermediate_PROD] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned6:
	PRINT N'USER [INTERFACE_SAP_PI] ON DATABASE [MTECH_V7_Intermediate_PROD] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [INTERFACE_SAP_PI] ON DATABASE [MTECH_V7_Intermediate_PROD] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MTECH_V7_Intermediate_PROD]
BEGIN TRY
	SELECT @Usid = NULL 

SELECT @Usid = dp.sid
FROM sys.database_principals dp
LEFT JOIN sys.server_principals sp
ON dp.sid = sp.sid
LEFT JOIN sys.certificates c
ON dp.sid = c.sid
LEFT JOIN sys.asymmetric_keys a
ON dp.sid = a.sid
WHERE sp.sid IS NULL AND c.sid IS NULL AND a.sid IS NULL
AND dp.type IN ('U', 'S', 'C', 'K') 
AND dp.principal_id > 4
AND NOT (dp.type = 'S' AND LEN(dp.sid) = 28)
AND dp.name = 'YGARCIA'

	IF @Usid IS NULL
		GOTO UserNotOrphaned7

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'YGARCIA'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [YGARCIA] WITH PASSWORD = 'Pa$$w0rd', SID = 0xE9642A343C8AAD4AAB6C4E2625D4716F;
		PRINT N'LOGIN [YGARCIA] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [YGARCIA] WITH LOGIN = [YGARCIA];
			PRINT 'USER [YGARCIA] ON DATABASE [MTECH_V7_Intermediate_PROD] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MTECH_V7_Intermediate_PROD];
			DROP USER [YGARCIA];
			PRINT N'USER [YGARCIA] ON DATABASE [MTECH_V7_Intermediate_PROD] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned7:
	PRINT N'USER [YGARCIA] ON DATABASE [MTECH_V7_Intermediate_PROD] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [YGARCIA] ON DATABASE [MTECH_V7_Intermediate_PROD] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MTECH_V7_Intermediate_PROD]
BEGIN TRY
	SELECT @Usid = NULL 

SELECT @Usid = dp.sid
FROM sys.database_principals dp
LEFT JOIN sys.server_principals sp
ON dp.sid = sp.sid
LEFT JOIN sys.certificates c
ON dp.sid = c.sid
LEFT JOIN sys.asymmetric_keys a
ON dp.sid = a.sid
WHERE sp.sid IS NULL AND c.sid IS NULL AND a.sid IS NULL
AND dp.type IN ('U', 'S', 'C', 'K') 
AND dp.principal_id > 4
AND NOT (dp.type = 'S' AND LEN(dp.sid) = 28)
AND dp.name = 'LCAMONES'

	IF @Usid IS NULL
		GOTO UserNotOrphaned8

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'LCAMONES'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [LCAMONES] WITH PASSWORD = 'Pa$$w0rd', SID = 0xB0156C7056FFA449A3A0CB7A4A9DA922;
		PRINT N'LOGIN [LCAMONES] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [LCAMONES] WITH LOGIN = [LCAMONES];
			PRINT 'USER [LCAMONES] ON DATABASE [MTECH_V7_Intermediate_PROD] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MTECH_V7_Intermediate_PROD];
			DROP USER [LCAMONES];
			PRINT N'USER [LCAMONES] ON DATABASE [MTECH_V7_Intermediate_PROD] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned8:
	PRINT N'USER [LCAMONES] ON DATABASE [MTECH_V7_Intermediate_PROD] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [LCAMONES] ON DATABASE [MTECH_V7_Intermediate_PROD] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;
