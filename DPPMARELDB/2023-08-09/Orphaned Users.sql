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
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x945314F55F6EF34B880C4F0A87D5ADB3;
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
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x945314F55F6EF34B880C4F0A87D5ADB3;
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

USE [innova]
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
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x945314F55F6EF34B880C4F0A87D5ADB3;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [innova] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [innova];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [innova] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned3:
	PRINT N'USER [anbarasan] ON DATABASE [innova] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [innova] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [IDB_MTECH_MAREL_SL]
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
AND dp.name = 'rpt_rdtst'

	IF @Usid IS NULL
		GOTO UserNotOrphaned4

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'rpt_rdtst'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [rpt_rdtst] WITH PASSWORD = 'Pa$$w0rd', SID = 0xBC8A35339E160B4BBDB91E61A02689DD;
		PRINT N'LOGIN [rpt_rdtst] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [rpt_rdtst] WITH LOGIN = [rpt_rdtst];
			PRINT 'USER [rpt_rdtst] ON DATABASE [IDB_MTECH_MAREL_SL] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [IDB_MTECH_MAREL_SL];
			DROP USER [rpt_rdtst];
			PRINT N'USER [rpt_rdtst] ON DATABASE [IDB_MTECH_MAREL_SL] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned4:
	PRINT N'USER [rpt_rdtst] ON DATABASE [IDB_MTECH_MAREL_SL] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [rpt_rdtst] ON DATABASE [IDB_MTECH_MAREL_SL] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [IDB_MTECH_MAREL_SL]
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
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x945314F55F6EF34B880C4F0A87D5ADB3;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [IDB_MTECH_MAREL_SL] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [IDB_MTECH_MAREL_SL];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [IDB_MTECH_MAREL_SL] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned5:
	PRINT N'USER [anbarasan] ON DATABASE [IDB_MTECH_MAREL_SL] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [IDB_MTECH_MAREL_SL] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [PDSNT]
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
AND dp.name = 'dbo'

	IF @Usid IS NULL
		GOTO UserNotOrphaned6

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.syslogins WHERE name = 'AIDBA'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [AIDBA] WITH PASSWORD=N'Pa$$w0rd', DEFAULT_DATABASE=[tempdb], 
		CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		PRINT 'LOGIN [AIDBA] IS CREATED.';
	END;
	ALTER SERVER ROLE [sysadmin] ADD MEMBER [AIDBA];
	ALTER USER [dbo] WITH LOGIN = [AIDBA];
	PRINT 'USER [dbo] ON DATABASE [PDSNT] IS MAPPED TO LOGIN [AIDBA].';
	
UserNotOrphaned6:
	PRINT N'USER [dbo] ON DATABASE [PDSNT] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [dbo] ON DATABASE [PDSNT] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [PDSNT]
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
AND dp.name = 'PDSNT_Reader'

	IF @Usid IS NULL
		GOTO UserNotOrphaned7

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'PDSNT_Reader'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [PDSNT_Reader] WITH PASSWORD = 'Pa$$w0rd', SID = 0x71E1C42575EAA245A86919E201211E1C;
		PRINT N'LOGIN [PDSNT_Reader] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [PDSNT_Reader] WITH LOGIN = [PDSNT_Reader];
			PRINT 'USER [PDSNT_Reader] ON DATABASE [PDSNT] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [PDSNT];
			DROP USER [PDSNT_Reader];
			PRINT N'USER [PDSNT_Reader] ON DATABASE [PDSNT] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned7:
	PRINT N'USER [PDSNT_Reader] ON DATABASE [PDSNT] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [PDSNT_Reader] ON DATABASE [PDSNT] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [PDSNT]
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
		GOTO UserNotOrphaned8

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x945314F55F6EF34B880C4F0A87D5ADB3;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [PDSNT] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [PDSNT];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [PDSNT] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned8:
	PRINT N'USER [anbarasan] ON DATABASE [PDSNT] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [PDSNT] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;
