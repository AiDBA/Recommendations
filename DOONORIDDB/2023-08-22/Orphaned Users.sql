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
AND dp.name = 'anbarasan'

	IF @Usid IS NULL
		GOTO UserNotOrphaned1

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x9EEA3B8A573B37498D4DB5D99A11BCA1;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [master] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [master];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [master] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned1:
	PRINT N'USER [anbarasan] ON DATABASE [master] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [master] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
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
AND dp.name = 'anbarasan'

	IF @Usid IS NULL
		GOTO UserNotOrphaned2

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x9EEA3B8A573B37498D4DB5D99A11BCA1;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [msdb] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [msdb];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [msdb] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned2:
	PRINT N'USER [anbarasan] ON DATABASE [msdb] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [msdb] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [INTERM]
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
		GOTO UserNotOrphaned3

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x9EEA3B8A573B37498D4DB5D99A11BCA1;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [INTERM] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [INTERM];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [INTERM] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned3:
	PRINT N'USER [anbarasan] ON DATABASE [INTERM] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [INTERM] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MIMS]
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
		GOTO UserNotOrphaned4

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'mtech'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [mtech] WITH PASSWORD = 'Pa$$w0rd', SID = 0x73C6BA42F1BB9A47BDDEFEAA38F8F8EB;
		PRINT N'LOGIN [mtech] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [mtech] WITH LOGIN = [mtech];
			PRINT 'USER [mtech] ON DATABASE [MIMS] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MIMS];
			DROP USER [mtech];
			PRINT N'USER [mtech] ON DATABASE [MIMS] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned4:
	PRINT N'USER [mtech] ON DATABASE [MIMS] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [mtech] ON DATABASE [MIMS] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MIMS]
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
AND dp.name = 'rpt_rdpd'

	IF @Usid IS NULL
		GOTO UserNotOrphaned5

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'rpt_rdpd'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [rpt_rdpd] WITH PASSWORD = 'Pa$$w0rd', SID = 0xCC0E09F9118FDE428A804DC75130A2E9;
		PRINT N'LOGIN [rpt_rdpd] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [rpt_rdpd] WITH LOGIN = [rpt_rdpd];
			PRINT 'USER [rpt_rdpd] ON DATABASE [MIMS] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MIMS];
			DROP USER [rpt_rdpd];
			PRINT N'USER [rpt_rdpd] ON DATABASE [MIMS] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned5:
	PRINT N'USER [rpt_rdpd] ON DATABASE [MIMS] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [rpt_rdpd] ON DATABASE [MIMS] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MIMS]
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
		GOTO UserNotOrphaned6

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x9EEA3B8A573B37498D4DB5D99A11BCA1;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [MIMS] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MIMS];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [MIMS] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned6:
	PRINT N'USER [anbarasan] ON DATABASE [MIMS] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [MIMS] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;
