
USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		ALTER DATABASE [CHUANSINCACTUS] MODIFY FILE ( NAME = N'CHUANSINCACTUS', FILEGROWTH = 512MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END

USE [master]
IF EXISTS (select * from sys.databases where recovery_model <> 3 and user_access = 0 and state = 0 and name = 'CHUANSINCACTUS')
BEGIN
	BEGIN TRY
		ALTER DATABASE [CHUANSINCACTUS] MODIFY FILE ( NAME = N'CHUANSINCACTUS_log', FILEGROWTH = 1024MB );
	END TRY
	BEGIN CATCH
		PRINT ERROR_MESSAGE();
	END CATCH
END
