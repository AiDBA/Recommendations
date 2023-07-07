
USE [master];
BEGIN TRY
	DECLARE @sid varbinary(85);
	SELECT @sid = sid FROM sys.syslogins WHERE name = 'AIDBA'
	IF @sid IS NULL
	BEGIN
		CREATE LOGIN [AIDBA] WITH PASSWORD=N'Pa$$w0rd', DEFAULT_DATABASE=[tempdb], 
		CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF;
		PRINT 'Login [AIDBA] has been created.';
		IF EXISTS ( SELECT * FROM sys.sysusers WHERE name = 'AIDBA')	
		BEGIN
			ALTER USER [AIDBA] WITH Login = [AIDBA];
			PRINT 'User [AIDBA] is mapped to login [AIDBA].';
		END
		ELSE
		BEGIN
			CREATE USER [AIDBA] FOR LOGIN [AIDBA];
			PRINT 'User [AIDBA] has been created.';
		END
	END;
	ELSE 
	BEGIN
		PRINT 'Login [AIDBA] is already existed.';
		IF NOT EXISTS ( SELECT * FROM sys.sysusers WHERE name = 'AIDBA')
		BEGIN
			CREATE USER [AIDBA] FOR LOGIN [AIDBA];
			PRINT 'User [AIDBA] has been created.';
		END
		ELSE
		BEGIN
			IF NOT EXISTS ( SELECT * FROM sys.sysusers WHERE name = 'AIDBA' AND sid = @sid)
			BEGIN
				ALTER USER [AIDBA] WITH Login = [AIDBA];
				PRINT 'User [AIDBA] is mapped to login [AIDBA].';
			END
			ELSE
			BEGIN
				PRINT 'User [AIDBA] is already existed.';
			END
		END
	END	
	ALTER SERVER ROLE  [sysadmin]  ADD MEMBER [AIDBA];
	IF NOT EXISTS (SELECT * FROM sys.symmetric_keys WHERE symmetric_key_id = 101)
	BEGIN
		CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Pa$$w0rd';
		PRINT 'MASTER KEY has been created.'
	END;
	ELSE
	BEGIN
		PRINT 'MASTER KEY is already existed.'
	END
	IF NOT EXISTS (SELECT * FROM sys.certificates WHERE name = 'AIDBA_Encryption' and expiry_date > getdate())
	BEGIN
		DECLARE @CertDate datetime
		SELECT @CertDate = DATEADD(YY,5,GETDATE())
		DECLARE @STMT nvarchar(max);
		SET @STMT =
		'CREATE CERTIFICATE [AIDBA_Encryption] AUTHORIZATION [AIDBA]    
			WITH SUBJECT = ''Encryption Certificate''
		, EXPIRY_DATE = '''+CAST(@CertDate AS nvarchar(50))+''' ;
		'
		EXEC (@STMT);
		PRINT 'CERTIFICATE has been created.';
	END
	ELSE
	BEGIN
		PRINT 'CERTIFICATE is already existed.'
	END
END TRY
BEGIN CATCH
	PRINT 'CERTIFICATE could not be created!';
END CATCH;

DECLARE @ResultSer_Master TABLE (Directory nvarchar(max));
INSERT INTO @ResultSer_Master
EXEC master.dbo.xp_subdirs 'c:\';

IF('AIDBA_SQL_Certificate_Backups' NOT IN (SELECT * FROM @ResultSer_Master))
BEGIN
	EXEC sp_configure 'show advanced options' , 1; Reconfigure with override;
	EXEC sp_configure 'xp_cmdshell' , 1; Reconfigure with override;
	EXEC master..xp_cmdshell 'MKDIR C:\AIDBA_SQL_Certificate_Backups',NO_OUTPUT;
	EXEC sp_configure 'xp_cmdshell' , 0; Reconfigure with override;
	EXEC sp_configure 'show advanced options' , 0; Reconfigure with override;
END
USE [master];
	BACKUP CERTIFICATE [AIDBA_Encryption] TO FILE = 'C:\AIDBA_SQL_Certificate_Backups\AIDBA_Cert'
	WITH PRIVATE KEY (FILE = 'C:\AIDBA_SQL_Certificate_Backups\AIDBA_PKey' , ENCRYPTION BY PASSWORD = 'Pa$$w0rd')

	
				BEGIN TRY
					USE [ShotscopeNXSecurity];
					IF (SELECT is_encrypted FROM sys.databases WHERE NAME = 'ShotscopeNXSecurity' AND state = 0 ) = 0
					BEGIN
					CREATE DATABASE ENCRYPTION KEY  WITH ALGORITHM = AES_256  ENCRYPTION BY SERVER CERTIFICATE AIDBA_Encryption;
					ALTER DATABASE [ShotscopeNXSecurity]  SET ENCRYPTION ON; 
					PRINT 'Database [ShotscopeNXSecurity] has been encrypted.'
					END
					ELSE
						PRINT 'Database ShotscopeNXSecurity is already encrypted or is not online.'
				END TRY
				BEGIN CATCH
					PRINT 'Database [ShotscopeNXSecurity] could not be encrypted.'
				END CATCH;
				