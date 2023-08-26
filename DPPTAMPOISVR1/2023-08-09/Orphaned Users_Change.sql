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
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0xA8C49194DABCFD499F5085E6179F3210;
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
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0xA8C49194DABCFD499F5085E6179F3210;
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
AND dp.name = 'dbo'

	IF @Usid IS NULL
		GOTO UserNotOrphaned3

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
	PRINT 'USER [dbo] ON DATABASE [INTERM] IS MAPPED TO LOGIN [AIDBA].';
	
UserNotOrphaned3:
	PRINT N'USER [dbo] ON DATABASE [INTERM] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [dbo] ON DATABASE [INTERM] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
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
		GOTO UserNotOrphaned4

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0xA8C49194DABCFD499F5085E6179F3210;
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
UserNotOrphaned4:
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
		GOTO UserNotOrphaned5

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
UserNotOrphaned5:
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
AND dp.name = 'anbarasan'

	IF @Usid IS NULL
		GOTO UserNotOrphaned6

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0xA8C49194DABCFD499F5085E6179F3210;
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

USE [INTERM_TEST]
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
		GOTO UserNotOrphaned7

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
	PRINT 'USER [dbo] ON DATABASE [INTERM_TEST] IS MAPPED TO LOGIN [AIDBA].';
	
UserNotOrphaned7:
	PRINT N'USER [dbo] ON DATABASE [INTERM_TEST] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [dbo] ON DATABASE [INTERM_TEST] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [INTERM_TEST]
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
AND dp.name = 'dppjbtestrd'

	IF @Usid IS NULL
		GOTO UserNotOrphaned8

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'dppjbtestrd'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [dppjbtestrd] WITH PASSWORD = 'Pa$$w0rd', SID = 0x07D290E0B15C8842848F8BA163424379;
		PRINT N'LOGIN [dppjbtestrd] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [dppjbtestrd] WITH LOGIN = [dppjbtestrd];
			PRINT 'USER [dppjbtestrd] ON DATABASE [INTERM_TEST] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [INTERM_TEST];
			DROP USER [dppjbtestrd];
			PRINT N'USER [dppjbtestrd] ON DATABASE [INTERM_TEST] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned8:
	PRINT N'USER [dppjbtestrd] ON DATABASE [INTERM_TEST] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [dppjbtestrd] ON DATABASE [INTERM_TEST] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [INTERM_TEST]
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
AND dp.name = 'hqmtsuppwt'

	IF @Usid IS NULL
		GOTO UserNotOrphaned9

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'hqmtsuppwt'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [hqmtsuppwt] WITH PASSWORD = 'Pa$$w0rd', SID = 0x9F3903577115604881D9DE650010AE25;
		PRINT N'LOGIN [hqmtsuppwt] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [hqmtsuppwt] WITH LOGIN = [hqmtsuppwt];
			PRINT 'USER [hqmtsuppwt] ON DATABASE [INTERM_TEST] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [INTERM_TEST];
			DROP USER [hqmtsuppwt];
			PRINT N'USER [hqmtsuppwt] ON DATABASE [INTERM_TEST] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned9:
	PRINT N'USER [hqmtsuppwt] ON DATABASE [INTERM_TEST] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [hqmtsuppwt] ON DATABASE [INTERM_TEST] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [INTERM_TEST]
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
		GOTO UserNotOrphaned10

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'stwmtsupp'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [stwmtsupp] WITH PASSWORD = 'Pa$$w0rd', SID = 0xB49AFD051EBD864AAE9F888E72A41195;
		PRINT N'LOGIN [stwmtsupp] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [stwmtsupp] WITH LOGIN = [stwmtsupp];
			PRINT 'USER [stwmtsupp] ON DATABASE [INTERM_TEST] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [INTERM_TEST];
			DROP USER [stwmtsupp];
			PRINT N'USER [stwmtsupp] ON DATABASE [INTERM_TEST] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned10:
	PRINT N'USER [stwmtsupp] ON DATABASE [INTERM_TEST] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [stwmtsupp] ON DATABASE [INTERM_TEST] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [INTERM_TEST]
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
		GOTO UserNotOrphaned11

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0xA8C49194DABCFD499F5085E6179F3210;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [INTERM_TEST] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [INTERM_TEST];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [INTERM_TEST] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned11:
	PRINT N'USER [anbarasan] ON DATABASE [INTERM_TEST] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [INTERM_TEST] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MIMS_TEST]
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
		GOTO UserNotOrphaned12

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
			PRINT 'USER [mtech] ON DATABASE [MIMS_TEST] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MIMS_TEST];
			DROP USER [mtech];
			PRINT N'USER [mtech] ON DATABASE [MIMS_TEST] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned12:
	PRINT N'USER [mtech] ON DATABASE [MIMS_TEST] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [mtech] ON DATABASE [MIMS_TEST] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;

USE [MIMS_TEST]
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
		GOTO UserNotOrphaned13

	SELECT @Lsid = NULL
	SELECT @Lsid = sid FROM sys.server_principals WHERE name = 'anbarasan'
	IF @Lsid IS NULL
	BEGIN
		CREATE LOGIN [anbarasan] WITH PASSWORD = 'Pa$$w0rd', SID = 0xA8C49194DABCFD499F5085E6179F3210;
		PRINT N'LOGIN [anbarasan] IS CREATED AND MAPPED TO CORRESPONDING USER.';
	END
	ELSE 
	BEGIN
		IF NOT EXISTS
		(SELECT * FROM sys.database_principals WHERE sid = @Lsid)
		BEGIN
			ALTER USER [anbarasan] WITH LOGIN = [anbarasan];
			PRINT 'USER [anbarasan] ON DATABASE [MIMS_TEST] IS MAPPED TO CORRESPONDING LOGIN.';
		END
		ELSE
		BEGIN
			USE [MIMS_TEST];
			DROP USER [anbarasan];
			PRINT N'USER [anbarasan] ON DATABASE [MIMS_TEST] IS DROPED. ANOTHER USER IS MAPPED TO THE CORRESPONDING LOGIN.';
		END
	END
UserNotOrphaned13:
	PRINT N'USER [anbarasan] ON DATABASE [MIMS_TEST] IS NOT ORPHANED.';
END TRY
BEGIN CATCH
	PRINT N'USER [anbarasan] ON DATABASE [MIMS_TEST] IS ORPHANED AND CANNOT BE DROPED OR MAPPED.';
END CATCH;
