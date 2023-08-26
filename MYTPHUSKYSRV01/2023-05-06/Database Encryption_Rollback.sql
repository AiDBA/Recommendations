
	BEGIN TRY
		USE [master];
		IF (SELECT is_encrypted FROM sys.databases WHERE NAME = 'ShotscopeNXSecurity' AND state = 0 ) = 1
		BEGIN
			ALTER DATABASE [ShotscopeNXSecurity]  SET ENCRYPTION OFF; 
			DECLARE @i int  = 0;
			WHILE @i < 5
			BEGIN
				WAITFOR DELAY '00:15';
				IF (SELECT encryption_state FROM sys.dm_database_encryption_keys WHERE database_id = DB_ID('ShotscopeNXSecurity')) = 1 
					BREAK;
				@i += 1;
			END;
			USE [ShotscopeNXSecurity];
			DROP DATABASE ENCRYPTION KEY;
			PRINT 'Database [ShotscopeNXSecurity] has been decrypted.'
		END
		ELSE
		BEGIN
			PRINT 'Database ShotscopeNXSecurity is already decrypted or is not online.'
		END
	END TRY
	BEGIN CATCH
		PRINT 'Database [ShotscopeNXSecurity] could not be decrypted. '+ERROR_MESSAGE();
	END CATCH;
	