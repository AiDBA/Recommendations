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
		CREATE LOGIN [aaronlim] WITH PASSWORD = 'Pa$$w0rd', SID = 0x18834CA8B6AD704C820C3D19C3D61776;
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
		CREATE LOGIN [mtech] WITH PASSWORD = 'Pa$$w0rd', SID = 0x34B5410DCDC027499238AF9A92C949FF;
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
		CREATE LOGIN [aaronlim] WITH PASSWORD = 'Pa$$w0rd', SID = 0x18834CA8B6AD704C820C3D19C3D61776;
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
AND dp.name = 'edataadmin'

	IF @Usid IS NULL
		GOTO UserNotOrphaned4

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'edataadmin'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [edataadmin] WITH PASSWORD = 'Pa$$w0rd', SID = 0xDD23D2EAAC5D494D887D984950EDE67B;
		PRINT N'LOGIN [edataadmin] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [edataadmin] WITH LOGIN = [edataadmin];
			PRINT 'USER [edataadmin] ON DATABASE [INTERM] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [INTERM];
			DROP USER [edataadmin];
			PRINT N'USER [edataadmin] ON DATABASE [INTERM] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned4:
	PRINT N'USER [edataadmin] ON DATABASE [INTERM] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [edataadmin] ON DATABASE [INTERM] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
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
AND dp.name = 'stwmtsupp'

	IF @Usid IS NULL
		GOTO UserNotOrphaned5

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'stwmtsupp'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [stwmtsupp] WITH PASSWORD = 'Pa$$w0rd', SID = 0x8F567908574F7E43A819583881D3660F;
		PRINT N'LOGIN [stwmtsupp] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [stwmtsupp] WITH LOGIN = [stwmtsupp];
			PRINT 'USER [stwmtsupp] ON DATABASE [INTERM] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [INTERM];
			DROP USER [stwmtsupp];
			PRINT N'USER [stwmtsupp] ON DATABASE [INTERM] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned5:
	PRINT N'USER [stwmtsupp] ON DATABASE [INTERM] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [stwmtsupp] ON DATABASE [INTERM] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
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
		GOTO UserNotOrphaned6

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x41E5C3DA343FB7489CA2BEF19313FCB3;
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
UserNotOrphaned6:
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
AND dp.name = 'edataadmin'

	IF @Usid IS NULL
		GOTO UserNotOrphaned7

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'edataadmin'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [edataadmin] WITH PASSWORD = 'Pa$$w0rd', SID = 0xDD23D2EAAC5D494D887D984950EDE67B;
		PRINT N'LOGIN [edataadmin] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [edataadmin] WITH LOGIN = [edataadmin];
			PRINT 'USER [edataadmin] ON DATABASE [MIMS] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MIMS];
			DROP USER [edataadmin];
			PRINT N'USER [edataadmin] ON DATABASE [MIMS] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned7:
	PRINT N'USER [edataadmin] ON DATABASE [MIMS] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [edataadmin] ON DATABASE [MIMS] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
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
AND dp.name = 'stwmtsupp'

	IF @Usid IS NULL
		GOTO UserNotOrphaned8

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'stwmtsupp'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [stwmtsupp] WITH PASSWORD = 'Pa$$w0rd', SID = 0x8F567908574F7E43A819583881D3660F;
		PRINT N'LOGIN [stwmtsupp] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [stwmtsupp] WITH LOGIN = [stwmtsupp];
			PRINT 'USER [stwmtsupp] ON DATABASE [MIMS] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MIMS];
			DROP USER [stwmtsupp];
			PRINT N'USER [stwmtsupp] ON DATABASE [MIMS] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned8:
	PRINT N'USER [stwmtsupp] ON DATABASE [MIMS] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [stwmtsupp] ON DATABASE [MIMS] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
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
		GOTO UserNotOrphaned9

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x41E5C3DA343FB7489CA2BEF19313FCB3;
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
UserNotOrphaned9:
	PRINT N'USER [anbarasan] ON DATABASE [MIMS] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [MIMS] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MTECH-EDATA]
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
AND dp.name = 'edataadmin'

	IF @Usid IS NULL
		GOTO UserNotOrphaned10

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'edataadmin'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [edataadmin] WITH PASSWORD = 'Pa$$w0rd', SID = 0xDD23D2EAAC5D494D887D984950EDE67B;
		PRINT N'LOGIN [edataadmin] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [edataadmin] WITH LOGIN = [edataadmin];
			PRINT 'USER [edataadmin] ON DATABASE [MTECH-EDATA] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MTECH-EDATA];
			DROP USER [edataadmin];
			PRINT N'USER [edataadmin] ON DATABASE [MTECH-EDATA] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned10:
	PRINT N'USER [edataadmin] ON DATABASE [MTECH-EDATA] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [edataadmin] ON DATABASE [MTECH-EDATA] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MTECH-EDATA]
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
AND dp.name = 'stwmtsupp'

	IF @Usid IS NULL
		GOTO UserNotOrphaned11

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'stwmtsupp'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [stwmtsupp] WITH PASSWORD = 'Pa$$w0rd', SID = 0x8F567908574F7E43A819583881D3660F;
		PRINT N'LOGIN [stwmtsupp] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [stwmtsupp] WITH LOGIN = [stwmtsupp];
			PRINT 'USER [stwmtsupp] ON DATABASE [MTECH-EDATA] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MTECH-EDATA];
			DROP USER [stwmtsupp];
			PRINT N'USER [stwmtsupp] ON DATABASE [MTECH-EDATA] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned11:
	PRINT N'USER [stwmtsupp] ON DATABASE [MTECH-EDATA] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [stwmtsupp] ON DATABASE [MTECH-EDATA] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MTECH-EDATA]
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
		GOTO UserNotOrphaned12

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0x41E5C3DA343FB7489CA2BEF19313FCB3;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [MTECH-EDATA] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MTECH-EDATA];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [MTECH-EDATA] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned12:
	PRINT N'USER [anbarasan] ON DATABASE [MTECH-EDATA] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [MTECH-EDATA] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;
