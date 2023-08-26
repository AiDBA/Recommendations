
USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'INTERM_TEST')
BEGIN
	BEGIN TRY
		ALTER DATABASE [INTERM_TEST] MODIFY FILE ( NAME = N'INTERM', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'INTERM_TEST')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [INTERM_TEST] MODIFY FILE ( NAME = N'INTERM_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MIMS')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MIMS] MODIFY FILE ( NAME = N'SMART_DINDINGS', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'MIMS')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MIMS] MODIFY FILE ( NAME = N'SMART_DINDINGS_LOG', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'INTERM')
BEGIN
	BEGIN TRY
		ALTER DATABASE [INTERM] MODIFY FILE ( NAME = N'INTERM', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'INTERM')
BEGIN
	BEGIN TRY
		ALTER DATABASE [INTERM] MODIFY FILE ( NAME = N'INTERM_log', FILEGROWTH = 256MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'MIMS_TEST')
BEGIN
	BEGIN TRY
		ALTER DATABASE [MIMS_TEST] MODIFY FILE ( NAME = N'SMART_DINDINGS', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'MIMS_TEST')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [MIMS_TEST] MODIFY FILE ( NAME = N'SMART_DINDINGS_LOG', SIZE = 1024MB , FILEGROWTH = 1024MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
