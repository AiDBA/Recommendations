
USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'ITEH')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ITEH] MODIFY FILE ( NAME = N'ITEH', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'ITEH')
BEGIN
	BEGIN TRY
		CHECKPOINT;
		DBCC SHRINKFILE (2,NOTRUNCATE);
		DBCC SHRINKFILE (2,TRUNCATEONLY);
		ALTER DATABASE [ITEH] MODIFY FILE ( NAME = N'ITEH_log', SIZE = 256MB , FILEGROWTH = 256MB )
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model = 3 and user_access = 0 and state = 0 and name = 'ITEH')
BEGIN
	BEGIN TRY
		ALTER DATABASE [ITEH] MODIFY FILE ( NAME = N'ITEH_AIDBA_NCIX', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
